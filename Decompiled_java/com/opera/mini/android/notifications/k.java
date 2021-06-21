package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import java.util.GregorianCalendar;

/* compiled from: Source */
public abstract class k extends o {
    public k(g gVar, SharedPreferences sharedPreferences, String str, int i, String str2, byte b) {
        super(gVar, sharedPreferences, str, i, str2, b);
        this.I = str;
        EventDispatcher.Z(new l(this, (byte) 0));
    }

    /* access modifiers changed from: protected */
    public long Code() {
        long max = Math.max(this.J.B() + this.Z.getLong("prime_time_app_paused_protected_time", 2147483647L), Math.max(this.J.J() + this.Z.getLong("prime_time_fresh_run_protected_time", 2147483647L), J() + this.Z.getLong(this.I + ":interval", 2147483647L)));
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(max);
        int i = gregorianCalendar.get(12) + (gregorianCalendar.get(11) * 60);
        if (((long) i) < f()) {
            max += (f() - ((long) i)) * 60000;
        } else if (((long) i) > this.Z.getLong("prime_time_end", -1)) {
            max = (max + 86400000) - ((((long) i) - f()) * 60000);
        }
        if (max - this.J.B() > this.Z.getLong("prime_time_allowed_for", Long.MAX_VALUE)) {
            max = Long.MAX_VALUE;
        }
        long currentTimeMillis = System.currentTimeMillis();
        new StringBuilder("PrimeTimeNotification").append(this.I).append(" delay=").append(max - currentTimeMillis);
        if (max > currentTimeMillis) {
            return max;
        }
        I();
        Z();
        return Long.MAX_VALUE;
    }

    private long f() {
        return this.Z.getLong("prime_time_start", 2147483647L);
    }

    /* access modifiers changed from: protected */
    public final void Code(long j) {
        s.Code(this.Z.edit().putLong(this.I + ":interval", j));
    }

    /* access modifiers changed from: protected */
    public final void Z() {
        s.Code(this.Z.edit().putLong(this.I + ":timestamp_utc", System.currentTimeMillis()));
    }

    /* access modifiers changed from: protected */
    public final long J() {
        return this.Z.getLong(this.I + ":timestamp_utc", 0);
    }
}
