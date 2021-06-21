package com.opera.mini.android;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;

/* compiled from: Source */
final class bb implements Runnable {
    private /* synthetic */ ba Code;

    private bb(ba baVar) {
        this.Code = baVar;
    }

    /* synthetic */ bb(ba baVar, byte b) {
        this(baVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0123, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0124, code lost:
        com.opera.mini.android.ba.e.Z();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x012b, code lost:
        throw r0;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final void run() {
        ba.e.I();
        while (true) {
            if (!ar.Code.p()) {
                synchronized (this) {
                    if (!ba.d) {
                        db.Code((Object) this, 0);
                        if (ar.Code.p()) {
                            break;
                        }
                    }
                    boolean unused = ba.d = false;
                    int e = ba.C;
                    int f = ba.a;
                    int g = ba.b;
                    int h = ba.c;
                    int unused2 = ba.b = 0;
                    int width = this.Code.getWidth();
                    int height = this.Code.getHeight();
                    if (width > 0 && height > 0) {
                        if (!(ba.Z != null && ba.Z.getWidth() == width && ba.Z.getHeight() == height)) {
                            a unused3 = ba.I = null;
                            if (ba.Z != null) {
                                ba.Z.recycle();
                                Bitmap unused4 = ba.Z = null;
                            }
                            Bitmap unused5 = ba.Z = Code(width, height);
                            if (ba.Z == null) {
                                break;
                            }
                            synchronized (this) {
                                int unused6 = ba.C = 0;
                                int unused7 = ba.a = 0;
                                int unused8 = ba.b = width;
                                int unused9 = ba.c = height;
                            }
                        }
                        if (ba.I == null) {
                            a unused10 = ba.I = a.I(ba.Z);
                            ba.I.Code(true);
                            this.Code.Code.I();
                        }
                        if (ba.I.a()) {
                            ba.I.Code(e, f, g, h);
                            ba.I.Z(e, f, g, h, 16777215);
                            Browser.Code.Code((br) ba.I);
                            ba.I.b();
                        }
                        ba.I.Code(ba.Z);
                        Canvas lockCanvas = this.Code.J.lockCanvas();
                        if (lockCanvas != null) {
                            lockCanvas.drawBitmap(ba.Z, 0.0f, 0.0f, (Paint) null);
                            this.Code.J.unlockCanvasAndPost(lockCanvas);
                        }
                    }
                }
            }
        }
        if (ba.I != null) {
            ba.I.g();
        }
        ba.e.Z();
    }

    private static Bitmap Code(int i, int i2) {
        int i3 = 0;
        while (true) {
            try {
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                if (createBitmap != null) {
                    return createBitmap;
                }
            } catch (OutOfMemoryError e) {
                if (i3 >= ar.b) {
                    throw e;
                }
            }
            ar.I.h();
            ar.I.Code(i3 > 0);
            ar.I.i();
            i3++;
        }
    }
}
