package com.begal.appclone.classes;

import android.util.Log;

public class AppClonerNative {
    private static final String TAG = AppClonerNative.class.getSimpleName();

    public static native void androidLogBufWrite(int i, int i2, String str, String str2);

    public static native boolean disableLogcatLogging();

    static {
        try {
            System.loadLibrary("appcloner");
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }
}
