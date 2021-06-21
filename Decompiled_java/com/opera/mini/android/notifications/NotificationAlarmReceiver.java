package com.opera.mini.android.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.opera.mini.android.events.EventDispatcher;

/* compiled from: Source */
public class NotificationAlarmReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        EventDispatcher.Code(new e());
    }
}
