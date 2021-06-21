package com.opera.mini.android;

/* compiled from: Source */
public final class bl {
    private static long Code;
    private static long I;
    private static boolean J;
    private static boolean Z;

    public static void Code(long j) {
        Code = j;
    }

    public static void I(long j) {
        I = j;
    }

    public static void Code(boolean z) {
        Z = z;
    }

    public static void I(boolean z) {
        J = z;
    }

    public static long Code() {
        if (!ar.I.I()) {
            ar.I.h();
            ar.I.Z(6);
        }
        return I;
    }

    public static boolean I() {
        ar.I.h();
        ar.I.Z(4);
        return Z;
    }

    public static boolean Z() {
        ar.I.h();
        ar.I.Z(3);
        return J;
    }

    public static int J() {
        if (!ar.I.I()) {
            ar.I.h();
            ar.I.Z(5);
        }
        long j = Code;
        long Code2 = Code();
        if (j <= 0 || Code2 <= 0 || Code2 >= j) {
            return 0;
        }
        return Math.min(99, 100 - ((int) ((Code2 * 100) / j)));
    }
}
