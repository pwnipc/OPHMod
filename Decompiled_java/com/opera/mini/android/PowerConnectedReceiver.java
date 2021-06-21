package com.opera.mini.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.events.OnPowerConnected;

/* compiled from: Source */
public class PowerConnectedReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        EventDispatcher.Code(new OnPowerConnected());
    }
}
