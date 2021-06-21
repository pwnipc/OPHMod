package com.opera.mini.android;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environmenu;
import android.os.ResultReceiver;
import android.provider.Browser;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.ClipboardManager;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.events.NotificationStatsAck;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.notifications.B;
import com.opera.mini.android.notifications.a;
import com.opera.mini.android.notifications.g;
import com.opera.mini.android.notifications.q;
import com.opera.mini.h4lflif4.R;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

/* compiled from: Source */
public class o implements ci {
    private static final l C = new l();
    protected static EditView Code = null;
    private static ResultReceiver a = null;
    private static ResultReceiver b = null;
    private static boolean c = false;
    private static int k = -1;
    private static String l = "";
    /* access modifiers changed from: private */
    public static String o = null;
    private static final String p = "aid";
    private static final Uri q = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private View B;
    private Browser I;
    private boolean J;
    private MiniView Z;
    private int d = -1;
    private int e = -1;
    private Cursor f = null;
    private int g;
    private char h = '-';
    private AssetManager i = null;
    private String j;
    private final String m = "market://details?id=com.opera.mini.android";
    private final String n = "/";

    public native void b(int i2);

    public o(Browser browser, AssetManager assetManager) {
        this.I = browser;
        this.Z = (MiniView) browser.findViewById(R.id.miniview);
        this.B = browser.findViewById(R.id.editlayout);
        EventDispatcher.Z(new p());
        am.I((Context) browser);
        this.i = assetManager;
        new Thread(new Runnable() {
            public final void run() {
                o.this.au();
            }
        }).start();
    }

    public void Code() {
        s.l();
        db.b("mc");
        db.b("md");
        db.b();
        h.Code(this.i);
        ax();
    }

    private void ax() {
        boolean z;
        int length;
        Bitmap createBitmap = Bitmap.createBitmap(10, 16, Bitmap.Config.ARGB_8888);
        Bitmap createBitmap2 = Bitmap.createBitmap(10, 16, Bitmap.Config.ARGB_8888);
        if ("GT-S5660".equals(Build.PRODUCT) || "GT-S5830".equals(Build.PRODUCT)) {
            z = true;
        } else {
            z = false;
        }
        B b2 = (B) C.Code().Code(32, 8);
        TextPaint g2 = b2.g();
        Rect rect = new Rect();
        Canvas canvas = new Canvas();
        boolean isAntiAlias = g2.isAntiAlias();
        g2.setAntiAlias(false);
        String[] strArr = {"נסע", "بتث", "ﺑﻴﻦ"};
        int i2 = 0;
        while (true) {
            if (z) {
                length = 1;
            } else {
                length = strArr.length;
            }
            if (i2 < length) {
                g2.getTextBounds(strArr[i2], 0, strArr[i2].length(), rect);
                canvas.setBitmap(createBitmap);
                canvas.drawColor(0, PorterDuff.Mode.SRC);
                canvas.drawText(strArr[i2], (float) (-rect.left), (float) (-rect.top), g2);
                canvas.setBitmap(createBitmap2);
                canvas.drawColor(0, PorterDuff.Mode.SRC);
                canvas.drawText(strArr[i2], 0, 1, (float) (-rect.left), (float) (-rect.top), g2);
                int max = Math.max(Math.min(b2.Code(strArr[i2].charAt(0)) / 2, 10), 4);
                int min = Math.min(rect.height(), 16);
                int i3 = 0;
                boolean z2 = true;
                while (z2 && i3 < max) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= min) {
                            break;
                        }
                        if (createBitmap.getPixel(i3, i4) != createBitmap2.getPixel(i3, i4)) {
                            z2 = false;
                            break;
                        }
                        i4++;
                    }
                    i3++;
                }
                if (!z2) {
                    db.s |= 1 << (i2 + 1);
                    if (z) {
                        int i5 = db.s | (1 << (i2 + 2));
                        db.s = i5;
                        db.s = i5 | (1 << (i2 + 3));
                    }
                }
                i2++;
            } else {
                createBitmap.recycle();
                createBitmap2.recycle();
                b(db.s);
                g2.setAntiAlias(isAntiAlias);
                return;
            }
        }
    }

    public boolean I() {
        return false;
    }

    public boolean Z() {
        return false;
    }

    public int J() {
        MiniView miniView = this.Z;
        return MiniView.c();
    }

    public int B() {
        MiniView miniView = this.Z;
        return MiniView.d();
    }

    public int C() {
        return s.ah.widthPixels;
    }

    public int a() {
        return s.ah.heightPixels;
    }

    public int b() {
        return (int) s.m();
    }

    public int c() {
        return (int) s.n();
    }

    public boolean d() {
        float C2 = ((float) C()) / s.m();
        float a2 = ((float) a()) / s.n();
        double sqrt = Math.sqrt((double) ((C2 * C2) + (a2 * a2)));
        if (s.al >= 4) {
            switch (ac.I()) {
                case 1:
                    return false;
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                case 3:
                    if (sqrt >= 5.7d) {
                        return true;
                    }
                    return false;
                case ConnectionResult.SIGN_IN_REQUIRED:
                    return true;
            }
        }
        if (sqrt < 5.7d || Math.min(a(), C()) < 480) {
            return false;
        }
        return true;
    }

    public boolean f() {
        return true;
    }

    public void e() {
        this.Z.a();
    }

    public void Code(int i2, int i3, int i4, int i5) {
        int max = Math.max(i2, 0);
        int max2 = Math.max(i3, 0);
        MiniView miniView = this.Z;
        MiniView miniView2 = this.Z;
        this.Z.Code(max, max2, Math.min(i2 + i4, MiniView.c()) - max, Math.min(i3 + i5, MiniView.d()) - max2);
    }

    public Object Code(int i2, int i3, String str, String str2, int i4, String str3, String str4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, bp bpVar, int i13, int i14, int i15) {
        final EditView editView = (EditView) this.I.findViewById((i4 & 6) != 0 ? R.id.urleditview : R.id.editview);
        Code = editView;
        final int i16 = i5;
        final int i17 = i9;
        final int i18 = i6;
        final int i19 = i10;
        final int i20 = i7;
        final int i21 = i8;
        final bp bpVar2 = bpVar;
        final int i22 = i4;
        final String str5 = str3;
        final int i23 = i11;
        final int i24 = i12;
        final int i25 = i14;
        final int i26 = i13;
        this.B.post(new Runnable() {
            public final void run() {
                boolean z;
                EditView.this.Code(i16 + i17, i18 + i19, i20 - i17, i21 - i19);
                EditView.this.setTextSize(0, (float) ((B) bpVar2).f());
                EditView.this.I(i22);
                EditView.this.Code(false);
                EditView.this.setText(str5.replace("\r\n", "\n"));
                if (i23 < 0) {
                    EditView.this.setSelection(EditView.this.getText().length());
                } else {
                    EditView.this.setSelection(i23, i23 + i24);
                }
                EditView.this.Code(i25);
                switch (i25) {
                    case 1:
                        if ("Kindle Fire".equals(Build.MODEL)) {
                            EditView.this.setImeOptions(2);
                            break;
                        }
                    case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                        EditView.this.setImeOptions(6);
                        break;
                    case 3:
                        EditView.this.setImeOptions(2);
                        break;
                    case ConnectionResult.SIGN_IN_REQUIRED:
                        EditView.this.setImeOptions(3);
                        break;
                    case ConnectionResult.INVALID_ACCOUNT:
                        EditView.this.setImeOptions(5);
                        break;
                }
                EditView editView = EditView.this;
                if (i26 == 1) {
                    z = true;
                } else {
                    z = false;
                }
                editView.Code(z);
                EditView.this.setVisibility(0);
                o.B(true);
            }
        });
        return editView;
    }

    public boolean Code(int i2) {
        return true;
    }

    public boolean g() {
        return false;
    }

    public int h() {
        if (Build.DEVICE.indexOf("SonyEricssonU20i") >= 0) {
            return -1;
        }
        if (Build.DEVICE.indexOf("SonyEricsson") >= 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Browser.I.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            if (((displayMetrics.heightPixels > 320 || displayMetrics.widthPixels > 240) && (displayMetrics.widthPixels > 240 || displayMetrics.heightPixels > 320)) || Browser.I.C()) {
                return 0;
            }
            return -1;
        }
        return 0;
    }

    public void Code(final Object obj) {
        this.B.post(new Runnable() {
            public final void run() {
                if (obj instanceof EditView) {
                    EditView editView = (EditView) obj;
                    editView.setVisibility(8);
                    editView.Code(false);
                    editView.setText("");
                }
            }
        });
    }

    public void Code(Object obj, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (i3 >= 0) {
            final Object obj2 = obj;
            final int i8 = i2;
            final int i9 = i6;
            final int i10 = i3;
            final int i11 = i7;
            final int i12 = i4;
            final int i13 = i5;
            this.B.post(new Runnable() {
                public final void run() {
                    if (obj2 instanceof EditView) {
                        ((EditView) obj2).Code(i8 + i9, i10 + i11, i12 - i9, i13 - i11);
                    }
                }
            });
        }
    }

    public String I(Object obj) {
        if (obj instanceof EditText) {
            return ((EditText) obj).getText().toString();
        }
        return null;
    }

    public void Code(Object obj, String str) {
        if (obj instanceof EditView) {
            EditView editView = (EditView) obj;
            editView.post(new r(editView, str));
        }
    }

    public void Code(Object obj, String str, int i2, boolean z) {
        if (obj instanceof URLEditView) {
            ((URLEditView) obj).Code(str, i2, z);
        }
    }

    public void i() {
        this.B.post(new Runnable() {
            public final void run() {
                o.B(false);
            }
        });
    }

    public int j() {
        return this.Z.e();
    }

    public void I(int i2) {
    }

    public boolean k() {
        return Browser.I.a();
    }

    public static void B(boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) Browser.I.getSystemService("input_method");
        if (a == null) {
            a = new q(MiniView.Code.getHandler());
        }
        if (z && Code != null) {
            Code.requestFocus();
            MiniView.Code.Code(true);
            inputMethodManager.showSoftInput(Code, 0, a);
        } else if (Code != null) {
            MiniView.Code.Code(false);
            MiniView.Code.Code(0);
            Browser.I.Code(true);
            ar.I.h();
            ar.I.Z(53);
            inputMethodManager.hideSoftInputFromWindow(Code.getWindowToken(), 0);
        }
    }

    public boolean an() {
        return this.I.C();
    }

    public bk l() {
        return new bk(new I());
    }

    public boolean m() {
        return true;
    }

    public int C(String str) {
        return 0;
    }

    public int a(String str) {
        return 0;
    }

    public DataOutputStream ao() {
        return null;
    }

    public DataInputStream ap() {
        return null;
    }

    public void n() {
    }

    public void o() {
        if (!Browser.I.J()) {
            this.I.finish();
        }
        h.Code();
    }

    public boolean p() {
        return this.J;
    }

    public void Code(boolean z) {
        this.J = z;
    }

    public String Code(String str) {
        if ("OM-Install-Referrer".equals(str)) {
            return OpMiniInstallReferrerReceiver.Code(Browser.I);
        }
        if ("OM-Facebook-Attribution-Id".equals(str)) {
            return az();
        }
        return null;
    }

    public String c(int i2) {
        return null;
    }

    public bv q() {
        return C;
    }

    public bv r() {
        return C;
    }

    public bq s() {
        return C.Code();
    }

    public boolean aq() {
        return true;
    }

    public boolean ar() {
        return false;
    }

    public boolean t() {
        return false;
    }

    public int u() {
        return 4;
    }

    public int v() {
        if (this.I.getResources().getConfiguration().hardKeyboardHidden == 1) {
            return 13;
        }
        return 12;
    }

    public cs Code(int i2, byte b2, boolean z, boolean z2) {
        return new cs(i2, b2, z, z2);
    }

    private void e(String str) {
        String str2;
        boolean z = false;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.I.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            int type = activeNetworkInfo.getType();
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (extraInfo == null) {
                extraInfo = "";
            }
            try {
                if (str.indexOf("10.0.0.172") >= 0) {
                    if (type != 0 || !extraInfo.equals("cmwap")) {
                        cs.C();
                    }
                } else if (type == 0) {
                    if (extraInfo.equals("cmwap")) {
                        cs.C();
                    }
                }
            } finally {
                if (k != type || !l.equals(extraInfo)) {
                    z = true;
                }
                k = type;
                l = extraInfo;
                if (z) {
                    str2 = "md";
                    db.a(str2);
                }
            }
        }
    }

    private void ay() {
        if (!Browser.I.Z()) {
            throw new IOException("Network usage is not allowed when app is in background.");
        }
    }

    public bc Code(String str, String str2, String str3) {
        Proxy proxy;
        int i2;
        String str4;
        SocketAddress address;
        InetSocketAddress inetSocketAddress;
        int i3 = 80;
        ay();
        e(str);
        Proxy proxy2 = Proxy.NO_PROXY;
        if (!str.startsWith("http://10.0.0.172")) {
            String str5 = null;
            if (s.al >= 11 || k != 0) {
                try {
                    Proxy proxy3 = ProxySelector.getDefault().select(new URI(str)).get(0);
                    if (proxy3 == null || (address = proxy3.address()) == null || !(address instanceof InetSocketAddress)) {
                        i2 = -1;
                        str4 = null;
                    } else {
                        String hostName = ((InetSocketAddress) address).getHostName();
                        i2 = ((InetSocketAddress) address).getPort();
                        str4 = hostName;
                    }
                    str5 = str4;
                } catch (URISyntaxException e2) {
                    i2 = -1;
                }
            } else {
                String host = android.net.Proxy.getHost(Browser.I);
                i2 = android.net.Proxy.getPort(Browser.I);
                str5 = host;
            }
            if (str5 != null) {
                if (f(str5)) {
                    if (i2 == -1) {
                        i2 = 80;
                    }
                    inetSocketAddress = InetSocketAddress.createUnresolved(str5, i2);
                } else {
                    if (i2 != -1) {
                        i3 = i2;
                    }
                    inetSocketAddress = new InetSocketAddress(str5, i3);
                }
                proxy = new Proxy(Proxy.Type.HTTP, inetSocketAddress);
                return new at(str, str3, proxy);
            }
        }
        proxy = proxy2;
        return new at(str, str3, proxy);
    }

    private boolean f(String str) {
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return false;
        }
        int i2 = 0;
        while (i2 < split.length) {
            try {
                int parseInt = Integer.parseInt(split[i2]);
                if (parseInt < 0 || parseInt > 255) {
                    return false;
                }
                i2++;
            } catch (NumberFormatException e2) {
                return false;
            }
        }
        return true;
    }

    public bc Code(String str, String str2) {
        ay();
        e(str);
        return new au(str);
    }

    public by x() {
        return new m();
    }

    public void b(String str) {
    }

    private void Code(Intent intent, PackageManager packageManager) {
        if (s.Code("com.android.browser", packageManager)) {
            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
        } else if (s.Code("com.android.chrome", packageManager)) {
            intent.setClassName("com.android.chrome", "com.google.android.apps.chrome.Main");
        } else if (s.Code("com.google.android.browser", packageManager)) {
            intent.setClassName("com.google.android.browser", "com.android.browser.BrowserActivity");
        }
    }

    public boolean I(String str) {
        String d2 = db.d(str);
        Uri parse = Uri.parse(d2);
        Intent intent = new Intent("android.intent.action.VIEW", parse);
        if (d2.startsWith("http:") || d2.startsWith("https:") || d2.startsWith("vnd.youtube:")) {
            PackageManager packageManager = this.I.getPackageManager();
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (d2.startsWith("http:") || d2.startsWith("https:")) {
                int i2 = 0;
                while (true) {
                    if (i2 < queryIntentActivities.size()) {
                        if (queryIntentActivities.get(i2).activityInfo.packageName.equals(this.I.getPackageName())) {
                            Code(intent, packageManager);
                            break;
                        }
                        i2++;
                    }
                }
                return false;
            } else if (d2.startsWith("vnd.youtube:") && queryIntentActivities.size() == 0) {
                Code.z().p();
                return false;
            }
        }
        try {
            String scheme = parse.getScheme();
            if (scheme.startsWith("vnd.opera.video")) {
                String str2 = "video/mp4";
                if (scheme.length() > 16) {
                    str2 = "video/" + scheme.substring(16);
                }
                intent.setDataAndType(Uri.parse(d2.substring(scheme.length() + 1)), str2);
            } else if (!"mailto".equals(scheme)) {
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.setComponent((ComponentName) null);
            }
            Browser.I.startActivity(intent);
            return false;
        } catch (ActivityNotFoundException e2) {
            throw new IOException("Scheme is not supported: " + d2);
        }
    }

    public bb w() {
        return new bb((ClipboardManager) this.I.getSystemService("clipboard"));
    }

    public void y() {
        System.gc();
    }

    public void Z(Object obj) {
    }

    public InputStream Z(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() > 1 && str.charAt(0) == '/') {
            str = str.substring(1);
        }
        if (str.equals("v") || str.equals("resources")) {
            InputStream B2 = B(str, "-" + s.ai + "-" + s.aj);
            if (B2 == null) {
                B2 = B(str, "-" + s.ai);
            }
            if (B2 != null) {
                return B2;
            }
        }
        return B(str, "");
    }

    public InputStream B(String str, String str2) {
        String str3 = str + str2;
        if (str3.equals("debuginfo")) {
            try {
                return new FileInputStream(new File("/sdcard/debuginfo"));
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        try {
            return this.I.getResources().getAssets().open(str3);
        } catch (IOException e3) {
            return null;
        }
    }

    public void Code(DataInputStream dataInputStream, int i2) {
        if (i2 >= 4) {
            k = dataInputStream.readInt();
            l = dataInputStream.readUTF();
        }
    }

    public void Code(DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(k);
        dataOutputStream.writeUTF(l == null ? "" : l);
    }

    public void z() {
        this.I.moveTaskToBack(true);
    }

    public static boolean as() {
        return c;
    }

    public void I(final boolean z) {
        c = z;
        this.Z.getHandler().post(new Runnable() {
            public final void run() {
                Browser.I.Code(z);
            }
        });
    }

    public boolean J(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File("/dummy_file.txt")), str.toLowerCase());
        if (intent.resolveActivity(this.I.getPackageManager()) != null) {
            return true;
        }
        return false;
    }

    public int I(String str, String str2) {
        try {
            String b2 = I.b(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri fromFile = Uri.fromFile(new File(b2));
            if (str2 != null) {
                intent.setDataAndType(fromFile, str2.toLowerCase());
            } else {
                intent.setData(fromFile);
            }
            this.I.startActivity(intent);
            return 0;
        } catch (ActivityNotFoundException e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    public Vector Z(int i2) {
        return null;
    }

    public boolean J(int i2) {
        return false;
    }

    public void B(int i2) {
    }

    public void A() {
        this.f = this.I.getContentResolver().query(Browser.BOOKMARKS_URI, new String[]{"title", "url", "favicon"}, "bookmark = 1", (String[]) null, (String) null);
        if (this.f != null) {
            this.f.moveToFirst();
        }
    }

    public boolean D() {
        if (this.f != null && this.f.isAfterLast()) {
            this.f.close();
            this.f = null;
        }
        if (this.f == null) {
            return false;
        }
        int columnIndex = this.f.getColumnIndex("title");
        int columnIndex2 = this.f.getColumnIndex("url");
        int columnIndex3 = this.f.getColumnIndex("favicon");
        cj.I = null;
        while (cj.I == null && !this.f.isAfterLast()) {
            String string = this.f.getString(columnIndex2);
            cj.I = string;
            if (string != null) {
                cj.Code = this.f.getString(columnIndex);
                cj.Z = this.f.getBlob(columnIndex3);
            }
            this.f.moveToNext();
        }
        if (cj.I != null) {
            return true;
        }
        return false;
    }

    public void Z(boolean z) {
    }

    public boolean E() {
        return this.I.B();
    }

    public boolean F() {
        return false;
    }

    public void c(String str) {
    }

    public int G() {
        return 7;
    }

    public int H() {
        return 1;
    }

    public int C(int i2) {
        db.Code(i2, 0, 2);
        C.Code();
        return C.Z(i2);
    }

    public boolean at() {
        return false;
    }

    public void J(boolean z) {
    }

    public boolean K() {
        return false;
    }

    public boolean L() {
        if (M() == 460) {
            return true;
        }
        return false;
    }

    public int M() {
        String simOperator;
        if (this.d == -1) {
            TelephonyManager telephonyManager = (TelephonyManager) this.I.getSystemService("phone");
            if (telephonyManager.getSimState() == 5 && (simOperator = telephonyManager.getSimOperator()) != null && simOperator != null && simOperator.length() >= 3) {
                this.d = Integer.parseInt(simOperator.substring(0, 3));
            }
        }
        return this.d;
    }

    public int N() {
        String simOperator;
        if (this.e == -1) {
            TelephonyManager telephonyManager = (TelephonyManager) this.I.getSystemService("phone");
            if (telephonyManager.getSimState() == 5 && (simOperator = telephonyManager.getSimOperator()) != null && simOperator != null && simOperator.length() >= 3) {
                this.e = Integer.parseInt(simOperator.substring(3));
            }
        }
        return this.e;
    }

    public void Z(String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", str);
            intent.putExtra("android.intent.extra.SUBJECT", str2);
            Browser.I.startActivity(Intent.createChooser(intent, (CharSequence) null));
        } catch (ActivityNotFoundException e2) {
        }
    }

    public void B(String str) {
        s.f(str);
    }

    public int O() {
        return 1;
    }

    public int P() {
        return 1;
    }

    public void J(String str, String str2) {
        if (str2 != null) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClass(Browser.I, Browser.class);
            intent.setData(Uri.parse(str2));
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            if (str == null) {
                str = str2;
            }
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(Browser.I, s.al >= 11 ? R.drawable.bookmark_icon_nodpi : R.drawable.bookmark_icon));
            intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
            Browser.I.sendBroadcast(intent2);
        }
    }

    public synchronized void Q() {
        this.g++;
    }

    public synchronized void R() {
        int i2 = this.g - 1;
        this.g = i2;
        if (i2 == 0) {
            Browser.I.Code();
        }
    }

    public boolean S() {
        return true;
    }

    public void Code(int i2, int i3) {
        s.Code(i2, i3);
    }

    public void I(int i2, int i3) {
        s.k();
    }

    public String T() {
        String str = "http://mini.bugs.opera.com?pl=Android&version=7.6";
        if (!"35766".startsWith("$")) {
            str = str + "&build=35766";
        }
        return str + "&mo=" + (Build.MODEL != null ? Build.MODEL : Environmenu.MEDIA_UNKNOWN);
    }

    public String U() {
        String Code2 = s.Code((Context) Browser.I);
        s.q();
        return Code2;
    }

    public void X() {
        try {
            Browser.I.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.opera.mini.android")));
        } catch (Exception e2) {
        }
    }

    public boolean Y() {
        return al.Z() == 0;
    }

    public boolean aa() {
        return false;
    }

    public boolean a(int i2) {
        return C.I(i2);
    }

    public void ab() {
        if (s.t()) {
            an.I();
        }
        ak.Code();
    }

    public void au() {
        if (s.al >= 9 && GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.I) == 0) {
            try {
                this.j = AdvertisingIdClient.getAdvertisingIdInfo(this.I).Code();
            } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e2) {
            }
            String str = this.j;
        }
        if (this.j == null) {
            this.j = av();
        }
    }

    public String ac() {
        if (this.j != null) {
            return this.j;
        }
        throw new IllegalStateException();
    }

    public String av() {
        String string = Settings.Secure.getString(Browser.I.getContentResolver(), "android_id");
        return string != null ? string : "";
    }

    public String am() {
        return s.r();
    }

    public int aw() {
        if (s.al < 17) {
            return Settings.Secure.getInt(this.I.getContentResolver(), "install_non_market_apps", 0);
        }
        return ab.Code(this.I.getContentResolver(), "install_non_market_apps", 0);
    }

    public String V() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.I.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "";
        }
        String lowerCase = activeNetworkInfo.getTypeName().toLowerCase();
        String lowerCase2 = activeNetworkInfo.getSubtypeName().toLowerCase();
        if (!lowerCase2.equals("")) {
            return lowerCase + "/" + lowerCase2;
        }
        return lowerCase;
    }

    private boolean g(String str) {
        if (this.I.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0).size() > 0) {
            return true;
        }
        return false;
    }

    private boolean h(String str) {
        try {
            if (this.I.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", new Uri.Builder().scheme(str).authority("details").build()), 0).size() > 0) {
                return true;
            }
            return false;
        } catch (NullPointerException e2) {
            return false;
        }
    }

    public String Code(String[] strArr) {
        boolean z;
        LinkedList linkedList = new LinkedList();
        for (String str : strArr) {
            if (str.indexOf(":") < 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (!h(str)) {
                }
            } else if (!g(str)) {
            }
            linkedList.add("\"" + str + "\"");
        }
        return TextUtils.join(",", linkedList);
    }

    public String I(String[] strArr) {
        LinkedList linkedList = new LinkedList();
        for (String str : strArr) {
            String str2 = null;
            if ("install_non_market_apps".equals(str)) {
                str2 = Integer.toString(aw());
            }
            if (str2 != null) {
                linkedList.add("\"" + str + "\":\"" + str2 + "\"");
            }
        }
        return TextUtils.join(",", linkedList);
    }

    public void Code(Map map) {
        try {
            EventDispatcher.I(new ServerNotificationSettingsEvent(map));
        } catch (IllegalArgumentException e2) {
        }
    }

    public void ad() {
        EventDispatcher.I(new NotificationStatsAck());
    }

    public boolean ae() {
        if (!s.am) {
            return false;
        }
        return g.Code((Context) Browser.I).b();
    }

    public byte[] af() {
        return g.Code((Context) Browser.I).a();
    }

    public byte[] ag() {
        a Z2;
        if (B.Code((Context) Browser.I) || (Z2 = B.Z()) == null) {
            return null;
        }
        return new byte[]{Z2.Code, Z2.I};
    }

    public void W() {
        MiniView.Code.g();
    }

    private static String az() {
        if (o == null) {
            Cursor query = Browser.I.getContentResolver().query(q, new String[]{p}, (String) null, (String[]) null, (String) null);
            o = "";
            if (query != null && query.moveToFirst()) {
                try {
                    String string = query.getString(query.getColumnIndexOrThrow(p));
                    if (string != null) {
                        o = string;
                    }
                } catch (Exception e2) {
                }
            }
            if (query != null) {
                query.close();
            }
        }
        return o;
    }

    public void Code(int i2, int i3, String str, String str2) {
        if (s.al >= 4) {
            q.Code((Context) this.I).Code(i2, i3, str, str2);
        }
    }

    public boolean al() {
        return B.I(this.I);
    }

    public bu ah() {
        return d((int) R.drawable.boot_opera_logo);
    }

    public bu ai() {
        return d((int) R.drawable.boot_empty_bar);
    }

    public bu aj() {
        return d((int) R.drawable.boot_full_bar);
    }

    public bu ak() {
        return d((int) R.drawable.boot_checkmark);
    }

    private bu d(int i2) {
        try {
            l lVar = C;
            return l.Code(this.I.getResources().openRawResource(i2));
        } catch (IOException e2) {
            return null;
        }
    }
}
