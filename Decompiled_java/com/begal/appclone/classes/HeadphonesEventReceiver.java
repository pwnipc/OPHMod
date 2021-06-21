package com.begal.appclone.classes;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

public class HeadphonesEventReceiver extends StartExitAppEventReceiver {
    private static final String TAG = HeadphonesEventReceiver.class.getSimpleName();

    public static void init(Context context) {
        Log.i(TAG, "init; ");
        StartExitAppEventReceiver.init();
        try {
            context.registerReceiver(new HeadphonesEventReceiver(), new IntentFilter("android.intent.action.HEADSET_PLUG"));
            context.startService(new Intent(context, PersistentAppService.class));
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }

    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.i(str, "onReceive; intent: " + intent);
        try {
            if (!isInitialStickyBroadcast() && "android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                int state = intent.getIntExtra("state", -1);
                boolean plugged = state != 0;
                String str2 = TAG;
                Log.i(str2, "onReceive; state: " + state + ", plugged: " + plugged);
                if (plugged) {
                    handleEventAction(context, CloneSettings.getInstance(context).getString("headphonesPluggedEventAction", "NONE"));
                } else {
                    handleEventAction(context, CloneSettings.getInstance(context).getString("headphonesUnpluggedEventAction", "NONE"));
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }
}
