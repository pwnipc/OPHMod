package com.google.analytics.tracking.android;

import java.util.Random;

/* compiled from: Source */
final class I {
    private static final I Code = new I();
    private int I;
    private Random Z = new Random();

    private I() {
    }

    static I Code() {
        return Code;
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        this.I = this.Z.nextInt(2147483646) + 1;
        return this.I;
    }
}
