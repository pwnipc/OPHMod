package com.begal.appclone.classes.freeform;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;

@TargetApi(24)
public class FreeFormWindowActivity extends Activity {
    private static final String TAG = FreeFormWindowActivity.class.getSimpleName();
    private static FreeFormWindow sFreeFormWindow;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (sFreeFormWindow == null) {
            sFreeFormWindow = new FreeFormWindow();
        }
        try {
            Bundle metaData = getPackageManager().getActivityInfo(getComponentName(), 129).metaData;
            if (metaData != null) {
                String originalActivityName = metaData.getString("com.begal.appclone.originalActivityName");
                if (originalActivityName != null && originalActivityName.startsWith(".")) {
                    originalActivityName = getPackageName() + originalActivityName;
                }
                Log.i(TAG, "onCreate; originalActivityName: " + originalActivityName);
                Intent intent = new Intent(this, Class.forName(originalActivityName));
                intent.addFlags(268435456);
                intent.addFlags(4096);
                intent.addFlags(65536);
                Bundle extras = getIntent().getExtras();
                if (extras != null) {
                    intent.putExtras(extras);
                }
                Rect activityBounds = loadActivityBounds();
                if (activityBounds == null) {
                    activityBounds = getDefaultActivityBounds();
                }
                overridePendingTransition(0, 0);
                finish();
                overridePendingTransition(0, 0);
                Log.i(TAG, "onCreate; activityBounds: " + activityBounds);
                Bundle options = ActivityOptions.makeBasic().setLaunchBounds(activityBounds).toBundle();
                startActivity(intent, options);
                Log.i(TAG, "onCreate; intent: " + intent + ", options: " + options);
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        overridePendingTransition(0, 0);
    }

    public Rect loadActivityBounds() {
        try {
            SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
            int left = preferences.getInt(FreeFormWindow.PREF_KEY_FREE_FORM_WINDOW_LEFT, 0);
            int top = preferences.getInt(FreeFormWindow.PREF_KEY_FREE_FORM_WINDOW_TOP, 0);
            int right = preferences.getInt(FreeFormWindow.PREF_KEY_FREE_FORM_WINDOW_RIGHT, 0);
            int bottom = preferences.getInt(FreeFormWindow.PREF_KEY_FREE_FORM_WINDOW_BOTTOM, 0);
            String str = TAG;
            Log.i(str, "loadActivityBounds; left: " + left + ", top: " + top + ", right: " + right + ", bottom: " + bottom);
            Rect rect = new Rect(left, top, right, bottom);
            if (rect.isEmpty()) {
                return null;
            }
            Point realScreenSize = getRealScreenSize(getWindowManager().getDefaultDisplay());
            if (rect.left == 0 && rect.width() == realScreenSize.x && rect.top == 0 && rect.height() == realScreenSize.y) {
                return null;
            }
            return rect;
        } catch (Exception e) {
            Log.w(TAG, e);
            return null;
        }
    }

    public Rect getDefaultActivityBounds() {
        Point realScreenSize = getRealScreenSize(getWindowManager().getDefaultDisplay());
        String str = TAG;
        Log.i(str, "getDefaultActivityBounds; realScreenSize: " + realScreenSize);
        int width = Math.round(((float) realScreenSize.x) * 0.8f);
        int height = Math.round(((float) realScreenSize.y) * 0.8f);
        int left = (realScreenSize.x - width) / 2;
        int top = (realScreenSize.y - height) / 2;
        return new Rect(left, top, left + width, top + height);
    }

    private static Point getRealScreenSize(Display d) {
        DisplayMetrics metrics = new DisplayMetrics();
        d.getMetrics(metrics);
        int widthPixels = metrics.widthPixels;
        int heightPixels = metrics.heightPixels;
        if (Build.VERSION.SDK_INT >= 14 && Build.VERSION.SDK_INT < 17) {
            try {
                widthPixels = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(d, new Object[0])).intValue();
                heightPixels = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(d, new Object[0])).intValue();
            } catch (Exception e) {
            }
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                Point realSize = new Point();
                Display.class.getMethod("getRealSize", new Class[]{Point.class}).invoke(d, new Object[]{realSize});
                widthPixels = realSize.x;
                heightPixels = realSize.y;
            } catch (Exception e2) {
            }
        }
        return new Point(widthPixels, heightPixels);
    }
}
