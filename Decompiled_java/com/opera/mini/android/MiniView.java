package com.opera.mini.android;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: Source */
public class MiniView extends FrameLayout {
    private static int C;
    static MiniView Code;
    private static Handler Z = new Handler(Looper.getMainLooper());
    private static int a;
    private av B;
    bd I;
    private bd J;
    private boolean b = false;
    private boolean c;
    private int d = 0;
    private int e = 0;
    private be f;
    private bc g;
    private bc h;
    private int i;
    private boolean j;
    private Runnable k;

    public MiniView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Code = this;
        this.c = s.al >= 4 && !ax.C();
        this.f = be.I(getContext());
        this.g = new bc(this, 80);
        this.h = new bc(this, 65);
        if (this.c) {
            this.B = new av(context, this);
            addView(this.B.Code());
            this.B.Code().setVisibility(8);
        }
        this.J = new ba(context, this);
        addView(this.J.Code());
        this.J.Code().setVisibility(8);
        if (this.c) {
            this.B.Code().setVisibility(0);
            this.I = this.B;
            return;
        }
        this.J.Code().setVisibility(0);
        this.I = this.J;
    }

    public final void Code() {
        if (this.c) {
            this.B.Code().setVisibility(8);
            this.J.Code().setVisibility(0);
            this.B.B();
            this.I = this.J.I();
        }
    }

    /* access modifiers changed from: package-private */
    public final void I() {
        if (!this.b) {
            this.b = true;
            Browser.Code.f();
        }
        Browser.Code.A();
    }

    public final void Z() {
        this.I.onPause();
    }

    public final void J() {
        this.I.onResume();
    }

    public final void B() {
        this.I.Z();
    }

    public final void C() {
        this.I.J();
    }

    public final void a() {
        this.I.C();
    }

    public final void Code(int i2, int i3, int i4, int i5) {
        this.I.Code(i2, i3, i4, i5);
    }

    public final boolean b() {
        return this.I.b();
    }

    private static void I(boolean z) {
        if (z) {
            ar.I.h();
            ar.I.Z(26);
        }
        Code.a();
    }

    private static void h() {
        Code.I.a();
    }

    static int c() {
        return C;
    }

    static int d() {
        return a;
    }

    /* access modifiers changed from: package-private */
    public final int e() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i2) {
        if (this.i != i2) {
            this.i = i2;
            if (Browser.Code.C) {
                ar.I.h();
                ar.I.Z(53);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean f() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final void Code(boolean z) {
        this.j = z;
        a();
    }

    /* access modifiers changed from: package-private */
    public final void I(int i2, int i3, int i4, int i5) {
        int i6;
        this.k = null;
        s.o();
        C = i2;
        a = i3;
        View decorView = Browser.I.getWindow().getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int i7 = rect.top;
        int i8 = s.ah.heightPixels - rect.bottom;
        boolean z = s.ah.widthPixels > s.ah.heightPixels;
        if (i8 >= 100) {
            i6 = z ? this.e : this.d;
        } else if (z) {
            this.e = i8;
            i6 = i8;
        } else {
            this.d = i8;
            i6 = i8;
        }
        int i9 = i8 - i6;
        if (a + i9 <= s.ah.heightPixels) {
            a += i9;
        }
        if (Browser.Code.C) {
            try {
                Browser.Code.q();
                Code(i9);
            } catch (Throwable th) {
            }
        } else {
            final int i10 = i2;
            final int i11 = i3;
            final int i12 = i4;
            final int i13 = i5;
            this.k = new Runnable() {
                public final void run() {
                    MiniView.this.I.onSizeChanged(i10, i11, i12, i13);
                }
            };
        }
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (84 == i2) {
            br.Code(true);
            return false;
        }
        try {
            if (!Browser.Code.C || Z(i2)) {
                return false;
            }
            if (keyEvent.getRepeatCount() > 0) {
                switch (i2) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        return true;
                    case 23:
                    case 66:
                        return true;
                    case 82:
                        return true;
                }
            }
            if (i2 == 4 && o.Code != null) {
                o.Code.I = true;
            }
            int Code2 = Code(i2, keyEvent);
            ar.I.h();
            ar.Z.c(Code2);
            ar.Z.c(0);
            ar.Z.c(0);
            ar.Z.c(i2);
            ar.Z.c(I(Code2));
            ar.Z.b(ar.Z.Code(String.valueOf(Code(keyEvent))));
            ar.Z.c((int) keyEvent.getEventTime());
            ar.Z.b(ar.Z.Code(String.valueOf(Code(keyEvent)).toUpperCase()));
            ar.I.Z(67);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (84 == i2) {
            if (!br.Z()) {
                return false;
            }
            br.Code(false);
            int Code2 = Code(i2, keyEvent);
            ar.I.h();
            ar.Z.c(Code2);
            ar.Z.c(0);
            ar.Z.c(0);
            ar.Z.c(i2);
            ar.Z.c(I(Code2));
            ar.Z.b(ar.Z.Code(String.valueOf(Code(keyEvent))));
            ar.Z.c((int) keyEvent.getEventTime());
            ar.Z.b(ar.Z.Code(String.valueOf(Code(keyEvent)).toUpperCase()));
            ar.I.Z(67);
        }
        try {
            db.I();
            db.I(i2);
            db.Code(8);
            if (!Browser.Code.C || Z(i2)) {
                return false;
            }
            ar.I.h();
            ar.Z.c(Code(i2, keyEvent));
            ar.Z.c(i2);
            ar.Z.c((int) keyEvent.getEventTime());
            ar.I.Z(68);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        if (84 == i2) {
            return br.I();
        }
        return false;
    }

    private static char[] Code(KeyEvent keyEvent) {
        if (!keyEvent.isPrintingKey()) {
            return new char[0];
        }
        return new char[]{(char) keyEvent.getUnicodeChar()};
    }

    private static int Code(int i2, KeyEvent keyEvent) {
        switch (i2) {
            case 1:
                return -1;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                return -2;
            case ConnectionResult.SIGN_IN_REQUIRED:
                return -5;
            case 19:
                return 1;
            case 20:
                return 6;
            case 21:
                return 2;
            case 22:
                return 5;
            case 23:
            case 66:
                return 8;
            case 67:
                return -6;
            case 82:
                return -11;
            case 84:
                return -13;
            default:
                return keyEvent.isPrintingKey() ? keyEvent.getUnicodeChar() : i2;
        }
    }

    private static int I(int i2) {
        switch (i2) {
            case XCallback.PRIORITY_DEFAULT /*50*/:
                return 7;
            case 52:
                return 9;
            case 54:
                return 10;
            case 56:
                return 8;
            default:
                return 0;
        }
    }

    private static boolean Z(int i2) {
        switch (i2) {
            case 3:
            case ConnectionResult.INVALID_ACCOUNT:
            case ConnectionResult.RESOLUTION_REQUIRED:
            case 24:
            case 25:
            case 26:
            case 27:
            case 57:
            case 58:
            case 59:
            case 60:
            case 64:
            case 65:
            case 79:
            case 80:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
                return true;
            default:
                return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        try {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            db.I();
            db.I(x);
            db.I(y);
            db.Code(2);
            if (!Browser.Code.C) {
                return true;
            }
            if (this.f != null && this.f.Code(motionEvent)) {
                return true;
            }
            switch (motionEvent.getAction()) {
                case 0:
                    i2 = 69;
                    break;
                case 1:
                    i2 = 70;
                    break;
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                    i2 = 72;
                    break;
                case 3:
                    i2 = 71;
                    break;
                case ConnectionResult.SIGN_IN_REQUIRED:
                    i2 = -1;
                    break;
                default:
                    return false;
            }
            if (i2 == -1) {
                return true;
            }
            ar.I.h();
            ar.Z.c(x);
            ar.Z.c(y);
            ar.Z.c((int) motionEvent.getEventTime());
            ar.Z.c(0);
            ar.I.Z(i2);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        try {
            int Code2 = this.g.Code(motionEvent.getX() * motionEvent.getXPrecision());
            int Code3 = this.h.Code(motionEvent.getY() * motionEvent.getYPrecision());
            db.I();
            db.I(Code2);
            db.I(Code3);
            db.Code(2);
            if (!Browser.Code.C) {
                return true;
            }
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 1) {
                return false;
            }
            ar.I.h();
            ar.Z.c(Code2);
            ar.Z.c(Code3);
            ar.Z.b(ar.Z.Code(motionEvent.getEventTime()));
            ar.Z.c(4);
            ar.I.Z(76);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public final void g() {
        Z.post(this.k);
    }
}
