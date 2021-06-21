package com.google.analytics.tracking.android;

import android.content.Context;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Source */
public class g implements aq {
    private static g b;
    /* access modifiers changed from: private */
    public volatile String B;
    /* access modifiers changed from: private */
    public volatile Boolean C;
    private f Code;
    private Context I;
    private Code J;
    private ao Z;
    private final Map a;

    g() {
        this.a = new HashMap();
    }

    private g(Context context) {
        this(context, y.Code(context));
    }

    private g(Context context, f fVar) {
        this.a = new HashMap();
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.I = context.getApplicationContext();
        this.Code = fVar;
        this.J = new Code();
        this.Code.Code(new I());
        this.Code.Code(new Code());
    }

    /* compiled from: Source */
    public final class I {
        I() {
        }
    }

    /* compiled from: Source */
    public final class Code {
        Code() {
        }
    }

    public static g Code(Context context) {
        g gVar;
        synchronized (g.class) {
            if (b == null) {
                b = new g(context);
            }
            gVar = b;
        }
        return gVar;
    }

    public static void Code(boolean z) {
        aa.Code().Code(ab.SET_DEBUG);
        af.Code(z);
    }

    public final ao Code(String str) {
        ao aoVar;
        synchronized (this) {
            if (str == null) {
                throw new IllegalArgumentException("trackingId cannot be null");
            }
            aoVar = (ao) this.a.get(str);
            if (aoVar == null) {
                aoVar = new ao(str, this);
                this.a.put(str, aoVar);
                if (this.Z == null) {
                    this.Z = aoVar;
                }
            }
            aa.Code().Code(ab.GET_TRACKER);
        }
        return aoVar;
    }

    public final void Code(Map map) {
        synchronized (this) {
            if (map == null) {
                throw new IllegalArgumentException("hit cannot be null");
            }
            map.put("language", ar.Code(Locale.getDefault()));
            map.put("adSenseAdMobHitId", Integer.toString(this.J.Code()));
            map.put("screenResolution", this.I.getResources().getDisplayMetrics().widthPixels + "x" + this.I.getResources().getDisplayMetrics().heightPixels);
            map.put("usage", aa.Code().Z());
            aa.Code().I();
            this.Code.Code(map);
            map.get("trackingId");
        }
    }

    public final void I(boolean z) {
        aa.Code().Code(ab.SET_APP_OPT_OUT);
        this.C = Boolean.valueOf(z);
        this.Code.Code(z);
    }
}
