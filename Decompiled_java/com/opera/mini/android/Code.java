package com.opera.mini.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.opera.mini.android.events.BreamInitializedEvent;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.events.MobileStoreShownEvent;
import com.opera.mini.android.events.NotificationSettingChangedEvent;
import com.opera.mini.android.events.OdpSettingEvent;
import com.opera.mini.android.events.OdpVisitedEvent;
import com.opera.mini.android.events.OpenUrlEvent;
import java.util.Arrays;
import java.util.List;

/* compiled from: Source */
public class Code extends ar {
    private native void Code(an anVar, br brVar, int i, int i2, int i3, int i4, int i5);

    private static native void Code(cc ccVar, int i, int i2, int i3);

    private static native void I(cc ccVar);

    public final int t() {
        return (int) SystemClock.uptimeMillis();
    }

    public Code(ci ciVar) {
        super(ciVar);
        b = 2;
        g();
    }

    public void Code(boolean z) {
        if (z) {
            s();
        }
        int size = this.J.size();
        for (int i = 0; i < size; i++) {
            cc ccVar = (cc) this.J.elementAt(i);
            if (ccVar != this.B) {
                ccVar.b().I(z);
            } else {
                ccVar.b().I(false);
            }
        }
        Z.E(z ? 99 : 0);
        System.gc();
        System.runFinalization();
        System.gc();
        u();
    }

    /* access modifiers changed from: protected */
    public final boolean k() {
        return ((o) Code).d();
    }

    public void Z() {
        int i = 0;
        Z.J(0, s.t() ? 1 : 0);
        an anVar = Z;
        if (s.am) {
            i = 1;
        }
        anVar.J(1, i);
        super.Z();
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    public void I(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        cc ccVar;
        boolean z7 = true;
        Throwable th = null;
        switch (i) {
            case -344:
                if (ar.o()) {
                    cu.Code();
                    break;
                }
                break;
            case -253:
                Z.y(Z.f());
                Z.h();
                Z.f(Z.f());
                th = null;
                break;
            case -252:
                ((bg) Z.y(Z.f())).Code(Z.f(Z.f()));
                th = null;
                break;
            case -249:
                Z.b(Z.Code(ag.Code.Code(Z.f(Z.f()))));
                th = null;
                break;
            case -12:
                EventDispatcher.I(new OpenUrlEvent());
                th = null;
                break;
            case -11:
                EventDispatcher.I(new OdpVisitedEvent());
                th = null;
                break;
            case -10:
                EventDispatcher.I(new MobileStoreShownEvent());
                th = null;
                break;
            case -9:
                if (Z.h() != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                bl.Code(z3);
                th = null;
                break;
            case -8:
                bl.I(Z.h(Z.f()));
                th = null;
                break;
            case -7:
                bl.Code(Z.h(Z.f()));
                th = null;
                break;
            case -6:
                if (Z.h() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                bl.I(z2);
                th = null;
                break;
            case -5:
                if (Z.h() != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                EventDispatcher.I(new NotificationSettingChangedEvent(z5));
                th = null;
                break;
            case -4:
                if (Z.h() != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                EventDispatcher.I(new OdpSettingEvent(z4));
                th = null;
                break;
            case -3:
                if (Z.h() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                an.Code(z);
                th = null;
                break;
            case -2:
                an.Code(Z.f(Z.f()), Z.f(Z.f()));
                th = null;
                break;
            case -1:
                an.Code(Z.f(Z.f()), Z.h(Z.f()));
                th = null;
                break;
        }
        try {
            super.I(i);
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        switch (i) {
            case -341:
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public final void run() {
                        if (s.t()) {
                            an.Code();
                        }
                        EventDispatcher.Code(new BreamInitializedEvent());
                        EventDispatcher.Z(new aj(Browser.I));
                    }
                });
                Browser.I.I();
                break;
            case -212:
            case -36:
                break;
            case -130:
                int h = Z.h();
                Code((cc) Z.y(Z.f()), Z.h(), Z.h(), h);
                break;
            case -126:
                if (Z.h() == 0) {
                    z7 = false;
                }
                a.Z(z7);
                break;
            case -125:
                if (Z.h() != 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                a.I(z6);
                break;
            case -124:
                int h2 = Z.h();
                int h3 = Z.h();
                int h4 = Z.h();
                int h5 = Z.h();
                int h6 = Z.h();
                int f = Z.f();
                int f2 = Z.f();
                if (f2 != 0) {
                    ccVar = (cc) Z.y(f2);
                } else {
                    ccVar = null;
                }
                a.Code(ccVar, h6, h5, h4, h3, h2, Z, f);
                break;
        }
        th = th;
        if (th != null) {
            throw th;
        }
    }

    private static boolean Code(br brVar, Object obj, int i, int i2, int i3, int i4) {
        return !((cc) obj).b().Code(brVar, i, i2, i3, i4);
    }

    public static bg z() {
        return ((Code) I).B.b();
    }

    /* access modifiers changed from: protected */
    public final void Code(cc ccVar) {
        I(ccVar);
        ccVar.Code((String) null);
    }

    /* access modifiers changed from: package-private */
    public final void A() {
        if (this.B != null) {
            ((Code) I).Code(this.B);
        }
    }

    public final void f() {
        super.f();
        cu.I();
        if (s.al >= 7) {
            bf.Code((Context) Browser.I);
        }
    }

    public void run() {
        Looper.prepare();
        super.run();
    }

    /* access modifiers changed from: protected */
    public final void b(int i) {
        Code(Z, this.g, i, this.g.Code(), this.g.I(), this.g.Z(), this.g.J());
    }

    /* access modifiers changed from: protected */
    public final void x() {
        br.J();
    }

    /* access modifiers changed from: protected */
    public final String Code(String[] strArr) {
        if (s.al < 4) {
            return super.Code(strArr);
        }
        int Code = ac.Code();
        if (Code < 120) {
            return strArr[0];
        }
        List asList = Arrays.asList(strArr);
        if (Code <= 120 && asList.contains("qvga")) {
            return "qvga";
        }
        if (Code <= 160 && asList.contains("hvga")) {
            return "hvga";
        }
        if (Code <= 240 && asList.contains("vga")) {
            return "vga";
        }
        if (Code > 320 || !asList.contains("svga")) {
            return strArr[strArr.length - 1];
        }
        return "svga";
    }

    public final String l() {
        if (db.l) {
            return f[0];
        }
        return super.Code(ar.f);
    }
}
