package com.opera.mini.android;

import android.content.ContentResolver;
import android.provider.Settings;

/* compiled from: Source */
public class ab {
    @DontOptimize
    static int Code(ContentResolver contentResolver, String str, int i) {
        return Settings.Global.getInt(contentResolver, str, i);
    }
}
