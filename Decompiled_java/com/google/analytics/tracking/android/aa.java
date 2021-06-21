package com.google.analytics.tracking.android;

import java.util.SortedSet;
import java.util.TreeSet;

/* compiled from: Source */
final class aa {
    private static final aa J = new aa();
    private SortedSet Code = new TreeSet();
    private StringBuilder I = new StringBuilder();
    private boolean Z = false;

    public static aa Code() {
        return J;
    }

    private aa() {
    }

    public final synchronized void Code(boolean z) {
        this.Z = z;
    }

    public final synchronized void Code(ab abVar) {
        if (!this.Z) {
            this.Code.add(abVar);
            this.I.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(abVar.ordinal()));
        }
    }

    public final synchronized String I() {
        StringBuilder sb;
        sb = new StringBuilder();
        int i = 6;
        int i2 = 0;
        while (this.Code.size() > 0) {
            ab abVar = (ab) this.Code.first();
            this.Code.remove(abVar);
            int ordinal = abVar.ordinal();
            while (ordinal >= i) {
                sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i2));
                i += 6;
                i2 = 0;
            }
            i2 += 1 << (abVar.ordinal() % 6);
        }
        if (i2 > 0 || sb.length() == 0) {
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i2));
        }
        this.Code.clear();
        return sb.toString();
    }

    public final synchronized String Z() {
        String sb;
        if (this.I.length() > 0) {
            this.I.insert(0, ".");
        }
        sb = this.I.toString();
        this.I = new StringBuilder();
        return sb;
    }
}
