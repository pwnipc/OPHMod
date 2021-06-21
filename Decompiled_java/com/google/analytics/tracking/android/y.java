package com.google.analytics.tracking.android;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.analytics.tracking.android.g;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: Source */
final class y extends Thread implements f {
    private static y c;
    /* access modifiers changed from: private */
    public volatile List B;
    /* access modifiers changed from: private */
    public volatile ag C;
    private final LinkedBlockingQueue Code = new LinkedBlockingQueue();
    private volatile boolean I = false;
    /* access modifiers changed from: private */
    public volatile boolean J;
    private volatile boolean Z = false;
    /* access modifiers changed from: private */
    public volatile String a;
    /* access modifiers changed from: private */
    public volatile String b;
    /* access modifiers changed from: private */
    public volatile an d;
    /* access modifiers changed from: private */
    public final Context e;

    static /* synthetic */ void Code(y yVar, Map map) {
        String str;
        PackageManager packageManager = yVar.e.getPackageManager();
        String packageName = yVar.e.getPackageName();
        String installerPackageName = packageManager.getInstallerPackageName(packageName);
        String str2 = null;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(yVar.e.getPackageName(), 0);
            if (packageInfo != null) {
                str = packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
                try {
                    str2 = packageInfo.versionName;
                } catch (PackageManager.NameNotFoundException e2) {
                    af.I("Error retrieving package info: appName set to " + str);
                    Code(map, "appName", str);
                    Code(map, "appVersion", str2);
                    Code(map, "appId", packageName);
                    Code(map, "appInstallerId", installerPackageName);
                    map.put("apiVersion", "1");
                }
            } else {
                str = packageName;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            str = packageName;
            af.I("Error retrieving package info: appName set to " + str);
            Code(map, "appName", str);
            Code(map, "appVersion", str2);
            Code(map, "appId", packageName);
            Code(map, "appInstallerId", installerPackageName);
            map.put("apiVersion", "1");
        }
        Code(map, "appName", str);
        Code(map, "appVersion", str2);
        Code(map, "appId", packageName);
        Code(map, "appInstallerId", installerPackageName);
        map.put("apiVersion", "1");
    }

    static /* synthetic */ void I(y yVar, Map map) {
        String str = (String) map.get("rawException");
        if (str != null) {
            map.remove("rawException");
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(ar.B(str)));
                Object readObject = objectInputStream.readObject();
                objectInputStream.close();
                if (readObject instanceof Throwable) {
                    Throwable th = (Throwable) readObject;
                    map.put("exDescription", new p(yVar.e, new ArrayList()).Code((String) map.get("exceptionThreadName"), th));
                }
            } catch (IOException e2) {
                af.C("IOException reading exception");
            } catch (ClassNotFoundException e3) {
                af.C("ClassNotFoundException reading exception");
            }
        }
    }

    static /* synthetic */ boolean I(Map map) {
        String str;
        if (map.get("sampleRate") != null) {
            double I2 = ar.I((String) map.get("sampleRate"));
            if (I2 <= 0.0d) {
                return true;
            }
            if (I2 < 100.0d && (str = (String) map.get("clientId")) != null && ((double) (Math.abs(str.hashCode()) % XCallback.PRIORITY_HIGHEST)) >= I2 * 100.0d) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ String J(Map map) {
        String str = (String) map.get("internalHitUrl");
        if (str == null) {
            return (!map.containsKey("useSecure") || ar.Z((String) map.get("useSecure"))) ? "https://ssl.google-analytics.com/collect" : "http://www.google-analytics.com/collect";
        }
        return str;
    }

    static /* synthetic */ void Z(Map map) {
        String J2 = ar.J((String) map.get("campaign"));
        if (!TextUtils.isEmpty(J2)) {
            Map Code2 = ar.Code(J2);
            map.put("campaignContent", Code2.get("utm_content"));
            map.put("campaignMedium", Code2.get("utm_medium"));
            map.put("campaignName", Code2.get("utm_campaign"));
            map.put("campaignSource", Code2.get("utm_source"));
            map.put("campaignKeyword", Code2.get("utm_term"));
            map.put("campaignId", Code2.get("utm_id"));
            map.put("gclid", Code2.get("gclid"));
            map.put("dclid", Code2.get("dclid"));
            map.put("gmob_t", Code2.get("gmob_t"));
        }
    }

    static y Code(Context context) {
        if (c == null) {
            c = new y(context);
        }
        return c;
    }

    private y(Context context) {
        super("GAThread");
        if (context != null) {
            this.e = context.getApplicationContext();
        } else {
            this.e = context;
        }
        start();
    }

    public final void Code(Map map) {
        final HashMap hashMap = new HashMap(map);
        final long currentTimeMillis = System.currentTimeMillis();
        hashMap.put("hitTime", Long.toString(currentTimeMillis));
        Code((Runnable) new Runnable() {
            public final void run() {
                String Code2;
                hashMap.put("clientId", y.this.b);
                if (!y.this.J) {
                    y yVar = y.this;
                    if (!y.I(hashMap)) {
                        if (!TextUtils.isEmpty(y.this.a)) {
                            hashMap.put("campaign", y.this.a);
                            String unused = y.this.a = null;
                        }
                        y.Code(y.this, hashMap);
                        y yVar2 = y.this;
                        y.Z(hashMap);
                        y.I(y.this, hashMap);
                        ag B = y.this.C;
                        Map map = hashMap;
                        HashMap hashMap = new HashMap();
                        for (Map.Entry entry : map.entrySet()) {
                            ai Code3 = B.Code((String) entry.getKey());
                            if (!(Code3 == null || (Code2 = Code3.Code((String) entry.getKey())) == null)) {
                                String str = (String) entry.getValue();
                                if (Code3.I() != null) {
                                    str = Code3.I().Code(str);
                                }
                                if (str != null && !str.equals(Code3.Code())) {
                                    hashMap.put(Code2, str);
                                }
                            }
                        }
                        an a = y.this.d;
                        long j = currentTimeMillis;
                        y yVar3 = y.this;
                        a.Code(hashMap, j, y.J(hashMap), y.this.B);
                    }
                }
            }
        });
    }

    private static void Code(Map map, String str, String str2) {
        if (!map.containsKey(str)) {
            map.put(str, str2);
        }
    }

    public final void Code() {
        Code((Runnable) new Runnable() {
            public final void run() {
                y.this.d.Z();
            }
        });
    }

    public final void Code(final boolean z) {
        Code((Runnable) new Runnable() {
            public final void run() {
                if (y.this.J != z) {
                    if (z) {
                        try {
                            y.this.e.getFileStreamPath("gaOptOut").createNewFile();
                        } catch (IOException e) {
                            af.C("Error creating optOut file.");
                        }
                        y.this.d.J();
                    } else {
                        y.this.e.deleteFile("gaOptOut");
                    }
                    boolean unused = y.this.J = z;
                }
            }
        });
    }

    public final void Code(final g.I i) {
        Code((Runnable) new Runnable() {
            public final void run() {
                Boolean unused = g.this.C = Boolean.valueOf(y.this.J);
            }
        });
    }

    public final void Code(final g.Code code) {
        Code((Runnable) new Runnable() {
            public final void run() {
                g.Code code = code;
                String unused = g.this.B = y.this.b;
            }
        });
    }

    private void Code(Runnable runnable) {
        this.Code.add(runnable);
    }

    private boolean Code(String str) {
        try {
            FileOutputStream openFileOutput = this.e.openFileOutput("gaClientId", 0);
            openFileOutput.write(str.getBytes());
            openFileOutput.close();
            return true;
        } catch (FileNotFoundException e2) {
            af.I("Error creating clientId file.");
            return false;
        } catch (IOException e3) {
            af.I("Error writing to clientId file.");
            return false;
        }
    }

    private String J() {
        String str = null;
        try {
            FileInputStream openFileInput = this.e.openFileInput("gaClientId");
            byte[] bArr = new byte[128];
            int read = openFileInput.read(bArr, 0, 128);
            if (openFileInput.available() > 0) {
                af.I("clientId file seems corrupted, deleting it.");
                openFileInput.close();
                this.e.deleteFile("gaInstallData");
            }
            if (read <= 0) {
                af.I("clientId file seems empty, deleting it.");
                openFileInput.close();
                this.e.deleteFile("gaInstallData");
            } else {
                String str2 = new String(bArr, 0, read);
                try {
                    openFileInput.close();
                    str = str2;
                } catch (FileNotFoundException e2) {
                    str = str2;
                } catch (IOException e3) {
                    str = str2;
                    af.I("Error reading clientId file, deleting it.");
                    this.e.deleteFile("gaInstallData");
                } catch (NumberFormatException e4) {
                    str = str2;
                    af.I("cliendId file doesn't have long value, deleting it.");
                    this.e.deleteFile("gaInstallData");
                }
            }
        } catch (FileNotFoundException e5) {
        } catch (IOException e6) {
            af.I("Error reading clientId file, deleting it.");
            this.e.deleteFile("gaInstallData");
        } catch (NumberFormatException e7) {
            af.I("cliendId file doesn't have long value, deleting it.");
            this.e.deleteFile("gaInstallData");
        }
        if (str != null) {
            return str;
        }
        String lowerCase = UUID.randomUUID().toString().toLowerCase();
        if (!Code(lowerCase)) {
            return "0";
        }
        return lowerCase;
    }

    private static String I(Context context) {
        try {
            FileInputStream openFileInput = context.openFileInput("gaInstallData");
            byte[] bArr = new byte[8192];
            int read = openFileInput.read(bArr, 0, 8192);
            if (openFileInput.available() > 0) {
                af.I("Too much campaign data, ignoring it.");
                openFileInput.close();
                context.deleteFile("gaInstallData");
                return null;
            }
            openFileInput.close();
            context.deleteFile("gaInstallData");
            if (read <= 0) {
                af.C("Campaign file is empty.");
                return null;
            }
            String str = new String(bArr, 0, read);
            af.Z("Campaign found: " + str);
            return str;
        } catch (FileNotFoundException e2) {
            af.Z("No campaign data found.");
            return null;
        } catch (IOException e3) {
            af.I("Error reading campaign data.");
            context.deleteFile("gaInstallData");
            return null;
        }
    }

    private static String Code(Throwable th) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    public final void run() {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e2) {
            af.C("sleep interrupted in GAThread initialize");
        }
        if (this.d == null) {
            this.d = new s(this.e, this, (byte) 0);
        }
        this.d.B();
        this.B = new ArrayList();
        this.B.add(new aa("appendVersion", "_v", "ma1b5"));
        this.B.add(new aa("appendQueueTime", "qt", (String) null));
        this.B.add(new aa("appendCacheBuster", "z", (String) null));
        this.C = new ag();
        aj.Code(this.C);
        try {
            this.J = this.e.getFileStreamPath("gaOptOut").exists();
            this.b = J();
            this.a = I(this.e);
        } catch (Throwable th) {
            af.I("Error initializing the GAThread: " + Code(th));
            af.I("Google Analytics will not start up.");
            this.I = true;
        }
        while (true) {
            try {
                Runnable runnable = (Runnable) this.Code.take();
                if (!this.I) {
                    runnable.run();
                }
            } catch (InterruptedException e3) {
                af.Z(e3.toString());
            } catch (Throwable th2) {
                af.I("Error on GAThread: " + Code(th2));
                af.I("Google Analytics is shutting down.");
                this.I = true;
            }
        }
    }

    public final LinkedBlockingQueue I() {
        return this.Code;
    }

    public final Thread Z() {
        return this;
    }
}
