package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.h4lflif4.R;

/* compiled from: Source */
public final class Code extends k {
    public Code(g gVar, SharedPreferences sharedPreferences) {
        super(gVar, sharedPreferences, "Discover", R.string.STR_DISCOVER_NOTIFICATION, "odp:showuptodate", (byte) 0);
        EventDispatcher.Z(new I(this, (byte) 0));
    }

    /* access modifiers changed from: protected */
    public final long Code() {
        if (this.Z.getBoolean("Discover:odp_enabled", false)) {
            return super.Code();
        }
        return Long.MAX_VALUE;
    }
}
