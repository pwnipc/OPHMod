package com.google.analytics.tracking.android;

import java.util.TimerTask;

/* compiled from: Source */
final class v extends TimerTask {
    private /* synthetic */ s Code;

    private v(s sVar) {
        this.Code = sVar;
    }

    /* synthetic */ v(s sVar, byte b) {
        this(sVar);
    }

    public final void run() {
        if (this.Code.I == t.CONNECTING) {
            this.Code.c();
        }
    }
}
