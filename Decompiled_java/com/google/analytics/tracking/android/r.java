package com.google.analytics.tracking.android;

import android.os.Build;

/* compiled from: Source */
final class r {
    public static int Code() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            af.I("Invalid version number: " + Build.VERSION.SDK);
            return 0;
        }
    }
}
