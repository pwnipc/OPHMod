package com.opera.mini.android;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;

/* compiled from: Source */
public class ae {
    @DontOptimize
    public static void Code(SharedPreferences.Editor editor) {
        editor.apply();
    }

    @DontOptimize
    static String Code(Context context) {
        return context.getApplicationInfo().nativeLibraryDir;
    }

    @DontOptimize
    public static boolean Code(File file, boolean z, boolean z2) {
        return file.setExecutable(z, z2);
    }

    @DontOptimize
    public static boolean I(File file, boolean z, boolean z2) {
        return file.setReadable(z, z2);
    }

    @DontOptimize
    public static boolean Z(File file, boolean z, boolean z2) {
        return file.setWritable(z, z2);
    }
}
