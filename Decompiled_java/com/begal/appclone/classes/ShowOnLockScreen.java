package com.begal.appclone.classes;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Window;

public class ShowOnLockScreen extends AbstractActivityContentProvider {
    private static final String TAG = ShowOnLockScreen.class.getSimpleName();
    private boolean mShowOnLockScreen;

    public ShowOnLockScreen(CloneSettings cloneSettings) {
        this.mShowOnLockScreen = cloneSettings.getBoolean("showOnLockScreen", false).booleanValue();
        String str = TAG;
        Log.i(str, "ShowOnLockScreen; mShowOnLockScreen: " + this.mShowOnLockScreen);
    }

    public void init(Context context) {
        if (this.mShowOnLockScreen) {
            onCreate();
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.i(str, "onActivityCreated; activity: " + activity);
        Window window = activity.getWindow();
        window.addFlags(4194304);
        window.addFlags(524288);
        window.addFlags(2097152);
    }
}
