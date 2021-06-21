package com.begal.appclone.classes.freeform;

import android.app.Activity;
import android.graphics.Rect;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import com.begal.appclone.classes.AbstractActivityContentProvider;
import com.begal.appclone.classes.BuildConfig;

public class FreeFormWindow extends AbstractActivityContentProvider {
    public static final String PREF_KEY_FREE_FORM_WINDOW_BOTTOM = "free_form_window_bottom";
    public static final String PREF_KEY_FREE_FORM_WINDOW_LEFT = "free_form_window_left";
    public static final String PREF_KEY_FREE_FORM_WINDOW_RIGHT = "free_form_window_right";
    public static final String PREF_KEY_FREE_FORM_WINDOW_TOP = "free_form_window_top";
    private static final String TAG = FreeFormWindow.class.getSimpleName();

    public FreeFormWindow() {
        onCreate();
    }

    /* access modifiers changed from: protected */
    public void onActivityPaused(Activity activity) {
        saveActivityBounds(activity);
    }

    /* access modifiers changed from: protected */
    public void onActivityStopped(Activity activity) {
        saveActivityBounds(activity);
    }

    private void saveActivityBounds(Activity activity) {
        Rect rect;
        String str = TAG;
        Log.i(str, "saveActivityBounds; activity: " + activity);
        try {
            if (activity.getClass().getName().startsWith(BuildConfig.APPLICATION_ID) || (rect = getActivityBounds(activity)) == null) {
                return;
            }
            if (!rect.isEmpty()) {
                String str2 = TAG;
                Log.i(str2, "saveActivityBounds; rect: " + rect);
                PreferenceManager.getDefaultSharedPreferences(activity).edit().putInt(PREF_KEY_FREE_FORM_WINDOW_LEFT, rect.left).putInt(PREF_KEY_FREE_FORM_WINDOW_TOP, rect.top).putInt(PREF_KEY_FREE_FORM_WINDOW_RIGHT, rect.right).putInt(PREF_KEY_FREE_FORM_WINDOW_BOTTOM, rect.bottom).apply();
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    private Rect getActivityBounds(Activity activity) {
        try {
            View decorView = activity.getWindow().getDecorView();
            int[] position = new int[2];
            decorView.getLocationOnScreen(position);
            int left = position[0];
            int top = position[1];
            return new Rect(left, top, left + decorView.getWidth(), top + decorView.getHeight());
        } catch (Exception e) {
            Log.w(TAG, e);
            return null;
        }
    }
}
