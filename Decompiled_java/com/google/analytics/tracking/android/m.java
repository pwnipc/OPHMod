package com.google.analytics.tracking.android;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: Source */
public final class m {
    private static m Code;
    private String B;
    private int C = 1800;
    private boolean I = false;
    private String J;
    private String Z;
    private boolean a;
    private Double b;
    private boolean c;
    private boolean d;
    private boolean e = false;
    private int f = 0;
    private long g;
    private long h;
    private Context i;
    private final Map j = new HashMap();
    private ao k = null;
    private ak l;
    private g m;
    private am n;
    private k o = new k() {
        public final long Code() {
            return System.currentTimeMillis();
        }
    };
    private Timer p;
    private TimerTask q;
    /* access modifiers changed from: private */
    public boolean r = false;

    private m() {
    }

    public static m Code() {
        if (Code == null) {
            Code = new m();
        }
        return Code;
    }

    public static ao I() {
        if (Code().i != null) {
            return Code().k;
        }
        throw new IllegalStateException("You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()");
    }

    public final void Code(Context context) {
        boolean z = true;
        if (context == null) {
            af.I("Context cannot be null");
            return;
        }
        e Code2 = e.Code();
        ak akVar = new ak(context.getApplicationContext());
        g Code3 = g.Code(context.getApplicationContext());
        if (context == null) {
            af.I("Context cannot be null");
        }
        if (this.i == null) {
            this.i = context.getApplicationContext();
            this.m = Code3;
            this.n = Code2;
            this.l = akVar;
            this.Z = this.l.Code("ga_trackingId");
            if (TextUtils.isEmpty(this.Z)) {
                this.Z = this.l.Code("ga_api_key");
                if (TextUtils.isEmpty(this.Z)) {
                    af.I("EasyTracker requested, but missing required ga_trackingId");
                    this.k = new n();
                    return;
                }
            }
            this.I = true;
            this.J = this.l.Code("ga_appName");
            this.B = this.l.Code("ga_appVersion");
            this.a = this.l.Z("ga_debug");
            this.b = this.l.I("ga_sampleFrequency");
            if (this.b == null) {
                this.b = new Double((double) this.l.Code("ga_sampleRate", 100));
            }
            this.C = this.l.Code("ga_dispatchPeriod", 1800);
            this.g = (long) (this.l.Code("ga_sessionTimeout", 30) * 1000);
            if (!this.l.Z("ga_autoActivityTracking") && !this.l.Z("ga_auto_activity_tracking")) {
                z = false;
            }
            this.e = z;
            this.c = this.l.Z("ga_anonymizeIp");
            this.d = this.l.Z("ga_reportUncaughtExceptions");
            this.k = this.m.Code(this.Z);
            if (!TextUtils.isEmpty(this.J)) {
                af.Z("setting appName to " + this.J);
                this.k.Code(this.J);
            }
            if (this.B != null) {
                this.k.I(this.B);
            }
            this.k.Code(this.c);
            this.k.Code(this.b.doubleValue());
            g gVar = this.m;
            g.Code(this.a);
            this.n.Code(this.C);
            if (this.d) {
                Thread.setDefaultUncaughtExceptionHandler(new q(this.k, this.n, Thread.getDefaultUncaughtExceptionHandler(), this.i));
            }
        }
    }

    public final void Code(Activity activity) {
        String Code2;
        Code((Context) activity);
        if (this.I) {
            Z();
            if (!this.r && this.f == 0) {
                if (this.g == 0 || (this.g > 0 && this.o.Code() > this.h + this.g)) {
                    this.k.Code();
                    boolean z = this.e;
                }
            }
            this.r = true;
            this.f++;
            if (this.e) {
                ao aoVar = this.k;
                String canonicalName = activity.getClass().getCanonicalName();
                if (this.j.containsKey(canonicalName)) {
                    Code2 = (String) this.j.get(canonicalName);
                } else {
                    Code2 = this.l.Code(canonicalName);
                    if (Code2 == null) {
                        Code2 = canonicalName;
                    }
                    this.j.put(canonicalName, Code2);
                }
                aoVar.Z(Code2);
            }
        }
    }

    public final void I(Activity activity) {
        Code((Context) activity);
        if (this.I) {
            this.f--;
            this.f = Math.max(0, this.f);
            this.h = this.o.Code();
            if (this.f == 0) {
                Z();
                this.q = new o(this, (byte) 0);
                this.p = new Timer("waitForActivityStart");
                this.p.schedule(this.q, 1000);
            }
        }
    }

    private synchronized void Z() {
        if (this.p != null) {
            this.p.cancel();
            this.p = null;
        }
    }
}
