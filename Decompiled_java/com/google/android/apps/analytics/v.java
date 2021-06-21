package com.google.android.apps.analytics;

public final class v {
    /* access modifiers changed from: private */
    public double B = 0.0d;
    /* access modifiers changed from: private */
    public final String Code;
    /* access modifiers changed from: private */
    public String I = null;
    /* access modifiers changed from: private */
    public double J = 0.0d;
    /* access modifiers changed from: private */
    public final double Z;

    public v(String str, double d) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("orderId must not be empty or null");
        }
        this.Code = str;
        this.Z = d;
    }

    public final v Code(double d) {
        this.J = d;
        return this;
    }

    public final v Code(String str) {
        this.I = str;
        return this;
    }

    public final v I(double d) {
        this.B = d;
        return this;
    }
}
