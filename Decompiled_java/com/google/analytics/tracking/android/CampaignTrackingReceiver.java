package com.google.analytics.tracking.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Source */
public final class CampaignTrackingReceiver extends BroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("referrer");
        if ("com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) && stringExtra != null) {
            Intent intent2 = new Intent(context, h.class);
            intent2.putExtra("referrer", stringExtra);
            context.startService(intent2);
        }
    }
}
