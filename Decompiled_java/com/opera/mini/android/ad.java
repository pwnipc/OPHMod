package com.opera.mini.android;

import android.content.Context;
import android.os.PowerManager;

/* compiled from: Source */
public class ad {
    private static PowerManager Code;

    @DontOptimize
    public static boolean Code(Context context) {
        if (Code == null) {
            Code = (PowerManager) context.getSystemService("power");
        }
        return Code.isScreenOn();
    }
}
