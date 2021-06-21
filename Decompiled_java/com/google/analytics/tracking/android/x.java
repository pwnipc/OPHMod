package com.google.analytics.tracking.android;

import java.util.TimerTask;

/* compiled from: Source */
final class x extends TimerTask {
    private /* synthetic */ s Code;

    private x(s sVar) {
        this.Code = sVar;
    }

    /* synthetic */ x(s sVar, byte b) {
        this(sVar);
    }

    public final void run() {
        this.Code.d();
    }
}
