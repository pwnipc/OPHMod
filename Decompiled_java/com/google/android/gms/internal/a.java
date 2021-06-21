package com.google.android.gms.internal;

import android.os.Build;

public final class a {
    public static boolean Code() {
        return Code(11);
    }

    private static boolean Code(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static boolean I() {
        return Code(13);
    }
}
