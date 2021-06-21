package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.s;

/* compiled from: Source */
final class l {
    private /* synthetic */ k Code;

    private l(k kVar) {
        this.Code = kVar;
    }

    /* synthetic */ l(k kVar, byte b) {
        this(kVar);
    }

    @dm
    public final void onNewServerNotificationSettings(ServerNotificationSettingsEvent serverNotificationSettingsEvent) {
        SharedPreferences.Editor edit = this.Code.Z.edit();
        edit.putLong("prime_time_start", serverNotificationSettingsEvent.Z);
        edit.putLong("prime_time_end", serverNotificationSettingsEvent.J);
        edit.putLong("prime_time_app_paused_protected_time", serverNotificationSettingsEvent.h);
        edit.putLong("prime_time_fresh_run_protected_time", serverNotificationSettingsEvent.g);
        edit.putLong("prime_time_allowed_for", serverNotificationSettingsEvent.f);
        s.Code(edit);
    }
}
