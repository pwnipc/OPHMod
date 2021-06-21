package com.opera.mini.android;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: Source */
public class s extends db {
    public static DisplayMetrics ah;
    public static String ai;
    public static String aj;
    public static long ak;
    public static int al;
    public static boolean am;
    private static long an;
    private static float ao = 0.0f;
    private static float ap = 0.0f;
    private static String aq = null;
    private static String ar = null;
    private static String as = null;
    private static String at = null;
    private static String au = null;
    private static String av;
    private static Object aw = new Object();

    static {
        boolean z;
        try {
            al = Integer.parseInt(Build.VERSION.SDK);
        } catch (Throwable th) {
            al = 3;
        }
        if (al >= 4) {
            z = true;
        } else {
            z = false;
        }
        am = z;
    }

    public static void Code(Browser browser) {
        r = 2;
        z = true;
        h = true;
        Z = be.Code((Context) browser);
        g = 1;
        f = 0;
        i = u();
        SecureRandom secureRandom = new SecureRandom();
        db.I(secureRandom.nextInt());
        db.I(secureRandom.nextInt());
        db.I(secureRandom.nextInt());
        db.F = Math.max(db.F, 160);
        k = 2;
        ah = new DisplayMetrics();
        browser.getWindowManager().getDefaultDisplay().getMetrics(ah);
        n = (int) ((n() + m()) / 2.0f);
        j = 20;
        o = true;
        p = true;
        x = 8226;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        ai = language;
        if (language.equals("no")) {
            ai = "nb";
        } else if (ai.equals("iw")) {
            ai = "he";
        } else if (ai.equals("in")) {
            ai = "id";
        }
        aj = locale.getCountry().toLowerCase();
        y = true;
        w = true;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) browser.getSystemService("activity")).getMemoryInfo(memoryInfo);
        ak = memoryInfo.availMem;
        long maxMemory = (Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory()) + Runtime.getRuntime().freeMemory();
        an = maxMemory;
        B = Math.min(maxMemory, 5242880);
        v = 4;
        if (Runtime.getRuntime().maxMemory() <= 16777216) {
            v = 3;
        }
        Runtime.getRuntime().maxMemory();
        J = browser.getPackageManager().queryBroadcastReceivers(new Intent("com.android.launcher.action.INSTALL_SHORTCUT"), 0).size() > 0;
        D = 32768;
    }

    private static String u() {
        SharedPreferences preferences = Browser.I.getPreferences(0);
        String string = preferences.getString("id_pref", "");
        String string2 = preferences.getString("loc_pref", "");
        String locale = Locale.getDefault().toString();
        if (preferences.contains("ua_pref") && string.compareTo(Build.FINGERPRINT) == 0 && string2.compareTo(locale) == 0) {
            return preferences.getString("ua_pref", "");
        }
        WebView webView = new WebView(Browser.I.getApplicationContext());
        String str = Build.FINGERPRINT;
        String userAgentString = webView.getSettings().getUserAgentString();
        try {
            webView.destroy();
        } catch (Throwable th) {
        }
        SharedPreferences.Editor edit = preferences.edit();
        edit.putString("id_pref", str);
        edit.putString("loc_pref", locale);
        edit.putString("ua_pref", userAgentString);
        edit.commit();
        return userAgentString;
    }

    public static void Code(int i, int i2) {
        int i3 = (((i * i2) * 3) * b) / 1024;
        if (Code) {
            i3 = (i3 * 12) / 10;
        }
        a = i3;
        int i4 = (int) (((an - ((long) (a * 1024))) * 2) / 3072);
        d = i4;
        e = i4 / 5;
    }

    public static void k() {
    }

    public static void l() {
        G = null;
        af = C.Code().Z();
        ae = C.Code;
        ad = af.length;
    }

    public static float m() {
        if (ao < 1.0f) {
            v();
        }
        return ao;
    }

    public static float n() {
        if (ap < 1.0f) {
            v();
        }
        return ap;
    }

    private static void v() {
        ao = 0.0f;
        ap = 0.0f;
        String str = Build.DEVICE;
        String str2 = Build.MODEL;
        if (str.equals("qsd8250_surf") || str2.equals("Dell Streak")) {
            ao = 190.0f;
            ap = 190.0f;
        } else if (str2.equals("VTAB1008")) {
            ao = 160.0f;
            ap = 160.0f;
        } else if (str2.equals("Dell Streak 7")) {
            ao = 150.0f;
            ap = 150.0f;
        } else if (str2.equals("A1_07")) {
            ao = 127.5f;
            ap = 100.0f;
        } else if (str2.startsWith("GT-N710") || str2.equalsIgnoreCase("SCH-N719") || str2.startsWith("SHV-E250")) {
            ao = 267.0f;
            ap = 267.0f;
        } else if (al < 4 || (((double) (((float) ac.Code()) - ah.xdpi)) < 79.0d && ((double) (((float) ac.Code()) - ah.ydpi)) < 79.0d && ((double) Math.abs(ah.ydpi - ah.xdpi)) <= 40.0d)) {
            ao = ah.xdpi;
            ap = ah.ydpi;
        } else {
            ao = (float) ac.Code();
            ap = (float) ac.Code();
        }
    }

    public static void o() {
        ah = new DisplayMetrics();
        Browser.I.getWindowManager().getDefaultDisplay().getMetrics(ah);
    }

    public static void f(String str) {
        synchronized (aw) {
            av = str;
        }
    }

    public static String p() {
        String str;
        synchronized (aw) {
            str = av;
        }
        return str;
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.String, java.lang.String[], java.io.InputStream] */
    public static String Code(Context context) {
        byte[] J;
        Cursor query;
        ? r2 = 0;
        if (aq != null) {
            return aq;
        }
        if (B(context) && (query = context.getContentResolver().query(Uri.parse("content://com.opera.branding.BrandingProvider/branding/1"), r2, r2, r2, r2)) != null) {
            if (query.moveToFirst()) {
                try {
                    aq = query.getString(query.getColumnIndexOrThrow("Branding"));
                    ar = query.getString(query.getColumnIndexOrThrow("Signature"));
                    as = query.getString(query.getColumnIndexOrThrow("HomescreenTitle"));
                    at = query.getString(query.getColumnIndexOrThrow("HomescreenUrl"));
                    int columnIndex = query.getColumnIndex("ChannelID");
                    if (columnIndex != -1) {
                        au = query.getString(columnIndex);
                    }
                } catch (Exception e) {
                    if (0 == 0) {
                        aq = r2;
                    }
                }
            }
            query.close();
        }
        if (aq == null && (J = J(context)) != null) {
            try {
                JSONObject jSONObject = (JSONObject) new JSONTokener(new String(J)).nextValue();
                if (jSONObject != null) {
                    String string = jSONObject.getString("Branding");
                    aq = string;
                    aq = string.equals("") ? r2 : aq;
                    ar = jSONObject.getString("Signature");
                    as = jSONObject.getString("HomescreenTitle");
                    at = jSONObject.getString("HomescreenUrl");
                    String string2 = jSONObject.getString("ChannelID");
                    au = string2;
                    au = string2.equals("") ? r2 : au;
                }
            } catch (JSONException e2) {
                aq = r2;
            }
        }
        if (aq != null) {
            try {
                am Code = am.Code(context);
                if (aq != null && !aq.equals("")) {
                    Code.Z("Branding");
                    Code.Code("Branding", aq.getBytes("utf-8"));
                }
                if (ar != null && !ar.equals("")) {
                    Code.Z("Signature");
                    Code.Code("Signature", ar.getBytes("utf-8"));
                }
                if (as != null && !as.equals("")) {
                    Code.Z("HomescreenTitle");
                    Code.Code("HomescreenTitle", as.getBytes("utf-8"));
                }
                if (at != null && !at.equals("")) {
                    Code.Z("HomescreenUrl");
                    Code.Code("HomescreenUrl", at.getBytes("utf-8"));
                }
                if (au != null && !au.equals("")) {
                    Code.Z("ChannelID");
                    Code.Code("ChannelID", au.getBytes("utf-8"));
                }
            } catch (SQLException | IOException e3) {
            }
        } else {
            try {
                am Code2 = am.Code(context);
                aq = Code2.Code("Branding") ? new String(Code2.I("Branding"), "utf-8") : r2;
                ar = Code2.Code("Signature") ? new String(Code2.I("Signature"), "utf-8") : r2;
                as = Code2.Code("HomescreenTitle") ? new String(Code2.I("HomescreenTitle"), "utf-8") : r2;
                at = Code2.Code("HomescreenUrl") ? new String(Code2.I("HomescreenUrl"), "utf-8") : r2;
                au = Code2.Code("ChannelID ") ? new String(Code2.I("ChannelID"), "utf-8") : r2;
            } catch (IOException e4) {
                aq = r2;
            } catch (SQLException e5) {
                aq = r2;
            }
        }
        if (!(aq == null || ar == null)) {
            try {
                InputStream open = context.getAssets().open("pub_key");
                if (!bp.Code(open, aq, ar)) {
                    aq = null;
                }
                if (open != null) {
                    try {
                        open.close();
                    } catch (IOException e6) {
                    }
                }
            } catch (IOException e7) {
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e8) {
                    }
                }
            } catch (Throwable th) {
                if (r2 != 0) {
                    try {
                        r2.close();
                    } catch (IOException e9) {
                    }
                }
                throw th;
            }
        }
        if (aq != null) {
            return aq;
        }
        return "elm";
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006c, code lost:
        if (r0.exists() == false) goto L_0x006e;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static byte[] J(Context context) {
        FileInputStream fileInputStream;
        byte[] bArr;
        try {
            File file = new File("/system/lib", "libpreinstallinfo.so");
            if (!file.exists()) {
                file = new File(I(context).dataDir + "/lib", "libpreinstallinfo.so");
                if (!file.exists()) {
                    if (al >= 9) {
                        file = new File(ae.Code(context), "libpreinstallinfo.so");
                    }
                    file = null;
                }
            }
            if (file == null) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            int length = (int) file.length();
            if (length > 0) {
                bArr = new byte[length];
                for (int i = 0; i < length; i += fileInputStream.read(bArr, i, Math.min(1024, length - i))) {
                }
            } else {
                bArr = null;
            }
            fileInputStream.close();
            return bArr;
        } catch (IOException e) {
            return null;
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    public static void q() {
        String str = as;
        String str2 = at;
        if (!Browser.I.getPreferences(0).getBoolean("isHomescreenShortcutCreated", false) && str != null && !str.equals("") && str2 != null && !str2.equals("")) {
            ar.Code.J(str, str2);
            SharedPreferences.Editor edit = Browser.I.getPreferences(0).edit();
            edit.putBoolean("isHomescreenShortcutCreated", true);
            edit.commit();
        }
    }

    static String r() {
        if ("".equals(au)) {
            return null;
        }
        return au;
    }

    public static String s() {
        if ("a".equals("m")) {
            return "amazon";
        }
        return "androidmarket";
    }

    public static boolean Code(String str, PackageManager packageManager) {
        try {
            packageManager.getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean t() {
        return al >= 7;
    }

    public static void Code(SharedPreferences.Editor editor) {
        if (al >= 9) {
            ae.Code(editor);
        } else {
            editor.commit();
        }
    }

    private static boolean B(Context context) {
        try {
            if (I(context) != null) {
                return true;
            }
            return false;
        } catch (Exception e) {
        }
    }

    public static boolean Code(Context context, String str, String str2) {
        String str3;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo != null) {
                for (Signature signature : packageInfo.signatures) {
                    CertificateFactory instance = CertificateFactory.getInstance("X509");
                    MessageDigest instance2 = MessageDigest.getInstance("SHA1");
                    if (instance == null || instance2 == null) {
                        str3 = null;
                    } else {
                        byte[] digest = instance2.digest(((X509Certificate) instance.generateCertificate(new ByteArrayInputStream(signature.toByteArray()))).getPublicKey().getEncoded());
                        str3 = String.format(Locale.US, "%0" + ((digest.length + 1) / 2) + "x", new Object[]{new BigInteger(1, digest)});
                    }
                    if (str2.equalsIgnoreCase(str3)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e) {
        }
        return false;
    }

    private static void Code(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void Code(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    static ApplicationInfo I(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static String Z(Context context) {
        if (al >= 9) {
            return ae.Code(context);
        }
        return I(Browser.I).dataDir + "/lib/";
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0052 A[SYNTHETIC, Splitter:B:24:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0063 A[SYNTHETIC, Splitter:B:31:0x0063] */
    public static t Code(String str, String str2, File file) {
        InputStream inputStream;
        ZipFile zipFile;
        InputStream inputStream2;
        ZipFile zipFile2;
        FileOutputStream fileOutputStream = null;
        try {
            zipFile = new ZipFile(str);
            try {
                ZipEntry entry = zipFile.getEntry(str2);
                if (entry.getSize() > I.a(file.getParentFile().getPath())) {
                    t tVar = t.NO_AVAILABLE_DISK_SPACE;
                    Code((Closeable) null);
                    Code((Closeable) null);
                    try {
                        zipFile.close();
                        return tVar;
                    } catch (IOException e) {
                        return tVar;
                    }
                } else {
                    file.createNewFile();
                    inputStream = zipFile.getInputStream(entry);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            Code(inputStream, (OutputStream) fileOutputStream2);
                            t tVar2 = t.SUCCESS;
                            Code((Closeable) inputStream);
                            Code((Closeable) fileOutputStream2);
                            try {
                                zipFile.close();
                                return tVar2;
                            } catch (IOException e2) {
                                return tVar2;
                            }
                        } catch (IOException e3) {
                            zipFile2 = zipFile;
                            fileOutputStream = fileOutputStream2;
                            inputStream2 = inputStream;
                            Code((Closeable) inputStream2);
                            Code((Closeable) fileOutputStream);
                            if (zipFile2 != null) {
                            }
                            return t.FAILURE;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            Code((Closeable) inputStream);
                            Code((Closeable) fileOutputStream);
                            if (zipFile != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e4) {
                        zipFile2 = zipFile;
                        inputStream2 = inputStream;
                        Code((Closeable) inputStream2);
                        Code((Closeable) fileOutputStream);
                        if (zipFile2 != null) {
                            try {
                                zipFile2.close();
                            } catch (IOException e5) {
                            }
                        }
                        return t.FAILURE;
                    } catch (Throwable th2) {
                        th = th2;
                        Code((Closeable) inputStream);
                        Code((Closeable) fileOutputStream);
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException e6) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e7) {
                zipFile2 = zipFile;
                inputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
                Code((Closeable) inputStream);
                Code((Closeable) fileOutputStream);
                if (zipFile != null) {
                }
                throw th;
            }
        } catch (IOException e8) {
            zipFile2 = null;
            inputStream2 = null;
            Code((Closeable) inputStream2);
            Code((Closeable) fileOutputStream);
            if (zipFile2 != null) {
            }
            return t.FAILURE;
        } catch (Throwable th4) {
            th = th4;
            zipFile = null;
            inputStream = null;
            Code((Closeable) inputStream);
            Code((Closeable) fileOutputStream);
            if (zipFile != null) {
            }
            throw th;
        }
    }
}
