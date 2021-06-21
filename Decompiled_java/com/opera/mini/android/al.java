package com.opera.mini.android;

import android.content.SharedPreferences;
import java.lang.Thread;
import java.util.Date;

/* compiled from: Source */
public class al implements Thread.UncaughtExceptionHandler {
    private static al I = null;
    private static final String J = "LAST_CRASH_TIMESTAMP";
    private Thread.UncaughtExceptionHandler Code;
    private long Z = 0;

    private static native void J();

    public static void Code() {
        SharedPreferences.Editor edit = Browser.I.getPreferences(0).edit();
        long time = new Date().getTime();
        edit.putLong(J, time);
        edit.commit();
        I.Z = time;
    }

    public static void I() {
        if (I == null) {
            I = new al();
            J();
            I.Code = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(I);
            SharedPreferences preferences = Browser.I.getPreferences(0);
            if (preferences.contains(J)) {
                I.Z = preferences.getLong(J, 0);
            }
        }
    }

    public static long Z() {
        return I.Z;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Code();
        if (this.Code != null) {
            this.Code.uncaughtException(thread, th);
        }
    }
}
