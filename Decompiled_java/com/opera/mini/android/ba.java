package com.opera.mini.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

/* compiled from: Source */
public class ba extends SurfaceView implements SurfaceHolder.Callback, bd {
    private static Runnable B;
    /* access modifiers changed from: private */
    public static int C;
    /* access modifiers changed from: private */
    public static a I;
    /* access modifiers changed from: private */
    public static Bitmap Z;
    /* access modifiers changed from: private */
    public static int a;
    /* access modifiers changed from: private */
    public static int b;
    /* access modifiers changed from: private */
    public static int c;
    /* access modifiers changed from: private */
    public static boolean d = false;
    /* access modifiers changed from: private */
    public static cy e = new cy();
    /* access modifiers changed from: private */
    public MiniView Code;
    /* access modifiers changed from: private */
    public SurfaceHolder J = getHolder();

    public ba(Context context, MiniView miniView) {
        super(context);
        this.Code = miniView;
        this.J.addCallback(this);
        setFocusableInTouchMode(true);
    }

    public View Code() {
        return this;
    }

    public bd I() {
        return this;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void Z() {
    }

    public void J() {
        if (B != null) {
            synchronized (B) {
                b = 0;
                c = 0;
                C = 0;
                a = 0;
                B.notifyAll();
            }
            e.Code();
        }
    }

    public void C() {
        Code(0, 0, getWidth(), getHeight());
    }

    public void Code(int i, int i2, int i3, int i4) {
        Code(i, i2, i3, i4, true);
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    private void Code(int i, int i2, int i3, int i4, boolean z) {
        if (B == null) {
            B = new bb(this, (byte) 0);
            new Thread(B).start();
        }
        synchronized (B) {
            if (b > 0) {
                int i5 = C + b;
                C = Math.min(C, i);
                b = Math.max(i + i3, i5) - C;
                int i6 = a + c;
                a = Math.min(a, i2);
                c = Math.max(i2 + i4, i6) - a;
            } else {
                C = i;
                a = i2;
                b = i3;
                c = i4;
            }
            if (z) {
                d = true;
                B.notify();
            }
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        C();
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        Code(0, 0, i, i2, false);
        this.Code.I(i, i2, i3, i4);
        Code(0, 0, i, i2, false);
    }
}
