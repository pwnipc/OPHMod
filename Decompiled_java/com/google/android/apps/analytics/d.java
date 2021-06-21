package com.google.android.apps.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import java.util.HashMap;

public final class d {
    private static d Code = new d();
    private String B = "GoogleAnalytics";
    private String C = "1.4.2";
    private int I = 100;
    private ConnectivityManager J;
    private Context Z;
    private int a;
    /* access modifiers changed from: private */
    public h b;
    private B c;
    private boolean d;
    /* access modifiers changed from: private */
    public Handler e;
    private Runnable f;

    private d() {
        new HashMap();
        new HashMap();
        this.f = new Runnable() {
            public final void run() {
                d.this.I();
            }
        };
    }

    public static boolean B() {
        return false;
    }

    private void C() {
        if (this.a >= 0) {
            this.e.postDelayed(this.f, (long) (this.a * 1000));
        }
    }

    public static d Code() {
        return Code;
    }

    private void a() {
        if (this.e != null) {
            this.e.removeCallbacks(this.f);
        }
    }

    public final void Code(Context context) {
        h hVar;
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        if (this.b == null) {
            hVar = new p(context);
            int i = this.I;
        } else {
            hVar = this.b;
        }
        B mVar = this.c == null ? new m(this.B, this.C) : this.c;
        C c2 = new C(this);
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        this.Z = context.getApplicationContext();
        this.b = hVar;
        new Code();
        this.b.Z();
        this.c = mVar;
        this.c.Code(c2);
        this.d = false;
        if (this.J == null) {
            this.J = (ConnectivityManager) this.Z.getSystemService("connectivity");
        }
        if (this.e == null) {
            this.e = new Handler(context.getMainLooper());
        } else {
            a();
        }
        int i2 = this.a;
        this.a = -1;
        if (i2 <= 0) {
            C();
        } else if (i2 > 0) {
            a();
            C();
        }
    }

    public final boolean I() {
        if (this.d) {
            C();
            return false;
        }
        NetworkInfo activeNetworkInfo = this.J.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            C();
            return false;
        } else if (this.b.I() == 0) {
            return false;
        } else {
            this.c.Code(this.b.Code());
            this.d = true;
            C();
            return true;
        }
    }

    public final void J() {
        if (this.c != null) {
            this.c.Code();
        }
        a();
    }

    /* access modifiers changed from: package-private */
    public final void Z() {
        this.d = false;
    }
}
