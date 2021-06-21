package com.opera.mini.android.notifications;

import com.opera.mini.android.bl;
import com.opera.mini.android.events.BreamInitializedEvent;
import com.opera.mini.android.events.OdpSettingEvent;
import com.opera.mini.android.events.OdpVisitedEvent;
import com.opera.mini.android.events.ServerNotificationSettingsEvent;
import com.opera.mini.android.s;

/* compiled from: Source */
final class I {
    private /* synthetic */ Code Code;

    private I(Code code) {
        this.Code = code;
    }

    /* synthetic */ I(Code code, byte b) {
        this(code);
    }

    @dm
    public final void onServerNotificationSettingsReceived(ServerNotificationSettingsEvent serverNotificationSettingsEvent) {
        this.Code.Code(serverNotificationSettingsEvent.Code);
        this.Code.Code(serverNotificationSettingsEvent.c);
    }

    @dm
    public final void onOdpVisited(OdpVisitedEvent odpVisitedEvent) {
        this.Code.Z();
    }

    @dm
    public final void onOdpSettingChanged(OdpSettingEvent odpSettingEvent) {
        s.Code(this.Code.Z.edit().putBoolean("Discover:odp_enabled", odpSettingEvent.Code));
    }

    @dm
    public final void onBreamInitialized(BreamInitializedEvent breamInitializedEvent) {
        s.Code(this.Code.Z.edit().putBoolean("Discover:odp_enabled", bl.Z()));
    }
}
