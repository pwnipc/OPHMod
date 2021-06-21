package com.begal.appclone.classes;

import andhook.lib.AndHook;
import andhook.lib.HookHelper;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"StaticFieldLeak", "UseSparseArrays"})
public class HostsBlocker {
    private static final String PREF_KEY_PREFIX = "com.begal.appclone.host_";
    /* access modifiers changed from: private */
    public static final String TAG = HostsBlocker.class.getSimpleName();
    /* access modifiers changed from: private */
    public static String sAllowLabel;
    private static boolean sBlockByDefault;
    /* access modifiers changed from: private */
    public static String sBlockLabel;
    private static String sContentText;
    private static String sContentTitle;
    /* access modifiers changed from: private */
    public static Context sContext;
    private static Handler sHandler = new Handler();
    /* access modifiers changed from: private */
    public static String sHostBlockedMessage;
    private static final Map<String, Boolean> sHosts = Collections.synchronizedMap(new HashMap());
    /* access modifiers changed from: private */
    public static String sHostsBlockerTitle;
    private static Set<String> sHostsFileHosts = new HashSet();
    private static String sIgnoreLabel;
    private static NotificationManager sNotificationManager;
    /* access modifiers changed from: private */
    public static final Map<Integer, String> sNotifications = Collections.synchronizedMap(new HashMap());
    private static SharedPreferences sPreferences;
    private static String sSocksProxyHost;

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0077, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        throw r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0081, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        android.util.Log.w(TAG, r2);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0088 A[Catch:{ Exception -> 0x007c, FileNotFoundException -> 0x0088 }, ExcHandler: FileNotFoundException (e java.io.FileNotFoundException), Splitter:B:3:0x001a] */
    @SuppressLint({"PrivateApi"})
    public static void install(Context context, boolean blockByDefault, String socksProxyHost) {
        sContext = context;
        sBlockByDefault = blockByDefault;
        sSocksProxyHost = socksProxyHost;
        sNotificationManager = (NotificationManager) context.getSystemService("notification");
        sPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        synchronized (sHosts) {
            try {
                BufferedReader r = new BufferedReader(new InputStreamReader(context.getAssets().open(".blockedHostsFile")));
                Pattern p = Pattern.compile("(?:0.0.0.0|127.0.0.1)\\s+(\\S*)");
                while (true) {
                    String readLine = r.readLine();
                    String line = readLine;
                    if (readLine == null) {
                        break;
                    }
                    String line2 = line.trim();
                    if (!line2.startsWith("#")) {
                        Matcher m = p.matcher(line2);
                        if (m.find()) {
                            String host = m.group(1);
                            String str = TAG;
                            Log.i(str, "install; host: " + host);
                            sHostsFileHosts.add(host);
                        }
                    }
                }
                r.close();
            } catch (Exception e) {
            } catch (FileNotFoundException e2) {
            }
            for (String key : sPreferences.getAll().keySet()) {
                if (key != null && key.startsWith(PREF_KEY_PREFIX)) {
                    sHosts.put(key.substring(PREF_KEY_PREFIX.length()), Boolean.valueOf(sPreferences.getBoolean(key, false)));
                }
            }
            String str2 = TAG;
            Log.i(str2, "install; sHosts: " + sHosts);
        }
        try {
            AndHook.ensureNativeLibraryLoaded((File) null);
            Class<?> clazz = Class.forName("java.net.PlainSocketImpl");
            AndHook.ensureClassInitialized(clazz);
            AndHook.ensureClassInitialized(HostsBlocker.class);
            HookHelper.hook(clazz.getDeclaredMethod("socketConnect", new Class[]{InetAddress.class, Integer.TYPE, Integer.TYPE}), HostsBlocker.class.getMethod("socketConnectHook", new Class[]{Object.class, InetAddress.class, Integer.TYPE, Integer.TYPE}));
            Log.i(TAG, "install; socketConnectHook installed");
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
        sHostsBlockerTitle = Utils.getAppClonerResourceText(sContext, "hosts_blocker_title", "Hosts blocker").toString();
        sContentTitle = Utils.getAppClonerResourceText(sContext, "hosts_blocker_app_is_accessing_title", "%s is accessing").toString();
        sContentText = Utils.getAppClonerResourceText(sContext, "hosts_blocker_touch_to_block_title", "Touch to block %s").toString();
        sAllowLabel = Utils.getAppClonerResourceText(sContext, "label_allow", "Allow").toString();
        sBlockLabel = Utils.getAppClonerResourceText(sContext, "label_block", "Block").toString();
        sIgnoreLabel = Utils.getAppClonerResourceText(sContext, "label_ignore", "Ignore").toString();
        sHostBlockedMessage = Utils.getAppClonerResourceText(sContext, "hosts_blocker_host_blocked_message", "Host %s blocked.").toString();
    }

    public static void socketConnectHook(Object instance, InetAddress address, int port, int timeout) throws UnknownHostException {
        String str = TAG;
        Log.i(str, "socketConnectHook; address: " + address + ", port: " + port + ", timeout: " + timeout);
        checkHost(address);
        HookHelper.invokeVoidOrigin(instance, address, Integer.valueOf(port), Integer.valueOf(timeout));
    }

    private static void checkHost(InetAddress address) throws UnknownHostException {
        if (address != null) {
            checkHost(address.getHostName());
        }
    }

    private static void checkHost(final String host) throws UnknownHostException {
        if (host != null && host.length() > 0) {
            if ((sSocksProxyHost == null || !sSocksProxyHost.equals(host)) && !"127.0.0.1".equals(host) && !"localhost".equals(host) && !host.startsWith("192.168.")) {
                for (String key : splitHost(host)) {
                    if (sHosts.containsKey(key)) {
                        Boolean b = sHosts.get(key);
                        if (b == null || b.booleanValue()) {
                            String str = TAG;
                            Log.i(str, "checkHost; ignored/allowed; host: " + host);
                            return;
                        }
                        String str2 = TAG;
                        Log.i(str2, "checkHost; blocked; host: " + host);
                        throw new UnknownHostException("Blocked");
                    } else if (sHostsFileHosts.contains(key)) {
                        addBlockedHost(host);
                        sHandler.post(new Runnable() {
                            public void run() {
                                Toast.makeText(HostsBlocker.sContext, HostsBlocker.sHostBlockedMessage.replace("%s", host), 0).show();
                            }
                        });
                        String str3 = TAG;
                        Log.i(str3, "checkHost; blocked; host: " + host);
                        throw new UnknownHostException("Blocked");
                    }
                }
                notifyHost(host);
                if (sBlockByDefault) {
                    throw new UnknownHostException("Blocked by default");
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public static List<String> splitHost(String host) {
        List<String> list = new ArrayList<>();
        list.add(host);
        boolean alpha = false;
        int len = host.length();
        int n = 0;
        while (true) {
            if (n < len) {
                char c = host.charAt(n);
                if (c != '.' && !Character.isDigit(c)) {
                    alpha = true;
                    break;
                }
                n++;
            } else {
                break;
            }
        }
        if (alpha) {
            while (true) {
                int pos = host.indexOf(46);
                if (pos == -1) {
                    break;
                }
                host = host.substring(pos + 1);
                if (host.indexOf(46) == -1) {
                    break;
                }
                list.add("*." + host);
            }
        }
        return list;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x00c6, code lost:
        if (android.os.Build.VERSION.SDK_INT < 16) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x00c8, code lost:
        r9.setContentText(r14).addAction(r1, sAllowLabel, r3).addAction(r1, sBlockLabel, r4).addAction(r1, sIgnoreLabel, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x00de, code lost:
        r9.setContentText(sContentText.replace("%s", r14)).setContentIntent(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x00f1, code lost:
        if (android.os.Build.VERSION.SDK_INT < 21) goto L_0x00f7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x00f3, code lost:
        r9.setVisibility(-1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x00f7, code lost:
        com.begal.appclone.classes.Utils.setSmallNotificationIcon(r9);
        r10 = r9.getNotification();
        r10.sound = null;
        r10.defaults &= -2;
        sNotificationManager.notify(r0, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x010b, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        android.util.Log.i(TAG, "notifyHost; host: " + r14);
        r1 = r14.hashCode();
        r2 = android.app.PendingIntent.getBroadcast(sContext, r1, new android.content.Intent(r14, (android.net.Uri) null, sContext, com.begal.appclone.classes.HostsBlocker.ContentReceiver.class), 134217728);
        r3 = android.app.PendingIntent.getBroadcast(sContext, r1 + 1, new android.content.Intent(r14, (android.net.Uri) null, sContext, com.begal.appclone.classes.HostsBlocker.AllowReceiver.class), 1073741824);
        r4 = android.app.PendingIntent.getBroadcast(sContext, r1 + 2, new android.content.Intent(r14, (android.net.Uri) null, sContext, com.begal.appclone.classes.HostsBlocker.BlockReceiver.class), 1073741824);
        r5 = android.app.PendingIntent.getBroadcast(sContext, r1 + 3, new android.content.Intent(r14, (android.net.Uri) null, sContext, com.begal.appclone.classes.HostsBlocker.IgnoreReceiver.class), 1073741824);
        r9 = new android.app.Notification.Builder(sContext).setSmallIcon(17301543).setContentTitle(sContentTitle.replace("%s", com.begal.appclone.classes.Utils.getAppName(sContext))).setContentIntent(r2).setDeleteIntent(android.app.PendingIntent.getBroadcast(sContext, r1 + 4, new android.content.Intent(java.lang.Integer.toString(r0), (android.net.Uri) null, sContext, com.begal.appclone.classes.HostsBlocker.CancelReceiver.class), 1073741824)).setAutoCancel(false);
     */
    private static void notifyHost(String host) {
        int notificationId = host.hashCode();
        synchronized (sNotifications) {
            if (!sNotifications.containsKey(Integer.valueOf(notificationId))) {
                sNotifications.put(Integer.valueOf(notificationId), host);
            }
        }
    }

    /* access modifiers changed from: private */
    public static void addAllowedHost(String host) {
        String str = TAG;
        Log.i(str, "addAllowedHost; host: " + host);
        sHosts.put(host, true);
        synchronized (sPreferences) {
            SharedPreferences.Editor edit = sPreferences.edit();
            edit.putBoolean(PREF_KEY_PREFIX + host, true).apply();
        }
    }

    /* access modifiers changed from: private */
    public static void addBlockedHost(String host) {
        String str = TAG;
        Log.i(str, "addBlockedHost; host: " + host);
        sHosts.put(host, false);
        synchronized (sPreferences) {
            SharedPreferences.Editor edit = sPreferences.edit();
            edit.putBoolean(PREF_KEY_PREFIX + host, false).apply();
        }
    }

    /* access modifiers changed from: private */
    public static void addIgnoredHost(String host) {
        String str = TAG;
        Log.i(str, "addIgnoredHost; host: " + host);
        sHosts.put(host, (Object) null);
    }

    /* access modifiers changed from: private */
    public static void whois(Context context, String host) {
        Log.i(TAG, "whois; host: " + host);
        if (host.startsWith("*.")) {
            host = host.substring(2);
        }
        try {
            Intent i = new Intent("android.intent.action.VIEW");
            i.setFlags(268435456);
            i.setData(Uri.parse("http://whois.domaintools.com/" + host));
            context.startActivity(i);
        } catch (Exception e) {
            Log.w(TAG, e);
            Toast.makeText(context, "Failed to open browser.", 1).show();
        }
    }

    public static abstract class HostReceiver extends BroadcastReceiver {
        /* access modifiers changed from: protected */
        public abstract void handleHost(Context context, String str);

        public void onReceive(Context context, Intent intent) {
            try {
                String host = intent.getAction();
                if (!TextUtils.isEmpty(host)) {
                    handleHost(context, host);
                }
            } catch (Exception e) {
                Log.w(HostsBlocker.TAG, e);
            }
        }
    }

    public static class ContentReceiver extends HostReceiver {
        /* access modifiers changed from: protected */
        public void handleHost(Context context, String host) {
            String access$200 = HostsBlocker.TAG;
            Log.i(access$200, "ContentReceiver; handleHost; host: " + host);
            Intent i = new Intent(context, HostsBlockerActivity.class);
            i.setFlags(268435456);
            i.putExtra("host", host);
            context.startActivity(i);
        }
    }

    public static class AllowReceiver extends HostReceiver {
        /* access modifiers changed from: protected */
        public void handleHost(Context context, String host) {
            String access$200 = HostsBlocker.TAG;
            Log.i(access$200, "AllowReceiver; handleHost; host: " + host);
            HostsBlocker.addAllowedHost(host);
            HostsBlocker.removeNotification(host);
        }
    }

    public static class BlockReceiver extends HostReceiver {
        /* access modifiers changed from: protected */
        public void handleHost(Context context, String host) {
            String access$200 = HostsBlocker.TAG;
            Log.i(access$200, "BlockReceiver; handleHost; host: " + host);
            HostsBlocker.addBlockedHost(host);
            HostsBlocker.removeNotification(host);
        }
    }

    public static class IgnoreReceiver extends HostReceiver {
        /* access modifiers changed from: protected */
        public void handleHost(Context context, String host) {
            String access$200 = HostsBlocker.TAG;
            Log.i(access$200, "IgnoreReceiver; handleHost; host: " + host);
            HostsBlocker.addIgnoredHost(host);
            HostsBlocker.removeNotification(host);
        }
    }

    public static class CancelReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            try {
                String notificationId = intent.getAction();
                String access$200 = HostsBlocker.TAG;
                Log.i(access$200, "CancelReceiver; onReceive; notificationId: " + notificationId);
                HostsBlocker.sNotifications.remove(Integer.valueOf(Integer.parseInt(notificationId)));
            } catch (Exception e) {
                Log.w(HostsBlocker.TAG, e);
            }
        }
    }

    public static class HostsBlockerActivity extends Activity {
        /* access modifiers changed from: protected */
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            String host = getIntent().getStringExtra("host");
            String access$200 = HostsBlocker.TAG;
            Log.i(access$200, "onCreate; host: " + host);
            final String[] items = (String[]) HostsBlocker.splitHost(host).toArray(new String[0]);
            final AtomicReference<String> ref = new AtomicReference<>(items[0]);
            AlertDialog.Builder builder = Utils.getDialogBuilder(this).setTitle(HostsBlocker.sHostsBlockerTitle).setSingleChoiceItems(items, 0, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    ref.set(items[which]);
                }
            });
            if (Build.VERSION.SDK_INT > 21) {
                builder.setNeutralButton("Whois", (DialogInterface.OnClickListener) null).setNegativeButton(HostsBlocker.sAllowLabel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        HostsBlocker.addAllowedHost((String) ref.get());
                        HostsBlocker.removeNotification((String) ref.get());
                    }
                }).setPositiveButton(HostsBlocker.sBlockLabel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        HostsBlocker.addBlockedHost((String) ref.get());
                        HostsBlocker.removeNotification((String) ref.get());
                    }
                });
            } else {
                builder.setNegativeButton("Whois", (DialogInterface.OnClickListener) null).setNeutralButton(HostsBlocker.sAllowLabel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        HostsBlocker.addAllowedHost((String) ref.get());
                        HostsBlocker.removeNotification((String) ref.get());
                    }
                }).setPositiveButton(HostsBlocker.sBlockLabel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        HostsBlocker.addBlockedHost((String) ref.get());
                        HostsBlocker.removeNotification((String) ref.get());
                    }
                });
            }
            AlertDialog dialog = builder.create();
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                public void onDismiss(DialogInterface dialog) {
                    HostsBlockerActivity.this.finish();
                }
            });
            dialog.show();
            if (Build.VERSION.SDK_INT > 21) {
                dialog.getButton(-3).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        HostsBlocker.whois(HostsBlockerActivity.this, (String) ref.get());
                    }
                });
            } else {
                dialog.getButton(-2).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        HostsBlocker.whois(HostsBlockerActivity.this, (String) ref.get());
                    }
                });
            }
            Utils.keepDialogOpenOnOrientationChange(dialog);
        }
    }

    /* access modifiers changed from: private */
    public static void removeNotification(String host) {
        String str = TAG;
        Log.i(str, "removeNotification; host: " + host);
        try {
            sNotificationManager.cancel(host.hashCode());
            if (host.startsWith("*.")) {
                host = host.substring(2);
            }
            synchronized (sNotifications) {
                for (Integer notificationId : sNotifications.keySet()) {
                    if (sNotifications.get(notificationId).endsWith(host)) {
                        sNotificationManager.cancel(notificationId.intValue());
                    }
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }
}
