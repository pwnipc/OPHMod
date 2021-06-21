package com.google.analytics.tracking.android;

import android.util.Log;

/* compiled from: Source */
public final class af {
    private static boolean Code;

    public static void Code(boolean z) {
        Code = z;
    }

    public static boolean Code() {
        return Code;
    }

    public static int Code(String str) {
        if (Code) {
            return Log.d("GAV2", b(str));
        }
        return 0;
    }

    public static int I(String str) {
        return Log.e("GAV2", b(str));
    }

    public static int Z(String str) {
        return Log.i("GAV2", b(str));
    }

    public static int J(String str) {
        if (Code) {
            return Z(str);
        }
        return 0;
    }

    public static int B(String str) {
        if (Code) {
            return Log.v("GAV2", b(str));
        }
        return 0;
    }

    public static int C(String str) {
        return Log.w("GAV2", b(str));
    }

    public static int a(String str) {
        if (Code) {
            return C(str);
        }
        return 0;
    }

    private static String b(String str) {
        return Thread.currentThread().toString() + ": " + str;
    }
}
