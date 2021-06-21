package com.begal.appclone.classes;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class PowerEventReceiver extends StartExitAppEventReceiver {
    private static final String TAG = PowerEventReceiver.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.i(str, "onReceive; intent: " + intent);
        try {
            CloneSettings cloneSettings = CloneSettings.getInstance(context);
            boolean isDocked = false;
            boolean powerEventsDockUndockEvents = cloneSettings.getBoolean("powerEventsDockUndockEvents", false).booleanValue();
            String str2 = TAG;
            Log.i(str2, "onReceive; powerEventsDockUndockEvents: " + powerEventsDockUndockEvents);
            String action = intent.getAction();
            if ("android.intent.action.ACTION_POWER_CONNECTED".equals(action) && !powerEventsDockUndockEvents) {
                Log.i(TAG, "onReceive; ACTION_POWER_CONNECTED");
                handleEventAction(context, cloneSettings.getString("powerConnectedEventAction", "NONE"));
            } else if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(action) && !powerEventsDockUndockEvents) {
                Log.i(TAG, "onReceive; ACTION_POWER_DISCONNECTED");
                handleEventAction(context, cloneSettings.getString("powerDisconnectedEventAction", "NONE"));
            } else if ("android.intent.action.DOCK_EVENT".equals(action) && powerEventsDockUndockEvents) {
                Log.i(TAG, "onReceive; ACTION_DOCK_EVENT");
                if (intent.getIntExtra("android.intent.extra.DOCK_STATE", -1) != 0) {
                    isDocked = true;
                }
                String str3 = TAG;
                Log.i(str3, "onReceive; isDocked: " + isDocked);
                if (isDocked) {
                    handleEventAction(context, cloneSettings.getString("powerConnectedEventAction", "NONE"));
                } else {
                    handleEventAction(context, cloneSettings.getString("powerDisconnectedEventAction", "NONE"));
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }
}
