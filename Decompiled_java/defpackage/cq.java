package defpackage;

/* renamed from: cq  reason: default package */
/* compiled from: Source */
public final class cq {
    private static final int[] Code = db.Code(db.J("428a2f9871374491b5c0fbcfe9b5dba53956c25b59f111f1923f82a4ab1c5ed5d807aa9812835b01243185be550c7dc372be5d7480deb1fe9bdc06a7c19bf174e49b69c1efbe47860fc19dc6240ca1cc2de92c6f4a7484aa5cb0a9dc76f988da983e5152a831c66db00327c8bf597fc7c6e00bf3d5a7914706ca63511429296727b70a852e1b21384d2c6dfc53380d13650a7354766a0abb81c2c92e92722c85a2bfe8a1a81a664bc24b8b70c76c51a3d192e819d6990624f40e3585106aa07019a4c1161e376c082748774c34b0bcb5391c0cb34ed8aa4a5b9cca4f682e6ff3748f82ee78a5636f84c878148cc7020890befffaa4506cebbef9a3f7c67178f2"), 0, 256);
    private int B;
    private int C;
    private int I;
    private int J;
    private int Z;
    private int a;
    private int b;
    private int c;
    private byte[] d = new byte[4];
    private int e;
    private int[] f = new int[64];
    private int g;
    private int h;

    public cq() {
        Code();
    }

    private void Code(byte b2) {
        byte[] bArr = this.d;
        int i = this.e;
        this.e = i + 1;
        bArr[i] = b2;
        if (this.e == this.d.length) {
            Code(this.d, 0);
            this.e = 0;
        }
        this.h++;
    }

    public final void Code(int i) {
        Code((byte) (i >>> 24));
        Code((byte) (i >>> 16));
        Code((byte) (i >>> 8));
        Code((byte) i);
    }

    public final void Code(byte[] bArr, int i, int i2) {
        while (this.e != 0 && i2 > 0) {
            Code(bArr[i]);
            i++;
            i2--;
        }
        while (i2 > this.d.length) {
            Code(bArr, i);
            i += this.d.length;
            i2 -= this.d.length;
            this.h += this.d.length;
        }
        while (i2 > 0) {
            Code(bArr[i]);
            i++;
            i2--;
        }
    }

    private void Code(byte[] bArr, int i) {
        int[] iArr = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
        if (this.g == 16) {
            I();
        }
    }

    private static void Code(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public final void Code(byte[] bArr) {
        int i = this.h * 8;
        Code(Byte.MIN_VALUE);
        while (this.e != 0) {
            Code((byte) 0);
        }
        if (this.g > 14) {
            I();
        }
        this.f[15] = i;
        I();
        Code(this.I, bArr, 0);
        Code(this.Z, bArr, 4);
        Code(this.J, bArr, 8);
        Code(this.B, bArr, 12);
        Code(this.C, bArr, 16);
        Code(this.a, bArr, 20);
        Code(this.b, bArr, 24);
        Code(this.c, bArr, 28);
        Code();
    }

    public final void Code() {
        this.h = 0;
        this.e = 0;
        for (int i = 0; i < this.d.length; i++) {
            this.d[i] = 0;
        }
        this.g = 0;
        for (int i2 = 0; i2 < this.f.length; i2++) {
            this.f[i2] = 0;
        }
        this.I = 1779033703;
        this.Z = -1150833019;
        this.J = 1013904242;
        this.B = -1521486534;
        this.C = 1359893119;
        this.a = -1694144372;
        this.b = 528734635;
        this.c = 1541459225;
    }

    private void I() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.f;
            int i2 = this.f[i - 2];
            int i3 = ((i2 >>> 10) ^ (((i2 >>> 17) | (i2 << 15)) ^ ((i2 >>> 19) | (i2 << 13)))) + this.f[i - 7];
            int i4 = this.f[i - 15];
            iArr[i] = i3 + ((i4 >>> 3) ^ (((i4 >>> 7) | (i4 << 25)) ^ ((i4 >>> 18) | (i4 << 14)))) + this.f[i - 16];
        }
        int i5 = this.I;
        int i6 = this.Z;
        int i7 = this.J;
        int i8 = this.B;
        int i9 = this.C;
        int i10 = this.a;
        int i11 = this.b;
        int i12 = i6;
        int i13 = i5;
        int i14 = i8;
        int i15 = i7;
        int i16 = i10;
        int i17 = i9;
        int i18 = this.c;
        int i19 = i11;
        int i20 = 0;
        for (int i21 = 0; i21 < 8; i21++) {
            int i22 = i20 + 1;
            int Code2 = this.f[i20] + Code(i17, i16, i19) + Code[i20] + i18;
            int i23 = i14 + Code2;
            int I2 = Code2 + I(i13, i12, i15);
            int i24 = i22 + 1;
            int Code3 = i19 + Code(i23, i17, i16) + Code[i22] + this.f[i22];
            int i25 = i15 + Code3;
            int I3 = Code3 + I(I2, i13, i12);
            int i26 = i24 + 1;
            int Code4 = i16 + Code(i25, i23, i17) + Code[i24] + this.f[i24];
            int i27 = i12 + Code4;
            int I4 = Code4 + I(I3, I2, i13);
            int i28 = i26 + 1;
            int Code5 = i17 + Code(i27, i25, i23) + Code[i26] + this.f[i26];
            int i29 = i13 + Code5;
            int I5 = Code5 + I(I4, I3, I2);
            int i30 = i28 + 1;
            int Code6 = Code(i29, i27, i25) + Code[i28] + this.f[i28] + i23;
            i18 = I2 + Code6;
            i14 = Code6 + I(I5, I4, I3);
            int i31 = i30 + 1;
            int Code7 = Code(i18, i29, i27) + Code[i30] + this.f[i30] + i25;
            i19 = I3 + Code7;
            i15 = I(i14, I5, I4) + Code7;
            int i32 = i31 + 1;
            int Code8 = Code(i19, i18, i29) + Code[i31] + this.f[i31] + i27;
            i16 = I4 + Code8;
            i12 = I(i15, i14, I5) + Code8;
            i20 = i32 + 1;
            int Code9 = i29 + Code[i32] + Code(i16, i19, i18) + this.f[i32];
            i17 = I5 + Code9;
            i13 = Code9 + I(i12, i15, i14);
        }
        this.I += i13;
        this.Z += i12;
        this.J += i15;
        this.B += i14;
        this.C += i17;
        this.a += i16;
        this.b += i19;
        this.c += i18;
        this.g = 0;
        for (int i33 = 0; i33 < 16; i33++) {
            this.f[i33] = 0;
        }
    }

    private static int Code(int i, int i2, int i3) {
        return ((((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21))) ^ ((i >>> 25) | (i << 7))) + ((i & i2) ^ ((i ^ -1) & i3));
    }

    private static int I(int i, int i2, int i3) {
        return ((((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19))) ^ ((i >>> 22) | (i << 10))) + (((i & i2) ^ (i & i3)) ^ (i2 & i3));
    }
}
