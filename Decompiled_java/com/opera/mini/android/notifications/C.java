package com.opera.mini.android.notifications;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.opera.mini.android.events.ActivityPausedEvent;
import com.opera.mini.android.events.ActivityResumeEvent;

/* compiled from: Source */
public final class C {
    private TelephonyManager Code;

    private TelephonyManager Code(Context context) {
        if (this.Code == null) {
            this.Code = (TelephonyManager) context.getSystemService("phone");
        }
        return this.Code;
    }

    @dm
    public final void onActivityPaused(ActivityPausedEvent activityPausedEvent) {
        if (B.I != null) {
            Code(activityPausedEvent.Code).listen(B.I, 0);
        }
        activityPausedEvent.Code.unregisterReceiver(B.Z);
    }

    @dm
    public final void onActivityResumed(ActivityResumeEvent activityResumeEvent) {
        if (B.I != null) {
            Code(activityResumeEvent.Code).listen(B.I, 256);
        }
        activityResumeEvent.Code.registerReceiver(B.Z, B.J);
    }
}
