package com.opera.mini.android;

import android.app.Application;
import android.content.Context;
import com.opera.mini.android.notifications.B;
import com.opera.mini.android.notifications.g;

/* compiled from: Source */
public class OperaApplication extends Application {
    private static final long Code = System.nanoTime();

    public static long Code() {
        return System.nanoTime() - (Code / 1000000);
    }

    public void onCreate() {
        super.onCreate();
        if (s.am) {
            g.Code((Context) this);
        }
        B.Code();
    }
}
