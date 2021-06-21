package com.opera.mini.android.notifications;

import com.opera.mini.android.events.NotificationStatsAck;

/* compiled from: Source */
final class p {
    private /* synthetic */ o Code;

    private p(o oVar) {
        this.Code = oVar;
    }

    /* synthetic */ p(o oVar, byte b) {
        this(oVar);
    }

    @dm
    public final void onNotificationImpressionAck(NotificationStatsAck notificationStatsAck) {
        o.Code(this.Code);
    }
}
