package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: bz  reason: default package */
/* compiled from: Source */
public final class bz {
    private static short[] C = null;
    private static short[] a = null;
    private static short[] b = null;
    private static int[] c = null;
    private static int[] d = null;
    private int A;
    private int[] B;
    public int Code;
    private int D;
    private byte[][] E = new byte[3][];
    private int F;
    private int G;
    private int H;
    public int I;
    private int J;
    private int[] K = new int[6];
    private int[][] L = new int[16][];
    private int[][] M = new int[16][];
    private short[][] N = new short[16][];
    private byte[][] O = new byte[16][];
    private byte[][] P = new byte[16][];
    private short[] Q = new short[3];
    private int R;
    private int S;
    private int[] T = new int[3];
    private int[][] U = new int[4][];
    private int V = -1;
    private int W;
    int[] Z;
    private byte[] e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int[] l = new int[3];
    private int[] m = new int[3];
    private int[] n = new int[3];
    private int o;
    private int p;
    private int q;
    private int r;
    private int[] s = new int[3];
    private int t;
    private int[] u = new int[3];
    private int v;
    private int w;
    private int x;
    private int y;
    private int[] z = new int[3];

    public bz() {
        Code();
        this.h = 0;
        this.i = 0;
        this.k = 0;
        this.y = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            this.E[i2] = null;
            this.L[i2] = null;
            this.M[i2] = null;
            this.N[i2] = null;
            this.O[i2] = null;
            this.P[i2] = null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        defpackage.db.Code((java.io.InputStream) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x009a, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x009b, code lost:
        r10 = r1;
        r1 = r0;
        r0 = r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x008a A[ExcHandler: Throwable (th java.lang.Throwable), Splitter:B:6:0x000f] */
    private static synchronized void Code() {
        synchronized (bz.class) {
            if (C == null) {
                try {
                    DataInputStream Z2 = db.Z();
                    C = new short[768];
                    a = new short[256];
                    b = new short[256];
                    c = new int[64];
                    d = new int[64];
                    short s2 = 0;
                    for (int i2 = 0; i2 < 768; i2++) {
                        short[] sArr = C;
                        s2 = (short) (s2 + Z2.readShort());
                        sArr[i2] = s2;
                    }
                    short s3 = 0;
                    for (int i3 = 0; i3 < 256; i3++) {
                        short[] sArr2 = a;
                        s3 = (short) (s3 + Z2.readShort());
                        sArr2[i3] = s3;
                    }
                    short s4 = 0;
                    for (int i4 = 0; i4 < 256; i4++) {
                        short[] sArr3 = b;
                        s4 = (short) (s4 + Z2.readShort());
                        sArr3[i4] = s4;
                    }
                    int i5 = 0;
                    for (int i6 = 0; i6 < 64; i6++) {
                        int[] iArr = c;
                        i5 = (short) (i5 + Z2.readShort());
                        iArr[i6] = i5;
                    }
                    int i7 = 0;
                    for (int i8 = 0; i8 < 64; i8++) {
                        int[] iArr2 = d;
                        i7 = (short) (i7 + Z2.readShort());
                        iArr2[i8] = i7;
                    }
                    db.Code((InputStream) Z2);
                } catch (Throwable th) {
                    Throwable th2 = th;
                    DataInputStream dataInputStream = null;
                    Throwable th3 = th2;
                    db.Code((InputStream) dataInputStream);
                    throw th3;
                }
            }
        }
    }

    private void Code(boolean z2) {
        int[] iArr;
        int i2;
        int i3;
        int i4 = this.o * 8;
        int i5 = i4 * this.F;
        int[] iArr2 = new int[3];
        int[] iArr3 = new int[3];
        int[] iArr4 = new int[3];
        int[] iArr5 = new int[3];
        if (this.k == 3) {
            iArr2[0] = 0;
            iArr3[0] = (this.m[0] << 11) / this.o;
            iArr5[0] = (this.n[0] << 11) / this.p;
            iArr2[1] = 0;
            iArr3[1] = (this.m[1] << 11) / this.o;
            iArr5[1] = (this.n[1] << 11) / this.p;
            iArr2[2] = 0;
            iArr3[2] = (this.m[2] << 11) / this.o;
            iArr5[2] = (this.n[2] << 11) / this.p;
        }
        if (!z2) {
            this.W = this.G;
        } else {
            this.W = this.A == 0 ? this.G % (this.p * 8) : this.p * 8;
            if (this.W == 0) {
                this.W = this.p * 8;
            }
        }
        if (z2) {
            iArr = this.B;
        } else {
            iArr = this.Z;
        }
        for (int i6 = 0; i6 < i4; i6++) {
            if (i5 + i6 < this.H && this.k == 3) {
                int i7 = (i5 + i6) * this.G;
                if (z2) {
                    int i8 = i7 + ((((this.s[0] + 1) & -2) * 8) - ((((this.A / this.D) + 1) * this.p) * 8));
                    if (this.V == -1) {
                        this.V = i8;
                    }
                    i7 = this.p * i6 * 8;
                }
                int i9 = (iArr2[0] >> 11) * (z2 ? this.n[0] * 8 : this.s[0] * 8);
                iArr2[0] = iArr2[0] + iArr3[0];
                iArr4[0] = 0;
                int i10 = (iArr2[1] >> 11) * (z2 ? this.n[1] * 8 : this.s[1] * 8);
                iArr2[1] = iArr2[1] + iArr3[1];
                iArr4[1] = 0;
                int i11 = iArr2[2] >> 11;
                if (z2) {
                    i2 = this.n[2] * 8;
                } else {
                    i2 = this.s[2] * 8;
                }
                int i12 = i11 * i2;
                iArr2[2] = iArr2[2] + iArr3[2];
                iArr4[2] = 0;
                if (this.n[0] == 2 && this.n[1] == 1 && this.n[2] == 1) {
                    int i13 = i7;
                    for (int i14 = 0; i14 < (this.W >> 1); i14++) {
                        byte b2 = this.E[0][(i14 << 1) + i9] & 255;
                        byte b3 = this.E[1][i10 + i14] & 255;
                        byte b4 = this.E[2][i12 + i14] & 255;
                        short s2 = a[b4];
                        short s3 = b[b3];
                        int i15 = ((((b3 - 128) * 705) + ((b4 - 128) * 1463)) + 1024) >> 11;
                        int i16 = i13 + 1;
                        iArr[i13] = C[b2 + s3 + 256] | (C[(b2 + s2) + 256] << 16) | (C[(b2 - i15) + 256] << 8);
                        byte b5 = this.E[0][(i14 << 1) + i9 + 1] & 255;
                        short s4 = C[b5 + s2 + 256];
                        short s5 = C[(b5 - i15) + 256];
                        short s6 = C[b5 + s3 + 256];
                        i13 = i16 + 1;
                        iArr[i16] = (s4 << 16) | (s5 << 8) | s6;
                    }
                    if ((this.G & 1) != 0 && this.A == 0) {
                        if (z2) {
                            i3 = this.p * 8;
                        } else {
                            i3 = this.G;
                        }
                        byte b6 = this.E[0][(i9 + i3) - 1] & 255;
                        byte b7 = this.E[1][i10 + ((i3 - 1) >> 1)] & 255;
                        short s7 = C[b[b7] + b6 + 256];
                        int i17 = (this.E[2][((i3 - 1) >> 1) + i12] & 255) - 128;
                        iArr[i13] = (C[(a[i17 + 128] + b6) + 256] << 16) | (C[(b6 - (((((b7 - 128) * 705) + (i17 * 1463)) + 1024) >> 11)) + 256] << 8) | s7;
                    }
                } else if (this.n[0] == 1 && this.n[1] == 1 && this.n[2] == 1) {
                    int i18 = i7;
                    int i19 = 0;
                    while (i19 < this.W) {
                        byte b8 = this.E[0][i9 + i19] & 255;
                        byte b9 = this.E[1][i10 + i19] & 255;
                        int i20 = (this.E[2][i12 + i19] & 255) - 128;
                        iArr[i18] = (C[(b8 - (((((b9 - 128) * 705) + (i20 * 1463)) + 1024) >> 11)) + 256] << 8) | (C[(b8 + a[i20 + 128]) + 256] << 16) | C[b[b9] + b8 + 256];
                        i19++;
                        i18++;
                    }
                } else {
                    int i21 = i7;
                    int i22 = 0;
                    while (i22 < this.W) {
                        iArr4[0] = iArr4[0] + iArr5[0];
                        byte b10 = this.E[0][(iArr4[0] >> 11) + i9];
                        iArr4[1] = iArr4[1] + iArr5[1];
                        byte b11 = this.E[1][(iArr4[1] >> 11) + i10];
                        iArr4[2] = iArr4[2] + iArr5[2];
                        int i23 = this.E[2][(iArr4[2] >> 11) + i12] - 128;
                        iArr[i21] = (C[(b10 - (((((b11 - 128) * 705) + (i23 * 1463)) + 1024) >> 11)) + 256] << 8) | (C[(b10 + a[i23 + 128]) + 256] << 16) | C[b[b11] + b10 + 256];
                        i22++;
                        i21++;
                    }
                }
            }
        }
    }

    private void I() {
        if (this.t == 1) {
            this.A = (((((this.n[this.u[this.v]] * this.G) + this.p) - 1) / this.p) + 7) / 8;
            this.z[this.u[this.v]] = 0;
            return;
        }
        this.A = 0;
        for (int i2 = 0; i2 < this.t; i2++) {
            this.A += this.m[this.u[i2]] * this.n[this.u[i2]];
            this.z[this.u[i2]] = 0;
        }
        this.D = this.A;
        this.A *= this.q / (this.p * 8);
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 440 */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0039, code lost:
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x003a, code lost:
        r1 = r2;
     */
    public final int Code(byte[] bArr, int i2, int i3, int i4, boolean z2) {
        int i5;
        int i6;
        int i7;
        this.e = bArr;
        this.f = i2;
        this.g = i3;
        this.J = i4;
        int i8 = 0;
        while (true) {
            if (i8 == 0) {
                while (true) {
                    if (this.i <= 0) {
                        switch (this.h) {
                            case 0:
                                if (this.g >= 2) {
                                    this.f += 2;
                                    this.g -= 2;
                                    this.h = 1;
                                    break;
                                } else {
                                    i8 = this.g;
                                    break;
                                }
                            case 1:
                            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                                if (this.g >= 2) {
                                    int i9 = i8;
                                    while (this.g >= 2 && i9 == 0 && this.i == 0 && (this.h == 1 || this.h == 2)) {
                                        if ((this.e[this.f] & 255) == 255) {
                                            switch (this.e[this.f + 1] & 255) {
                                                case 0:
                                                case 255:
                                                    this.f++;
                                                    this.g--;
                                                    break;
                                                case 192:
                                                case 193:
                                                    if (this.g >= 4) {
                                                        this.j = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        if (this.g >= 10) {
                                                            this.f += 4;
                                                            this.g -= 4;
                                                            this.j -= 2;
                                                            this.G = ((this.e[this.f + 3] & 255) << 8) | (this.e[this.f + 4] & 255);
                                                            this.H = ((this.e[this.f + 1] & 255) << 8) | (this.e[this.f + 2] & 255);
                                                            if (!z2) {
                                                                this.Code = this.G >> this.J;
                                                                this.I = this.H >> this.J;
                                                                this.Z = new int[(this.Code * this.I)];
                                                                this.k = this.e[this.f + 5] & 255;
                                                                for (int i10 = 0; i10 < 3; i10++) {
                                                                    this.K[i10 * 2] = 0;
                                                                    this.K[(i10 * 2) + 1] = 4;
                                                                }
                                                                Z();
                                                                this.f += 6;
                                                                this.g -= 6;
                                                                this.j -= 6;
                                                                this.h = 3;
                                                                break;
                                                            } else {
                                                                this.h = 0;
                                                                i8 = (this.G << 16) | this.H;
                                                                break;
                                                            }
                                                        } else {
                                                            i8 = this.g;
                                                            break;
                                                        }
                                                    } else {
                                                        i8 = this.g;
                                                        break;
                                                    }
                                                case 196:
                                                    if (this.g < 4) {
                                                        i7 = -2;
                                                    } else {
                                                        byte b2 = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        if (this.g < b2 + 2) {
                                                            i7 = -2;
                                                        } else {
                                                            int i11 = b2 - 2;
                                                            this.f += 4;
                                                            this.g -= 4;
                                                            while (i11 > 0) {
                                                                byte b3 = (this.e[this.f] & 15) | ((this.e[this.f] & 16) >> 2);
                                                                this.f++;
                                                                this.g--;
                                                                int i12 = i11 - 1;
                                                                int i13 = 0;
                                                                short[] sArr = new short[16];
                                                                int i14 = 0;
                                                                for (int i15 = 0; i15 < 16; i15++) {
                                                                    sArr[i15] = (short) (this.e[this.f + i15] & 255);
                                                                    i14 += sArr[i15];
                                                                }
                                                                int[] iArr = new int[(i14 + 1)];
                                                                int[] iArr2 = new int[i14];
                                                                int i16 = 0;
                                                                while (true) {
                                                                    int i17 = i16;
                                                                    if (i17 < 16) {
                                                                        int i18 = 1;
                                                                        while (i18 <= sArr[i17]) {
                                                                            iArr[i13] = i17 + 1;
                                                                            i18++;
                                                                            i13++;
                                                                        }
                                                                        i16 = i17 + 1;
                                                                    } else {
                                                                        iArr[i13] = 0;
                                                                        int i19 = 0;
                                                                        int i20 = 0;
                                                                        int i21 = iArr[0];
                                                                        while (iArr[i19] != 0) {
                                                                            while (iArr[i19] == i21) {
                                                                                iArr2[i19] = i20;
                                                                                i20++;
                                                                                i19++;
                                                                            }
                                                                            if (iArr[i19] != 0) {
                                                                                while (iArr[i19] != i21) {
                                                                                    i20 <<= 1;
                                                                                    i21++;
                                                                                }
                                                                            }
                                                                        }
                                                                        this.M[b3] = new int[16];
                                                                        this.L[b3] = new int[16];
                                                                        this.N[b3] = new short[16];
                                                                        int i22 = 0;
                                                                        for (int i23 = 0; i23 < 16; i23++) {
                                                                            if (sArr[i23] == 0) {
                                                                                this.L[b3][i23] = -1;
                                                                            } else {
                                                                                this.N[b3][i23] = (short) i22;
                                                                                this.M[b3][i23] = iArr2[i22];
                                                                                int i24 = i22 + (sArr[i23] - 1);
                                                                                this.L[b3][i23] = iArr2[i24];
                                                                                i22 = i24 + 1;
                                                                            }
                                                                        }
                                                                        this.f += 16;
                                                                        this.g -= 16;
                                                                        int i25 = i12 - 16;
                                                                        this.O[b3] = new byte[i13];
                                                                        for (int i26 = 0; i26 < i13; i26++) {
                                                                            this.O[b3][i26] = this.e[this.f + i26];
                                                                        }
                                                                        this.f += i13;
                                                                        this.g -= i13;
                                                                        int i27 = i25 - i13;
                                                                        this.P[b3] = new byte[512];
                                                                        for (int i28 = 0; i28 < 256; i28++) {
                                                                            this.P[b3][i28] = 9;
                                                                        }
                                                                        int i29 = 0;
                                                                        int i30 = 1;
                                                                        while (true) {
                                                                            int i31 = i30;
                                                                            if (i31 <= 8) {
                                                                                for (int i32 = 0; i32 < sArr[i31 - 1]; i32++) {
                                                                                    int i33 = iArr2[i29] << (8 - i31);
                                                                                    for (int i34 = 0; i34 < (1 << (8 - i31)); i34++) {
                                                                                        this.P[b3][i33 | i34] = (byte) i31;
                                                                                        this.P[b3][(i33 | i34) + 256] = this.O[b3][i29];
                                                                                    }
                                                                                    i29++;
                                                                                }
                                                                                i30 = i31 + 1;
                                                                            } else {
                                                                                i11 = i27;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            i7 = 0;
                                                        }
                                                    }
                                                    i9 = i7;
                                                    break;
                                                case 217:
                                                    this.f += 2;
                                                    this.g -= 2;
                                                    this.h = 6;
                                                    break;
                                                case 218:
                                                    if (this.g >= 4) {
                                                        this.j = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        if (this.g >= this.j + 2) {
                                                            this.t = this.e[this.f + 4] & 255;
                                                            this.f += 5;
                                                            this.g -= 5;
                                                            this.j -= 3;
                                                            int i35 = 0;
                                                            while (true) {
                                                                int i36 = i35;
                                                                if (i36 >= this.t) {
                                                                    Z();
                                                                    this.w = 0;
                                                                    this.v = 0;
                                                                    this.x = 0;
                                                                    this.F = 0;
                                                                    I();
                                                                    this.f += this.j;
                                                                    this.g -= this.j;
                                                                    this.h = 4;
                                                                    break;
                                                                } else {
                                                                    byte b4 = this.e[this.f] & 255;
                                                                    this.u[i36] = i36;
                                                                    int i37 = 0;
                                                                    while (i37 < this.k) {
                                                                        if (b4 == this.l[i37]) {
                                                                            this.u[i36] = i37;
                                                                            i37 = this.k;
                                                                        }
                                                                        i37++;
                                                                    }
                                                                    byte b5 = this.e[this.f + 1] & 255;
                                                                    this.K[this.u[i36] * 2] = b5 >> 4;
                                                                    this.K[(this.u[i36] * 2) + 1] = (b5 & 15) + 4;
                                                                    this.f += 2;
                                                                    this.g -= 2;
                                                                    this.j -= 2;
                                                                    i35 = i36 + 1;
                                                                }
                                                            }
                                                        } else {
                                                            i8 = this.g;
                                                            break;
                                                        }
                                                    } else {
                                                        i8 = this.g;
                                                        break;
                                                    }
                                                case 219:
                                                    if (this.g < 4) {
                                                        i6 = -2;
                                                    } else {
                                                        byte b6 = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        if (this.g < b6 + 2) {
                                                            i6 = -2;
                                                        } else {
                                                            this.f += 4;
                                                            this.g -= 4;
                                                            int i38 = b6 - 2;
                                                            while (i38 > 0) {
                                                                boolean z3 = (this.e[this.f] & 240) != 0;
                                                                byte b7 = this.e[this.f] & 15;
                                                                this.f++;
                                                                this.g--;
                                                                int i39 = i38 - 1;
                                                                this.U[b7] = new int[64];
                                                                if (z3) {
                                                                    for (int i40 = 0; i40 < 64; i40++) {
                                                                        int i41 = c[i40];
                                                                        this.U[b7][i40] = ((this.e[(i41 * 2) + this.f + 1] & 255) | ((this.e[this.f + (i41 * 2)] & 255) << 8)) * d[i40];
                                                                    }
                                                                    this.f += 128;
                                                                    this.g -= 128;
                                                                    i38 = i39 - 128;
                                                                } else {
                                                                    for (int i42 = 0; i42 < 64; i42++) {
                                                                        this.U[b7][i42] = (this.e[c[i42] + this.f] & 255) * d[i42];
                                                                    }
                                                                    this.f += 64;
                                                                    this.g -= 64;
                                                                    i38 = i39 - 64;
                                                                }
                                                            }
                                                            i6 = 0;
                                                        }
                                                    }
                                                    i9 = i6;
                                                    break;
                                                case 221:
                                                    if (this.g >= 4) {
                                                        this.i = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        if (this.g >= 6) {
                                                            this.y = ((this.e[this.f + 4] & 255) << 8) | (this.e[this.f + 5] & 255);
                                                            this.x = 0;
                                                            this.f += 6;
                                                            this.g -= 6;
                                                            this.i -= 4;
                                                            break;
                                                        } else {
                                                            i8 = this.g;
                                                            break;
                                                        }
                                                    } else {
                                                        i8 = this.g;
                                                        break;
                                                    }
                                                default:
                                                    if (this.g >= 4) {
                                                        this.i = ((this.e[this.f + 2] & 255) << 8) | (this.e[this.f + 3] & 255);
                                                        this.f += 4;
                                                        this.g -= 4;
                                                        this.i -= 2;
                                                        break;
                                                    } else {
                                                        i8 = this.g;
                                                        break;
                                                    }
                                            }
                                        } else {
                                            this.f++;
                                            this.g--;
                                        }
                                    }
                                } else {
                                    i8 = this.g;
                                    break;
                                }
                                break;
                            case 3:
                                if (this.g >= this.k * 3) {
                                    for (int i43 = 0; i43 < this.k; i43++) {
                                        this.l[i43] = this.e[this.f] & 255;
                                        byte b8 = this.e[this.f + 1] & 255;
                                        int i44 = b8 & 15;
                                        int i45 = b8 >>> 4;
                                        if (i45 > this.p) {
                                            this.p = i45;
                                        }
                                        if (i44 > this.o) {
                                            this.o = i44;
                                        }
                                        this.n[i43] = i45;
                                        this.m[i43] = i44;
                                        this.T[i43] = this.e[this.f + 2] & 255;
                                        this.f += 3;
                                        this.g -= 3;
                                        this.j -= 3;
                                    }
                                    if (this.j > 0) {
                                        this.i = this.j;
                                    }
                                    for (int i46 = 0; i46 < this.k; i46++) {
                                        this.s[i46] = (((((this.G * this.n[i46]) + this.p) - 1) / this.p) + 7) / 8;
                                        if (this.J == 0) {
                                            this.E[i46] = new byte[(this.s[i46] * 64 * this.m[i46])];
                                        } else {
                                            this.E[i46] = new byte[(this.m[i46] * 64 * this.n[i46])];
                                        }
                                    }
                                    this.F = 0;
                                    if (this.k > 1) {
                                        this.q = this.p * 8 * (((this.G + (this.p * 8)) - 1) / (this.p * 8));
                                        this.r = this.o * 8 * (((this.H + (this.o * 8)) - 1) / (this.o * 8));
                                    }
                                    this.h = 2;
                                    break;
                                } else {
                                    i8 = this.g;
                                    break;
                                }
                            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                                short[] sArr2 = new short[64];
                                if (this.J != 0 && this.B == null) {
                                    this.B = new int[(this.o * this.p * 64)];
                                }
                                while (true) {
                                    int i47 = this.u[this.v];
                                    for (int i48 = 0; i48 < 64; i48++) {
                                        sArr2[i48] = 0;
                                    }
                                    int i49 = this.g;
                                    int i50 = this.R;
                                    int i51 = this.S;
                                    i8 = I(this.K[i47 * 2]);
                                    if (i8 < 0) {
                                        this.f -= i49 - this.g;
                                        this.g = i49;
                                        this.R = i50;
                                        this.S = i51;
                                    } else {
                                        int Code2 = Code(i8);
                                        if (Code2 < 0) {
                                            this.f -= i49 - this.g;
                                            this.g = i49;
                                            this.R = i50;
                                            this.S = i51;
                                            i8 = Code2;
                                        } else {
                                            sArr2[0] = (short) (Code(i8, Code2) + this.Q[i47]);
                                            int i52 = this.K[(i47 * 2) + 1];
                                            int i53 = 1;
                                            while (true) {
                                                int i54 = i53;
                                                if (i54 < 64) {
                                                    i8 = I(i52);
                                                    if (i8 < 0) {
                                                        this.f -= i49 - this.g;
                                                        this.g = i49;
                                                        this.R = i50;
                                                        this.S = i51;
                                                    } else {
                                                        int i55 = i8 & 15;
                                                        int i56 = i8 >> 4;
                                                        if (i55 != 0) {
                                                            int Code3 = Code(i55);
                                                            if (Code3 < 0) {
                                                                this.f -= i49 - this.g;
                                                                this.g = i49;
                                                                this.R = i50;
                                                                this.S = i51;
                                                                i8 = Code3;
                                                            } else {
                                                                i5 = i56 + i54;
                                                                if (i5 >= 64) {
                                                                    i5 = 63;
                                                                }
                                                                sArr2[i5] = (short) Code(i55, Code3);
                                                            }
                                                        } else if (i56 == 15) {
                                                            i5 = i56 + i54;
                                                        }
                                                        i53 = i5 + 1;
                                                    }
                                                }
                                                this.Q[i47] = sArr2[0];
                                                i8 = 0;
                                            }
                                        }
                                    }
                                    if (i8 != 0) {
                                        break;
                                    } else {
                                        int i57 = this.z[i47] / (this.m[i47] * this.n[i47]);
                                        int i58 = this.z[i47] % (this.m[i47] * this.n[i47]);
                                        int i59 = (i57 * this.n[i47]) + (i58 % this.n[i47]);
                                        if (i59 < this.s[i47]) {
                                            if (this.J == 0) {
                                                Code(i47, sArr2, this.E[i47], (i59 + ((i58 / this.n[i47]) * this.s[i47] * 8)) * 8, this.s[i47] * 8);
                                            } else {
                                                Code(i47, sArr2, this.E[i47], ((i58 / this.n[i47]) * this.n[i47] * 64) + ((i58 % this.n[i47]) * 8), this.n[i47] * 8);
                                            }
                                        }
                                        int[] iArr3 = this.z;
                                        iArr3[i47] = iArr3[i47] + 1;
                                        this.A--;
                                        if (this.A % this.D == 0 && this.J != 0) {
                                            Code(true);
                                            int i60 = this.V % this.G;
                                            int i61 = this.V / this.G;
                                            int i62 = i60 >> this.J;
                                            int i63 = i61 >> this.J;
                                            int i64 = (this.Code * i63) + i62;
                                            int i65 = 0;
                                            int i66 = 0;
                                            while (i66 < ((this.o * 8) >> this.J) && i66 + i63 < this.I) {
                                                for (int i67 = 0; i67 < (this.W >> this.J); i67++) {
                                                    this.Z[i64 + i67] = this.B[(i67 << this.J) + i65];
                                                }
                                                i64 += this.Code;
                                                i65 += (this.p * 8) << this.J;
                                                i66++;
                                            }
                                            this.V = -1;
                                        }
                                        if (this.A == 0) {
                                            if (this.J == 0) {
                                                Code(false);
                                            }
                                            this.F++;
                                            if ((this.t > 1 && this.F >= this.r / (this.o * 8)) || (this.t == 1 && this.F >= (((((this.m[i47] * this.H) + this.o) - 1) / this.o) + 7) / 8)) {
                                                this.h = 2;
                                                i8 = 0;
                                                break;
                                            } else {
                                                I();
                                            }
                                        }
                                        this.w++;
                                        if (this.w >= this.n[i47] * this.m[i47] || this.t == 1) {
                                            this.w = 0;
                                            this.v++;
                                            if (this.v >= this.t) {
                                                this.v = 0;
                                                this.x++;
                                            }
                                        }
                                        if (this.x == this.y && this.y > 0) {
                                            this.x = 0;
                                            Z();
                                            this.h = 5;
                                            i8 = 0;
                                            break;
                                        }
                                    }
                                }
                                break;
                            case ConnectionResult.INVALID_ACCOUNT /*5*/:
                                while (this.h == 5) {
                                    if (this.g < 2) {
                                        i8 = this.g;
                                        break;
                                    } else if ((this.e[this.f] & 255) != 255 || this.e[this.f + 1] == 0) {
                                        this.f++;
                                        this.g--;
                                    } else if ((this.e[this.f + 1] & 255) < 208 || (this.e[this.f + 1] & 255) > 215) {
                                        this.h = 2;
                                    } else {
                                        this.h = 4;
                                        this.f += 2;
                                        this.g -= 2;
                                    }
                                }
                                break;
                            case ConnectionResult.RESOLUTION_REQUIRED /*6*/:
                                i8 = 0;
                                break;
                        }
                    } else if (this.i >= this.g) {
                        this.i -= this.g;
                        i8 = 0;
                    } else {
                        this.f += this.i;
                        this.g -= this.i;
                        this.i = 0;
                    }
                }
            } else if (i8 == -2) {
                i8 = this.g;
            }
        }
        return i8;
    }

    private void Z() {
        for (int i2 = 0; i2 < 3; i2++) {
            this.Q[i2] = 0;
        }
        this.R = 0;
        this.S = 0;
    }

    private int Code(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.S < i2) {
            J();
            if (this.S < i2) {
                return -2;
            }
        }
        int i3 = this.R >>> (32 - i2);
        this.R <<= i2;
        this.S -= i2;
        return i3;
    }

    private static int Code(int i2, int i3) {
        if (i3 < (1 << (i2 - 1))) {
            return (-1 << i2) + i3 + 1;
        }
        return i3;
    }

    private int I(int i2) {
        if (this.S < 8) {
            J();
            if (this.S < 8) {
                return I(i2, 1);
            }
        }
        int i3 = this.R >>> 24;
        byte b2 = this.P[i2][i3];
        if (b2 > 8) {
            return I(i2, 9);
        }
        this.R <<= b2;
        this.S -= b2;
        return this.P[i2][i3 + 256] & 255;
    }

    private int I(int i2, int i3) {
        int i4;
        int i5;
        int i6 = i3 - 1;
        int Code2 = Code(i3);
        if (Code2 < 0) {
            return Code2;
        }
        while (true) {
            i4 = Code2;
            i5 = i6;
            if (i5 >= 16 || i4 <= this.L[i2][i5]) {
            } else {
                i6 = i5 + 1;
                int Code3 = Code(1);
                if (Code3 < 0) {
                    return Code3;
                }
                Code2 = Code3 | (i4 << 1);
            }
        }
        return this.O[i2][(i4 - this.M[i2][i5]) + this.N[i2][i5]] & 255;
    }

    private void J() {
        while (this.S <= 24 && this.g > 0) {
            byte b2 = this.e[this.f] & 255;
            if (b2 == 255) {
                if (this.g >= 2 && this.e[this.f + 1] == 0) {
                    this.f++;
                    this.g--;
                } else {
                    return;
                }
            }
            this.f++;
            this.g--;
            this.R = (b2 << (24 - this.S)) | this.R;
            this.S += 8;
        }
    }

    private void Code(int i2, short[] sArr, byte[] bArr, int i3, int i4) {
        int[] iArr = new int[64];
        for (int i5 = 0; i5 < 8; i5++) {
            if (sArr[c[i5 + 8]] == 0 && sArr[c[i5 + 16]] == 0 && sArr[c[i5 + 24]] == 0 && sArr[c[i5 + 32]] == 0 && sArr[c[i5 + 40]] == 0 && sArr[c[i5 + 48]] == 0 && sArr[c[i5 + 56]] == 0) {
                int i6 = sArr[c[i5]] * this.U[this.T[i2]][i5];
                iArr[i5] = i6;
                iArr[i5 + 8] = i6;
                iArr[i5 + 16] = i6;
                iArr[i5 + 24] = i6;
                iArr[i5 + 32] = i6;
                iArr[i5 + 40] = i6;
                iArr[i5 + 48] = i6;
                iArr[i5 + 56] = i6;
            } else {
                iArr[i5] = sArr[c[i5]] * this.U[this.T[i2]][i5];
                iArr[i5 + 8] = sArr[c[i5 + 8]] * this.U[this.T[i2]][i5 + 8];
                iArr[i5 + 16] = sArr[c[i5 + 16]] * this.U[this.T[i2]][i5 + 16];
                iArr[i5 + 24] = sArr[c[i5 + 24]] * this.U[this.T[i2]][i5 + 24];
                iArr[i5 + 32] = sArr[c[i5 + 32]] * this.U[this.T[i2]][i5 + 32];
                iArr[i5 + 40] = sArr[c[i5 + 40]] * this.U[this.T[i2]][i5 + 40];
                iArr[i5 + 48] = sArr[c[i5 + 48]] * this.U[this.T[i2]][i5 + 48];
                iArr[i5 + 56] = sArr[c[i5 + 56]] * this.U[this.T[i2]][i5 + 56];
                int i7 = iArr[i5];
                int i8 = iArr[i5 + 32];
                int i9 = iArr[i5 + 16] - iArr[i5 + 48];
                int i10 = iArr[i5 + 16] + iArr[i5 + 48];
                int i11 = i7 - i8;
                int i12 = ((i9 >> 8) * 362) - i10;
                int i13 = i11 - i12;
                int i14 = i12 + i11;
                int i15 = i7 + i8;
                int i16 = i15 - i10;
                int i17 = i15 + i10;
                int i18 = iArr[i5 + 40] - iArr[i5 + 24];
                int i19 = iArr[i5 + 8] + iArr[i5 + 56];
                int i20 = iArr[i5 + 24] + iArr[i5 + 40];
                int i21 = i19 + i20;
                int i22 = iArr[i5 + 8] - iArr[i5 + 56];
                int i23 = ((i18 + i22) >> 8) * 196;
                int i24 = (((i22 >> 8) * 669) - i23) - i21;
                int i25 = i24 - (((i19 - i20) >> 8) * 362);
                int i26 = ((((-i18) >> 8) * 277) - i23) - i25;
                iArr[i5] = i17 + i21;
                iArr[i5 + 8] = i14 + i24;
                iArr[i5 + 16] = i13 - i25;
                iArr[i5 + 24] = i16 - i26;
                iArr[i5 + 32] = i16 + i26;
                iArr[i5 + 40] = i13 + i25;
                iArr[i5 + 48] = i14 - i24;
                iArr[i5 + 56] = i17 - i21;
            }
        }
        for (int i27 = 0; i27 < 64; i27 += 8) {
            if (iArr[i27 + 1] == 0 && iArr[i27 + 2] == 0 && iArr[i27 + 3] == 0 && iArr[i27 + 4] == 0 && iArr[i27 + 5] == 0 && iArr[i27 + 6] == 0 && iArr[i27 + 7] == 0) {
                byte b2 = (byte) C[((iArr[i27] + 1024) >> 11) + 128 + 256];
                bArr[i3] = b2;
                bArr[i3 + 1] = b2;
                bArr[i3 + 2] = b2;
                bArr[i3 + 3] = b2;
                bArr[i3 + 4] = b2;
                bArr[i3 + 5] = b2;
                bArr[i3 + 6] = b2;
                bArr[i3 + 7] = b2;
            } else {
                int i28 = iArr[i27];
                int i29 = iArr[i27 + 4];
                int i30 = iArr[i27 + 2] - iArr[i27 + 6];
                int i31 = iArr[i27 + 2] + iArr[i27 + 6];
                int i32 = i28 - i29;
                int i33 = ((i30 >> 8) * 362) - i31;
                int i34 = i32 - i33;
                int i35 = i33 + i32;
                int i36 = i28 + i29;
                int i37 = i36 - i31;
                int i38 = i36 + i31;
                int i39 = iArr[i27 + 5] - iArr[i27 + 3];
                int i40 = iArr[i27 + 1] + iArr[i27 + 7];
                int i41 = iArr[i27 + 3] + iArr[i27 + 5];
                int i42 = i40 + i41;
                int i43 = iArr[i27 + 1] - iArr[i27 + 7];
                int i44 = ((i39 + i43) >> 8) * 196;
                int i45 = (((i43 >> 8) * 669) - i44) - i42;
                int i46 = i45 - (((i40 - i41) >> 8) * 362);
                int i47 = ((((-i39) >> 8) * 277) - i44) - i46;
                bArr[i3] = (byte) C[(((i38 + i42) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 1] = (byte) C[(((i35 + i45) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 2] = (byte) C[(((i34 - i46) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 3] = (byte) C[(((i37 - i47) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 4] = (byte) C[(((i37 + i47) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 5] = (byte) C[(((i46 + i34) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 6] = (byte) C[(((i35 - i45) + 1024) >> 11) + 128 + 256];
                bArr[i3 + 7] = (byte) C[(((i38 - i42) + 1024) >> 11) + 128 + 256];
            }
            i3 += i4;
        }
    }
}
