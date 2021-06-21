package com.begal.appclone.classes;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

public class BootReceiver extends BroadcastReceiver {
    private static final String TAG = BootReceiver.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.i(str, "onReceive; context: " + context);
        try {
            if ("ENABLE".equals(CloneSettings.getInstance(context).getString("autoStart", (String) null))) {
                Intent i = Utils.getLaunchIntent(context, context.getPackageName());
                i.addFlags(268435456);
                context.startActivity(i);
            }
        } catch (Exception e) {
            Log.w(TAG, e);
            Toast.makeText(context, "Failed to launch app.", 0).show();
        }
    }
}
