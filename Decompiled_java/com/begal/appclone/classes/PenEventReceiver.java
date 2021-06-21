package com.begal.appclone.classes;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class PenEventReceiver extends StartExitAppEventReceiver {
    private static final String TAG = PenEventReceiver.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.i(str, "onReceive; intent: " + intent);
        try {
            String action = intent.getAction();
            if ("com.samsung.pen.INSERT".equals(action)) {
                boolean penInsert = intent.getBooleanExtra("penInsert", false);
                String str2 = TAG;
                Log.i(str2, "onReceive; penInsert: " + penInsert);
                if (penInsert) {
                    handleEventAction(context, CloneSettings.getInstance(context).getString("penInsertedEventAction", "NONE"));
                } else {
                    handleEventAction(context, CloneSettings.getInstance(context).getString("penDetachedEventAction", "NONE"));
                }
            } else if ("com.sec.android.intent.action.AIR_BUTTON".equals(action) && intent.getBooleanExtra("isShow", false)) {
                handleEventAction(context, CloneSettings.getInstance(context).getString("penButtonPressedEventAction", "NONE"));
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }
}
