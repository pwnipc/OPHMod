package defpackage;

import java.util.Stack;
import java.util.Vector;

/* renamed from: au  reason: default package */
/* compiled from: Source */
final class au {
    private final Vector B = new Vector();
    private char[] Code;
    private byte I = -1;
    private byte[] J;
    private final bp Z;

    au(char[] cArr, int i, int i2, int i3, String str, bp bpVar) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z = true;
        this.Code = cArr;
        this.Z = bpVar;
        int i8 = 0;
        while (true) {
            if (i8 >= this.Code.length) {
                break;
            }
            byte I2 = I(this.Code[i8]);
            if (I2 == 1) {
                this.I = 0;
            } else if ((I2 & 6) > 0) {
                if (this.I < 0) {
                    this.I = 1;
                }
                this.J = I(this.I);
            }
            i8++;
        }
        if (this.I < 0) {
            this.I = 0;
            this.J = null;
        }
        if (i == 0) {
            i4 = Integer.MAX_VALUE;
        } else {
            i4 = i;
        }
        if ((i3 & 1) == 0) {
            int length = this.Code.length;
            if ((i3 & 6) != 0) {
                boolean z2 = (i3 & 4) != 0;
                i6 = db.Code(this.Code, z2, i4, bpVar.Code(str), bpVar);
                if (z2) {
                    i7 = 0;
                } else {
                    i7 = i6;
                    i6 = length;
                }
            } else {
                i6 = length;
                i7 = 0;
            }
            if (i7 > 0) {
                Code(0);
            }
            Code(this.Code, 0, i7, i6, 0);
            if (i6 < this.Code.length) {
                Code(0);
                return;
            }
            return;
        }
        z = (i3 & 4) == 0 ? false : z;
        char[] cArr2 = this.Code;
        if (z) {
            i5 = i2 / bpVar.I();
        } else {
            i5 = 0;
        }
        cb.Code(cArr2, i4, i5, z ? bpVar.Code(str) : 0, bpVar, this);
    }

    private static boolean Code(char c) {
        return cb.Code(c) || c == 8206 || c == 8207;
    }

    public final void Code(char[] cArr, int i, int i2, int i3, int i4) {
        boolean z;
        if (i2 == i3) {
            this.B.addElement(new aw(0, i2, i3, i, 0, i4));
        } else if (this.J != null) {
            int i5 = i2;
            while (i5 < i3) {
                if ((this.J[i5] & 1) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                boolean z2 = false;
                boolean z3 = true;
                boolean z4 = false;
                int i6 = i5;
                while (i6 < i3 && this.J[i6] == this.J[i5]) {
                    if (!z4 && z && "()<>[]{}«»‘’“”‹›".indexOf(this.Code[i6]) >= 0) {
                        z4 = true;
                    }
                    if (z3 && z == db.J(this.Code[i6])) {
                        z3 = false;
                    }
                    if (!z2 && Code(this.Code[i6])) {
                        z2 = true;
                    }
                    i6++;
                }
                this.B.addElement(new aw(this.J[i5], i5, i6, i, (z2 ? 2 : 0) | (z3 ? 4 : 0) | (z4 ? 8 : 0), i4));
                i5 = i6;
            }
        } else if (i2 < i3) {
            int i7 = 0;
            int i8 = i2;
            while (true) {
                if (i8 >= i3) {
                    break;
                } else if (Code(cArr[i8])) {
                    i7 = 2;
                    break;
                } else {
                    i8++;
                }
            }
            this.B.addElement(new aw(0, i2, i3, i, i7, i4));
        }
    }

    public final void Code(int i) {
        this.B.addElement(new av(i));
    }

    public final int Code() {
        return this.B.size();
    }

    public final int I(int i) {
        return ((aw) this.B.elementAt(i)).Code;
    }

    public final int Z(int i) {
        return ((aw) this.B.elementAt(i)).I;
    }

    private int d(int i) {
        return ((aw) this.B.elementAt(i)).Z;
    }

    public final int J(int i) {
        return d(i) - Z(i);
    }

    public final int B(int i) {
        return ((aw) this.B.elementAt(i)).J;
    }

    public final int C(int i) {
        return ((aw) this.B.elementAt(i)).B;
    }

    public final int a(int i) {
        return ((aw) this.B.elementAt(i)).C;
    }

    public final int b(int i) {
        if ((C(i) & 2) == 0) {
            return this.Z.Code(this.Code, Z(i), J(i));
        }
        char[] cArr = new char[this.Code.length];
        int i2 = 0;
        for (int Z2 = Z(i); Z2 < d(i); Z2++) {
            if (!Code(this.Code[Z2])) {
                cArr[i2] = this.Code[Z2];
                i2++;
            }
        }
        return this.Z.Code(cArr, 0, i2);
    }

    public final boolean c(int i) {
        return this.B.elementAt(i) instanceof av;
    }

    public final char[] I() {
        return this.Code;
    }

    public final boolean Z() {
        return this.I == 1;
    }

    private static byte Code(byte b) {
        return (b & 1) == 0 ? (byte) 1 : 2;
    }

    private byte[] I(byte b) {
        byte[] bArr;
        byte[] bArr2;
        int i;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        byte b8;
        int i2 = 1;
        byte[] bArr3 = new byte[this.Code.length];
        byte[] bArr4 = new byte[this.Code.length];
        for (int i3 = 0; i3 < this.Code.length; i3++) {
            byte I2 = I(this.Code[i3]);
            if (I2 == 4) {
                I2 = 2;
            }
            bArr4[i3] = I2;
            bArr3[i3] = b;
        }
        Stack stack = new Stack();
        int i4 = 0;
        int i5 = 0;
        byte b9 = Byte.MIN_VALUE;
        byte b10 = b;
        while (i4 < this.Code.length) {
            switch (this.Code[i4]) {
                case 8234:
                    stack.push(new byte[]{b10, b9});
                    if ((b10 & 1) == 0) {
                        b7 = 2;
                    } else {
                        b7 = 1;
                    }
                    b3 = (byte) (b7 + b10);
                    b4 = Byte.MIN_VALUE;
                    break;
                case 8235:
                    stack.push(new byte[]{b10, b9});
                    if ((b10 & 1) == 0) {
                        b8 = 1;
                    } else {
                        b8 = 2;
                    }
                    b3 = (byte) (b8 + b10);
                    b4 = Byte.MIN_VALUE;
                    break;
                case 8236:
                    if (stack.empty()) {
                        b3 = b10;
                        b4 = b9;
                        break;
                    } else {
                        byte[] bArr5 = (byte[]) stack.pop();
                        b3 = bArr5[0];
                        b4 = bArr5[1];
                        break;
                    }
                case 8237:
                    stack.push(new byte[]{b10, b9});
                    if ((b10 & 1) == 0) {
                        b5 = 2;
                    } else {
                        b5 = 1;
                    }
                    b3 = (byte) (b5 + b10);
                    b4 = 1;
                    break;
                case 8238:
                    stack.push(new byte[]{b10, b9});
                    if ((b10 & 1) == 0) {
                        b6 = 1;
                    } else {
                        b6 = 2;
                    }
                    b3 = (byte) (b6 + b10);
                    b4 = 2;
                    break;
                default:
                    bArr3[i4] = b10;
                    if (b9 != Byte.MIN_VALUE) {
                        bArr4[i4] = b9;
                    }
                    i5++;
                    b3 = b10;
                    b4 = b9;
                    break;
            }
            i4++;
            b9 = b4;
            b10 = b3;
        }
        if (i5 < this.Code.length) {
            char[] cArr = new char[i5];
            byte[] bArr6 = new byte[i5];
            byte[] bArr7 = new byte[i5];
            int i6 = 0;
            for (int i7 = 0; i7 < this.Code.length; i7++) {
                if (this.Code[i7] < 8234 || this.Code[i7] > 8238) {
                    cArr[i6] = this.Code[i7];
                    bArr6[i6] = bArr3[i7];
                    bArr7[i6] = bArr4[i7];
                    i6++;
                }
            }
            this.Code = cArr;
            bArr = bArr7;
            bArr2 = bArr6;
        } else {
            bArr = bArr4;
            bArr2 = bArr3;
        }
        byte b11 = b;
        for (int i8 = 0; i8 < bArr2.length; i8 = i) {
            byte b12 = bArr2[i8];
            i = i2;
            while (i < bArr2.length && bArr2[i] == b12) {
                i++;
            }
            byte Code2 = Code((byte) Math.max(b11, b12));
            if (i < bArr2.length) {
                b2 = bArr2[i];
            } else {
                b2 = b;
            }
            Code(bArr, b12, i8, i, Code2, Code((byte) Math.max(b2, b12)));
            Code(bArr, bArr2, i8, i);
            b11 = b12;
            i2 = i;
        }
        return bArr2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0015  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x002b  */
    private static void Code(byte[] bArr, byte b, int i, int i2, byte b2, byte b3) {
        int i3;
        byte b4;
        byte b5;
        int i4;
        byte b6;
        int i5 = i;
        while (i5 < i2) {
            if (bArr[i5] == Byte.MIN_VALUE) {
                i3 = i5;
                do {
                    i3++;
                    if (i3 >= i2 || bArr[i3] != Byte.MIN_VALUE) {
                        b4 = i5 <= i ? bArr[i5 - 1] : b2;
                    }
                    i3++;
                    break;
                } while (bArr[i3] != Byte.MIN_VALUE);
                if (i5 <= i) {
                }
                if (i3 < i2) {
                    b5 = bArr[i3];
                } else {
                    b5 = b3;
                }
                if (b4 == 1 && b5 == 1) {
                    i4 = i5;
                    b6 = 1;
                } else if ((b4 & 26) == 0 || (b5 & 26) == 0) {
                    i4 = i5;
                    b6 = Code(b);
                } else {
                    i4 = i5;
                    b6 = 2;
                }
                while (i4 < i3) {
                    bArr[i4] = b6;
                    i4++;
                }
            } else {
                i3 = i5;
            }
            i5 = i3 + 1;
        }
    }

    private static void Code(byte[] bArr, byte[] bArr2, int i, int i2) {
        byte[] bArr3;
        int i3;
        byte b;
        byte b2;
        byte[] bArr4;
        int i4;
        byte b3;
        for (int i5 = i; i5 < i2; i5++) {
            if ((bArr[i5] == 1 && (bArr2[i5] & 1) != 0) || (bArr[i5] == 2 && (bArr2[i5] & 1) == 0)) {
                b3 = bArr2[i5];
                i4 = i5;
                bArr4 = bArr2;
            } else if (bArr[i5] == 16 || bArr[i5] == 8) {
                b3 = bArr2[i5];
                if ((bArr2[i5] & 1) == 0) {
                    b = b3;
                    i3 = i5;
                    bArr3 = bArr2;
                    b2 = 2;
                    bArr3[i3] = (byte) (b2 + b);
                } else {
                    i4 = i5;
                    bArr4 = bArr2;
                }
            }
            bArr3 = bArr4;
            i3 = i4;
            b = b3;
            b2 = 1;
            bArr3[i3] = (byte) (b2 + b);
        }
    }

    public static int Code(char[] cArr, int i) {
        int i2;
        if ((i & 8) != 0) {
            for (int i3 = 0; i3 < cArr.length; i3++) {
                int indexOf = "()<>[]{}«»‘’“”‹›".indexOf(cArr[i3]);
                if (indexOf >= 0) {
                    if ((indexOf & 1) == 0) {
                        i2 = indexOf + 1;
                    } else {
                        i2 = indexOf - 1;
                    }
                    cArr[i3] = "()<>[]{}«»‘’“”‹›".charAt(i2);
                }
            }
        }
        if ((i & 4) != 0) {
            int length = cArr.length;
            int i4 = length / 2;
            for (int i5 = 0; i5 < i4; i5++) {
                char c = cArr[i5];
                cArr[i5] = cArr[(length - i5) - 1];
                cArr[(length - i5) - 1] = c;
            }
        }
        int length2 = cArr.length;
        if ((i & 2) != 0) {
            length2 = 0;
            for (int i6 = 0; i6 < cArr.length; i6++) {
                if (Code(cArr[length2])) {
                    System.arraycopy(cArr, length2 + 1, cArr, length2, cArr.length - (length2 + 1));
                } else {
                    length2++;
                }
            }
        }
        return length2;
    }

    private static byte I(char c) {
        if (" -=_/|\\:;.,،!?&$#'`´\"\t\n".indexOf(c) >= 0 || "()<>[]{}«»‘’“”‹›".indexOf(c) >= 0) {
            return Byte.MIN_VALUE;
        }
        if (8234 <= c && c <= 8238) {
            return 64;
        }
        if (c == 8207 || db.I(c)) {
            return 2;
        }
        if (1632 <= c && c <= 1641) {
            return 16;
        }
        if (db.Z(c)) {
            return 4;
        }
        if ('0' > c || c > '9') {
            return 1;
        }
        return 8;
    }
}
