package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.bl;
import com.opera.mini.android.events.ActivityPausedEvent;
import com.opera.mini.android.events.OnPowerConnected;
import com.opera.mini.android.events.OpenUrlEvent;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.s;

/* compiled from: Source */
final class n {
    private /* synthetic */ m Code;

    private n(m mVar) {
        this.Code = mVar;
    }

    /* synthetic */ n(m mVar, byte b) {
        this(mVar);
    }

    @dm
    public final void onServerNotificationSettingsReceived(ServerNotificationSettingsEvent serverNotificationSettingsEvent) {
        SharedPreferences.Editor edit = this.Code.Z.edit();
        edit.putLong("SavedData:min_bytes_received", (long) serverNotificationSettingsEvent.B);
        edit.putLong("SavedData:max_bytes_received", (long) serverNotificationSettingsEvent.C);
        edit.putInt("SavedData:max_pages_opened", serverNotificationSettingsEvent.a);
        edit.putLong("SavedData:delay_after_power_connected", serverNotificationSettingsEvent.i);
        edit.putLong("SavedData:wait", serverNotificationSettingsEvent.b);
        s.Code(edit);
        this.Code.Code(serverNotificationSettingsEvent.e);
    }

    @dm
    public final void onOpenUrl(OpenUrlEvent openUrlEvent) {
        s.Code(this.Code.Z.edit().putInt("SavedData:open_url_counter", this.Code.Z.getInt("SavedData:open_url_counter", 0) + 1));
    }

    @dm
    public final void onPowerConnected(OnPowerConnected onPowerConnected) {
        boolean unused = this.Code.Code = true;
        if (this.Code.Z()) {
            this.Code.J.Code();
        }
        boolean unused2 = this.Code.Code = false;
    }

    @dm
    public final void onActivityPaused(ActivityPausedEvent activityPausedEvent) {
        SharedPreferences.Editor edit = this.Code.Z.edit();
        edit.putLong("SavedData:bytes_received", bl.Code());
        edit.putInt("SavedData:saved_percent", bl.J());
        s.Code(edit);
        this.Code.I(false);
    }
}
