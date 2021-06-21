package com.opera.mini.android.notifications;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Source */
public final class g {
    private static g Code;
    private f B;
    /* access modifiers changed from: private */
    public boolean C;
    /* access modifiers changed from: private */
    public SharedPreferences I;
    private Map J;
    private Context Z;

    public static g Code(Context context) {
        if (Code == null) {
            Code = new g(context);
        }
        return Code;
    }

    private g(Context context) {
        EventDispatcher.Z(new h(this, (byte) 0));
        this.Z = context;
        if (s.t()) {
            this.B = new f(context);
        }
        this.I = context.getSharedPreferences("notifications", 0);
        Code code = new Code(this, this.I);
        m mVar = new m(this, this.I);
        Z z = new Z(this, this.I);
        this.J = new HashMap();
        this.J.put(code.C(), code);
        this.J.put(mVar.C(), mVar);
        this.J.put(z.C(), z);
    }

    public final o Code(String str) {
        return (o) this.J.get(str);
    }

    public final void Code() {
        long j;
        if (!this.C && Z()) {
            long j2 = Long.MAX_VALUE;
            for (o oVar : this.J.values()) {
                if (oVar.b()) {
                    j = Math.min(j2, oVar.Code());
                } else {
                    j = j2;
                }
                j2 = j;
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(this.Z, 0, new Intent(this.Z, NotificationAlarmReceiver.class), 134217728);
            AlarmManager alarmManager = (AlarmManager) this.Z.getSystemService("alarm");
            alarmManager.cancel(broadcast);
            if (j2 != Long.MAX_VALUE) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long currentTimeMillis = j2 - System.currentTimeMillis();
                new StringBuilder("OperaNotificationManager.notifyOrReschedule() delay=").append(currentTimeMillis);
                alarmManager.set(3, currentTimeMillis + elapsedRealtime, broadcast);
            }
        }
    }

    public final Context I() {
        return this.Z;
    }

    public final boolean Z() {
        return this.I.getBoolean("notifications_enabled_by_user", false);
    }

    public final long J() {
        return this.I.getLong("first_start_time_utc", -1);
    }

    public final long B() {
        return this.I.getLong("last_in_foreground_utc", -1);
    }

    public final f C() {
        return this.B;
    }

    public final byte[] a() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (o oVar : this.J.values()) {
                if (oVar.e()) {
                    dataOutputStream.writeByte(oVar.B());
                    dataOutputStream.writeShort(oVar.c());
                    dataOutputStream.writeShort(oVar.d());
                }
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            new StringBuilder("OperaNotificationManager.getMiniStatsHeader() exception").append(e.getMessage());
            return null;
        }
    }

    public final boolean b() {
        for (o e : this.J.values()) {
            if (e.e()) {
                return true;
            }
        }
        return false;
    }

    public final String c() {
        return this.I.getString("ga_tracking_id", (String) null);
    }
}
