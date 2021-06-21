package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import com.opera.mini.h4lflif4.R;

/* compiled from: Source */
public final class m extends o {
    /* access modifiers changed from: private */
    public boolean Code;

    public m(g gVar, SharedPreferences sharedPreferences) {
        super(gVar, sharedPreferences, "SavedData", R.string.STR_SAVE_DATA_NOTIFICATION, "opera:data_usage", (byte) 1);
        EventDispatcher.Z(new n(this, (byte) 0));
    }

    /* access modifiers changed from: protected */
    public final long Code() {
        if (Z()) {
            if (this.Code) {
                return System.currentTimeMillis() + this.Z.getLong("SavedData:delay_after_power_connected", 2147483647L);
            }
            I();
            I(true);
        }
        return Long.MAX_VALUE;
    }

    /* access modifiers changed from: private */
    public boolean Z() {
        if (!this.Z.getBoolean("SavedData:notified", true)) {
            if (System.currentTimeMillis() >= this.J.B() + this.Z.getLong("SavedData:wait", 2147483647L)) {
                long j = this.Z.getLong("SavedData:bytes_received", 0);
                if (j > this.Z.getLong("SavedData:min_bytes_received", 2147483647L) && j < this.Z.getLong("SavedData:max_bytes_received", 0)) {
                    int i = this.Z.getInt("SavedData:open_url_counter", 0);
                    if ((i > 0 && i <= this.Z.getInt("SavedData:max_pages_opened", Integer.MAX_VALUE)) && this.Z.getInt("SavedData:saved_percent", 0) > 15) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    public void I(boolean z) {
        s.Code(this.Z.edit().putBoolean("SavedData:notified", z));
    }
}
