package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.common.ConnectionResult;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;

/* compiled from: Source */
final class s implements C, a, an {
    private final f B;
    private final Context C;
    /* access modifiers changed from: private */
    public volatile long Code;
    /* access modifiers changed from: private */
    public volatile t I;
    private d J;
    private volatile Z Z;
    /* access modifiers changed from: private */
    public final Queue a;
    private volatile int b;
    private volatile Timer c;
    private volatile Timer d;
    /* access modifiers changed from: private */
    public volatile Timer e;
    private boolean f;
    private boolean g;
    /* access modifiers changed from: private */
    public k h;
    /* access modifiers changed from: private */
    public long i;

    private s(Context context, f fVar) {
        this.a = new ConcurrentLinkedQueue();
        this.i = 300000;
        this.C = context;
        this.B = fVar;
        this.h = new k() {
            public final long Code() {
                return System.currentTimeMillis();
            }
        };
        this.b = 0;
        this.I = t.DISCONNECTED;
    }

    s(Context context, f fVar, byte b2) {
        this(context, fVar);
    }

    public final void Code(Map map, long j, String str, List list) {
        af.J("putHit called");
        this.a.add(new w(map, j, str, list));
        a();
    }

    /* renamed from: com.google.analytics.tracking.android.s$3  reason: invalid class name */
    /* compiled from: Source */
    final /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] Code = new int[t.values().length];

        static {
            try {
                Code[t.CONNECTED_LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                Code[t.CONNECTED_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                Code[t.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public final void Z() {
        switch (AnonymousClass3.Code[this.I.ordinal()]) {
            case 1:
                b();
                return;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                return;
            default:
                this.f = true;
                return;
        }
    }

    public final void J() {
        af.J("clearHits called");
        this.a.clear();
        switch (AnonymousClass3.Code[this.I.ordinal()]) {
            case 1:
                this.J.Code();
                this.g = false;
                return;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                this.Z.Code();
                this.g = false;
                return;
            default:
                this.g = true;
                return;
        }
    }

    private static Timer Code(Timer timer) {
        if (timer == null) {
            return null;
        }
        timer.cancel();
        return null;
    }

    private void C() {
        this.c = Code(this.c);
        this.d = Code(this.d);
        this.e = Code(this.e);
    }

    public final void B() {
        if (this.Z == null) {
            this.Z = new J(this.C, this, this);
            d();
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003c, code lost:
        if (r7.a.isEmpty() != false) goto L_0x0066;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003e, code lost:
        r6 = (com.google.analytics.tracking.android.w) r7.a.poll();
        com.google.analytics.tracking.android.af.J("Sending hit to store");
        r7.J.Code(r6.Code(), r6.I(), r6.Z(), r6.J());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0068, code lost:
        if (r7.f == false) goto L_0x001f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x006a, code lost:
        b();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a0, code lost:
        r7.Code = r7.h.Code();
     */
    public synchronized void a() {
        if (Thread.currentThread().equals(this.B.Z())) {
            if (this.g) {
                J();
            }
            switch (AnonymousClass3.Code[this.I.ordinal()]) {
                case 1:
                    break;
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                    while (!this.a.isEmpty()) {
                        w wVar = (w) this.a.peek();
                        af.J("Sending hit to service");
                        this.Z.Code(wVar.Code(), wVar.I(), wVar.Z(), wVar.J());
                        this.a.poll();
                    }
                    break;
                case 3:
                    af.J("Need to reconnect");
                    if (!this.a.isEmpty()) {
                        d();
                        break;
                    }
                    break;
            }
        } else {
            this.B.I().add(new Runnable() {
                public final void run() {
                    s.this.a();
                }
            });
        }
    }

    private void b() {
        this.J.I();
        this.f = false;
    }

    /* access modifiers changed from: private */
    public synchronized void c() {
        if (this.I != t.CONNECTED_LOCAL) {
            C();
            af.J("falling back to local store");
            e Code2 = e.Code();
            Code2.Code(this.C, this.B);
            this.J = Code2.I();
            this.I = t.CONNECTED_LOCAL;
            a();
        }
    }

    /* access modifiers changed from: private */
    public synchronized void d() {
        if (this.Z == null || this.I == t.CONNECTED_LOCAL) {
            af.C("client not initialized.");
            c();
        } else {
            try {
                this.b++;
                Code(this.d);
                this.I = t.CONNECTING;
                this.d = new Timer("Failed Connect");
                this.d.schedule(new v(this, (byte) 0), 3000);
                af.J("connecting to Analytics service");
                this.Z.I();
            } catch (SecurityException e2) {
                af.C("security exception on connectToService");
                c();
            }
        }
        return;
    }

    /* access modifiers changed from: private */
    public synchronized void e() {
        if (this.Z != null && this.I == t.CONNECTED_SERVICE) {
            this.I = t.PENDING_DISCONNECT;
            this.Z.Z();
        }
    }

    public final synchronized void Code() {
        this.d = Code(this.d);
        this.b = 0;
        af.J("Connected to service");
        this.I = t.CONNECTED_SERVICE;
        a();
        this.e = Code(this.e);
        this.e = new Timer("disconnect check");
        this.e.schedule(new u(this, (byte) 0), this.i);
    }

    public final synchronized void I() {
        if (this.I == t.PENDING_DISCONNECT) {
            af.J("Disconnected from service");
            C();
            this.I = t.DISCONNECTED;
        } else {
            af.J("Unexpected disconnect.");
            this.I = t.PENDING_CONNECTION;
            if (this.b < 2) {
                f();
            } else {
                c();
            }
        }
    }

    public final synchronized void Code(int i2) {
        this.I = t.PENDING_CONNECTION;
        if (this.b < 2) {
            af.C("Service unavailable (code=" + i2 + "), will retry.");
            f();
        } else {
            af.C("Service unavailable (code=" + i2 + "), using local store.");
            c();
        }
    }

    private void f() {
        this.c = Code(this.c);
        this.c = new Timer("Service Reconnect");
        this.c.schedule(new x(this, (byte) 0), 5000);
    }
}
