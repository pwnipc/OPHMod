package com.opera.mini.android;

/* compiled from: Source */
public class k extends bu {
    private long I;
    private br Z = null;

    private static native void C();

    private native void Code(int i, int i2);

    private native void Code(bu buVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z);

    private native void Code(byte[] bArr);

    private native void Code(int[] iArr, int i, int i2, int i3, int i4, int i5, boolean z);

    public native int I();

    public native int J();

    public native int Z();

    /* access modifiers changed from: protected */
    public native void finalize();

    k(int[] iArr, int i, int i2, boolean z) {
        Code(iArr, i, i2, i, i2, 0, z);
    }

    k(int[] iArr, int i, int i2, int i3, int i4, int i5) {
        Code(iArr, i, i2, i3, i4, i5, false);
    }

    private k(bu buVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z) {
        Code(buVar, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, z);
    }

    k(int i, int i2) {
        Code(i, i2);
    }

    public br B() {
        if (this.Z == null) {
            this.Z = a.Code(this);
        }
        return this.Z;
    }

    public final bu Code(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z) {
        return new k(this, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, z);
    }

    static {
        C();
    }
}
