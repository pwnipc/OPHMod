package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class ci {

    final class a extends BroadcastReceiver {
        private a() {
        }

        public final void onReceive(Context context, Intent intent) {
            if (!"android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                intent.getAction();
            }
        }
    }
}
