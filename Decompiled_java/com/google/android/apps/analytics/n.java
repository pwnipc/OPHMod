package com.google.android.apps.analytics;

import android.os.Handler;
import android.os.HandlerThread;

final class n extends HandlerThread {
    /* access modifiers changed from: private */
    public int B;
    /* access modifiers changed from: private */
    public long C;
    private volatile Handler Code;
    /* access modifiers changed from: private */
    public final r I;
    /* access modifiers changed from: private */
    public int J;
    /* access modifiers changed from: private */
    public final String Z;
    /* access modifiers changed from: private */
    public o a;
    /* access modifiers changed from: private */
    public final C b;
    /* access modifiers changed from: private */
    public final s c;
    /* access modifiers changed from: private */
    public final m d;

    private n(C c2, r rVar, String str, m mVar) {
        super("DispatcherThread");
        this.B = 30;
        this.a = null;
        this.b = c2;
        this.Z = str;
        this.I = rVar;
        this.c = new s(this, (byte) 0);
        this.I.Code = this.c;
        this.d = mVar;
    }

    private n(C c2, String str, m mVar) {
        this(c2, new r(mVar.I), str, mVar);
    }

    /* synthetic */ n(C c2, String str, m mVar, byte b2) {
        this(c2, str, mVar);
    }

    static /* synthetic */ long Z(n nVar) {
        long j = nVar.C * 2;
        nVar.C = j;
        return j;
    }

    public final void Code(f[] fVarArr) {
        if (this.Code != null) {
            this.Code.post(new o(this, fVarArr));
        }
    }

    /* access modifiers changed from: protected */
    public final void onLooperPrepared() {
        this.Code = new Handler();
    }
}
