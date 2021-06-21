package com.opera.mini.android;

import android.content.pm.PackageManager;
import java.util.Calendar;
import java.util.Date;

/* compiled from: Source */
final class ao {
    public static Date Code() {
        try {
            return new Date(an.Code.getPackageManager().getPackageInfo(an.Code.getPackageName(), 0).firstInstallTime);
        } catch (PackageManager.NameNotFoundException e) {
            return Calendar.getInstance().getTime();
        }
    }
}
