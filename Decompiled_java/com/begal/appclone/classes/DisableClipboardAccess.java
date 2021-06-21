package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;
import com.begal.appclone.classes.util.SimpleCrypt;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

class DisableClipboardAccess {
    private static final int CLEAR_CLIPBOARD_TIMEOUT_MILLIS = 30000;
    private static final ClipData EMPTY_CLIP_DATA = ClipData.newPlainText("", "");
    /* access modifiers changed from: private */
    public static final String TAG = DisableClipboardAccess.class.getSimpleName();
    /* access modifiers changed from: private */
    public String mClearingClipDataToString;
    /* access modifiers changed from: private */
    public ClipData mClipData;
    /* access modifiers changed from: private */
    public boolean mClipboardTimeout;
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public boolean mDisableClipboardReadAccess;
    /* access modifiers changed from: private */
    public boolean mDisableClipboardWriteAccess;
    /* access modifiers changed from: private */
    public List<ClipboardManager.OnPrimaryClipChangedListener> mListeners = new CopyOnWriteArrayList();
    private boolean mPersistentClipboard;
    private SharedPreferences mPreferences;
    /* access modifiers changed from: private */
    public boolean mPrivateClipboard;
    private String mSetClipboardDataOnStart;
    private Handler mTimeoutHandler = new Handler();

    DisableClipboardAccess(CloneSettings cloneSettings) {
        this.mPrivateClipboard = cloneSettings.getBoolean("privateClipboard", false).booleanValue();
        if (this.mPrivateClipboard) {
            this.mPersistentClipboard = cloneSettings.getBoolean("persistentClipboard", false).booleanValue();
        } else {
            this.mDisableClipboardReadAccess = cloneSettings.getBoolean("disableClipboardReadAccess", false).booleanValue();
            this.mDisableClipboardWriteAccess = cloneSettings.getBoolean("disableClipboardWriteAccess", false).booleanValue();
        }
        this.mClipboardTimeout = cloneSettings.getBoolean("clipboardTimeout", false).booleanValue();
        this.mSetClipboardDataOnStart = cloneSettings.getString("setClipboardDataOnStart", "");
        String str = TAG;
        Log.i(str, "DisableClipboardAccess; mPrivateClipboard: " + this.mPrivateClipboard + ", mPersistentClipboard: " + this.mPersistentClipboard + ", mDisableClipboardReadAccess: " + this.mDisableClipboardReadAccess + ", mDisableClipboardWriteAccess: " + this.mDisableClipboardWriteAccess + ", mClipboardTimeout: " + this.mClipboardTimeout);
    }

    /* access modifiers changed from: package-private */
    public void init(Context context) {
        if (this.mDisableClipboardReadAccess || this.mDisableClipboardWriteAccess || this.mPrivateClipboard || this.mClipboardTimeout) {
            this.mContext = context;
            this.mPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            installClipboardManagerHook(context);
        }
        if (!TextUtils.isEmpty(this.mSetClipboardDataOnStart)) {
            try {
                ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", this.mSetClipboardDataOnStart));
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0066 A[Catch:{ Exception -> 0x009b }] */
    private void installClipboardManagerHook(Context context) {
        Object originalService;
        loadClipboardIfPersistent();
        try {
            final ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            clipboardManager.hasText();
            if (Build.VERSION.SDK_INT < 26) {
                if (!"O".equals(Build.VERSION.CODENAME)) {
                    Field field = clipboardManager.getClass().getDeclaredField("sService");
                    field.setAccessible(true);
                    originalService = field.get((Object) null);
                    final Object originalService2 = originalService;
                    InvocationHandler invocationHandler = new InvocationHandler() {
                        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                            boolean z = false;
                            if (DisableClipboardAccess.this.mPrivateClipboard) {
                                if ("hasClipboardText".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; hasClipboardText; ");
                                    if (DisableClipboardAccess.this.mClipData != null) {
                                        z = true;
                                    }
                                    return Boolean.valueOf(z);
                                } else if ("hasPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; hasPrimaryClip; ");
                                    if (DisableClipboardAccess.this.mClipData != null) {
                                        z = true;
                                    }
                                    return Boolean.valueOf(z);
                                } else if ("getPrimaryClipDescription".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClipDescription; ");
                                    if (DisableClipboardAccess.this.mClipData != null) {
                                        return DisableClipboardAccess.cloneParcelable(DisableClipboardAccess.this.mClipData.getDescription());
                                    }
                                    return new ClipDescription("", new String[0]);
                                } else if ("getPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClip; ");
                                    if (DisableClipboardAccess.this.mClipData != null) {
                                        return DisableClipboardAccess.cloneParcelable(DisableClipboardAccess.this.mClipData);
                                    }
                                    return new ClipData("", new String[0], new ClipData.Item(""));
                                } else if ("addPrimaryClipChangedListener".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; addPrimaryClipChangedListener; ");
                                    DisableClipboardAccess.this.mListeners.add(args[0]);
                                    return null;
                                } else if ("removePrimaryClipChangedListener".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; removePrimaryClipChangedListener; ");
                                    DisableClipboardAccess.this.mListeners.remove(args[0]);
                                    return null;
                                } else if ("setPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; setPrimaryClip; ");
                                    ClipData clipData = args[0];
                                    ClipData unused = DisableClipboardAccess.this.mClipData = (ClipData) DisableClipboardAccess.cloneParcelable(clipData);
                                    DisableClipboardAccess.this.saveClipboardIfPersistent();
                                    for (ClipboardManager.OnPrimaryClipChangedListener listener : DisableClipboardAccess.this.mListeners) {
                                        try {
                                            listener.onPrimaryClipChanged();
                                        } catch (Exception e) {
                                            Log.w(DisableClipboardAccess.TAG, e);
                                        }
                                    }
                                    DisableClipboardAccess.this.startClipboardTimeout(clipboardManager, clipData);
                                    return null;
                                }
                            }
                            if (DisableClipboardAccess.this.mDisableClipboardReadAccess) {
                                if ("hasClipboardText".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; hasClipboardText; disabled clipboard read access");
                                    return false;
                                } else if ("hasPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; hasPrimaryClip; disabled clipboard read access");
                                    return false;
                                } else if ("getPrimaryClipDescription".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClipDescription; disabled clipboard read access");
                                    return new ClipDescription("", new String[0]);
                                } else if ("getPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClip; disabled clipboard read access");
                                    return null;
                                } else if ("addPrimaryClipChangedListener".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; addPrimaryClipChangedListener; disabled clipboard read access");
                                    return null;
                                } else if ("removePrimaryClipChangedListener".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; removePrimaryClipChangedListener; disabled clipboard read access");
                                    return null;
                                }
                            }
                            if (DisableClipboardAccess.this.mDisableClipboardWriteAccess) {
                                if ("setPrimaryClip".equals(method.getName())) {
                                    Log.i(DisableClipboardAccess.TAG, "invoke; setPrimaryClip; disabled clipboard write access");
                                    return null;
                                }
                            } else if (DisableClipboardAccess.this.mClipboardTimeout && "setPrimaryClip".equals(method.getName())) {
                                DisableClipboardAccess.this.startClipboardTimeout(clipboardManager, args[0]);
                            }
                            return method.invoke(originalService2, args);
                        }
                    };
                    Class<?> clazz = Class.forName("android.content.IClipboard");
                    Object proxy = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{clazz}, invocationHandler);
                    if (Build.VERSION.SDK_INT < 26) {
                        if (!"O".equals(Build.VERSION.CODENAME)) {
                            Field field2 = clipboardManager.getClass().getDeclaredField("sService");
                            field2.setAccessible(true);
                            field2.set((Object) null, proxy);
                            Log.i(TAG, "installClipboardManagerHook; installed proxy");
                        }
                    }
                    Field field3 = clipboardManager.getClass().getDeclaredField("mService");
                    field3.setAccessible(true);
                    field3.set(clipboardManager, proxy);
                    Log.i(TAG, "installClipboardManagerHook; installed proxy");
                }
            }
            Field field4 = clipboardManager.getClass().getDeclaredField("mService");
            field4.setAccessible(true);
            originalService = field4.get(clipboardManager);
            final Object originalService22 = originalService;
            InvocationHandler invocationHandler2 = new InvocationHandler() {
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    boolean z = false;
                    if (DisableClipboardAccess.this.mPrivateClipboard) {
                        if ("hasClipboardText".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; hasClipboardText; ");
                            if (DisableClipboardAccess.this.mClipData != null) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        } else if ("hasPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; hasPrimaryClip; ");
                            if (DisableClipboardAccess.this.mClipData != null) {
                                z = true;
                            }
                            return Boolean.valueOf(z);
                        } else if ("getPrimaryClipDescription".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClipDescription; ");
                            if (DisableClipboardAccess.this.mClipData != null) {
                                return DisableClipboardAccess.cloneParcelable(DisableClipboardAccess.this.mClipData.getDescription());
                            }
                            return new ClipDescription("", new String[0]);
                        } else if ("getPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClip; ");
                            if (DisableClipboardAccess.this.mClipData != null) {
                                return DisableClipboardAccess.cloneParcelable(DisableClipboardAccess.this.mClipData);
                            }
                            return new ClipData("", new String[0], new ClipData.Item(""));
                        } else if ("addPrimaryClipChangedListener".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; addPrimaryClipChangedListener; ");
                            DisableClipboardAccess.this.mListeners.add(args[0]);
                            return null;
                        } else if ("removePrimaryClipChangedListener".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; removePrimaryClipChangedListener; ");
                            DisableClipboardAccess.this.mListeners.remove(args[0]);
                            return null;
                        } else if ("setPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; setPrimaryClip; ");
                            ClipData clipData = args[0];
                            ClipData unused = DisableClipboardAccess.this.mClipData = (ClipData) DisableClipboardAccess.cloneParcelable(clipData);
                            DisableClipboardAccess.this.saveClipboardIfPersistent();
                            for (ClipboardManager.OnPrimaryClipChangedListener listener : DisableClipboardAccess.this.mListeners) {
                                try {
                                    listener.onPrimaryClipChanged();
                                } catch (Exception e) {
                                    Log.w(DisableClipboardAccess.TAG, e);
                                }
                            }
                            DisableClipboardAccess.this.startClipboardTimeout(clipboardManager, clipData);
                            return null;
                        }
                    }
                    if (DisableClipboardAccess.this.mDisableClipboardReadAccess) {
                        if ("hasClipboardText".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; hasClipboardText; disabled clipboard read access");
                            return false;
                        } else if ("hasPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; hasPrimaryClip; disabled clipboard read access");
                            return false;
                        } else if ("getPrimaryClipDescription".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClipDescription; disabled clipboard read access");
                            return new ClipDescription("", new String[0]);
                        } else if ("getPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; getPrimaryClip; disabled clipboard read access");
                            return null;
                        } else if ("addPrimaryClipChangedListener".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; addPrimaryClipChangedListener; disabled clipboard read access");
                            return null;
                        } else if ("removePrimaryClipChangedListener".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; removePrimaryClipChangedListener; disabled clipboard read access");
                            return null;
                        }
                    }
                    if (DisableClipboardAccess.this.mDisableClipboardWriteAccess) {
                        if ("setPrimaryClip".equals(method.getName())) {
                            Log.i(DisableClipboardAccess.TAG, "invoke; setPrimaryClip; disabled clipboard write access");
                            return null;
                        }
                    } else if (DisableClipboardAccess.this.mClipboardTimeout && "setPrimaryClip".equals(method.getName())) {
                        DisableClipboardAccess.this.startClipboardTimeout(clipboardManager, args[0]);
                    }
                    return method.invoke(originalService22, args);
                }
            };
            Class<?> clazz2 = Class.forName("android.content.IClipboard");
            Object proxy2 = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{clazz2}, invocationHandler2);
            if (Build.VERSION.SDK_INT < 26) {
            }
            Field field32 = clipboardManager.getClass().getDeclaredField("mService");
            field32.setAccessible(true);
            field32.set(clipboardManager, proxy2);
            Log.i(TAG, "installClipboardManagerHook; installed proxy");
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: private */
    public void startClipboardTimeout(final ClipboardManager clipboardManager, ClipData clipData) {
        try {
            if (EMPTY_CLIP_DATA.equals(clipData)) {
                Log.i(TAG, "startClipboardTimeout; empty clip data");
                return;
            }
            this.mTimeoutHandler.removeCallbacksAndMessages((Object) null);
            this.mTimeoutHandler.postDelayed(new Runnable() {
                public void run() {
                    DisableClipboardAccess disableClipboardAccess = DisableClipboardAccess.this;
                    String unused = disableClipboardAccess.mClearingClipDataToString = "" + clipboardManager.getPrimaryClip();
                    long when = System.currentTimeMillis() + 30000;
                    Intent i = new Intent();
                    i.setComponent(new ComponentName(DisableClipboardAccess.this.mContext, ClearClipboardReceiver.class));
                    i.setPackage(DisableClipboardAccess.this.mContext.getPackageName());
                    i.putExtra("expected_clip_data_to_string", DisableClipboardAccess.this.mClearingClipDataToString);
                    PendingIntent pendingIntent = PendingIntent.getBroadcast(DisableClipboardAccess.this.mContext, (int) when, i, 0);
                    AlarmManager alarmManager = (AlarmManager) DisableClipboardAccess.this.mContext.getSystemService("alarm");
                    if (Build.VERSION.SDK_INT >= 23) {
                        alarmManager.setAndAllowWhileIdle(0, when, pendingIntent);
                    } else if (Build.VERSION.SDK_INT >= 19) {
                        alarmManager.setExact(0, when, pendingIntent);
                    } else {
                        alarmManager.set(0, when, pendingIntent);
                    }
                }
            }, 100);
            this.mTimeoutHandler.postDelayed(new Runnable() {
                public void run() {
                    DisableClipboardAccess.clearClipboard(DisableClipboardAccess.this.mContext, DisableClipboardAccess.this.mClearingClipDataToString);
                }
            }, 30000);
            Log.i(TAG, "startClipboardTimeout; started clipboard timeout");
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }

    public static class ClearClipboardReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            String access$100 = DisableClipboardAccess.TAG;
            Log.i(access$100, "onReceive; intent: " + intent);
            DisableClipboardAccess.clearClipboard(context, intent.getStringExtra("expected_clip_data_to_string"));
        }
    }

    /* access modifiers changed from: private */
    public static void clearClipboard(Context context, String expectedClipDataToString) {
        Log.i(TAG, "clearClipboard; ");
        try {
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (("" + clipboardManager.getPrimaryClip()).equals(expectedClipDataToString)) {
                Log.i(TAG, "clearClipboard; clearing clipboard");
                clipboardManager.setPrimaryClip(EMPTY_CLIP_DATA);
                Toast.makeText(context, "Clipboard cleared", 0).show();
                return;
            }
            Log.i(TAG, "clearClipboard; not clearing clipboard; found other clip data");
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    private void loadClipboardIfPersistent() {
        if (this.mPersistentClipboard) {
            try {
                String s = this.mPreferences.getString("persistent_clip_data", (String) null);
                if (!TextUtils.isEmpty(s)) {
                    byte[] bytes = Base64.decode(new SimpleCrypt("gvdshfjry8wehu43").decrypt(s), 0);
                    Parcel parcel = Parcel.obtain();
                    parcel.unmarshall(bytes, 0, bytes.length);
                    parcel.setDataPosition(0);
                    this.mClipData = (ClipData) ClipData.CREATOR.createFromParcel(parcel);
                    Log.i(TAG, "saveClipboardIfPersistent; clipboard loaded");
                }
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }

    /* access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public void saveClipboardIfPersistent() {
        if (this.mPersistentClipboard && this.mClipData != null) {
            try {
                Parcel parcel = Parcel.obtain();
                this.mClipData.writeToParcel(parcel, 0);
                this.mPreferences.edit().putString("persistent_clip_data", new SimpleCrypt("gvdshfjry8wehu43").encrypt(Base64.encodeToString(parcel.marshall(), 2))).commit();
                Log.i(TAG, "saveClipboardIfPersistent; clipboard saved");
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }

    /* access modifiers changed from: private */
    public static <T extends Parcelable> T cloneParcelable(T parcelable) {
        Parcel p = null;
        if (parcelable == null) {
            return p;
        }
        try {
            p = Parcel.obtain();
            p.writeValue(parcelable);
            p.setDataPosition(0);
            return (Parcelable) p.readValue(ClipData.class.getClassLoader());
        } finally {
            if (p != null) {
                p.recycle();
            }
        }
    }
}
