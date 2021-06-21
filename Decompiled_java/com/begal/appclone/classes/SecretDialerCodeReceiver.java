package com.begal.appclone.classes;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

public class SecretDialerCodeReceiver extends BroadcastReceiver {
    private static final String TAG = SecretDialerCodeReceiver.class.getSimpleName();

    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.i(str, "onReceive; context: " + context);
        try {
            if (!TextUtils.isEmpty(CloneSettings.getInstance(context).getString("secretDialerCode", (String) null))) {
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
