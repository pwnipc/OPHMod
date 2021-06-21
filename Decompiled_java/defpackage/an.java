package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;

/* renamed from: an  reason: default package */
/* compiled from: Source */
public class an {
    private RuntimeException B = new RuntimeException();
    private int C;
    public byte[] Code;
    public int[] I;
    private boolean J = false;
    private long Z;
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    private native void Code(int i, int[] iArr);

    private static native void Code(an anVar, aq aqVar);

    private native void Code(byte[] bArr, int i, int i2, int i3, int i4);

    private native void Code(byte[] bArr, int i, byte[] bArr2, int i2, boolean z);

    private native void Code(int[] iArr, int i, int i2, int i3, int i4);

    private native void F(int i);

    private native void I(int[] iArr, int i, int i2, int i3, int i4);

    private native int Z(byte[] bArr, int i, int i2);

    private native int Z(int[] iArr, int i, int i2);

    private native int a(int i, int i2);

    private native int[] a(int i, int i2, int i3);

    private native byte[] b(int i, int i2, int i3);

    private native void y();

    public native void A(int i);

    public native int B(int i, int i2);

    public native void B(int i, int i2, int i3);

    public native String C(int i, int i2);

    public native void C();

    public native void C(int i);

    public native void C(int i, int i2, int i3);

    public native int Code(int i, int i2, Object obj);

    public native int Code(long j);

    public native int Code(byte[] bArr, int i, int i2);

    public native int Code(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4);

    public native String Code(int i, int i2, int i3);

    public native void Code(DataInputStream dataInputStream, DataOutputStream dataOutputStream, boolean z);

    public native void Code(int[] iArr, int i, int i2);

    public native boolean Code(Object obj);

    public native int D(int i);

    public native int I(int i, int i2);

    public native void I(int[] iArr, int i, int i2);

    public native int[] I(int i, int i2, int i3);

    public native void J(int i, int i2);

    public native void J(int i, int i2, int i3);

    public native void Z(int i, int i2);

    public native void Z(int i, int i2, int i3);

    public native int a(int i);

    public native void a();

    public native void b();

    public native void b(int i);

    public native void c(int i);

    public native Object[] c();

    public native int d(int i);

    public native long d();

    public native int e();

    public native int f();

    public native String f(int i);

    public native int g();

    public native int h();

    public native long h(int i);

    public native void j(int i);

    public native int k(int i);

    public native void l(int i);

    public native int n();

    public native int n(int i);

    public native int q(int i);

    public native int s();

    public native int t();

    public native int u(int i);

    public native boolean u();

    public native int v(int i);

    public native void v();

    public native int w(int i);

    public native int x(int i);

    public native Object y(int i);

    public native void z(int i);

    public final int Code() {
        return this.a;
    }

    public final void Code(int i) {
        this.a = i;
    }

    public final int I() {
        return this.b;
    }

    public final void I(int i) {
        this.b = i;
    }

    public final int Z() {
        return this.d;
    }

    public final void Z(int i) {
        this.d = i;
    }

    public final int J() {
        return this.e;
    }

    public final void J(int i) {
        this.e = i;
    }

    public final int B() {
        return this.f;
    }

    public final void B(int i) {
        this.f = i;
    }

    public an(aq aqVar) {
        Code(this, aqVar);
    }

    public final void Code(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[inputStream.available()];
        int read = inputStream.read(bArr);
        while (read != -1) {
            byteArrayOutputStream.write(bArr, 0, read);
            read = inputStream.read(bArr);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        byte[] bArr2 = new byte[0];
        Code(byteArray, byteArray.length, bArr2, bArr2.length, false);
    }

    public static void i() {
    }

    public final RuntimeException e(int i) {
        this.C = i;
        return this.B;
    }

    public final int Code(String str) {
        int i;
        int i2;
        int Code2 = ap.Code(str);
        byte[] bArr = new byte[Code2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < str.length()) {
            char charAt = str.charAt(i3);
            if (charAt < 55296 || charAt > 56319) {
                char c2 = charAt;
                i = i3;
                i2 = c2;
            } else {
                int i5 = 65536 + ((charAt - 55296) << 10);
                i = i3 + 1;
                i2 = (str.charAt(i) - 56320) + i5;
            }
            i4 += ap.Code(i2, bArr, i4);
            i3 = i + 1;
        }
        return Code(bArr, 0, Code2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0040, code lost:
        r0 = r0;
     */
    public final int Code(char[] cArr, int i, int i2) {
        int i3;
        int Code2;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            char c2 = cArr[i + i4];
            if (c2 < 55296 || c2 > 56319) {
                Code2 = ao.Code((int) c2) + i5;
            } else {
                Code2 = i5 + 4;
                i4++;
            }
            i4++;
            i5 = Code2;
        }
        byte[] bArr = new byte[i5];
        int i6 = 0;
        int i7 = 0;
        while (i6 < i2) {
            char c3 = cArr[i + i6];
            if (c3 >= 55296 && c3 <= 56319) {
                i6++;
                i3 = ((c3 - 55296) << 10) + 65536 + (cArr[i + i6] - 56320);
            }
            i6++;
            i7 = ap.Code(i3, bArr, i7) + i7;
        }
        return Code(bArr, 0, i5);
    }

    public final int j() {
        return Code("");
    }

    public final char[] g(int i) {
        String f2 = f(i);
        if (f2 != null) {
            return f2.toCharArray();
        }
        return null;
    }

    public final void i(int i) {
        this.Code = new byte[i];
    }

    public static void k() {
    }

    public final int l() {
        return Code(this.Code, 0, this.Code.length);
    }

    public final void m() {
        this.a = a(0, this.a);
    }

    public final void m(int i) {
        F(i);
    }

    public final void I(String str) {
        F(Code(str));
    }

    public final void Code(int i, int i2) {
        this.g = 0;
        this.h = 0;
        this.I = a(i, 0, i2);
    }

    public final void o(int i) {
        this.I = new int[i];
    }

    public final int o() {
        return Z(this.I, 0, this.I.length);
    }

    public final void p(int i) {
        this.I = new int[i];
    }

    public final void Code(int i, int i2, int i3, boolean z) {
        this.g = i;
        this.h = i2;
        this.I = z ? I(i, i2, i3) : new int[i3];
    }

    public final void p() {
        I(this.I, 0, this.g, this.h, this.I.length);
    }

    public final void r(int i) {
        this.Code = new byte[i];
    }

    public final int q() {
        return Code(this.Code);
    }

    public final int Code(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return Z(bArr, 0, bArr.length);
    }

    public final int I(byte[] bArr, int i, int i2) {
        return Z(bArr, i, i2);
    }

    public final void I(int i, int i2, int i3, boolean z) {
        this.g = i;
        this.h = i2;
        this.Code = z ? b(i, i2, i3) : new byte[i3];
    }

    public final void s(int i) {
        Code(this.Code, 0, this.g, this.h + 0, i);
    }

    public final byte[] t(int i) {
        return b(i, 0, u(i));
    }

    public static int r() {
        throw new RuntimeException("TODO");
    }

    public final void E(int i) {
        Code(i, (int[]) null);
    }

    public final void Code(int[] iArr) {
        Code(0, iArr);
    }

    public static void w() {
    }

    public final RuntimeException x() {
        return this.B;
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        try {
            y();
        } finally {
            super.finalize();
        }
    }
}
