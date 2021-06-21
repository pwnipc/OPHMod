package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;

/* compiled from: Source */
public final class e implements am {
    /* access modifiers changed from: private */
    public static final Object Code = new Object();
    private static e g;
    /* access modifiers changed from: private */
    public int B = 1800;
    private boolean C = true;
    private Context I;
    private volatile f J;
    private d Z;
    /* access modifiers changed from: private */
    public boolean a = true;
    private boolean b = true;
    private Code c = new Code();
    /* access modifiers changed from: private */
    public Handler d;
    private GANetworkReceiver e;
    /* access modifiers changed from: private */
    public boolean f = false;

    /* compiled from: Source */
    final class Code {
        Code() {
        }

        public final void Code(boolean z) {
            e.this.Code(z, e.this.a);
        }
    }

    public static e Code() {
        if (g == null) {
            g = new e();
        }
        return g;
    }

    private e() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(Context context, f fVar) {
        if (this.I == null) {
            this.I = context.getApplicationContext();
            if (this.J == null) {
                this.J = fVar;
                if (this.C) {
                    fVar.Code();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized d I() {
        if (this.Z == null) {
            if (this.I == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.Z = new ae(this.c, this.I);
        }
        if (this.d == null) {
            this.d = new Handler(this.I.getMainLooper(), new Handler.Callback() {
                public final boolean handleMessage(Message message) {
                    if (1 == message.what && e.Code.equals(message.obj)) {
                        aa.Code().Code(true);
                        e.this.Z();
                        aa.Code().Code(false);
                        if (e.this.B > 0 && !e.this.f) {
                            e.this.d.sendMessageDelayed(e.this.d.obtainMessage(1, e.Code), (long) (e.this.B * 1000));
                        }
                    }
                    return true;
                }
            });
            if (this.B > 0) {
                this.d.sendMessageDelayed(this.d.obtainMessage(1, Code), (long) (this.B * 1000));
            }
        }
        if (this.e == null && this.b) {
            this.e = new GANetworkReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            this.I.registerReceiver(this.e, intentFilter);
        }
        return this.Z;
    }

    public final synchronized void Z() {
        if (this.J == null) {
            af.C("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
            this.C = true;
        } else {
            aa.Code().Code(ab.DISPATCH);
            this.J.Code();
        }
    }

    public final synchronized void Code(int i) {
        if (this.d == null) {
            af.C("Need to call initialize() and be in fallback mode to start dispatch.");
            this.B = i;
        } else {
            aa.Code().Code(ab.SET_DISPATCH_PERIOD);
            if (!this.f && this.a && this.B > 0) {
                this.d.removeMessages(1, Code);
            }
            this.B = i;
            if (i > 0 && !this.f && this.a) {
                this.d.sendMessageDelayed(this.d.obtainMessage(1, Code), (long) (i * 1000));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(boolean z, boolean z2) {
        if (!(this.f == z && this.a == z2)) {
            if (z || !z2) {
                if (this.B > 0) {
                    this.d.removeMessages(1, Code);
                }
            }
            if (!z && z2 && this.B > 0) {
                this.d.sendMessageDelayed(this.d.obtainMessage(1, Code), (long) (this.B * 1000));
            }
            af.J("PowerSaveMode " + ((z || !z2) ? "initiated." : "terminated."));
            this.f = z;
            this.a = z2;
        }
    }

    public final synchronized void Code(boolean z) {
        Code(this.f, z);
    }
}
