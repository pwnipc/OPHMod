package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: dd  reason: default package */
/* compiled from: Source */
public final class dd extends InputStream implements by {
    private static final int[] k = new int[29];
    private static final int[] l = new int[30];
    private int B;
    private int C;
    private int Code = 6;
    private int I;
    private int J;
    private byte[] Z;
    private int a;
    private int b;
    private int c = 0;
    private cs d;
    private DataInputStream e;
    private byte[] f;
    private int g;
    private int h;
    private int i;
    private int j = 0;
    private short[] m = new short[574];
    private short[] n = new short[62];
    private byte[] o = new byte[288];

    public final void Code(DataInputStream dataInputStream) {
        Code();
        this.e = dataInputStream;
    }

    public final void Code() {
        Code(new byte[32768]);
    }

    public final void Code(byte[] bArr) {
        this.Z = bArr;
        this.I = bArr.length;
        if (l[0] == 0) {
            l[0] = 1;
            l[1] = 2;
            for (int i2 = 1; i2 < 29; i2++) {
                l[i2 + 1] = (1 << (i2 / 2)) + (1 << ((i2 - 1) / 2)) + 1;
            }
            int i3 = 0;
            int i4 = 3;
            while (i3 < 28) {
                k[i3] = i4;
                i3++;
                i4 = (i3 < 8 ? 1 : 1 << ((i3 - 4) / 4)) + i4;
            }
            k[28] = 258;
        }
    }

    public final void Code(cs csVar) {
        this.d = csVar;
    }

    public final void setInput(byte[] bArr, int i2, int i3) {
        this.f = bArr;
        this.g = i2;
        this.h = i2 + i3;
    }

    private int Z() {
        if (this.e != null) {
            return this.e.readByte();
        }
        while (this.g >= this.h) {
            this.d.I(true);
        }
        this.b++;
        byte[] bArr = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        return bArr[i2] & 255;
    }

    private final int Code(int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (this.j == 0) {
                this.i = Z();
                this.j = 8;
            }
            i3 |= (this.i & 1) << i4;
            this.i >>>= 1;
            this.j--;
        }
        return i3;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    private static final void Code(byte[] bArr, int i2, short[] sArr) {
        short s;
        int i3;
        short s2;
        for (int i4 = 0; i4 < sArr.length; i4++) {
            sArr[i4] = 0;
        }
        short s3 = 2;
        int i5 = 0;
        for (int i6 = 1; i6 <= 16; i6++) {
            short s4 = 0;
            while (s4 < i2) {
                if (bArr[s4] == i6) {
                    int i7 = i6 - 1;
                    int i8 = 0;
                    while (i7 >= 0) {
                        if (((1 << i7) & i5) != 0) {
                            i8++;
                        }
                        if (i7 == 0) {
                            break;
                        }
                        if (sArr[i8] == 0) {
                            sArr[i8] = s3;
                            s2 = (short) (s3 + 2);
                        } else {
                            short s5 = sArr[i8];
                            s2 = s3;
                            s3 = s5;
                        }
                        i7--;
                        int i9 = s3;
                        s3 = s2;
                        i8 = i9;
                    }
                    sArr[i8] = (short) (32768 | s4);
                    s = s3;
                    i3 = i5 + 1;
                } else {
                    s = s3;
                    i3 = i5;
                }
                s4 = (short) (s4 + 1);
                i5 = i3;
                s3 = s;
            }
            i5 <<= 1;
        }
    }

    private int Code(short[] sArr) {
        short s = 0;
        while (s >= 0) {
            if (this.j == 0) {
                this.i = Z();
                this.j = 8;
            }
            s = sArr[s + (this.i & 1)];
            this.i >>>= 1;
            this.j--;
        }
        return s & 4095;
    }

    private byte[] Code(short[] sArr, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (i3 < i2) {
            int Code2 = Code(sArr);
            if (Code2 < 16) {
                bArr[i3] = (byte) Code2;
                i3++;
            } else {
                int Code3 = Code(Code2 == 18 ? 7 : Code2 - 14) + 3;
                if (Code2 == 18) {
                    Code3 += 8;
                }
                byte b2 = Code2 > 16 ? 0 : bArr[i3 - 1];
                int i4 = i3;
                while (true) {
                    int i5 = Code3 - 1;
                    if (Code3 <= 0) {
                        break;
                    }
                    bArr[i4] = (byte) b2;
                    i4++;
                    Code3 = i5;
                }
                i3 = i4;
            }
        }
        return bArr;
    }

    private boolean J() {
        do {
            int i2 = this.a;
            this.a = i2 - 1;
            if (i2 <= 0) {
                return false;
            }
            byte[] bArr = this.Z;
            int i3 = this.J;
            this.J = i3 + 1;
            byte[] bArr2 = this.Z;
            int i4 = this.B;
            this.B = i4 + 1;
            bArr[i3] = bArr2[i4];
            if (this.B == this.I) {
                this.B = 0;
            }
        } while (this.C != this.J);
        return true;
    }

    private boolean B() {
        if (this.a > 0 && J()) {
            return true;
        }
        do {
            int Code2 = Code(this.m);
            if (Code2 == 256) {
                return false;
            }
            if (Code2 > 256) {
                int i2 = Code2 - 257;
                this.a = k[i2];
                if (i2 > 7 && i2 != 28) {
                    this.a = Code((i2 / 4) - 1) + this.a;
                }
                int Code3 = Code(this.n);
                int i3 = l[Code3];
                if (Code3 > 3) {
                    i3 += Code((Code3 / 2) - 1);
                }
                this.B = this.J - i3;
                if (this.B < 0) {
                    this.B = this.I + this.B;
                }
                if (J()) {
                    return true;
                }
            } else {
                byte[] bArr = this.Z;
                int i4 = this.J;
                this.J = i4 + 1;
                bArr[i4] = (byte) Code2;
            }
        } while (this.C != this.J);
        return true;
    }

    public final int read() {
        if (read((byte[]) null, 0, 1) == 0) {
            return -1;
        }
        return this.Z[this.J - 1] & 255;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005e, code lost:
        if (r8.a <= 0) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0060, code lost:
        r8.a--;
        r0 = r8.Z;
        r1 = r8.J;
        r8.J = r1 + 1;
        r0[r1] = (byte) Z();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0079, code lost:
        if (r8.C != r8.J) goto L_0x005c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00d6, code lost:
        if (B() == false) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0148, code lost:
        if (B() != false) goto L_0x0037;
     */
    public final int read(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2;
        this.b = 0;
        if (this.J == this.I) {
            this.J = 0;
        }
        int i5 = this.I - this.J;
        if (i3 >= i5) {
            i3 = i5;
        }
        this.C = this.J + i3;
        int i6 = this.J;
        while (true) {
            if (this.C != this.J && (this.e != null || this.g < this.h)) {
                switch (this.Code) {
                    case 0:
                        this.j = 0;
                        this.a = Code(16);
                        Code(16);
                        this.Code = 3;
                        break;
                    case 1:
                        int i7 = 0;
                        while (i7 < 144) {
                            this.o[i7] = 8;
                            i7++;
                        }
                        while (i7 < 256) {
                            this.o[i7] = 9;
                            i7++;
                        }
                        while (i7 < 280) {
                            this.o[i7] = 7;
                            i7++;
                        }
                        while (i7 < 288) {
                            this.o[i7] = 8;
                            i7++;
                        }
                        Code(this.o, 288, this.m);
                        for (int i8 = 0; i8 < 32; i8++) {
                            this.o[i8] = 5;
                        }
                        Code(this.o, 32, this.n);
                        this.Code = 4;
                        break;
                    case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                        int Code2 = Code(5) + 257;
                        int Code3 = Code(5) + 1;
                        int Code4 = Code(4) + 4;
                        int i9 = 0;
                        while (true) {
                            int i10 = i9;
                            if (i10 >= 19) {
                                short[] sArr = new short[36];
                                Code(this.o, 19, sArr);
                                Code(Code(sArr, Code2), Code2, this.m);
                                Code(Code(sArr, Code3), Code3, this.n);
                                this.Code = 5;
                                break;
                            } else {
                                if (i10 < 3) {
                                    i4 = i10 + 16;
                                } else if (i10 == 3) {
                                    i4 = 0;
                                } else if ((i10 & 1) == 1) {
                                    i4 = 7 - ((i10 - 5) >>> 1);
                                } else {
                                    i4 = ((i10 - 4) >>> 1) + 8;
                                }
                                byte[] bArr2 = this.o;
                                if (i10 < Code4) {
                                    b2 = (byte) Code(3);
                                } else {
                                    b2 = 0;
                                }
                                bArr2[i4] = b2;
                                i9 = i10 + 1;
                            }
                        }
                    case 3:
                        break;
                    case ConnectionResult.SIGN_IN_REQUIRED:
                        break;
                    case ConnectionResult.INVALID_ACCOUNT:
                        break;
                    case ConnectionResult.NETWORK_ERROR:
                        return 0;
                    default:
                        if (this.c == 1) {
                            this.Code = 7;
                            break;
                        } else {
                            this.c = Code(1);
                            this.Code = Code(2);
                        }
                }
            }
        }
        if (bArr != null) {
            System.arraycopy(this.Z, i6, bArr, i2, this.J - i6);
        }
        return this.J - i6;
    }

    public final int I() {
        return this.b;
    }

    public final void end() {
    }
}
