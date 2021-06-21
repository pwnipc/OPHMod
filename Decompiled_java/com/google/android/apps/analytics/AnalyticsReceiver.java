package com.google.android.apps.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class AnalyticsReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("referrer");
        if ("com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) && stringExtra != null) {
            Log.i("GoogleAnalyticsTracker", "referrer=" + stringExtra);
            if (new p(context).Code(stringExtra)) {
                Log.d("GoogleAnalyticsTracker", "Referrer store attemped succeeded.");
            } else {
                Log.w("GoogleAnalyticsTracker", "Referrer store attempt failed.");
            }
        }
    }
}
