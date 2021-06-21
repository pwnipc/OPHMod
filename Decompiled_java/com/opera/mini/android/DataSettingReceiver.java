package com.opera.mini.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Source */
public class DataSettingReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (Browser.I != null && !Browser.I.Z()) {
            cs.I();
        }
    }
}
