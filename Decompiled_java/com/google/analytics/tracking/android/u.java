package com.google.analytics.tracking.android;

import java.util.TimerTask;

/* compiled from: Source */
final class u extends TimerTask {
    private /* synthetic */ s Code;

    private u(s sVar) {
        this.Code = sVar;
    }

    /* synthetic */ u(s sVar, byte b) {
        this(sVar);
    }

    public final void run() {
        if (this.Code.I != t.CONNECTED_SERVICE || !this.Code.a.isEmpty() || this.Code.Code + this.Code.i >= this.Code.h.Code()) {
            this.Code.e.schedule(new u(this.Code), this.Code.i);
            return;
        }
        af.J("Disconnecting due to inactivity");
        this.Code.e();
    }
}
