package com.google.android.apps.analytics;

public final class l {
    /* access modifiers changed from: private */
    public String B = null;
    /* access modifiers changed from: private */
    public String C = null;
    /* access modifiers changed from: private */
    public final String Code;
    /* access modifiers changed from: private */
    public final String I;
    /* access modifiers changed from: private */
    public final long J;
    /* access modifiers changed from: private */
    public final double Z;

    public l(String str, String str2, double d, long j) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("orderId must not be empty or null");
        } else if (str2 == null || str2.trim().length() == 0) {
            throw new IllegalArgumentException("itemSKU must not be empty or null");
        } else {
            this.Code = str;
            this.I = str2;
            this.Z = d;
            this.J = j;
        }
    }

    public final l Code(String str) {
        this.B = str;
        return this;
    }

    public final l I(String str) {
        this.C = str;
        return this;
    }
}
