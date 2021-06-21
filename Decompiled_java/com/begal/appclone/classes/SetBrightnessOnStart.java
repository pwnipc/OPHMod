package com.begal.appclone.classes;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;

public class SetBrightnessOnStart extends OnAppExitListener {
    private static final int MAX_BRIGHTNESS = 255;
    private static final String SCREEN_AUTO_BRIGHTNESS_ADJ = "screen_auto_brightness_adj";
    private static final String TAG = SetBrightnessOnStart.class.getSimpleName();
    private boolean mBrightnessSet;
    private boolean mOldAutoBrightness;
    private Integer mOldBrightness;
    private boolean mRestoreBrightnessOnExit;
    private Float mSetBrightnessOnStart;

    public SetBrightnessOnStart(CloneSettings cloneSettings) {
        this.mSetBrightnessOnStart = cloneSettings.getFloat("setBrightnessOnStart", (Float) null);
        this.mRestoreBrightnessOnExit = cloneSettings.getBoolean("restoreBrightnessOnExit", false).booleanValue();
        String str = TAG;
        Log.i(str, "SetBrightnessOnStart; mSetBrightnessOnStart: " + this.mSetBrightnessOnStart);
        String str2 = TAG;
        Log.i(str2, "SetBrightnessOnStart; mRestoreBrightnessOnExit: " + this.mRestoreBrightnessOnExit);
    }

    public void init(Context context) {
        if (this.mSetBrightnessOnStart != null) {
            onCreate();
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (!this.mBrightnessSet) {
            this.mOldAutoBrightness = isAutoBrightness(activity);
            this.mOldBrightness = getBrightness(activity, this.mOldAutoBrightness);
            String str = TAG;
            Log.i(str, "onActivityCreated; mOldAutoBrightness: " + this.mOldAutoBrightness + ", mOldBrightness: " + this.mOldBrightness);
            setBrightness(activity, Math.round(this.mSetBrightnessOnStart.floatValue() * 255.0f), false);
            this.mBrightnessSet = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        String str = TAG;
        Log.i(str, "onAppExit; mRestoreBrightnessOnExit: " + this.mRestoreBrightnessOnExit + ", mOldAutoBrightness: " + this.mOldAutoBrightness);
        if (this.mRestoreBrightnessOnExit && this.mOldBrightness != null) {
            setBrightness(context, this.mOldBrightness.intValue(), this.mOldAutoBrightness);
            setAutoBrightness(context, this.mOldAutoBrightness);
            this.mBrightnessSet = false;
        }
    }

    private boolean isAutoBrightness(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness_mode", 0) == 1;
        } catch (Throwable t) {
            Log.w(TAG, t);
            return false;
        }
    }

    private void setAutoBrightness(Context context, boolean autoBrightness) {
        try {
            Settings.System.putInt(context.getContentResolver(), "screen_brightness_mode", autoBrightness);
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }

    private Integer getBrightness(Context context, boolean autoBrightness) {
        int oldBrightness;
        ContentResolver contentResolver = context.getContentResolver();
        if (autoBrightness) {
            try {
                oldBrightness = Math.round((Settings.System.getFloat(contentResolver, SCREEN_AUTO_BRIGHTNESS_ADJ) * 128.0f) + 128.0f);
            } catch (Throwable t) {
                Log.w(TAG, t);
                return null;
            }
        } else {
            oldBrightness = Settings.System.getInt(contentResolver, "screen_brightness");
        }
        return Integer.valueOf(oldBrightness);
    }

    private void setBrightness(Context context, int newBrightness, boolean autoBrightness) {
        ContentResolver contentResolver;
        String str = TAG;
        Log.i(str, "setBrightness; newBrightness: " + newBrightness + ", autoBrightness: " + autoBrightness);
        try {
            contentResolver = context.getContentResolver();
            if (autoBrightness) {
                Settings.System.putFloat(contentResolver, SCREEN_AUTO_BRIGHTNESS_ADJ, ((float) (newBrightness - 128)) / 128.0f);
                return;
            }
            Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
            Settings.System.putInt(contentResolver, "screen_brightness", newBrightness);
        } catch (Exception e) {
            Log.w(TAG, e);
            Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
            Settings.System.putInt(contentResolver, "screen_brightness", newBrightness);
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }
}
