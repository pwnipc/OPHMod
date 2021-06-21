package com.opera.mini.android;

/* compiled from: Source */
public class u implements dc {
    private long Code;
    private int I;
    private int Z;

    private native boolean Code(byte[] bArr, int i, int i2, int i3, int i4);

    private native boolean Code(byte[] bArr, int i, int i2, int[] iArr);

    public final boolean Code(byte[] bArr, int i, int i2) {
        int[] iArr = new int[2];
        if (!Code(bArr, i, i2, iArr)) {
            return false;
        }
        this.I = iArr[0];
        this.Z = iArr[1];
        if (this.I * this.Z == 0) {
            return false;
        }
        return Code(bArr, i, i2, this.I, this.Z);
    }

    public final long Z() {
        return this.Code;
    }

    public final int Code() {
        return this.I;
    }

    public final int I() {
        return this.Z;
    }
}
