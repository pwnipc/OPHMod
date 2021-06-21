package com.opera.mini.android;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import java.nio.ByteBuffer;

/* compiled from: Source */
public class a implements br {
    private static Paint B = new Paint();
    private static Rect C = new Rect();
    private static char[] Code = new char[1];
    private static B I;
    private static Paint.FontMetricsInt J;
    private static float Z;
    private static Canvas a = new Canvas();
    private static Bitmap b;
    private static ByteBuffer c;
    private static byte[] d;
    private static int e;
    private static int f;
    private long g;
    private d h;

    public static native void Code(cc ccVar, int i, int i2, int i3, int i4, int i5, an anVar, int i6);

    private native void Code(char[] cArr, int i, int i2, int i3, int i4, B b2, int i5, int i6, int i7);

    public static native void I(boolean z);

    private native void I(char[] cArr, int i, int i2, int i3, int i4, bp bpVar, int i5);

    public static native void Z(boolean z);

    public static native boolean d();

    private static native void i();

    /* access modifiers changed from: package-private */
    public native void B();

    /* access modifiers changed from: package-private */
    public native void C();

    public native int Code();

    /* access modifiers changed from: package-private */
    public native void Code(int i, int i2);

    public native void Code(int i, int i2, int i3, int i4);

    public native void Code(bu buVar, int i, int i2);

    public native void Code(bu buVar, int i, int i2, int i3, int i4, int i5, int i6);

    public native void Code(bu buVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    public native void Code(bu buVar, int i, int i2, int i3, int i4, boolean z);

    public native void Code(String str, int i, int i2, bp bpVar, int i3);

    public native void Code(boolean z);

    public native int I();

    public native void I(int i, int i2, int i3, int i4);

    public native void I(bu buVar, int i, int i2, int i3, int i4, int i5, int i6);

    /* access modifiers changed from: package-private */
    public native void I(k kVar);

    public native int J();

    /* access modifiers changed from: package-private */
    public native void J(int i, int i2);

    public native void J(int i, int i2, int i3, int i4, int i5);

    public native int Z();

    /* access modifiers changed from: package-private */
    public native void Z(int i, int i2);

    public native void Z(int i, int i2, int i3, int i4, int i5);

    /* access modifiers changed from: package-private */
    public native void c();

    /* access modifiers changed from: package-private */
    public native void e();

    public native void f();

    /* access modifiers changed from: protected */
    public native void finalize();

    public native void g();

    static {
        i();
    }

    public final void Code(Bitmap bitmap) {
        this.h.Code(bitmap);
    }

    public static a Code(k kVar) {
        a aVar = new a();
        aVar.I(kVar);
        return aVar;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        if (!this.h.Code()) {
            return false;
        }
        B();
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        C();
        this.h.I();
    }

    public static a I(Bitmap bitmap) {
        a aVar = new a();
        if (d()) {
            aVar.h = new g(aVar, bitmap);
        } else {
            aVar.h = new f(aVar, ByteBuffer.allocateDirect(bitmap.getRowBytes() * bitmap.getHeight()));
        }
        aVar.Code(bitmap.getWidth(), bitmap.getHeight());
        return aVar;
    }

    public static a I(int i, int i2) {
        a aVar = new a();
        aVar.h = new e();
        aVar.Z(i, i2);
        return aVar;
    }

    private static char Code(char c2) {
        int indexOf = "()<>[]{}«»‘’“”‹›".indexOf(c2);
        if (indexOf < 0) {
            return c2;
        }
        return "()<>[]{}«»‘’“”‹›".charAt((indexOf & 1) == 0 ? indexOf + 1 : indexOf - 1);
    }

    private static Rect Code(char[] cArr, int i, int i2, int i3, int i4, float f2, B b2, boolean z) {
        char c2;
        int i5;
        int i6;
        int i7;
        int[] iArr = {i, i2};
        int i8 = iArr[0];
        int i9 = iArr[1];
        int i10 = 0;
        boolean z2 = false;
        int i11 = i8;
        while (true) {
            if (i11 < i8 + i9) {
                if (!z2 && db.Code(cArr[i11])) {
                    z2 = true;
                    if (db.J(cArr[i11])) {
                        break;
                    }
                }
                if (cArr[i11] == 8207) {
                    i10++;
                }
                i11++;
            } else if (i10 != 0) {
                char[] cArr2 = new char[(i9 - i10)];
                if (z2 || i9 != 2) {
                    int i12 = 0;
                    int i13 = i8;
                    while (i13 < (i8 + i9) - 1) {
                        int i14 = i12 + 1;
                        if (cArr[i13] == 8207) {
                            i13++;
                            c2 = Code(cArr[i13]);
                        } else {
                            c2 = cArr[i13];
                        }
                        cArr2[i12] = c2;
                        i13++;
                        i12 = i14;
                    }
                    if (i13 < i9) {
                        cArr2[i12] = cArr[i13];
                    }
                } else {
                    cArr2[0] = Code(cArr[cArr[0] != 8207 ? (char) 0 : 1]);
                }
                iArr[0] = 0;
                iArr[1] = cArr2.length;
                cArr = cArr2;
            }
        }
        int i15 = iArr[0];
        int i16 = iArr[1];
        if (I != b2) {
            B.set(b2.g());
            f = (int) Math.ceil((double) B.measureText(" "));
            I = b2;
            Z = 0.0f;
        }
        if (f2 != Z) {
            B.setTextSize(((float) b2.f()) * f2);
            f = (int) Math.ceil((double) B.measureText(" "));
            Paint.FontMetricsInt fontMetricsInt = B.getFontMetricsInt();
            J = fontMetricsInt;
            fontMetricsInt.top--;
            Z = f2;
        }
        if (i16 > 2048) {
            i5 = 2048;
        } else {
            i5 = i16;
        }
        int min = Math.min(i4, B.Code(B, f, cArr, i15, i5));
        int i17 = J.bottom - J.top;
        if (b == null || b.getWidth() < min || b.getHeight() < i17) {
            if (b != null) {
                i7 = Math.max(b.getWidth(), min);
                i6 = Math.max(b.getHeight(), i17);
                b.recycle();
            } else {
                i6 = i17;
                i7 = min;
            }
            b = null;
            c = null;
            d = null;
            e = i7;
            byte[] bArr = new byte[(i7 * i6)];
            d = bArr;
            c = ByteBuffer.wrap(bArr);
            b = Bitmap.createBitmap(i7, i6, Bitmap.Config.ALPHA_8);
            a.setBitmap(b);
        }
        a.clipRect(0.0f, 0.0f, (float) min, (float) i17, Region.Op.REPLACE);
        a.drawColor(0, PorterDuff.Mode.SRC);
        a.drawText(cArr, i15, i5, (float) (-i3), (float) (-J.top), B);
        if (z) {
            c.position(0);
            b.copyPixelsToBuffer(c);
        }
        C.top = J.top;
        C.bottom = J.bottom;
        C.left = 0;
        C.right = min;
        return C;
    }

    public void Code(bu buVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        I(buVar, i, i2, i3, i4, i5, i6);
    }

    public void Code(bu buVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        Code(buVar, i, i2, i3, i4, i5, i6, i7, i8);
    }

    public void Code(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        System.err.println("TODO: drawRGB");
    }

    public void Code(int i, int i2, int i3, int i4, int i5) {
        System.err.println("TODO: drawLine");
    }

    public void I(int i, int i2, int i3, int i4, int i5) {
        System.err.println("TODO: drawRect");
    }

    public void Code(int i, int i2, int i3, int i4, int i5, int i6) {
        System.err.println("TODO: fillRectGradient");
    }

    public void Code(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        System.err.println("TODO: fillArc");
    }

    public void Code(char[] cArr, int i, int i2, int i3, int i4, bp bpVar, int i5) {
        I(cArr, i, i2, i3, i4, bpVar, i5);
    }

    public void Code(int i, char[] cArr, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, int i8, int i9) {
        Code(cArr, i2, i3, i4, i5, (B) db.af[i], i6, i8, i9);
    }

    public static B Code(int i) {
        return (B) db.af[i];
    }

    public void Code(char c2, int i, int i2, bp bpVar, int i3) {
        Code[0] = c2;
        Code(Code, 0, 1, i, i2, bpVar, i3);
    }

    private static boolean h() {
        return !Build.MODEL.equalsIgnoreCase("Mi-504");
    }
}
