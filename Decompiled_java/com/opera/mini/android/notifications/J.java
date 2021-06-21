package com.opera.mini.android.notifications;

import com.opera.mini.android.events.ActivityResumeEvent;
import com.opera.mini.android.events.MobileStoreShownEvent;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.s;

/* compiled from: Source */
final class J {
    private /* synthetic */ Z Code;

    private J(Z z) {
        this.Code = z;
    }

    /* synthetic */ J(Z z, byte b) {
        this(z);
    }

    @dm
    public final void onServerNotificationSettingsReceived(ServerNotificationSettingsEvent serverNotificationSettingsEvent) {
        s.Code(this.Code.Z.edit().putLong("MobileStore:check_interval", serverNotificationSettingsEvent.j));
        this.Code.Code(serverNotificationSettingsEvent.I);
        this.Code.Code(serverNotificationSettingsEvent.d);
    }

    @dm
    public final void onActivityResumed(ActivityResumeEvent activityResumeEvent) {
        Z.Code(this.Code);
    }

    @dm
    public final void onMobileStoreShown(MobileStoreShownEvent mobileStoreShownEvent) {
        s.Code(this.Code.Z.edit().putBoolean("MobileStore:oms_visited", true));
        this.Code.I(false);
        this.Code.Z();
    }
}
