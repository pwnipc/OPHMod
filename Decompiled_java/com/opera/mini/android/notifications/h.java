package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.ad;
import com.opera.mini.android.bl;
import com.opera.mini.android.events.ActivityPausedEvent;
import com.opera.mini.android.events.ActivityResumeEvent;
import com.opera.mini.android.events.BreamInitializedEvent;
import com.opera.mini.android.events.NotificationSettingChangedEvent;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.s;

/* compiled from: Source */
final class h {
    private /* synthetic */ g Code;

    private h(g gVar) {
        this.Code = gVar;
    }

    /* synthetic */ h(g gVar, byte b) {
        this(gVar);
    }

    @dm
    public final void onServerNotificationSettingEvent(ServerNotificationSettingsEvent serverNotificationSettingsEvent) {
        s.Code(this.Code.I.edit().putString("ga_tracking_id", serverNotificationSettingsEvent.k));
    }

    @dm
    public final void onNotificationSettingChanged(NotificationSettingChangedEvent notificationSettingChangedEvent) {
        s.Code(this.Code.I.edit().putBoolean("notifications_enabled_by_user", notificationSettingChangedEvent.Code));
    }

    @dm
    public final void onBreamInitialized(BreamInitializedEvent breamInitializedEvent) {
        SharedPreferences.Editor edit = this.Code.I.edit();
        edit.putBoolean("notifications_enabled_by_user", bl.I());
        if (!this.Code.I.contains("first_start_time_utc")) {
            edit.putLong("first_start_time_utc", System.currentTimeMillis());
        }
        s.Code(edit);
    }

    @dm
    public final void onActivityResumed(ActivityResumeEvent activityResumeEvent) {
        boolean unused = this.Code.C = true;
    }

    @dm
    public final void onActivityPaused(ActivityPausedEvent activityPausedEvent) {
        if (s.al >= 7 ? ad.Code(activityPausedEvent.Code) : true) {
            boolean unused = this.Code.C = false;
        }
        s.Code(this.Code.I.edit().putLong("last_in_foreground_utc", System.currentTimeMillis()));
        this.Code.Code();
    }

    @dm
    public final void onNotificationAlarm(e eVar) {
        this.Code.Code();
    }
}
