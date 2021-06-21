package com.opera.mini.android.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.opera.mini.android.events.ConnectivityChangedEvent;
import com.opera.mini.android.events.EventDispatcher;

/* compiled from: Source */
final class NetUtils$1 extends BroadcastReceiver {
    NetUtils$1() {
    }

    public final void onReceive(Context context, Intent intent) {
        EventDispatcher.Code(new ConnectivityChangedEvent(B.J(context).getActiveNetworkInfo()));
    }
}
