package com.opera.mini.android.notifications;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import com.opera.mini.android.Browser;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import com.opera.mini.h4lflif4.R;

/* compiled from: Source */
public abstract class o {
    private String B;
    private byte C;
    private int Code;
    protected String I;
    protected g J;
    protected SharedPreferences Z;

    /* access modifiers changed from: protected */
    public abstract long Code();

    static /* synthetic */ void Code(o oVar) {
        SharedPreferences.Editor edit = oVar.Z.edit();
        edit.remove(oVar.I + ":PENDING_CLICKS");
        edit.remove(oVar.I + ":PENDING_IMPRESSIONS");
        s.Code(edit);
    }

    public o(g gVar, SharedPreferences sharedPreferences, String str, int i, String str2, byte b) {
        this.Code = i;
        this.J = gVar;
        this.Z = sharedPreferences;
        this.I = str;
        this.B = str2;
        this.C = b;
        EventDispatcher.Z(new p(this, (byte) 0));
    }

    public final byte B() {
        return this.C;
    }

    public final String C() {
        return this.I;
    }

    public final void a() {
        s.Code(this.Z.edit().putInt(this.I + ":PENDING_CLICKS", d() + 1));
        if (s.t()) {
            this.J.C().I(this.I, this.J.c());
        }
        Browser.I.Code(this.B);
    }

    /* access modifiers changed from: protected */
    public void I() {
        new StringBuilder("SystemNotification.send(): ").append(this.I);
        Context I2 = this.J.I();
        ((NotificationManager) I2.getSystemService("notification")).notify(this.I.hashCode(), q.Code(I2, "com.opera.mini.android.ACTION_NOTIFICATION:" + this.I, I2.getResources().getString(R.string.app_name), I2.getResources().getString(this.Code)));
        s.Code(this.Z.edit().putInt(this.I + ":PENDING_IMPRESSIONS", c() + 1));
        if (s.t()) {
            this.J.C().Code(this.I, this.J.c());
        }
    }

    /* access modifiers changed from: protected */
    public final void Code(boolean z) {
        s.Code(this.Z.edit().putBoolean(this.I + ":enabled", z));
    }

    /* access modifiers changed from: protected */
    public final boolean b() {
        return this.Z.getBoolean(this.I + ":enabled", false);
    }

    public final int c() {
        return this.Z.getInt(this.I + ":PENDING_IMPRESSIONS", 0);
    }

    public final int d() {
        return this.Z.getInt(this.I + ":PENDING_CLICKS", 0);
    }

    public final boolean e() {
        return c() + d() > 0;
    }
}
