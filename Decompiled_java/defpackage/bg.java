package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Vector;

/* renamed from: bg  reason: default package */
/* compiled from: Source */
public class bg {
    private static final char[] am = new char[512];
    private static final bw ap = new bw();
    private static bu[] as = new bu[1];
    private static int[] at = new int[3];
    private static bu[] au = new bu[1];
    private int A;
    private boolean B;
    private boolean C;
    final cc Code;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    bg I;
    int J;
    private boolean K;
    private boolean L;
    private int[] M;
    private int N;
    private boolean O;
    private boolean P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int[] U;
    private int[] V;
    private int W;
    private byte[] X;
    private int Y;
    bh Z;
    private int a;
    private int aA;
    private cv aB;
    private int aa;
    private Hashtable ab = new Hashtable();
    private Vector ac = new Vector();
    private String ad;
    private String ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private int ak;
    private int al;
    private int an;
    private boolean ao;
    private bh aq = new bh();
    private boolean ar = true;
    private Hashtable av = null;
    private int aw;
    private int ax;
    private int ay;
    private int az;
    private int b;
    private String c;
    private String d;
    private int e;
    private int f;
    private byte[] g;
    private int h;
    private boolean i;
    private int j;
    private int k = 0;
    private byte l;
    private int m;
    private int n = 1;
    private int[] o = null;
    private boolean p = false;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private int[] v = new int[5];
    private boolean w;
    private boolean x;
    private int y;
    private boolean z;

    private native void B(int i2, int i3, int i4, int i5);

    private native void Code(an anVar, int i2, int i3, int[] iArr, int i4, int i5, boolean z2, boolean z3, boolean z4, int i6, int i7, int i8);

    private native void Code(an anVar, int i2, boolean z2);

    private native void N();

    private native void r();

    bg(cc ccVar, bg bgVar, boolean z2, boolean z3) {
        if (bgVar != null) {
            this.I = bgVar;
            this.Z = bgVar.aq;
        }
        this.Code = ccVar;
        this.B = z2;
        this.C = z3;
        this.a = ccVar.k();
        if (bgVar != null && this.a != bgVar.a) {
            bgVar.I(true);
        }
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        return this.X.length;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public final void Code(String str, bg bgVar) {
        int Code2 = db.Code("odp:component", str);
        this.ao = Code2 < 0 && bgVar == null;
        int i2 = 0;
        while (true) {
            if (i2 <= 4) {
                if (bgVar == null) {
                    if (this.ao) {
                        this.X = ar.c.I(str);
                        break;
                    } else {
                        this.X = db.B(Code2);
                        break;
                    }
                } else {
                    try {
                        this.X = bgVar.X;
                        break;
                    } catch (Throwable th) {
                        ar.I.h();
                        this.Code.Code.Code(i2 > 1);
                        if (i2 == 0) {
                            if (this.I != null) {
                                this.I.I(false);
                            }
                            ar.I.i();
                        } else {
                            ar.Z.c((i2 - 1) + 0);
                            ar.I.Z(78);
                        }
                        i2++;
                    }
                }
            } else {
                break;
            }
        }
        if (this.X == null) {
            if (this.ao) {
                ar.I.h();
                ar.I.Z(37);
            }
            this.Code.Z(7);
            return;
        }
        if (this.X == null) {
            this.Code.Z(7);
        } else if (!this.ao && this.X.length == 0) {
            synchronized (this) {
                this.b = 16;
                this.q = 0;
                this.r = 0;
                this.j = 0;
                this.g = null;
                this.an = 0;
                this.d = "";
                this.c = "";
                this.L = false;
                this.n = 0;
                this.i = false;
                this.W = 0;
                this.e = 0;
                this.f = 0;
                this.R = 2;
                this.Y = 2;
                this.X = new byte[2];
                this.aa = 2;
            }
            z(this.Y);
            Code(true);
            this.Code.Z(5);
        } else if (Z(0) != 16) {
            this.Code.Z(7);
        } else {
            this.aa = this.X.length;
            s();
            z(this.Y);
            Code(true);
            if (this.an != 0) {
                this.Code.a();
                ar.I.I(this.Code.C(), 10);
            }
            S();
            this.Code.Z(5);
        }
    }

    /* JADX WARNING: type inference failed for: r2v80, types: [int] */
    /* JADX WARNING: type inference failed for: r2v124, types: [int] */
    /* JADX WARNING: type inference failed for: r4v95, types: [int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    public final void Code(ct ctVar, DataInputStream dataInputStream, int i2, int i3) {
        int readInt;
        byte[] bArr;
        String Code2;
        int indexOf;
        int length;
        int indexOf2;
        this.h = (((i3 << 16) | dataInputStream.readUnsignedShort()) + ctVar.n()) - i2;
        this.Code.Code(this.h);
        this.Code.Z(3);
        if (!(db.L[3] == null || db.L[1] == null)) {
            db.Code(3, (String) null, true);
        }
        int n2 = ctVar.n();
        long currentTimeMillis = System.currentTimeMillis();
        int Code3 = Code((DataInput) dataInputStream);
        int i4 = 0;
        int i5 = 0;
        int[] iArr = null;
        while (i4 < Code3) {
            byte readByte = dataInputStream.readByte();
            if (readByte >= 0) {
                readInt = dataInputStream.readUnsignedShort();
                i4 = readInt + 3 + i4;
            } else {
                readInt = dataInputStream.readInt();
                i4 = readInt + 5 + i4;
            }
            byte b2 = readByte & Byte.MAX_VALUE;
            switch (b2) {
                case 35:
                    byte readByte2 = dataInputStream.readByte();
                    for (byte b3 = 0; b3 < readByte2; b3++) {
                        int readByte3 = dataInputStream.readByte();
                        int readUnsignedShort = dataInputStream.readUnsignedShort();
                        byte[] bArr2 = null;
                        if (readUnsignedShort > 0) {
                            bArr2 = new byte[readUnsignedShort];
                            dataInputStream.readFully(bArr2);
                        }
                        String readUTF = dataInputStream.readUTF();
                        String readUTF2 = dataInputStream.readUTF();
                        int readInt2 = dataInputStream.readInt();
                        if (readByte3 <= 0 || readByte3 > 9 || ((readUTF2.length() > 0 || readUTF.length() > 0 || readUnsignedShort > 0) && (readUTF2.length() == 0 || bArr2 == null || !db.I(bArr2, 0, readUnsignedShort)))) {
                            ar.I.c(readInt2);
                        } else {
                            this.Code.a();
                            ar.Z.c(readInt2);
                            ar.Z.c(readByte3 - 1);
                            ar.Z.b(ar.Z.Code(readUTF));
                            ar.Z.b(ar.Z.Code(readUTF2));
                            if (readUnsignedShort > 0) {
                                ar.Z.b(ar.Z.I(bArr2, 0, readUnsignedShort));
                            } else {
                                ar.Z.b(0);
                            }
                            ar.I.Z(29);
                        }
                    }
                    break;
                case 76:
                    this.l = dataInputStream.readByte();
                    this.m = dataInputStream.readShort();
                    break;
                case 85:
                    Code(dataInputStream, readInt, this.Code);
                    break;
                case 99:
                    byte readByte4 = dataInputStream.readByte();
                    for (byte b4 = 0; b4 != readByte4; b4++) {
                        byte b5 = -1;
                        if (dataInputStream.readShort() == 1) {
                            b5 = dataInputStream.readByte();
                        }
                        int readInt3 = dataInputStream.readInt();
                        int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                        if (b5 != 4) {
                            byte[] bArr3 = new byte[readUnsignedShort2];
                            dataInputStream.readFully(bArr3);
                            switch (b5) {
                                case 3:
                                    cu.Code(readInt3, bArr3);
                                    ar arVar = ar.I;
                                    ar.v();
                                    break;
                                case 17:
                                    if (readInt3 == cz.Code) {
                                        break;
                                    } else {
                                        cz.Code(readInt3, bArr3);
                                        ar arVar2 = ar.I;
                                        ar.v();
                                        cs.Code(cz.Code);
                                        break;
                                    }
                                case 38:
                                    db.T = readInt3;
                                    byte b6 = bArr3[0];
                                    String[] strArr = new String[b6];
                                    byte b7 = 0;
                                    int i6 = 1;
                                    while (b7 < b6) {
                                        int I2 = I(bArr3, i6, bArr3.length - i6);
                                        strArr[b7] = ap.Code(bArr3, i6);
                                        b7 = (byte) (b7 + 1);
                                        i6 = I2 + i6;
                                    }
                                    db.R = ar.Code.Code(strArr);
                                    int i7 = i6 + 1;
                                    byte b8 = bArr3[i6];
                                    String[] strArr2 = new String[b8];
                                    for (byte b9 = 0; b9 < b8; b9 = (byte) (b9 + 1)) {
                                        int I3 = I(bArr3, i7, bArr3.length - i7);
                                        strArr2[b9] = ap.Code(bArr3, i7);
                                        i7 += I3;
                                    }
                                    db.S = ar.Code.I(strArr2);
                                    ar arVar3 = ar.I;
                                    ar.v();
                                    break;
                                case 40:
                                    db.U = readInt3;
                                    int i8 = 1;
                                    byte b10 = bArr3[0];
                                    HashMap hashMap = new HashMap();
                                    for (byte b11 = 0; b11 < b10; b11 = (byte) (b11 + 1)) {
                                        int I4 = I(bArr3, i8, bArr3.length - i8);
                                        String Code4 = ap.Code(bArr3, i8);
                                        int i9 = i8 + I4;
                                        int I5 = I(bArr3, i9, bArr3.length - i9);
                                        String Code5 = ap.Code(bArr3, i9);
                                        i8 = i9 + I5;
                                        hashMap.put(Code4, Code5);
                                    }
                                    ar.Code.Code((Map) hashMap);
                                    ar arVar4 = ar.I;
                                    ar.v();
                                    break;
                                default:
                                    ar.I.h();
                                    ar.Z.c(b5);
                                    ar.Z.c(readInt3);
                                    if (!Code((int) b5, bArr3, bArr3.length)) {
                                        ar.Z.b(0);
                                    } else {
                                        if (b5 != 31 || (Code2 = ar.Code.Code("OM-Upgrade")) == null) {
                                            bArr = bArr3;
                                        } else {
                                            bArr = new byte[(bArr3.length + ap.Code(Code2) + 2)];
                                            System.arraycopy(bArr3, 0, bArr, 0, bArr3.length);
                                            ap.Code(Code2, bArr, bArr3.length);
                                        }
                                        ar.Z.b(ar.Z.I(bArr, 0, bArr.length));
                                    }
                                    ar.I.Z(28);
                                    break;
                            }
                        } else {
                            db.P = readInt3;
                            db.Q = dataInputStream.readUTF();
                            db.a("md");
                            ar arVar5 = ar.I;
                            ar.v();
                            this.Code.a();
                            ar.Z.b(ar.Z.Code(db.Q));
                            ar.I.Z(27);
                        }
                    }
                    break;
                case 102:
                    db.Code((InputStream) dataInputStream, readInt);
                    int priority = Thread.currentThread().getPriority();
                    Thread.currentThread().setPriority(1);
                    this.Code.l();
                    db.Code(true);
                    Thread.currentThread().setPriority(priority);
                    break;
                case 114:
                    String readUTF3 = dataInputStream.readUTF();
                    String j2 = this.Code.j();
                    if (!ctVar.o() && !readUTF3.equals(j2)) {
                        break;
                    } else {
                        this.Code.b = readUTF3;
                        throw new RuntimeException();
                    }
                    break;
                case 116:
                    String readUTF4 = dataInputStream.readUTF();
                    this.Code.a();
                    ar.Z.b(ar.Z.Code(readUTF4));
                    ar.I.Z(52);
                    break;
                default:
                    if (!ctVar.o()) {
                        switch (b2) {
                            case 75:
                                int readUnsignedByte = dataInputStream.readUnsignedByte();
                                String readUTF5 = dataInputStream.readUTF();
                                if (readUnsignedByte != 1) {
                                    break;
                                } else {
                                    db.Code(3, readUTF5, true);
                                    break;
                                }
                            default:
                                db.Code((InputStream) dataInputStream, readInt);
                                break;
                        }
                    } else {
                        switch (b2) {
                            case 65:
                                byte[] bArr4 = new byte[readInt];
                                dataInputStream.readFully(bArr4);
                                this.Code.a();
                                ar.Z.b(ar.Z.Code(bArr4));
                                ar.I.Z(50);
                                break;
                            case 67:
                                this.k = dataInputStream.readUnsignedByte();
                                break;
                            case 68:
                                String readUTF6 = dataInputStream.readUTF();
                                String readUTF7 = dataInputStream.readUTF();
                                String readUTF8 = dataInputStream.readUTF();
                                this.Code.a();
                                ar.Z.c(0);
                                ar.Z.b(ar.Z.Code(readUTF6));
                                ar.Z.b(ar.Z.Code(readUTF7));
                                ar.Z.b(ar.Z.Code(readUTF8));
                                ar.Z.b(0);
                                ar.Z.b(0);
                                ar.Z.b(0);
                                ar.I.I(this.Code.C(), 17);
                                break;
                            case 70:
                                String readUTF9 = dataInputStream.readUTF();
                                long readLong = dataInputStream.readLong();
                                String readUTF10 = dataInputStream.readUTF();
                                String readUTF11 = dataInputStream.readUTF();
                                byte readByte5 = dataInputStream.readByte();
                                String str = null;
                                byte b12 = 0;
                                String str2 = null;
                                while (b12 < readByte5) {
                                    char readByte6 = (char) dataInputStream.readByte();
                                    String readUTF12 = dataInputStream.readUTF();
                                    switch (readByte6) {
                                        case 'o':
                                            break;
                                        case 's':
                                            str2 = readUTF12;
                                            readUTF12 = str;
                                            break;
                                        default:
                                            readUTF12 = str;
                                            break;
                                    }
                                    b12++;
                                    str = readUTF12;
                                }
                                this.Code.a();
                                ar.Z.b(ar.Z.Code(readUTF9));
                                ar.Z.c(db.f());
                                ar.Z.b(ar.Z.Code(readUTF10));
                                ar.Z.b(ar.Z.Code(readUTF11));
                                if (str != null) {
                                    ar.Z.b(ar.Z.Code(str));
                                } else {
                                    ar.Z.b(0);
                                }
                                if (str2 != null) {
                                    ar.Z.b(ar.Z.Code(str2));
                                } else {
                                    ar.Z.b(0);
                                }
                                ar.Z.b(ar.Z.Code(readLong));
                                ar.I.I(this.Code.C(), 15);
                                break;
                            case 72:
                                String readUTF13 = dataInputStream.readUTF();
                                String readUTF14 = dataInputStream.readUTF();
                                String readUTF15 = dataInputStream.readUTF();
                                String readUTF16 = dataInputStream.readUTF();
                                if (readUTF16.equals("") && readUTF15 != null && (indexOf = readUTF15.indexOf("auth_server=")) >= 0 && (indexOf2 = readUTF15.indexOf(38, length)) > (length = "auth_server=".length() + indexOf)) {
                                    readUTF16 = readUTF15.substring(length, indexOf2);
                                }
                                this.Code.a();
                                ar.Z.b(ar.Z.Code(readUTF16));
                                ar.Z.b(ar.Z.Code(readUTF13));
                                ar.Z.b(ar.Z.Code(readUTF14));
                                ar.Z.b(ar.Z.Code(readUTF15));
                                ar.I.I(this.Code.C(), 14);
                                break;
                            case 75:
                                int readUnsignedByte2 = dataInputStream.readUnsignedByte();
                                String readUTF17 = dataInputStream.readUTF();
                                if (readUnsignedByte2 != 0) {
                                    db.Code(readUnsignedByte2, readUTF17, true);
                                    break;
                                } else {
                                    ((Object[]) cs.Z.get(ctVar.s().Z()))[1] = readUTF17;
                                    break;
                                }
                            case 78:
                                String readUTF18 = dataInputStream.readUTF();
                                String readUTF19 = dataInputStream.readUTF();
                                String readUTF20 = dataInputStream.readUTF();
                                String readUTF21 = dataInputStream.readUTF();
                                String readUTF22 = dataInputStream.readUTF();
                                this.Code.a();
                                ar.Z.c(1);
                                ar.Z.b(ar.Z.Code(readUTF18));
                                ar.Z.b(ar.Z.Code(readUTF19));
                                ar.Z.b(ar.Z.Code(readUTF22));
                                ar.Z.b(ar.Z.Code(readUTF20));
                                ar.Z.b(ar.Z.Code(readUTF21));
                                ar.Z.b(0);
                                ar.I.I(this.Code.C(), 17);
                                break;
                            case 79:
                                int i10 = (readInt - 2) / 9;
                                int[] iArr2 = new int[(i10 * 3)];
                                dataInputStream.readUnsignedShort();
                                byte[] bArr5 = new byte[(i10 * 9)];
                                dataInputStream.readFully(bArr5);
                                for (int i11 = 0; i11 < i10; i11++) {
                                    iArr2[(i11 * 3) + 0] = Code(bArr5, (i11 * 9) + 0);
                                    iArr2[(i11 * 3) + 1] = Code(bArr5, (i11 * 9) + 3);
                                    iArr2[(i11 * 3) + 2] = Code(bArr5, (i11 * 9) + 6);
                                }
                                i5 = i10;
                                iArr = iArr2;
                                break;
                            case 80:
                                String readUTF23 = dataInputStream.readUTF();
                                String readUTF24 = dataInputStream.readUTF();
                                String readUTF25 = dataInputStream.readUTF();
                                String readUTF26 = dataInputStream.readUTF();
                                String readUTF27 = dataInputStream.readUTF();
                                String readUTF28 = dataInputStream.readUTF();
                                this.Code.a();
                                ar.Z.c(2);
                                ar.Z.b(ar.Z.Code(readUTF23));
                                ar.Z.b(ar.Z.Code(readUTF24));
                                ar.Z.b(ar.Z.Code(readUTF28));
                                ar.Z.b(ar.Z.Code(readUTF25));
                                ar.Z.b(ar.Z.Code(readUTF26));
                                ar.Z.b(ar.Z.Code(readUTF27));
                                ar.I.I(this.Code.C(), 17);
                                break;
                            case 87:
                                dataInputStream.readUTF();
                                dataInputStream.readUTF();
                                this.ad = dataInputStream.readUTF();
                                this.ae = dataInputStream.readUTF();
                                int readByte7 = dataInputStream.readByte();
                                for (int i12 = 0; i12 < readByte7; i12++) {
                                    this.ac.addElement(dataInputStream.readUTF());
                                }
                                break;
                            case 89:
                                ar.Code.ad();
                                break;
                            case 97:
                                byte[] bArr6 = new byte[readInt];
                                dataInputStream.readFully(bArr6);
                                this.Code.a();
                                ar.Z.b(ar.Z.Code(bArr6));
                                ar.I.Z(31);
                                break;
                            case 101:
                                int readInt4 = dataInputStream.readInt();
                                byte readByte8 = dataInputStream.readByte();
                                String readUTF29 = dataInputStream.readUTF();
                                this.Code.a();
                                ar.Z.b(ar.Z.Code(readUTF29));
                                ar.Z.c(readInt4);
                                ar.Z.c(readByte8);
                                ar.I.I(this.Code.C(), 7);
                                break;
                            case 103:
                                if (ar.e) {
                                    break;
                                } else {
                                    ar.I.w();
                                    this.Code.a();
                                    ar.I.Z(30);
                                    break;
                                }
                            case 108:
                                ck.Z(dataInputStream.readInt());
                                break;
                            case 111:
                                short readShort = dataInputStream.readShort();
                                if (!this.B) {
                                    break;
                                } else {
                                    this.Code.B(readShort);
                                    break;
                                }
                            case 112:
                                ar.Code.I(dataInputStream.readUTF());
                                break;
                            default:
                                db.Code((InputStream) dataInputStream, readInt);
                                break;
                        }
                    }
            }
        }
        int readUnsignedByte3 = (dataInputStream.readUnsignedByte() << 16) + dataInputStream.readUnsignedShort();
        this.Code.I(readUnsignedByte3);
        int i13 = 0;
        while (true) {
            int i14 = i13;
            if (i14 <= 4) {
                try {
                    this.X = new byte[readUnsignedByte3];
                } catch (Throwable th) {
                    ar.I.h();
                    this.Code.Code.Code(i14 > 1);
                    if (i14 == 0) {
                        if (this.I != null) {
                            this.I.I(false);
                        }
                        ar.I.i();
                    } else {
                        if (this.I != null && this.I.J == 0 && i14 >= ar.b) {
                            if (!this.I.C) {
                                bg bgVar = this.I;
                                bgVar.X = null;
                                bgVar.aw = -1;
                                bgVar.S = 0;
                            }
                            this.I.I(true);
                        }
                        ar.Z.c((i14 - 1) + 0);
                        ar.I.Z(78);
                    }
                    i13 = i14 + 1;
                }
            }
        }
        if (this.I == null || i5 <= 0 || this.I.X != null) {
            if (this.X == null) {
                this.X = new byte[readUnsignedByte3];
            }
            for (int i15 = 0; i15 < i5; i15++) {
                System.arraycopy(this.I.X, iArr[(i15 * 3) + 0], this.X, iArr[(i15 * 3) + 1], iArr[(i15 * 3) + 2]);
            }
            this.I = null;
            q(db.d * 1024);
            this.aa = 0;
            int i16 = 0;
            int i17 = 0;
            while (this.aa < readUnsignedByte3) {
                int i18 = this.aa;
                while (this.aa - i18 < 1024 && this.aa < readUnsignedByte3) {
                    int min = Math.min(1024, Math.min(i16 < i5 ? iArr[(i16 * 3) + 1] - this.aa : 1024, readUnsignedByte3 - this.aa));
                    if (i16 >= i5 || this.aa != iArr[(i16 * 3) + 1]) {
                        int read = ctVar.read(this.X, this.aa, min);
                        if (read < 0) {
                            throw new EOFException();
                        }
                        this.aa = read + this.aa;
                    } else {
                        this.aa += iArr[(i16 * 3) + 2];
                        i16++;
                    }
                }
                if (this.B) {
                    if (this.Y == 0 && q()) {
                        s();
                        i17 = this.Y;
                        Code(true);
                        this.aq.Code(u());
                    }
                    if (this.Y > 0) {
                        r();
                        i17 = z(i17);
                    }
                    if (this.K) {
                        this.K = false;
                        if (this.L && !this.Code.h()) {
                            this.Code.a();
                            ar.Z.c(this.G);
                            ar.Z.c(this.H);
                            ar.I.I(this.Code.C(), 9);
                        }
                    }
                    S();
                }
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 != 0) {
                cc.J((int) ((((long) (ctVar.n() - n2)) * 1000) / currentTimeMillis2));
            }
            if (!this.B) {
                s();
                int i19 = this.Y;
                this.aq.Code(u());
                z(this.Y);
            } else if (this.an != 0) {
                this.Code.a();
                ar.I.I(this.Code.C(), 10);
            }
        } else {
            this.X = null;
            throw new OutOfMemoryError();
        }
    }

    private boolean q() {
        int i2 = 8;
        for (int i3 = 0; i3 < 4; i3++) {
            if (i2 + 2 >= this.aa) {
                return false;
            }
            i2 += I(i2) + 2;
        }
        if (this.aa >= i2 + 6) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:108:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00b5, code lost:
        r20.a();
        defpackage.ar.Z.b(defpackage.ar.Z.Code(r1));
        r3 = defpackage.ar.Z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00c5, code lost:
        if (r2 == false) goto L_0x01d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00c7, code lost:
        r1 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00c8, code lost:
        r3.c(r1);
        r2 = defpackage.ar.Z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00cd, code lost:
        if (r10 == false) goto L_0x01db;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00cf, code lost:
        r1 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00d0, code lost:
        r2.c(r1);
        defpackage.ar.I.Z(49);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01d8, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x01db, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01d3  */
    private static void Code(DataInputStream dataInputStream, int i2, cc ccVar) {
        boolean z2;
        boolean z3;
        byte[] bArr;
        boolean z4;
        boolean z5;
        byte[] bArr2;
        int i3;
        boolean z6;
        int i4;
        int read = dataInputStream.read();
        int i5 = 1;
        boolean z7 = (read & 1) != 0;
        boolean z8 = (read & 2) != 0;
        boolean z9 = (read & 4) != 0;
        if (z8) {
            ccVar.a();
            ar.I.Z(51);
            return;
        }
        Vector vector = new Vector();
        while (i5 < i2) {
            int read2 = dataInputStream.read();
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            int read3 = dataInputStream.read();
            int Code2 = Code((DataInput) dataInputStream);
            i5 += Code2 + 7;
            byte[] bArr3 = new byte[(Code2 + 6)];
            db.Code(bArr3, read2, readUnsignedShort, read3);
            dataInputStream.readFully(bArr3, 6, Code2);
            vector.addElement(bArr3);
        }
        int size = vector.size();
        byte[] bArr4 = new byte[size];
        synchronized (db.Y) {
            if ((db.aa != null && db.aa.length != 0) || z7) {
                if (!z7) {
                    if (db.aa != null) {
                        db.ab = new byte[db.aa.length];
                        System.arraycopy(db.aa, 0, db.ab, 0, db.aa.length);
                        int i6 = 0;
                        int i7 = size;
                        boolean z10 = z7;
                        byte[] bArr5 = bArr4;
                        boolean z11 = false;
                        while (i6 < i7) {
                            byte[] bArr6 = (byte[]) vector.elementAt(i6);
                            bArr5[i6] = bArr6[2];
                            int i8 = 0;
                            while (true) {
                                if (i8 >= db.ab.length / 3) {
                                    z4 = false;
                                    z5 = z10;
                                    bArr2 = bArr5;
                                    break;
                                } else if (bArr6[2] == db.ab[i8 * 3]) {
                                    db.ab[(i8 * 3) + 1] = bArr6[3];
                                    db.ab[(i8 * 3) + 2] = bArr6[4];
                                    db.ac[i8] = bArr6[5];
                                    if (!db.Code(i8, bArr6)) {
                                        i7 = 0;
                                        z4 = true;
                                        z5 = true;
                                        bArr2 = new byte[0];
                                    } else {
                                        z4 = true;
                                        z5 = z10;
                                        bArr2 = bArr5;
                                    }
                                } else {
                                    i8++;
                                }
                            }
                            if (!z4) {
                                int length = db.ab.length / 3;
                                int i9 = 1;
                                byte[] bArr7 = new byte[(i7 - i6)];
                                bArr7[0] = ((byte[]) vector.elementAt(i6))[2];
                                for (int i10 = i6 + 1; i10 < i7; i10++) {
                                    byte[] bArr8 = (byte[]) vector.elementAt(i10);
                                    int i11 = 0;
                                    while (true) {
                                        if (i11 >= length) {
                                            z6 = false;
                                            break;
                                        } else if (bArr8[2] == db.ab[i11 * 3]) {
                                            z6 = true;
                                            break;
                                        } else {
                                            i11++;
                                        }
                                    }
                                    if (!z6) {
                                        bArr7[i9] = ((byte[]) vector.elementAt(i10))[2];
                                        i4 = i9 + 1;
                                    } else {
                                        i4 = i9;
                                    }
                                    i9 = i4;
                                }
                                byte[] bArr9 = new byte[((length + i9) * 3)];
                                byte[] bArr10 = new byte[(length + i9)];
                                System.arraycopy(db.ab, 0, bArr9, 0, length * 3);
                                System.arraycopy(db.ac, 0, bArr10, 0, length);
                                db.ab = bArr9;
                                db.ac = bArr10;
                                z11 = true;
                                for (int i12 = 0; i12 < i9; i12++) {
                                    db.ab[(length + i12) * 3] = bArr7[i12];
                                }
                                i3 = i6 - 1;
                            } else {
                                i3 = i6;
                            }
                            i6 = i3 + 1;
                            bArr5 = bArr2;
                            z10 = z5;
                        }
                        bArr = bArr5;
                        z2 = z11;
                        z3 = z10;
                        if (!z2) {
                            db.b();
                            if (db.aa == null) {
                                z3 = true;
                                bArr = new byte[0];
                            }
                        } else {
                            db.e();
                        }
                    }
                }
                db.c();
                db.ab = new byte[(size * 3)];
                db.ac = new byte[size];
                int i13 = 0;
                while (true) {
                    if (i13 >= size) {
                        bArr = bArr4;
                        z3 = z7;
                        break;
                    }
                    byte[] bArr11 = (byte[]) vector.elementAt(i13);
                    db.ab[i13 * 3] = bArr11[2];
                    bArr4[i13] = bArr11[2];
                    if (!db.Code(i13, bArr11)) {
                        z3 = true;
                        bArr = new byte[0];
                        break;
                    }
                    i13++;
                }
                z2 = true;
                if (!z2) {
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean I() {
        return this.X != null && this.aa == this.X.length;
    }

    private void s() {
        boolean z2;
        boolean z3 = true;
        synchronized (this) {
            this.al = 0;
            this.b = D();
            this.q = A();
            this.r = y();
            this.j = A();
            if ((this.k & 1) != 0) {
                this.j = 0;
            }
            this.f = this.al;
            this.al = A() + this.al;
            int A2 = A();
            if (A2 > 0) {
                this.g = new byte[A2];
                System.arraycopy(this.X, this.al, this.g, 0, A2);
                this.al = A2 + this.al;
            }
            this.e = this.al;
            this.d = H();
            this.c = K();
            int D2 = D();
            this.L = (D2 & 1) != 0;
            this.n = (D2 & 6) >>> 1;
            if ((D2 & 16) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.i = z2;
            if (!this.ao) {
                if ((D2 & 8) == 0) {
                    z3 = false;
                }
                db.q = z3;
            }
            this.W = A();
            this.R = y();
            this.Y = this.al;
        }
    }

    public final boolean Z() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public final void Code(boolean z2) {
        int i2 = 1;
        if (z2) {
            this.Code.a();
        }
        ar.Z.c(this.q);
        ar.Z.c(this.r);
        ar.Z.b(y(this.f));
        ar.Z.b(ar.Z.Code(this.c));
        ar.Z.b(ar.Z.Code(this.g));
        ar.Z.c(this.an != 0 ? 1 : 0);
        an anVar = ar.Z;
        if (!this.L) {
            i2 = 0;
        }
        anVar.c(i2);
        ar.Z.c(this.W);
        if (L()) {
            ar.Z.b(this.Code.C());
            try {
                ar.Z.C(8);
            } catch (Throwable th) {
            }
            M();
            return;
        }
        ar.I.I(this.Code.C(), 8);
    }

    public final void I(boolean z2) {
        synchronized (this) {
            if (z2) {
                t();
            } else {
                J(true);
            }
        }
    }

    private void t() {
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.aq.J) {
            if (this.aq.I[i2] != null || this.aq.Z[i2] != null) {
                int[] iArr = this.aq.Code;
                int i4 = i3 + 2;
                iArr[i4] = iArr[i4] | Integer.MIN_VALUE;
                this.aq.Code(i2, true, true);
            }
            i2++;
            i3 += 6;
        }
    }

    private void J(boolean z2) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.aq.J) {
            if (this.t) {
                if (this.aq.I[i2] == null || t(i3)) {
                    this.aq.Code(i2, true, false);
                } else {
                    this.aq.Code(i2, true, true);
                }
            } else if (this.aq.Z[i2] != null && !t(i3)) {
                this.aq.Code(i2, true, true);
            } else if (!z2 && this.aq.I[i2] != null) {
                this.aq.Code(i2, false, true);
            }
            i2++;
            i3 += 6;
        }
    }

    private int u() {
        return (this.Code.c() * 256) / this.q;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x00b3  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0134  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0137  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x013a  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x019c  */
    private synchronized bu Code(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        bu[] buVarArr;
        bh bhVar;
        int i11;
        int i12;
        bu buVar;
        int Z2 = this.aq.Z(i2);
        if (i8 == 256) {
            buVarArr = this.aq.I;
        } else {
            buVarArr = this.aq.Z;
        }
        if (this.aq.I(Z2, i2)) {
            if (buVarArr[Z2] != null) {
                buVar = buVarArr[Z2];
            }
            if (this.Z != null) {
                if (this.Z.Code(i2, i8, this.aq, Z2) && buVarArr[Z2] != null) {
                    buVar = buVarArr[Z2];
                }
            }
            bhVar = this.aq;
            int i13 = i9 >= 0 ? 0 : i9;
            if (i10 >= 0) {
                i11 = 0;
            } else {
                i11 = i10;
            }
            boolean z2 = this.t;
            i12 = Z2 * 6;
            if (bhVar.Code[i12 + 4] != 0) {
                bhVar.Code[i12 + 2] = i4;
                bhVar.Code[i12 + 3] = i5;
                bhVar.Code[i12 + 4] = (i6 << 16) | i7;
            } else {
                int i14 = bhVar.Code[i12 + 2] & 1073741823;
                int i15 = bhVar.Code[i12 + 3];
                int min = Math.min(i4, i14);
                int min2 = Math.min(i5, i15);
                bhVar.Code[i12 + 4] = ((Math.max(i4 + i6, i14 + (bhVar.Code[i12 + 4] >>> 16)) - min) << 16) | (Math.max(i5 + i7, i15 + (bhVar.Code[i12 + 4] & 65535)) - min2);
                bhVar.Code[i12 + 2] = min | (bhVar.Code[i12 + 2] & -1073741824);
                bhVar.Code[i12 + 3] = min2;
            }
            bhVar.Code[i12 + 5] = i11 | (i13 << 16);
            if ((this.aq.Code[(Z2 * 6) + 2] & Integer.MIN_VALUE) == 0 || !s(i3)) {
                buVar = null;
            } else {
                buVar = Code(Z2, i3, i8, i9, i10, i4, i5);
            }
        } else {
            bh bhVar2 = this.aq;
            if (bhVar2.J == bhVar2.I.length) {
                bhVar2.Code = db.Code(bhVar2.Code, bhVar2.J * 2 * 6);
                bhVar2.I = db.Code(bhVar2.I, bhVar2.J * 2);
                bhVar2.Z = db.Code(bhVar2.Z, bhVar2.J * 2);
            }
            int i16 = Z2 * 6;
            System.arraycopy(bhVar2.Code, i16, bhVar2.Code, i16 + 6, (bhVar2.J * 6) - i16);
            System.arraycopy(bhVar2.I, Z2, bhVar2.I, Z2 + 1, bhVar2.J - Z2);
            System.arraycopy(bhVar2.Z, Z2, bhVar2.Z, Z2 + 1, bhVar2.J - Z2);
            bhVar2.J++;
            bhVar2.Code[i16 + 0] = i2;
            bhVar2.Code[i16 + 1] = i3;
            bhVar2.Code[i16 + 4] = 0;
            bu[] buVarArr2 = bhVar2.I;
            bhVar2.Z[Z2] = null;
            buVarArr2[Z2] = null;
            if (this.Z != null) {
            }
            bhVar = this.aq;
            if (i9 >= 0) {
            }
            if (i10 >= 0) {
            }
            boolean z22 = this.t;
            i12 = Z2 * 6;
            if (bhVar.Code[i12 + 4] != 0) {
            }
            bhVar.Code[i12 + 5] = i11 | (i13 << 16);
            if ((this.aq.Code[(Z2 * 6) + 2] & Integer.MIN_VALUE) == 0 || !s(i3)) {
            }
        }
        return buVar;
    }

    private bu Code(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        bu buVar;
        int i9 = 0;
        bu[] buVarArr = as;
        if (!this.aq.I(db.b * 256)) {
            buVarArr = null;
        }
        while (true) {
            int i10 = i9;
            if (i10 > 2) {
                break;
            }
            try {
                buVar = Code(i3, i4, i5, i6, i7, i8, buVarArr);
                break;
            } catch (Throwable th) {
                as[0] = null;
                buVarArr = null;
                if (i10 > 1) {
                    break;
                }
                if ((this.B || i10 > 0) && this.Z != null) {
                    w();
                }
                if (i10 > 0) {
                    this.ar = false;
                }
                if (i10 == 0) {
                    J(false);
                } else {
                    t();
                    this.Code.Code.p();
                }
                i9 = i10 + 1;
            }
        }
        buVar = null;
        if (buVar != null && this.aq.I(1)) {
            if (!this.aq.Code(i2, i4 == 256, buVar, as[0])) {
                J(false);
            }
        }
        as[0] = null;
        return buVar;
    }

    private bu Code(int i2, int i3, int i4, int i5, int i6, int i7, bu[] buVarArr) {
        int i8;
        int i9;
        boolean z2 = false;
        bu[] buVarArr2 = (!this.ar || i4 > 0 || i5 > 0) ? null : buVarArr;
        if (i4 <= 0 || i5 <= 0) {
            z2 = true;
            i8 = i5;
            i9 = i4;
        } else if (i3 >= 256 || i3 <= 0) {
            i8 = i5;
            i9 = i4;
        } else {
            int max = Math.max(1, E(i6 + i4) - E(i6));
            i8 = Math.max(1, E(i7 + i5) - E(i7));
            i9 = max;
        }
        if (z2) {
            return ar.Code.r().Code(this.X, i2 + 2, ap.Z(this.X, i2), i3, buVarArr2, false);
        }
        return ar.Code.r().Code(this.X, i2 + 2, ap.Z(this.X, i2), i9, i8, buVarArr2);
    }

    private Object r(int i2) {
        int i3 = this.R + i2;
        if (!s(i3)) {
            return null;
        }
        try {
            return ar.Code.r().Code(this.X, i3 + 2, ap.Z(this.X, i3));
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00db, code lost:
        ap.Code(r12.aq.Code[r9 + 0], r12.aq.Code[r9 + 1], r3, r12.aq.Code[r9 + 2] & 1073741823, r12.aq.Code[r9 + 3], r12.aq.Code[r9 + 5] >>> 16, r12.aq.Code[r9 + 5] & 65535, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x011a, code lost:
        r0 = true;
     */
    private synchronized boolean v() {
        boolean z2;
        bu[] buVarArr = this.t ? this.aq.I : this.aq.Z;
        int u2 = this.t ? 256 : u();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= this.aq.J) {
                z2 = false;
                break;
            }
            if (buVarArr[i2] == null) {
                if ((this.aq.Code[i3 + 2] & Integer.MIN_VALUE) == 0 && t(i3) && s(this.aq.Code[i3 + 1])) {
                    boolean z3 = this.ar && this.aq.Code[i3 + 5] == 0;
                    if (this.aq.B <= 0) {
                        break;
                    }
                    int i4 = this.aq.Code[i3 + 1];
                    int i5 = this.aq.Code[i3 + 5] >>> 16;
                    int i6 = this.aq.Code[i3 + 5] & 65535;
                    int[] iArr = at;
                    byte[] bArr = this.X;
                    int i7 = i4 + 2;
                    int Z2 = ap.Z(this.X, i4);
                    if (i5 == 0) {
                        i5 = -1;
                    }
                    if (i6 == 0) {
                        i6 = -1;
                    }
                    db.Code(bArr, i7, Z2, u2, i5, i6, iArr);
                    if (!this.aq.I(at[2])) {
                        int[] iArr2 = this.aq.Code;
                        int i8 = i3 + 2;
                        iArr2[i8] = iArr2[i8] | Integer.MIN_VALUE;
                        u(i3);
                    } else if (z3 && u2 != 256 && !this.aq.I(at[0] + at[1])) {
                        z3 = false;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            i3 += 6;
        }
        return z2;
    }

    /* access modifiers changed from: package-private */
    public final void J() {
        if (!v() && P()) {
            this.Code.a();
            ar.I.I(this.Code.C(), 12);
        }
    }

    private boolean s(int i2) {
        return i2 + 2 <= this.aa && ap.Z(this.X, i2) + i2 <= this.aa;
    }

    private boolean Z(int i2, int i3, int i4, int i5) {
        for (int i6 = 1; i6 < this.v[0]; i6 += 4) {
            if (db.Code(i2, i3, i4, i5, this.v[i6 + 0], this.v[i6 + 1], this.v[i6 + 2], this.v[i6 + 3])) {
                return true;
            }
        }
        return false;
    }

    private boolean t(int i2) {
        return Z(this.aq.Code[i2 + 2] & 1073741823, this.aq.Code[i2 + 3], this.aq.Code[i2 + 4] >>> 16, this.aq.Code[i2 + 4] & 65535);
    }

    /* access modifiers changed from: package-private */
    public final boolean B() {
        if (this.Z == null) {
            return false;
        }
        synchronized (this) {
            w();
        }
        return true;
    }

    private void w() {
        if (this.aq.B > 0 && this.aq.C > 0) {
            this.aq.Code(this.aq.B + this.aq.C, 0);
        }
        this.Z = null;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0037, code lost:
        if (r10.aq.Code(r2, r13 == 256, r1, au[0]) == false) goto L_0x0039;
     */
    public final void Code(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2) {
        bu buVar;
        int i9 = 0;
        bu[] buVarArr = z2 ? au : null;
        while (true) {
            if (i9 > ar.b) {
                break;
            }
            try {
                buVar = Code(i3, i4, i5, i6, i7, i8, buVarArr);
                break;
            } catch (Throwable th) {
                au[0] = null;
                buVarArr = null;
                if (i9 == ar.b) {
                    break;
                }
                if (this.B && this.Z != null) {
                    w();
                }
                ar.I.h();
                this.Code.Code.Code(i9 > 0);
                ar.I.i();
                i9++;
            }
        }
        buVar = null;
        if (buVar != null || i9 > 0) {
            synchronized (this) {
                int Z2 = this.aq.Z(i2);
                if (buVar != null) {
                }
                int[] iArr = this.aq.Code;
                int i10 = (Z2 * 6) + 2;
                iArr[i10] = iArr[i10] | Integer.MIN_VALUE;
                u(Z2 * 6);
            }
        }
        au[0] = null;
    }

    private void u(int i2) {
        J(this.aq.Code[i2 + 2] & 1073741823, this.aq.Code[i2 + 3], this.aq.Code[i2 + 4] >>> 16, this.aq.Code[i2 + 4] & 65535);
    }

    private int x() {
        this.al += 4;
        int i2 = this.al - 4;
        return (this.X[i2 + 3] & 255) + (this.X[i2] << 24) + ((this.X[i2 + 1] & 255) << 16) + ((this.X[i2 + 2] & 255) << 8);
    }

    private int y() {
        this.al += 3;
        return Code(this.al - 3);
    }

    private static int Code(byte[] bArr, int i2) {
        return ((bArr[i2] & 255) << 16) + ((bArr[i2 + 1] & 255) << 8) + (bArr[i2 + 2] & 255);
    }

    static int Code(DataInput dataInput) {
        return (dataInput.readUnsignedByte() << 16) | dataInput.readUnsignedShort();
    }

    /* access modifiers changed from: package-private */
    public final int Code(int i2) {
        return Code(this.X, i2);
    }

    private int z() {
        return (y() << 8) >> 8;
    }

    private int A() {
        this.al += 2;
        return I(this.al - 2);
    }

    /* access modifiers changed from: package-private */
    public final int I(int i2) {
        return ((this.X[i2] & 255) << 8) + (this.X[i2 + 1] & 255);
    }

    private int D() {
        int i2 = this.al;
        this.al = i2 + 1;
        return Z(i2);
    }

    /* access modifiers changed from: package-private */
    public final int Z(int i2) {
        return this.X[i2] & 255;
    }

    private void E() {
        this.af = A();
        this.ag = y();
        this.ah = A();
        this.ai = y();
    }

    private void F() {
        this.af = (short) A();
        this.ag = z();
        this.ah = A();
        this.ai = y();
    }

    private void G() {
        this.al = A() + this.al;
    }

    private String H() {
        String J2 = J(this.al);
        G();
        return J2;
    }

    /* access modifiers changed from: package-private */
    public final String J(int i2) {
        return ap.Code(this.X, i2);
    }

    private String K() {
        String H2 = H();
        if (H2 == null || H2.length() <= 0 || H2.charAt(0) != 0) {
            return H2;
        }
        return this.d + H2.substring(1, H2.length());
    }

    /* access modifiers changed from: package-private */
    public final synchronized cw Code(int i2, int i3, int i4) {
        cw cwVar;
        int i5 = this.al;
        int i6 = this.af;
        int i7 = this.ag;
        int[] iArr = {i3, i4, 0, 0};
        cwVar = null;
        while (cwVar == null && i2 != -1) {
            this.al = i2 + 1 + 10;
            D(84);
            i2 = Code(this.al, iArr);
            if (i2 != -1 && !v(i2)) {
                cwVar = new cw(this, i2, iArr[0], iArr[1]);
            }
        }
        this.af = i6;
        this.ag = i7;
        this.al = i5;
        return cwVar;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    public final synchronized cw B(int i2) {
        cw cwVar;
        int i3 = 0;
        synchronized (this) {
            cwVar = null;
            int i4 = this.al;
            int i5 = this.af;
            int i6 = this.ag;
            int i7 = -1;
            this.al = this.Y;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (this.al < i2) {
                int i11 = this.al;
                int D2 = D();
                switch (D2) {
                    case 66:
                    case 70:
                    case 73:
                    case 84:
                        F();
                        i8 += this.af;
                        i3 += this.ag;
                        if (D2 == 84 && !v(i11)) {
                            i9 = i3;
                            i10 = i8;
                            break;
                        }
                    default:
                        i11 = i7;
                        break;
                }
                D(D2);
                i7 = i11;
            }
            if (i7 > 0) {
                cwVar = new cw(this, i7, i10, i9);
            }
            this.af = i5;
            this.ag = i6;
            this.al = i4;
        }
        return cwVar;
    }

    private boolean v(int i2) {
        int i3 = i2 + 17;
        int i4 = i3 + 1;
        for (int Z2 = Z(i3); Z2 > 0; Z2--) {
            int i5 = i4 + 1;
            if (Z(i4) == 116 && J(i5).equals("s")) {
                return true;
            }
            i4 = I(i5) + 2 + i5;
        }
        return false;
    }

    private static int w(int i2) {
        int q2 = ar.Z.q(i2) - 2;
        ar.Z.Code(i2, 2, q2, true);
        return q2;
    }

    private static int x(int i2) {
        int q2 = ar.Z.q(i2);
        ar.Z.Code(i2, 0, q2, true);
        return q2 - 2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean Code(ba baVar, int i2, ba baVar2) {
        boolean z2 = false;
        synchronized (this) {
            if (i2 != 0) {
                int x2 = x(i2);
                int[] iArr = ar.Z.I;
                an anVar = ar.Z;
                int I2 = I(iArr, 2, x2, baVar2.I());
                if (I2 >= 0) {
                    baVar.Z().Code(Code(iArr, x2, baVar2.Code(), I2), baVar2.Code(), I2);
                    z2 = true;
                }
            }
        }
        return z2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean Code(cr crVar, int i2, cr crVar2) {
        int I2;
        boolean z2 = false;
        synchronized (this) {
            if (i2 != 0) {
                int x2 = x(i2);
                int[] iArr = ar.Z.I;
                an anVar = ar.Z;
                int I3 = I(iArr, 2, x2, crVar2.Code().C());
                if (I3 >= 0 && (I2 = I(iArr, 2, x2, crVar2.I().C())) >= 0) {
                    crVar.Code().Code(Code(iArr, x2, crVar2.Code().B(), I3), crVar2.Code().B(), I3);
                    crVar.I().Code(Code(iArr, x2, crVar2.I().B(), I2), crVar2.I().B(), I2);
                    z2 = true;
                }
            }
        }
        return z2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized cw I(int i2, int i3, int i4) {
        int x2;
        int[] iArr;
        x2 = x(i2);
        iArr = ar.Z.I;
        an anVar = ar.Z;
        return Code(iArr, x2, i3, i4);
    }

    private cw Code(int[] iArr, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = this.al;
        int i17 = this.af;
        int i18 = this.ag;
        if (this.U != null) {
            int i19 = Integer.MAX_VALUE;
            int i20 = -1;
            int i21 = 0;
            while (true) {
                i5 = i21;
                int i22 = i20;
                int i23 = i19;
                if (i5 >= this.U.length) {
                    i5 = i22;
                    break;
                }
                int i24 = this.U[i5 + 0];
                int I2 = I(iArr, 2, i2, this.U[i5 + 1]);
                int i25 = this.U[i5 + 2];
                int i26 = this.U[i5 + 3];
                if (db.Code(i3, i4, 1, 1, i24, I2, i25, i26)) {
                    break;
                }
                int Code2 = i3 - db.Code(i3, i24, (i24 + i25) - 1);
                int Code3 = i4 - db.Code(i4, I2, (I2 + i26) - 1);
                i19 = (Code2 * Code2) + (Code3 * Code3);
                if (i19 < i23) {
                    i20 = i5;
                } else {
                    i20 = i22;
                    i19 = i23;
                }
                i21 = i5 + 5;
            }
        } else {
            i5 = -1;
        }
        int i27 = 0;
        int i28 = 0;
        int i29 = this.q;
        int i30 = iArr[0];
        if (i5 >= 0) {
            i27 = this.U[i5 + 0];
            i28 = I(iArr, 2, i2, this.U[i5 + 1]);
            i29 = this.U[i5 + 2];
            i30 = this.U[i5 + 3];
        }
        int i31 = 0;
        int i32 = 0;
        this.al = this.Y;
        boolean z3 = false;
        int i33 = Integer.MAX_VALUE;
        int i34 = Integer.MAX_VALUE;
        int i35 = 0;
        int i36 = 0;
        int i37 = -1;
        while (true) {
            if (this.al < this.X.length) {
                i8 = this.al;
                int D2 = D();
                switch (D2) {
                    case 66:
                    case 70:
                    case 73:
                    case 84:
                        F();
                        int i38 = i31 + this.af;
                        i6 = i32 + this.ag;
                        i7 = i38;
                        break;
                    default:
                        i6 = i32;
                        i7 = i31;
                        break;
                }
                if (D2 == 84 && !v(i8)) {
                    int I3 = I(iArr, 2, i2, i6);
                    int i39 = this.ah;
                    int i40 = this.ai;
                    if (i3 < i7) {
                        i14 = i7 - i3;
                    } else if (i3 >= i7 + i39) {
                        i14 = ((i3 - i7) - i39) + 1;
                    } else {
                        i14 = 0;
                    }
                    if (i4 < I3) {
                        i15 = I3 - i4;
                    } else if (i4 >= I3 + i40) {
                        i15 = ((i4 - I3) - i40) + 1;
                    } else {
                        i15 = 0;
                    }
                    if (i14 != 0 || i15 != 0) {
                        z2 = db.Code(i27, i28, i29, i30, i7, I3, i39, i40);
                        boolean z4 = i15 < i33 || (i15 == i33 && i14 < i34);
                        if ((!z3 && (z2 || z4)) || (z3 && z2 && z4)) {
                            i9 = i15;
                            i10 = i14;
                            i11 = i6;
                            i12 = i7;
                            i13 = i8;
                            D(D2);
                            i35 = i11;
                            i36 = i12;
                            i37 = i13;
                            i33 = i9;
                            i34 = i10;
                            z3 = z2;
                            i31 = i7;
                            i32 = i6;
                        }
                    }
                }
                z2 = z3;
                i9 = i33;
                i10 = i34;
                i11 = i35;
                i12 = i36;
                i13 = i37;
                D(D2);
                i35 = i11;
                i36 = i12;
                i37 = i13;
                i33 = i9;
                i34 = i10;
                z3 = z2;
                i31 = i7;
                i32 = i6;
            } else {
                i6 = i35;
                i7 = i36;
                i8 = i37;
            }
        }
        this.af = i17;
        this.ag = i18;
        this.al = i16;
        if (i8 > 0) {
            return new cw(this, i8, i7, i6);
        }
        return null;
    }

    private int y(int i2) {
        return ar.Z.Code(this.X, i2 + 2, ap.Z(this.X, i2));
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        return this.W;
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        while (true) {
            if (this.an != 0 && this.X != null) {
                return ar.Z.I(this.X, this.an + 3, Code(this.X, this.an));
            } else if (this.I == null) {
                return 0;
            } else {
                this = this.I;
            }
        }
    }

    private int z(int i2) {
        int A2 = A(i2);
        if (L()) {
            ar.I.h();
            M();
        }
        if (!this.P && this.V != null) {
            this.P = true;
            this.Code.a();
            ar.Z.b(n());
            ar.Z.c(this.W);
            ar.I.I(this.Code.C(), 20);
        }
        return A2;
    }

    private boolean L() {
        if (this.O && this.Code.b() == this) {
            return true;
        }
        return false;
    }

    private void M() {
        int i2;
        this.O = false;
        ar.Z.o(this.N + 2);
        an anVar = ar.Z;
        int i3 = 2;
        int i4 = 0;
        while (i4 < this.N) {
            int i5 = this.M[(i4 * 5) + 4];
            int[] iArr = ar.Z.I;
            int i6 = i3 + 1;
            if ((i5 & 1) != 0) {
                i2 = Integer.MIN_VALUE;
            } else {
                i2 = 0;
            }
            iArr[i3] = ((i5 & 2) != 0 ? 1073741824 : 0) | i2;
            i4++;
            i3 = i6;
        }
        ar.Z.b(ar.Z.o());
        ar.I.I(this.Code.C(), 13);
    }

    private synchronized int A(int i2) {
        this.Code.I();
        try {
            this.al = i2;
            while (true) {
                if ((this.al < this.X.length && this.aa == this.X.length) || this.al < this.aa - 16) {
                    int i3 = this.al;
                    int D2 = D();
                    switch (D2) {
                        case 76:
                            y();
                            this.S = y();
                            this.T = y();
                            continue;
                        case 77:
                            int D3 = D();
                            int y2 = y();
                            if (this.al + y2 <= this.aa) {
                                switch (D3) {
                                    case 67:
                                        this.N = (y2 - 8) / 6;
                                        this.M = new int[((A() * 4) + (this.N * 6))];
                                        this.Q = D();
                                        this.G = A();
                                        this.H = y();
                                        this.K = true;
                                        int i4 = 0;
                                        int i5 = this.N * 5;
                                        for (int i6 = 0; i6 / 5 < this.N; i6 += 5) {
                                            int y3 = y();
                                            this.M[i6 + 0] = i4;
                                            this.M[i6 + 1] = y3;
                                            this.M[i6 + 2] = i5;
                                            this.M[i6 + 4] = D();
                                            i5 += (A() * 4) + 1;
                                            i4 += y3;
                                        }
                                        this.O = true;
                                        break;
                                    case 73:
                                        this.V = new int[((y2 / 11) * 5)];
                                        for (int i7 = 0; i7 < this.V.length; i7 += 5) {
                                            this.V[i7 + 0] = D();
                                            this.V[i7 + 1] = y();
                                            this.V[i7 + 2] = y();
                                            this.V[i7 + 3] = A();
                                            this.V[i7 + 4] = A();
                                        }
                                        break;
                                    case 84:
                                        this.U = new int[((y2 / 12) * 5)];
                                        for (int i8 = 0; i8 < this.U.length; i8 += 5) {
                                            this.U[i8 + 0] = y();
                                            this.U[i8 + 1] = y();
                                            this.U[i8 + 2] = y() - this.U[i8 + 0];
                                            this.U[i8 + 3] = y() - this.U[i8 + 1];
                                        }
                                        break;
                                    case 86:
                                        this.o = new int[4];
                                        for (int i9 = 0; i9 < 3; i9++) {
                                            this.o[i9] = A();
                                        }
                                        this.o[3] = D();
                                        this.p = true;
                                        break;
                                    case 116:
                                        this.an = this.al - 3;
                                        this.al += y2;
                                        break;
                                    case 117:
                                        int x2 = x();
                                        if (this.ao) {
                                            break;
                                        } else {
                                            cc ccVar = this.Code;
                                            ccVar.d = x2 + ccVar.d;
                                            break;
                                        }
                                    default:
                                        this.al += y2;
                                        continue;
                                }
                            }
                            break;
                        case 83:
                            this.al = y() + this.al;
                            continue;
                        default:
                            F();
                            D(D2);
                            if (this.al <= this.aa) {
                                this.af += this.aj;
                                this.ag += this.ak;
                                int i10 = this.al;
                                int c2 = c(this.ag, this.N);
                                while (true) {
                                    int i11 = c2;
                                    int i12 = this.M[(i11 * 5) + 2];
                                    while (this.M[i12 + 4] != 0) {
                                        i12 += 4;
                                    }
                                    if (this.M[i12 + 0] == 0) {
                                        B(i12, i3, i10);
                                    } else if (this.M[i12 + 1] + this.Q >= i3) {
                                        this.M[i12 + 1] = i10;
                                    } else {
                                        B(i12 + 4, i3, i10);
                                    }
                                    c2 = i11 + 1;
                                    if (c2 >= this.N || this.ag + this.ai <= this.M[(c2 * 5) + 0]) {
                                        this.aj = this.af;
                                        this.ak = this.ag;
                                        J(this.af, this.ag, this.ah, this.ai);
                                    }
                                }
                                this.aj = this.af;
                                this.ak = this.ag;
                                J(this.af, this.ag, this.ah, this.ai);
                                continue;
                            }
                            break;
                    }
                }
                i2 = this.al;
            }
        } finally {
            this.Code.Z();
            N();
        }
        return i2;
    }

    private void O() {
        N();
        if (P()) {
            this.Code.a();
            ar.I.I(this.Code.C(), 12);
        }
    }

    private int B(int i2, int i3, int i4) {
        this.M[i2 + 0] = i3;
        this.M[i2 + 1] = i4;
        this.M[i2 + 2] = this.aj;
        this.M[i2 + 3] = this.ak;
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void C(int i2) {
        int i3 = 0;
        synchronized (this) {
            int x2 = x(i2);
            int[] iArr = ar.Z.I;
            an anVar = ar.Z;
            iArr[1] = 0;
            for (int i4 = 0; i4 < x2; i4++) {
                iArr[i4 + 2] = (iArr[i4 + 2] & -16777216) | i3;
                if ((iArr[i4 + 2] & Integer.MIN_VALUE) != 0) {
                    i3 += this.M[(i4 * 5) + 1];
                    if ((iArr[i4 + 2] & 1073741824) == 0) {
                        iArr[1] = iArr[1] + this.M[(i4 * 5) + 1];
                    }
                }
            }
            iArr[0] = i3;
            ar.Z.p();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2, boolean z2) {
        Code(ar.Z, i2, z2);
    }

    private void D(int i2) {
        switch (i2) {
            case 66:
                this.al += 4;
                return;
            case 70:
                this.al += 6;
                this.al = A() + this.al;
                this.al = A() + this.al + 5;
                return;
            case 73:
                this.al += 7;
                R();
                return;
            case 76:
                this.al += 9;
                return;
            case 77:
                this.al++;
                this.al = y() + this.al;
                return;
            case 83:
                this.al = y() + this.al;
                return;
            case 84:
                this.al += 6;
                R();
                this.al = A() + this.al;
                return;
            default:
                return;
        }
    }

    private void J(int i2, int i3, int i4, int i5) {
        if (Z(i2, i3, i4, i5)) {
            if (this.E > 0) {
                int i6 = this.A + this.E;
                this.A = Math.min(this.A, i2);
                this.E = Math.max(i2 + i4, i6) - this.A;
                int i7 = this.D + this.F;
                this.D = Math.min(this.D, i3);
                this.F = Math.max(i3 + i5, i7) - this.D;
            } else {
                this.A = i2;
                this.D = i3;
                this.E = i4;
                this.F = i5;
            }
        }
        B(i2, i3, i4, i5);
    }

    private boolean P() {
        return this.E > 0;
    }

    /* access modifiers changed from: package-private */
    public final int a(int i2) {
        return (this.s * i2) / this.q;
    }

    private int E(int i2) {
        return (this.Code.c() * i2) / this.q;
    }

    private int F(int i2) {
        return (this.q * i2) / this.s;
    }

    private int b(int i2, int i3) {
        return (this.q * i2) / i3;
    }

    private int C(int i2, int i3, int i4) {
        return i2 <= i4 ? i2 : (((i2 - i4) * this.q) / i3) + i4;
    }

    private int I(int[] iArr, int i2, int i3, int i4) {
        if (i3 == 0) {
            return -1;
        }
        int c2 = c(i4, i3);
        if ((iArr[i2 + c2] & Integer.MIN_VALUE) != 0) {
            return (i4 - this.M[(c2 * 5) + 0]) + (iArr[c2 + i2] & 16777215);
        }
        return -1;
    }

    private int Code(int[] iArr, int i2, int i3) {
        int Z2 = Z(iArr, 0, i2, i3);
        if (Z2 >= i2) {
            return this.r;
        }
        return (this.M[(Z2 * 5) + 0] + i3) - (iArr[Z2 + 0] & 16777215);
    }

    private synchronized int c(int i2, int i3) {
        int Code2;
        Code2 = db.Code(this.M, i3, 5, i2);
        while (Code2 > 0 && (Code2 == i3 || this.M[(Code2 * 5) + 0] == this.M[((Code2 - 1) * 5) + 0] || this.M[(Code2 * 5) + 0] > i2)) {
            Code2--;
        }
        return Code2;
    }

    private synchronized int Z(int[] iArr, int i2, int i3, int i4) {
        int Code2;
        Code2 = db.Code(iArr, i2, i3, 1, 16777215, i4);
        while (Code2 > 0 && (Code2 == i3 || (iArr[i2 + Code2] & 16777215) == (iArr[(i2 + Code2) - 1] & 16777215) || (iArr[i2 + Code2] & 16777215) > i4)) {
            Code2--;
        }
        while (Code2 < i3 && (iArr[i2 + Code2] & Integer.MIN_VALUE) == 0) {
            Code2++;
        }
        return Code2;
    }

    /* access modifiers changed from: package-private */
    public final int Code(int i2, int[] iArr) {
        this.al = i2;
        while (this.al < this.aa) {
            int i3 = this.al;
            int D2 = D();
            switch (D2) {
                case 66:
                case 70:
                case 73:
                case 84:
                    F();
                    this.af += iArr[0];
                    this.ag += iArr[1];
                    iArr[0] = this.af;
                    iArr[1] = this.ag;
                    break;
            }
            if (D2 == 84) {
                return i3;
            }
            D(D2);
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0243  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x017f A[SYNTHETIC] */
    public final synchronized void Code(int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3, boolean z4, int i7, int i8, int i9) {
        int[] iArr;
        int i10;
        int i11;
        int i12;
        int i13;
        this.v[0] = i3 * 4;
        if (this.v[0] > this.v.length) {
            this.v = new int[(this.v[0] + 1)];
            this.v[0] = this.v.length - 1;
        }
        ar.Z.Code(i2, 0, this.v[0], true);
        int[] iArr2 = ar.Z.I;
        an anVar = ar.Z;
        System.arraycopy(iArr2, 0, this.v, 1, this.v[0]);
        int[] iArr3 = this.v;
        if (this.M != null) {
            int x2 = x(i5);
            int[] iArr4 = ar.Z.I;
            an anVar2 = ar.Z;
            iArr = iArr4;
            i10 = 2;
            i11 = x2;
            i12 = iArr4[1];
        } else {
            iArr = null;
            i10 = 0;
            i11 = 0;
            i12 = 0;
        }
        if (i4 == 0) {
            iArr3[0] = 0;
        } else {
            for (int i14 = 1; i14 < iArr3[0]; i14 += 4) {
                if (iArr3[i14 + 3] == 0) {
                    iArr3[0] = iArr3[0] - 4;
                    System.arraycopy(iArr3, i14 + 4, iArr3, i14, (iArr3[0] + 1) - i14);
                } else {
                    int i15 = iArr3[i14 + 0];
                    int i16 = iArr3[i14 + 1];
                    iArr3[i14 + 0] = b(i15, i4);
                    iArr3[i14 + 1] = C(i16, i4, i12);
                    iArr3[i14 + 2] = b(i15 + iArr3[i14 + 2], i4) - iArr3[i14 + 0];
                    iArr3[i14 + 3] = C(i16 + iArr3[i14 + 3], i4, i12) - iArr3[i14 + 1];
                }
            }
            if (this.M != null) {
                for (int i17 = 1; i17 < iArr3[0]; i17 = i13 + 4) {
                    int i18 = iArr3[i17 + 1];
                    int Z2 = Z(iArr, i10, i11, i18);
                    if (Z2 >= i11) {
                        iArr3[0] = iArr3[0] - 4;
                        System.arraycopy(iArr3, i17 + 4, iArr3, i17, (iArr3[0] + 1) - i17);
                        i13 = i17 - 4;
                    } else {
                        iArr3[i17 + 1] = (this.M[(Z2 * 5) + 0] + i18) - (iArr[i10 + Z2] & 16777215);
                        int i19 = (iArr[i10 + Z2] & 16777215) + this.M[(Z2 * 5) + 1];
                        int i20 = Z2;
                        i13 = i17;
                        int i21 = i20;
                        int i22 = i18;
                        boolean z5 = true;
                        int i23 = i22;
                        while (true) {
                            i21++;
                            if (i21 >= i11 || i19 >= iArr3[i13 + 3] + i23) {
                                if (z5) {
                                    iArr3[0] = iArr3[0] - 4;
                                    System.arraycopy(iArr3, i13 + 4, iArr3, i13, (iArr3[0] + 1) - i13);
                                    i13 -= 4;
                                }
                            } else if ((iArr[i10 + i21] & Integer.MIN_VALUE) != 0) {
                                if (!z5) {
                                    iArr3[i13 + 1] = this.M[(i21 * 5) + 0];
                                    z5 = true;
                                }
                                i19 += this.M[(i21 * 5) + 1];
                            } else if (z5) {
                                int i24 = i19 - i23;
                                int i25 = iArr3[i13 + 0];
                                int i26 = iArr3[i13 + 1];
                                int i27 = iArr3[i13 + 2];
                                if (iArr3[0] + 4 >= iArr3.length) {
                                    int[] iArr5 = new int[(iArr3.length + 8)];
                                    System.arraycopy(iArr3, 0, iArr5, 0, iArr3.length);
                                    iArr3 = iArr5;
                                }
                                System.arraycopy(iArr3, i13, iArr3, i13 + 4, (iArr3[0] + 1) - i13);
                                iArr3[0] = iArr3[0] + 4;
                                iArr3[i13 + 0] = i25;
                                iArr3[i13 + 1] = i26;
                                iArr3[i13 + 2] = i27;
                                iArr3[i13 + 3] = i24;
                                i13 += 4;
                                int i28 = i13 + 3;
                                iArr3[i28] = iArr3[i28] - i24;
                                z5 = false;
                                i23 = i19;
                            }
                        }
                        if (z5) {
                        }
                    }
                }
            }
        }
        this.v = iArr3;
        Code(ar.Z, i2, i3, this.v, i4, i6, z2, z3, z4, i7, i8, i9);
        if (!z4) {
            this.z = false;
            if (i4 != this.y) {
                this.A = 0;
                this.D = 0;
                this.E = this.q;
                this.F = this.r;
            }
        } else if (i9 <= 0) {
            this.z = false;
        } else if (!this.w) {
            this.y = Math.min(i4, i9);
            this.z = true;
        }
        this.x = this.w;
        this.w = z4;
    }

    public final int b(int i2) {
        if (i2 == 0) {
            ar.Z.o(this.v[0]);
        } else {
            ar.Z.p(this.v[0]);
        }
        int[] iArr = this.v;
        int[] iArr2 = ar.Z.I;
        an anVar = ar.Z;
        System.arraycopy(iArr, 1, iArr2, 0, this.v[0]);
        return ar.Z.o();
    }

    public final synchronized boolean Code(br brVar, int i2, int i3, int i4, int i5) {
        boolean z2;
        int i6;
        ap.Code();
        try {
            int Code2 = brVar.Code();
            int I2 = brVar.I();
            int Z2 = brVar.Z();
            int J2 = brVar.J();
            brVar.Z(Code2, I2, Z2, J2, 16777215);
            if (this.M == null || this.X == null || i5 == 0) {
                this.s = i4;
                if (this.q != 0) {
                    z2 = true;
                } else {
                    ap.I();
                    if (this.x && !this.w && this.av != null) {
                        this.av.clear();
                        this.av = null;
                    }
                    z2 = false;
                }
            } else {
                int x2 = x(i5);
                int[] iArr = ar.Z.I;
                an anVar = ar.Z;
                if (!this.w) {
                    this.y = i4;
                } else if (!this.z) {
                    if (i4 * 12 < this.y * 11) {
                        this.y = (i4 * 11) / 12;
                    } else if (this.y * 12 < i4 * 11) {
                        this.y = (i4 * 12) / 11;
                    }
                }
                int i7 = this.s;
                this.s = i4;
                brVar.I(i2, i3, i4, a(iArr[0]));
                if (brVar.Z() > 0 && brVar.J() > 0) {
                    this.t = i4 > this.q / 2;
                    if (iArr[1] > 0) {
                        this.s = this.q;
                        this.u = true;
                        int min = Math.min(brVar.I() - i3, iArr[0] - 1);
                        Code(brVar, i2, i3, min, Math.min((brVar.J() + min) - 1, iArr[1] - 1), iArr, x2);
                        this.s = i4;
                        i6 = i3 + (iArr[1] - a(iArr[1]));
                    } else {
                        i6 = i3;
                    }
                    this.u = this.t;
                    int min2 = Math.min(Math.max(iArr[1], F(brVar.I() - i6)), iArr[0] - 1);
                    Code(brVar, i2, i6, min2, Math.min(F(brVar.J()) + min2, iArr[0] - 1), iArr, x2);
                }
                brVar.Code(Code2, I2, Z2, J2);
                if (this.C) {
                    ap.I(this);
                } else {
                    ap.Z(this);
                }
                ap.I();
                if (this.x && !this.w && this.av != null) {
                    this.av.clear();
                    this.av = null;
                }
                z2 = true;
            }
        } finally {
            ap.I();
            if (this.x && !this.w && this.av != null) {
                this.av.clear();
                this.av = null;
            }
        }
        return z2;
    }

    private void Code(br brVar, int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        int Z2;
        if (i4 < iArr[0] && (Z2 = Z(iArr, 2, i6, i4)) != i6) {
            int i7 = Z2;
            while (!ar.r()) {
                if (Z2 == i6) {
                    Code(brVar, i2, i3, i7, Z2 - 1, iArr);
                    return;
                }
                this.M[(Z2 * 5) + 3] = this.M[(Z2 * 5) + 2];
                if ((iArr[Z2 + 2] & Integer.MIN_VALUE) == 0) {
                    Code(brVar, i2, i3, i7, Z2 - 1, iArr);
                    do {
                        i7++;
                        if (i7 == i6) {
                            return;
                        }
                    } while ((iArr[i7 + 2] & Integer.MIN_VALUE) == 0);
                    Z2 = i7 - 1;
                } else if ((iArr[Z2 + 2] & 16777215) > i5) {
                    Code(brVar, i2, i3, i7, Z2 - 1, iArr);
                    return;
                }
                Z2++;
            }
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    private void Code(br brVar, int i2, int i3, int i4, int i5, int[] iArr) {
        Vector I2;
        if (i5 >= 0) {
            int a2 = a(iArr[i4 + 2] & 16777215) + i3;
            int Code2 = brVar.Code();
            int I3 = brVar.I();
            int Z2 = brVar.Z();
            int J2 = brVar.J();
            brVar.I(i2, a2, this.s, a(this.M[(i5 * 5) + 0] + this.M[(i5 * 5) + 1]));
            int a3 = a2 - a(this.M[(i4 * 5) + 0]);
            int i6 = 0;
            int i7 = 0;
            this.al = 0;
            while (!ar.r()) {
                int i8 = i7;
                int i9 = i6;
                int i10 = Integer.MAX_VALUE;
                int i11 = i4;
                while (i11 <= i5) {
                    int i12 = this.M[(i11 * 5) + 3];
                    while (true) {
                        if (this.M[i12] != 0) {
                            this.M[(i11 * 5) + 3] = i12;
                            if (this.M[i12 + 1] > this.al) {
                                i10 = db.Code(i10, this.al, this.M[i12]);
                                if (this.M[i12] == i10) {
                                    i9 = this.M[i12 + 2];
                                    i8 = this.M[i12 + 3];
                                }
                            } else {
                                i12 += 4;
                            }
                        }
                    }
                    i11++;
                    i10 = i10;
                }
                if (i10 != Integer.MAX_VALUE) {
                    int i13 = i10;
                    while (true) {
                        int i14 = i13;
                        for (int i15 = i4; i15 <= i5; i15++) {
                            int i16 = this.M[(i15 * 5) + 3];
                            while (this.M[i16] != 0 && this.M[i16] <= this.Q + i14) {
                                this.M[(i15 * 5) + 3] = i16;
                                i14 = Math.max(i14, this.M[i16 + 1]);
                                i16 += 4;
                            }
                        }
                        if (i13 == i14) {
                            this.al = i10;
                            int i17 = i8;
                            int i18 = i9;
                            while (this.al < i14 && !ar.r()) {
                                int i19 = this.al;
                                int D2 = D();
                                if (D2 == 83 || D2 == 76 || D2 == 77) {
                                    D(D2);
                                } else {
                                    F();
                                    this.af = i18 + this.af;
                                    this.ag += i17;
                                    int i20 = this.af;
                                    i17 = this.ag;
                                    int i21 = this.ah;
                                    int i22 = this.ai;
                                    this.ah = a(this.af + this.ah);
                                    this.ai = a(this.ag + this.ai);
                                    this.af = a(this.af);
                                    this.ag = a(this.ag);
                                    this.ah -= this.af;
                                    this.ai -= this.ag;
                                    this.af += i2;
                                    this.ag += a3;
                                    if (db.Code(this.af, this.ag, this.ah, this.ai, brVar.Code(), brVar.I(), brVar.Z(), brVar.J())) {
                                        int x2 = x();
                                        switch (D2) {
                                            case 66:
                                                brVar.J(this.af, this.ag, this.ah, this.ai, x2);
                                                i18 = i20;
                                                break;
                                            case 70:
                                                Code(brVar, x2, i22);
                                            case 73:
                                                int z2 = z();
                                                int i23 = -1;
                                                int i24 = -1;
                                                int i25 = 0;
                                                int i26 = 0;
                                                int i27 = 0;
                                                for (int D3 = D(); D3 > 0; D3--) {
                                                    switch (D()) {
                                                        case 99:
                                                            int A2 = A();
                                                            i25 = x();
                                                            this.al = (A2 - 4) + this.al;
                                                            break;
                                                        case 111:
                                                            this.al += 2;
                                                            i26 = A();
                                                            i27 = A();
                                                            break;
                                                        case 122:
                                                            A();
                                                            i23 = A();
                                                            i24 = A();
                                                            break;
                                                        default:
                                                            this.al += A();
                                                            break;
                                                    }
                                                }
                                                if (this.ah > 0 && this.ai > 0) {
                                                    int i28 = i25 + (i24 * 1024) + i23;
                                                    bu Code3 = (i23 == -1 || i24 == -1) ? this.u ? Code(i28, this.R + z2, i20, i17, i21, i22, 256, -1, -1) : Code(i28, this.R + z2, i20, i17, i21, i22, u(), i21, i22) : this.u ? Code(i28, this.R + z2, i20, i17, i21, i22, 256, i23, i24) : Code(i28, this.R + z2, i20, i17, i21, i22, u(), i23, i24);
                                                    if (Code3 == null) {
                                                        brVar.Z(this.af, this.ag, this.ah, this.ai, x2);
                                                        i18 = i20;
                                                        break;
                                                    } else {
                                                        brVar.Code(Code3, this.af, this.ag, this.ah, this.ai, i26, i27, this.ah, this.ai, this.w ? 0 : 1);
                                                        i18 = i20;
                                                        break;
                                                    }
                                                }
                                                break;
                                            case 84:
                                                int A3 = A();
                                                for (int D4 = D(); D4 > 0; D4--) {
                                                    switch (D()) {
                                                        case 114:
                                                            A();
                                                            break;
                                                        default:
                                                            this.al = A() + this.al;
                                                            break;
                                                    }
                                                }
                                                int A4 = A();
                                                char[] cArr = am;
                                                if (A4 > am.length) {
                                                    cArr = new char[A4];
                                                }
                                                int Code4 = ap.Code(this.X, this.al, cArr, 0, A4);
                                                this.al = A4 + this.al;
                                                if (this.Code.J.Z() && this.Code.J.Code(i19) && !v(i19)) {
                                                    this.Code.J.Code(brVar, i2, a3, this.af, this.ag, this.ah, i20, i17, i19, cArr, Code4, A3, i22, !db.Code(cArr[0]));
                                                }
                                                if (this.Code.Z.I(i19) && !v(i19)) {
                                                    this.Code.Z.Code(brVar, i2, a3, x2);
                                                }
                                                Code(brVar, cArr, Code4, x2, A3, i22);
                                                if (!(this.aB == null || (I2 = this.aB.I(i19)) == null)) {
                                                    int i29 = 0;
                                                    while (true) {
                                                        int i30 = i29;
                                                        if (i30 < I2.size()) {
                                                            int[] iArr2 = (int[]) I2.elementAt(i30);
                                                            boolean z3 = iArr2[9] == this.Code.C;
                                                            int i31 = z3 ? 61030 : 16772710;
                                                            int i32 = z3 ? 16777215 : 0;
                                                            int a4 = a(iArr2[3]) + this.af;
                                                            int a5 = a(iArr2[4]) + this.ag;
                                                            brVar.Z(a4, a5, a(iArr2[5]), a(iArr2[6]), i31);
                                                            db.Code(brVar, A3, cArr, iArr2[1], iArr2[2], a4, a5, i32, this.y, this.s, this.q);
                                                            i29 = i30 + 1;
                                                        }
                                                    }
                                                }
                                                i18 = i20;
                                                break;
                                        }
                                        i18 = i20;
                                    } else {
                                        D(D2);
                                        i18 = i20;
                                    }
                                }
                            }
                            i7 = i8;
                            i6 = i9;
                        } else {
                            i13 = i14;
                        }
                    }
                } else {
                    brVar.Code(Code2, I3, Z2, J2);
                }
            }
            brVar.Code(Code2, I3, Z2, J2);
        }
    }

    private static int Code(char[] cArr, int i2, int i3, int i4) {
        int i5;
        char[] cArr2;
        int i6;
        int i7;
        int i8;
        char[] cArr3;
        int i9 = 0;
        int i10 = 0;
        int i11 = i2;
        char[] cArr4 = cArr;
        while (i9 < i11) {
            if (cArr4[i9] == 10) {
                i7 = i9;
                i8 = i11;
                cArr2 = cArr4;
                i6 = 0;
            } else if (i10 == 0 || cArr4[i9] == ' ') {
                int i12 = 1;
                while (true) {
                    i5 = i12;
                    if (i9 + i5 >= i11 || cArr4[i9 + i5] == ' ' || cArr4[i9 + i5] == 10) {
                        int Code2 = db.Code(i3, cArr4, i9, i5);
                        int i13 = i10 + Code2;
                    } else {
                        i12 = i5 + 1;
                    }
                }
                int Code22 = db.Code(i3, cArr4, i9, i5);
                int i132 = i10 + Code22;
                if (i132 <= i4) {
                    Code22 = i132;
                } else if (Code22 <= i4) {
                    cArr4[i9] = 10;
                } else {
                    if (cArr4[i9] == ' ') {
                        cArr4[i9] = 10;
                    }
                    int Code3 = db.Code(i3, cArr4, i9, i5, i4);
                    if (Code3 == 0) {
                        Code22 = 0;
                    } else {
                        if (i11 == cArr4.length) {
                            cArr3 = new char[(cArr4.length + 10)];
                            System.arraycopy(cArr4, 0, cArr3, 0, i11);
                        } else {
                            cArr3 = cArr4;
                        }
                        int i14 = i9 + Code3;
                        System.arraycopy(cArr3, i14, cArr3, i14 + 1, i11 - i14);
                        cArr3[i14] = 10;
                        i8 = i11 + 1;
                        cArr2 = cArr3;
                        i7 = i14;
                        i6 = 0;
                    }
                }
                int i15 = (i5 - 1) + i9;
                cArr2 = cArr4;
                i6 = Code22;
                i7 = i15;
                i8 = i11;
            } else {
                i7 = i9;
                cArr2 = cArr4;
                i6 = i10;
                i8 = i11;
            }
            i11 = i8;
            i10 = i6;
            cArr4 = cArr2;
            i9 = i7 + 1;
        }
        return i11;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    private void Code(br brVar, int i2, int i3) {
        String str;
        char[] charArray;
        int length;
        boolean z2;
        int i4;
        String str2;
        String str3;
        int D2 = D();
        int D3 = D();
        String H2 = H();
        String H3 = H();
        int y2 = y();
        A();
        if (!this.ac.contains(H2) && !this.Code.I.containsKey(H2)) {
            if (H2.equals(this.ad)) {
                str2 = Integer.toString(0);
            } else if (H2.equals(this.ae)) {
                str2 = Integer.toString(1);
            } else if (this.ab.containsKey(H2)) {
                str2 = H2;
            } else {
                str2 = null;
            }
            if (str2 != null) {
                char c2 = (char) D2;
                if (this.ab.containsKey(str2)) {
                    str3 = null;
                } else {
                    str3 = H3;
                }
                Code(str2, H2, c2, str3);
            }
        }
        String str4 = (String) this.Code.I.get(H2);
        if (str4 == null) {
            str = H3;
        } else {
            str = str4;
        }
        switch (D2) {
            case 83:
            case 85:
            case 120:
                charArray = str.toCharArray();
                length = charArray.length;
                break;
            case 97:
                int d2 = this.Code.d();
                int length2 = str.length();
                if (length2 <= am.length) {
                    charArray = am;
                    str.getChars(0, length2, charArray, 0);
                    length = Code(charArray, length2, d2, F(this.ah));
                    break;
                } else {
                    Integer num = new Integer(str.hashCode());
                    if (this.av == null) {
                        this.av = new Hashtable();
                    }
                    if (this.av.containsKey(num)) {
                        char[] cArr = (char[]) this.av.get(num);
                        if (!this.x || this.w) {
                            char[] cArr2 = cArr;
                            z2 = false;
                            charArray = cArr2;
                        } else {
                            char[] cArr3 = cArr;
                            z2 = true;
                            charArray = cArr3;
                        }
                    } else {
                        z2 = true;
                        charArray = new char[length2];
                    }
                    if (z2) {
                        str.getChars(0, length2, charArray, 0);
                        i4 = Code(charArray, length2, d2, F(this.ah));
                        this.av.put(num, charArray);
                    } else {
                        i4 = length2;
                    }
                    length = i4;
                    break;
                }
                break;
            case 99:
                if (((D3 & 2) != 0) ^ (str4 != null)) {
                    brVar.Code(this.af + 1, this.ag + 1, (this.af + this.ah) - 2, (this.ag + this.ai) - 2, 0);
                    brVar.Code(this.af + 1, (this.ag + this.ai) - 2, (this.af + this.ah) - 2, this.ag + 1, 0);
                    length = 0;
                    charArray = null;
                    break;
                }
            case 102:
                if (this.Code.a != null && this.Code.a.containsKey(H2)) {
                    String str5 = (String) ((Object[]) this.Code.a.get(H2))[0];
                    int lastIndexOf = str5.lastIndexOf(47);
                    if (lastIndexOf >= 0 && lastIndexOf < str5.length()) {
                        str5 = str5.substring(lastIndexOf + 1);
                    }
                    charArray = str5.toCharArray();
                    length = charArray.length;
                    break;
                }
            case 112:
                length = str.length();
                charArray = new char[length];
                for (int i5 = 0; i5 < charArray.length; i5++) {
                    charArray[i5] = db.x;
                }
                break;
            case 114:
                if (str4 == null ? (D3 & 2) != 0 : str4.equals(H3)) {
                    brVar.Code(this.af + 1, this.ag + 1, this.ah - 3, this.ai - 3, -90, 360, 4210752);
                    length = 0;
                    charArray = null;
                    break;
                }
            case 115:
                int i6 = this.al;
                this.al = y2;
                int y3 = y();
                String str6 = "\u0000" + str + "\u0000";
                StringBuffer stringBuffer = new StringBuffer();
                int i7 = y3;
                while (true) {
                    if (i7 > 0) {
                        String H4 = H();
                        String H5 = H();
                        boolean z3 = str6.indexOf(new StringBuilder("\u0000").append(H4).append("\u0000").toString()) >= 0;
                        if ((D3 & 4) != 0) {
                            if (z3) {
                                stringBuffer.append("*");
                            }
                            stringBuffer.append(H5).append("\n");
                        } else if (z3) {
                            stringBuffer.append(H5).append("\n");
                        }
                        i7--;
                    }
                }
                this.al = i6;
                charArray = stringBuffer.toString().toCharArray();
                length = charArray.length;
                break;
            default:
                length = 0;
                charArray = null;
                break;
        }
        if (charArray != null) {
            int Code2 = brVar.Code();
            int I2 = brVar.I();
            int Z2 = brVar.Z();
            int J2 = brVar.J();
            brVar.I(this.af, this.ag, this.ah, this.ai);
            Code(brVar, charArray, length, i2, this.Code.d(), i3);
            brVar.Code(Code2, I2, Z2, J2);
        }
    }

    private void Code(br brVar, char[] cArr, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8 = 1;
        int max = Math.max(i5 / db.C(i4), 1);
        int i9 = 0;
        while (i9 < i2 && i8 <= max) {
            i8 += cArr[i9] == 10 ? 1 : 0;
            i9++;
        }
        int i10 = i8;
        while (i9 > 0) {
            int i11 = i10 - 1;
            int a2 = this.ag + a((i5 * i11) / i8);
            int i12 = 0;
            if (i11 == 0) {
                i7 = 0;
                i6 = i9;
            } else {
                while (cArr[i9 - 1] != 10) {
                    i12++;
                    i9--;
                    if (i9 == 0) {
                        break;
                    }
                }
                i6 = i12;
                i7 = i9;
            }
            if (i6 > 0 && cArr[(i7 + i6) - 1] == 13) {
                i6--;
            }
            brVar.Code(i4, cArr, i7, i6, this.af, a2, i3, this.u, this.y, this.s, this.q);
            i9 = i7 - 1;
            i10 = i11;
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b() {
        if (this.C) {
            ap.Code(this);
        }
        this.J = 0;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i2, int i3, int i4, int i5) {
        if (this.S == 0) {
            this.aw = -1;
            return;
        }
        this.aw = this.S;
        this.ax = i5;
        this.ay = i4;
        this.az = i3;
        this.aA = i2;
    }

    private synchronized int Q() {
        int i2 = 0;
        synchronized (this) {
            if (this.aw != -1) {
                this.al = this.aw;
                while (true) {
                    if (this.al > this.T) {
                        break;
                    }
                    this.aw = this.al;
                    int D2 = D();
                    this.al = (D() * 10) + this.al;
                    this.al = A() + this.al;
                    R();
                    if (D2 == 76) {
                        i2 = this.aw;
                        this.aw = this.al;
                        break;
                    }
                }
            }
        }
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int Code(int i2, int i3) {
        int i4;
        if (this.aw != -1) {
            int w2 = w(i3);
            int[] iArr = ar.Z.I;
            an anVar = ar.Z;
            this.al = this.aw;
            loop0:
            while (true) {
                if (this.al > this.T) {
                    i4 = 0;
                    break;
                }
                this.aw = this.al;
                this.al++;
                int D2 = D();
                while (true) {
                    if (D2 <= 0) {
                        break;
                    }
                    E();
                    this.ag = I(iArr, 0, w2, this.ag);
                    if (this.ag < 0) {
                        this.al += (D2 - 1) * 10;
                        break;
                    } else if (db.Code(this.ax, this.ay, this.az, this.aA, this.af, this.ag, this.ah, this.ai)) {
                        a(i2, i3, this.aw);
                        this.aw = this.al;
                        i4 = 1;
                        break loop0;
                    } else {
                        D2--;
                    }
                }
                this.al = A() + this.al;
                R();
            }
        } else {
            i4 = 0;
        }
        return i4;
    }

    private void Code(String str, String str2, char c2, String str3) {
        String str4 = null;
        if (str2 != null && !this.ac.contains(str2) && !this.Code.I.containsKey(str2) && (str3 == null || str3.length() == 0 || this.Code.i() == null || this.Code.i().indexOf(str2 + "=") == -1)) {
            str4 = (String) this.ab.remove(str);
        } else if (str3 != null && str3.length() > 0) {
            str4 = str3;
        }
        if (str4 != null) {
            this.Code.Code(str4, (int) c2, str2);
        }
    }

    private synchronized int a(int i2, int i3, int i4) {
        int Z2;
        synchronized (this) {
            this.al = i4;
            D();
            int D2 = D();
            ar.Z.Z(i2);
            ar.Z.J(i3);
            ar.Z.o(D2 * 4);
            an anVar = ar.Z;
            int i5 = this.al;
            int i6 = 0;
            for (int i7 = 0; i7 < D2; i7++) {
                E();
                int i8 = i6 + 1;
                ar.Z.I[i6] = this.af;
                int i9 = i8 + 1;
                ar.Z.I[i8] = this.ag;
                int i10 = i9 + 1;
                ar.Z.I[i9] = this.ah;
                i6 = i10 + 1;
                ar.Z.I[i10] = this.ai;
            }
            int o2 = ar.Z.o();
            Z2 = ar.Z.Z();
            int J2 = ar.Z.J();
            ar.Z.Z(0);
            ar.Z.J(0);
            int w2 = w(J2);
            int[] iArr = ar.Z.I;
            an anVar2 = ar.Z;
            this.al = i5;
            int i11 = 1;
            while (true) {
                int i12 = D2 - 1;
                if (D2 > 0) {
                    E();
                    this.ag = I(iArr, 0, w2, this.ag);
                    ar.Z.Z(o2, i11, this.ag);
                    i11 += 4;
                    D2 = i12;
                } else {
                    this.al = A() + this.al;
                    R();
                    ar.Z.B(Z2, 3, i4);
                    ar.Z.B(Z2, 4, 16);
                    ar.Z.B(Z2, 5, 0);
                    ar.Z.J(Z2, 2, o2);
                }
            }
        }
        return Z2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int I(int i2, int i3) {
        boolean z2;
        int i4 = 0;
        synchronized (this) {
            if (i2 != 0) {
                int q2 = ar.Z.q(i2);
                if (q2 != 0) {
                    ar.Z.Code(i2, 0, q2, true);
                    an anVar = ar.Z;
                    int i5 = q2 + 0;
                    this.al = this.S;
                    loop0:
                    while (true) {
                        if (this.al > this.T) {
                            break;
                        }
                        int i6 = this.al;
                        this.al = i6 + 1;
                        int D2 = D();
                        while (true) {
                            if (D2 <= 0) {
                                z2 = false;
                                break;
                            }
                            E();
                            int c2 = c(this.ag, this.N);
                            an anVar2 = ar.Z;
                            for (int i7 = 0; i7 < i5; i7++) {
                                if (ar.Z.I[i7] == c2) {
                                    this.al += (D2 - 1) * 10;
                                    z2 = true;
                                    break;
                                }
                            }
                            D2--;
                        }
                        this.al = A() + this.al;
                        if (z2) {
                            for (int D3 = D(); D3 > 0; D3--) {
                                if (D() == 102) {
                                    ar.Z.Z(i3);
                                    int I2 = ar.Z.I(6, 61);
                                    int Z2 = ar.Z.Z();
                                    ar.Z.Z(0);
                                    i4 = a(I2, Z2, i6);
                                    break loop0;
                                }
                                this.al = A() + this.al;
                            }
                            continue;
                        } else {
                            R();
                        }
                    }
                }
            }
        }
        return i4;
    }

    /* access modifiers changed from: package-private */
    public final void c(int i2) {
        int n2 = ar.Z.n(i2);
        ar.Z.Code(i2, n2);
        this.ab.clear();
        for (int i3 = 0; i3 < n2; i3 += 2) {
            Hashtable hashtable = this.ab;
            an anVar = ar.Z;
            int[] iArr = ar.Z.I;
            an anVar2 = ar.Z;
            String I2 = db.I(anVar.f(iArr[i3 + 0]));
            an anVar3 = ar.Z;
            int[] iArr2 = ar.Z.I;
            an anVar4 = ar.Z;
            hashtable.put(I2, db.I(anVar3.f(iArr2[i3 + 0 + 1])));
        }
        if (n2 > 0) {
            String num = Integer.toString(0);
            String num2 = Integer.toString(1);
            Code(num, this.ad, 'x', (String) null);
            Code(num2, this.ae, 'p', (String) null);
        }
    }

    /* access modifiers changed from: package-private */
    public final String d(int i2) {
        switch (i2) {
            case 0:
                if (this.ae != null && this.Code.I.containsKey(this.ae)) {
                    return this.ad;
                }
            case 1:
                return this.ae;
        }
        return null;
    }

    private void R() {
        for (int D2 = D(); D2 > 0; D2--) {
            this.al++;
            this.al = A() + this.al;
        }
    }

    /* JADX WARNING: type inference failed for: r1v30, types: [int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    public final synchronized int e(int i2) {
        int i3;
        int i4;
        int i5;
        if (this.S == 0) {
            this.aw = -1;
        } else {
            this.aw = this.S;
        }
        int[] iArr = new int[(this.N * 4)];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int Q2 = Q();
            if (Q2 > 0) {
                int i8 = (this.X[Q2 + 1] * 10) + 2 + Q2;
                int I2 = I(i8) + 2 + 1 + i8;
                int i9 = I2;
                byte b2 = this.X[I2 - 1];
                while (true) {
                    if (b2 <= 0) {
                        i3 = i6;
                        i4 = i9;
                        break;
                    }
                    int i10 = i9 + 1;
                    if (Z(i9) == 114) {
                        i4 = i10 + 2;
                        i3 = I(i10) + i4;
                        break;
                    }
                    b2--;
                    i9 = i10 + I(i10) + 2;
                }
                if (i3 >= i4) {
                    int i11 = 0;
                    int i12 = i4;
                    int i13 = -1;
                    while (i12 < i3) {
                        int i14 = i12 + 1;
                        int Z2 = Z(i12);
                        int I3 = I(i14);
                        i12 = i14 + 2;
                        if (Z2 > 0) {
                            iArr[I3] = 1;
                            i11 += this.M[(I3 * 5) + 1];
                            if (i13 == -1) {
                                i13 = this.M[(I3 * 5) + 0];
                            }
                        }
                    }
                    if (i11 > 0) {
                        iArr[this.N + (i7 * 3)] = i13;
                        iArr[this.N + (i7 * 3) + 1] = i11;
                        iArr[this.N + (i7 * 3) + 2] = Q2;
                        i5 = i7 + 1;
                    } else {
                        i5 = i7;
                    }
                    i7 = i5;
                    i6 = i3;
                } else {
                    i6 = i3;
                }
            } else {
                int[] iArr2 = new int[3];
                boolean z2 = false;
                while (!z2) {
                    int i15 = this.N;
                    while (true) {
                        if (i15 >= this.N + ((i7 - 1) * 3)) {
                            z2 = true;
                            break;
                        } else if (iArr[i15] > iArr[i15 + 3]) {
                            System.arraycopy(iArr, i15, iArr2, 0, 3);
                            System.arraycopy(iArr, i15 + 3, iArr, i15, 3);
                            System.arraycopy(iArr2, 0, iArr, i15 + 3, 3);
                            z2 = false;
                            break;
                        } else {
                            i15 += 3;
                        }
                    }
                }
                if (i2 == 0) {
                    ar.Z.o(this.N + 1 + (i7 * 2));
                } else {
                    ar.Z.p(this.N + 1 + (i7 * 2));
                }
                an anVar = ar.Z;
                ar.Z.I[0] = i7;
                int i16 = 1;
                for (int i17 = 0; i17 < i7; i17++) {
                    int i18 = i16 + 1;
                    ar.Z.I[i16] = iArr[this.N + (i17 * 3) + 2];
                    i16 = i18 + 1;
                    ar.Z.I[i18] = iArr[this.N + (i17 * 3) + 1];
                }
                System.arraycopy(iArr, 0, ar.Z.I, i16, this.N);
            }
        }
        return ar.Z.o();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v7, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v22, resolved type: byte} */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    public final synchronized int Code(int i2, char c2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        synchronized (this) {
            int i8 = (this.X[i2 + 1] * 10) + 2 + i2;
            if (c2 == 0) {
                int i9 = i8 + 2;
                i5 = I(i8) + i9;
                i6 = i9;
            } else {
                int I2 = I(i8) + 2 + 1 + i8;
                int i10 = this.X[I2 - 1];
                while (true) {
                    if (i10 <= 0) {
                        i4 = 0;
                        break;
                    }
                    int i11 = I2 + 1;
                    if (Z(I2) == c2) {
                        I2 = i11 + 2;
                        i4 = I(i11) + I2;
                        break;
                    }
                    I2 = I(i11) + 2 + i11;
                    i10--;
                }
                if (i4 >= I2) {
                    i5 = i4;
                    i6 = I2;
                }
            }
            if (i3 == 0) {
                ar.Z.o((i5 - i6) / 3);
            } else {
                ar.Z.p((i5 - i6) / 3);
            }
            an anVar = ar.Z;
            while (i6 < i5) {
                int i12 = i6 + 1;
                int Z2 = Z(i6);
                ar.Z.I[i7] = (Z2 << 16) | I(i12);
                i7++;
                i6 = i12 + 2;
            }
            i7 = ar.Z.o();
        }
        return i7;
    }

    /* access modifiers changed from: package-private */
    public final int f(int i2) {
        return this.X[i2];
    }

    /* access modifiers changed from: package-private */
    public final int g(int i2) {
        int Z2 = Z(i2);
        int i3 = i2 + (this.X[i2 + 1] * 10) + 2;
        if (Z2 == 78) {
            return y(i3 + 2 + 2 + 3);
        }
        int Z3 = ap.Z(this.X, i3);
        return (Z3 <= 0 || this.X[i3 + 2] != 0) ? ar.Z.Code(this.X, i3 + 2, Z3) : ar.Z.Code(this.X, this.e + 2, ap.Z(this.X, this.e), this.X, i3 + 3, Z3 - 1);
    }

    /* access modifiers changed from: package-private */
    public final int h(int i2) {
        return I((this.X[i2 + 1] * 10) + 2 + i2 + 2);
    }

    /* access modifiers changed from: package-private */
    public final int i(int i2) {
        return Code((this.X[i2 + 1] * 10) + 2 + i2 + 4);
    }

    /* access modifiers changed from: package-private */
    public final int j(int i2) {
        int i3;
        int i4 = 0;
        this.al = i2;
        if (D() == 67) {
            i3 = 16;
        } else {
            i3 = 0;
        }
        this.al = (D() * 10) + this.al;
        this.al = A() + this.al;
        for (int D2 = D(); D2 > 0; D2--) {
            switch (D()) {
                case 66:
                    i4 += 2;
                    break;
                case 70:
                    i4++;
                    break;
                case 108:
                    i4 += 4;
                    break;
                case 114:
                    i4 += 8;
                    break;
            }
            this.al = A() + this.al;
        }
        return i3 | i4;
    }

    /* access modifiers changed from: package-private */
    public final int c() {
        return this.G;
    }

    /* access modifiers changed from: package-private */
    public final int d() {
        return this.H;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int k(int i2) {
        int i3;
        this.al = i2 + 1;
        this.al = (D() * 10) + this.al;
        this.al = A() + this.al;
        int D2 = D();
        while (true) {
            if (D2 > 0) {
                switch (D()) {
                    case 116:
                        i3 = y(this.al);
                        break;
                    default:
                        this.al = A() + this.al;
                        D2--;
                }
            } else {
                i3 = 0;
            }
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final int Code(int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8;
        if (this.U == null) {
            return 0;
        }
        int i9 = 0;
        int w2 = w(i7);
        int[] iArr = ar.Z.I;
        an anVar = ar.Z;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            i8 = i9;
            if (i11 >= this.U.length) {
                break;
            }
            this.U[i11 + 4] = I(iArr, 0, w2, this.U[i11 + 1]);
            if (this.U[i11 + 4] >= 0) {
                if (db.Code(i6, i5, i4, i3, this.U[i11 + 0], this.U[i11 + 4], this.U[i11 + 2], this.U[i11 + 3])) {
                    i9 = i8 + 1;
                    i10 = i11 + 5;
                }
            }
            this.U[i11 + 4] = -1;
            i9 = i8;
            i10 = i11 + 5;
        }
        if (i2 == 0) {
            ar.Z.o(i8 * 4);
        } else {
            ar.Z.p(i8 * 4);
        }
        an anVar2 = ar.Z;
        int i12 = 0;
        for (int i13 = 0; i13 < this.U.length; i13 += 5) {
            if (this.U[i13 + 4] >= 0) {
                int i14 = i12 + 1;
                ar.Z.I[i12] = this.U[i13 + 0];
                int i15 = i14 + 1;
                ar.Z.I[i14] = this.U[i13 + 4];
                int i16 = i15 + 1;
                ar.Z.I[i15] = this.U[i13 + 2];
                i12 = i16 + 1;
                ar.Z.I[i16] = this.U[i13 + 3];
            }
        }
        return ar.Z.o();
    }

    /* access modifiers changed from: package-private */
    public final synchronized int l(int i2) {
        G(i2);
        this.al += 15;
        return this.X[this.al];
    }

    private int G(int i2) {
        this.al = i2 + 1 + 1 + (this.X[i2 + 1] * 10);
        this.al += 2;
        int y2 = y();
        this.al = y2;
        return y2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int Z(int i2, int i3) {
        int i4;
        int o2;
        int G2 = G(i2);
        this.al++;
        F();
        this.al += 4;
        int D2 = D();
        int D3 = D();
        int i5 = D3 & 8;
        String H2 = H();
        H();
        if (this.Code.I.get(H2) != null) {
            i4 = 0;
        } else {
            i4 = i5;
        }
        int i6 = D3 & 1;
        switch (D2) {
            case 83:
            case 85:
            case 97:
            case 112:
            case 120:
                ar.Z.o(3);
                an anVar = ar.Z;
                ar.Z.I[0] = i6;
                ar.Z.I[1] = i4;
                ar.Z.I[2] = -1;
                o2 = ar.Z.o();
                break;
            case 99:
            case 114:
                ar.Z.o(1);
                int[] iArr = ar.Z.I;
                an anVar2 = ar.Z;
                iArr[0] = i6;
                o2 = ar.Z.o();
                break;
            case 115:
                this.al = y();
                int y2 = y();
                int i7 = this.af;
                int i8 = this.ag;
                int i9 = this.al;
                int i10 = this.ah;
                int i11 = this.ai;
                int i12 = 0;
                int i13 = 0;
                this.al = this.Y;
                while (this.al < G2) {
                    int D4 = D();
                    switch (D4) {
                        case 66:
                        case 70:
                        case 73:
                        case 84:
                            F();
                            i12 += this.af;
                            i13 += this.ag;
                            break;
                    }
                    D(D4);
                }
                this.af = i12 + i7;
                this.ag = i13 + i8;
                this.ah = i10;
                this.ai = i11;
                this.al = i9;
                int w2 = w(i3);
                int[] iArr2 = ar.Z.I;
                an anVar3 = ar.Z;
                this.ag = I(iArr2, 0, w2, this.ag);
                ar.Z.o(8);
                an anVar4 = ar.Z;
                ar.Z.I[0] = i6;
                ar.Z.I[1] = i4;
                ar.Z.I[2] = y2;
                ar.Z.I[3] = (D3 & 4) != 0 ? 1 : 0;
                ar.Z.I[4] = this.af;
                ar.Z.I[5] = this.ag;
                ar.Z.I[6] = this.ah;
                ar.Z.I[7] = this.ai;
                o2 = ar.Z.o();
                break;
            default:
                o2 = 0;
                break;
        }
        return o2;
    }

    static bg Code(Object obj) {
        return (bg) ((Object[]) obj)[0];
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: java.lang.Object[]} */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    public final synchronized Object m(int i2) {
        Object[] objArr;
        G(i2);
        this.al += 15;
        D();
        int D2 = D();
        String H2 = H();
        String H3 = H();
        this.al = y();
        int y2 = y();
        int[] iArr = new int[y2];
        for (int i3 = 0; i3 < y2; i3++) {
            iArr[i3] = this.al;
            G();
            G();
        }
        if (this.Code.I.containsKey(H2)) {
            H3 = (String) this.Code.I.get(H2);
        }
        Hashtable hashtable = new Hashtable();
        Integer num = new Integer(Code(hashtable, H3));
        objArr = new Object[6];
        objArr[0] = this;
        objArr[1] = new Integer(i2);
        objArr[2] = iArr;
        objArr[3] = hashtable;
        objArr[4] = new Boolean((D2 & 4) != 0);
        objArr[5] = num;
        return objArr;
    }

    private static int Code(Hashtable hashtable, String str) {
        int indexOf;
        int i2 = -1;
        int i3 = 0;
        do {
            indexOf = str.indexOf(0, i3);
            if (indexOf < 0) {
                indexOf = str.length();
            }
            try {
                int parseInt = Integer.parseInt(str.substring(i3, indexOf));
                Integer num = new Integer(parseInt);
                hashtable.put(num, num);
                if (parseInt < i2 || i2 < 0) {
                    i2 = parseInt;
                }
            } catch (Exception e2) {
            }
            i3 = indexOf + 1;
        } while (indexOf < str.length());
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int Code(Object obj, int i2) {
        int i3;
        i3 = ((int[]) ((Object[]) obj)[2])[i2];
        return y(i3 + ap.Z(this.X, i3) + 2);
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean I(Object obj, int i2) {
        return ((Hashtable) ((Object[]) obj)[3]).containsKey(new Integer(i2));
    }

    /* access modifiers changed from: package-private */
    public final synchronized int I(Object obj) {
        return ((Integer) ((Object[]) obj)[5]).intValue();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z(Object obj, int i2) {
        Hashtable hashtable = (Hashtable) ((Object[]) obj)[3];
        if (!((Boolean) ((Object[]) obj)[4]).booleanValue()) {
            hashtable.clear();
        }
        Integer num = new Integer(i2);
        if (!hashtable.containsKey(num)) {
            hashtable.put(num, num);
        } else {
            hashtable.remove(num);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z(Object obj) {
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration keys = ((Hashtable) ((Object[]) obj)[3]).keys();
        while (keys.hasMoreElements()) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(0);
            }
            stringBuffer.append(keys.nextElement());
        }
        Code(((Integer) ((Object[]) obj)[1]).intValue(), stringBuffer.toString());
    }

    /* access modifiers changed from: package-private */
    public final synchronized int Code(Object obj, bp bpVar, int i2) {
        this.al = ((int[]) ((Object[]) obj)[2])[i2];
        G();
        return bpVar.Code(H());
    }

    /* access modifiers changed from: package-private */
    public final synchronized int J(int i2, int i3) {
        int w2;
        int[] iArr;
        w2 = w(i3);
        iArr = ar.Z.I;
        an anVar = ar.Z;
        return Code(iArr, w2, i2);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z(int i2, int i3, int i4) {
        int w2 = w(i4);
        int[] iArr = ar.Z.I;
        an anVar = ar.Z;
        int Code2 = Code(iArr, w2, i2);
        ar.Z.l((this.Code.I.size() * 2) + 4);
        ar.Z.I("x");
        ar.Z.I(String.valueOf(i3));
        ar.Z.I("y");
        ar.Z.I(String.valueOf(Code2));
        Enumeration keys = this.Code.I.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (!str.startsWith("o:")) {
                ar.Z.I(db.Code(str));
                ar.Z.I(db.Code(this.Code.I.get(str).toString()));
            }
        }
        ar.Z.b(ar.Z.n());
    }

    /* access modifiers changed from: package-private */
    public final synchronized void I(int i2, int i3, int i4, int i5) {
        int w2 = w(i4);
        int[] iArr = ar.Z.I;
        an anVar = ar.Z;
        int Code2 = Code(iArr, w2, i2);
        ar.Z.l((this.Code.I.size() * 2) + 6);
        ar.Z.I("x");
        ar.Z.I(String.valueOf(i3));
        ar.Z.I("y");
        ar.Z.I(String.valueOf(Code2));
        if (Z(i5) == 83) {
            this.al = i5 + 2 + (this.X[i5 + 1] * 10);
            ar.Z.I(db.Code(H()));
            int j2 = ar.Z.j();
            int D2 = D();
            while (true) {
                if (D2 > 0) {
                    switch (D()) {
                        case 116:
                            j2 = ar.Z.Code(db.Code(H()));
                            break;
                        default:
                            this.al += A();
                            D2--;
                    }
                }
            }
            ar.Z.m(j2);
        }
        Enumeration keys = this.Code.I.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (!str.startsWith("o:")) {
                ar.Z.I(db.Code(str));
                ar.Z.I(db.Code(this.Code.I.get(str).toString()));
            }
        }
        ar.Z.b(ar.Z.n());
    }

    /* access modifiers changed from: package-private */
    public final synchronized String n(int i2) {
        G(i2);
        this.al += 17;
        G();
        return H();
    }

    /* access modifiers changed from: package-private */
    public final synchronized String o(int i2) {
        String str;
        boolean z2;
        G(i2);
        this.al += 15;
        int D2 = D();
        int D3 = D();
        str = (String) this.Code.I.get(H());
        switch (D2) {
            case 83:
            case 85:
            case 97:
            case 112:
            case 115:
            case 120:
                if (str == null) {
                    str = H();
                    break;
                }
                break;
            case 99:
                if (str != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!(((D3 & 2) != 0) ^ z2)) {
                    str = "0";
                    break;
                } else {
                    str = "1";
                    break;
                }
            default:
                str = "";
                break;
        }
        return str;
    }

    /* access modifiers changed from: package-private */
    public final synchronized String p(int i2) {
        G(i2);
        this.al += 17;
        return H();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2, String str) {
        G(i2);
        this.al += 15;
        int D2 = D();
        this.al++;
        this.Code.Code(str, D2, H());
    }

    /* access modifiers changed from: package-private */
    public final int e() {
        return this.n;
    }

    /* access modifiers changed from: package-private */
    public final int[] f() {
        return this.o;
    }

    private void S() {
        if (this.p) {
            this.p = false;
            this.Code.a();
            ar.I.I(this.Code.C(), 21);
        }
    }

    /* access modifiers changed from: package-private */
    public final byte g() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public final int h() {
        return this.m;
    }

    /* access modifiers changed from: package-private */
    public final int i() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public final int j() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public final int k() {
        return this.j;
    }

    public final synchronized int Code(String str, int[] iArr, int i2) {
        int[] iArr2;
        int i3;
        int i4 = 0;
        synchronized (this) {
            if (iArr != null) {
                i3 = w(i2);
                iArr2 = ar.Z.I;
                an anVar = ar.Z;
            } else {
                iArr2 = null;
                i3 = 0;
            }
            if (!str.equals(this.Code.B) || this.aB == null) {
                if (this.aB != null) {
                    l();
                }
                this.Code.B = str;
                this.aB = new cv();
                this.aB.Code(this, this.Y, str);
                if (this.aB.Code()) {
                    if (this.Code.C == -1) {
                        this.Code.C = 0;
                    }
                    if (iArr != null) {
                        Code(iArr2, i3, iArr);
                    }
                    i4 = 1;
                }
            } else if (this.aB.Code()) {
                cc ccVar = this.Code;
                if (this.Code.C < this.aB.I() - 1) {
                    i4 = this.Code.C + 1;
                }
                ccVar.C = i4;
                if (iArr != null) {
                    Code(iArr2, i3, iArr);
                }
                i4 = this.Code.C != 0 ? 1 : 2;
            }
        }
        return i4;
    }

    public final synchronized void l() {
        this.aB = null;
        this.Code.B = null;
        this.Code.C = -1;
    }

    private void Code(int[] iArr, int i2, int[] iArr2) {
        int[][] Code2 = this.aB.Code(this.Code.C);
        for (int i3 = 0; i3 < Code2.length; i3++) {
            int[] iArr3 = Code2[i3];
            if (i3 == 0) {
                iArr2[0] = iArr3[3] + iArr3[7];
                iArr2[2] = iArr3[5];
            } else {
                iArr2[0] = Math.min(iArr2[0], iArr3[3] + iArr3[7]);
                iArr2[2] = iArr2[2] + iArr3[5];
            }
            iArr2[1] = I(iArr, 0, i2, iArr3[4] + iArr3[8]);
            iArr2[3] = iArr3[6];
        }
    }

    private boolean T() {
        return this.aB != null && this.aB.Code();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x004b, code lost:
        if ((r0[2] + r0[1]) == (r1[2] + r1[1])) goto L_0x004d;
     */
    private int[] d(int i2, int i3) {
        int i4 = 1;
        Vector I2 = this.aB.I(i2);
        if (I2 == null || i3 >= I2.size()) {
            return null;
        }
        int[] iArr = (int[]) I2.elementAt(i3);
        int[] iArr2 = new int[(iArr.length + 2)];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        iArr2[iArr.length] = iArr[9] == this.Code.C ? 1 : 0;
        int[] iArr3 = (int[]) I2.elementAt(I2.size() - 1);
        int length = iArr.length + 1;
        if (i2 == iArr3[0]) {
        }
        i4 = 0;
        iArr2[length] = i4;
        return iArr2;
    }

    /* access modifiers changed from: package-private */
    public final void Code(String str, String str2) {
        if (this.Code.a == null) {
            this.Code.a = new Hashtable();
        }
        long C2 = ar.c.C(str);
        this.Code.a.put(str2, new Object[]{str, new Integer((int) C2)});
        this.Code.Code(str2);
    }

    /* access modifiers changed from: package-private */
    public final int Z(boolean z2) {
        String Code2;
        if (ar.Code.m()) {
            for (int i2 = 0; i2 < 5; i2++) {
                int hashCode = (this.c.hashCode() ^ new Long(System.currentTimeMillis()).hashCode()) % 100000000;
                if (hashCode < 0) {
                    hashCode = -hashCode;
                }
                if (hashCode != 0) {
                    if (z2) {
                        Code2 = ar.c.I(hashCode, 16);
                    } else {
                        Code2 = ar.c.Code(hashCode, 16);
                    }
                    int Code3 = ar.c.Code(this.X, Code2);
                    if (Code3 == 0) {
                        return hashCode;
                    }
                    if (Code3 == 2) {
                        return 0;
                    }
                    if (z2) {
                        ar.c.I();
                    } else {
                        ar.c.Code();
                    }
                }
            }
        }
        return 0;
    }

    static boolean Code(boolean z2, int i2, int i3) {
        if (!ar.Code.m()) {
            return false;
        }
        String I2 = z2 ? ar.c.I(i2, i3) : ar.c.Code(i2, i3);
        if (!ar.c.B(I2)) {
            return true;
        }
        return ar.c.Z(I2);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    public final synchronized bd J(int i2, int i3, int i4) {
        String str;
        String str2;
        bd bdVar;
        int i5;
        int i6;
        if (this.S == 0) {
            bdVar = new bd(this, i2, i3, (String) null, (String) null, (String) null, 0);
        } else {
            String str3 = null;
            String str4 = null;
            String str5 = null;
            this.al = this.S;
            int w2 = w(i4);
            int[] iArr = ar.Z.I;
            an anVar = ar.Z;
            int i7 = 0;
            int i8 = 0;
            while (this.al <= this.T) {
                int i9 = this.al;
                int D2 = D();
                int D3 = D();
                while (true) {
                    if (D3 > 0) {
                        E();
                        this.ag = I(iArr, 0, w2, this.ag);
                        if (this.ag >= 0) {
                            if (db.Code(i2, i3, 1, 1, this.af, this.ag, this.ah, this.ai)) {
                                this.al += (D3 - 1) * 10;
                                int i10 = this.al;
                                switch (D2) {
                                    case 73:
                                        if (i8 == 0) {
                                            i5 = i7;
                                            i6 = i9;
                                            break;
                                        }
                                    case 76:
                                        if (str3 == null) {
                                            str3 = K();
                                            i5 = i7;
                                            i6 = i8;
                                            break;
                                        }
                                    case 78:
                                        if (str3 == null) {
                                            this.al += 7;
                                            str3 = this.c + "#" + H();
                                            i5 = i7;
                                            i6 = i8;
                                            break;
                                        }
                                    case 83:
                                        if (i7 == 0) {
                                            i5 = i9;
                                            i6 = i8;
                                            break;
                                        }
                                    case 105:
                                        if (str4 == null) {
                                            str4 = K();
                                        }
                                        String str6 = str5;
                                        for (int D4 = D(); D4 > 0 && str6 == null; D4--) {
                                            switch (D()) {
                                                case 116:
                                                    str6 = H();
                                                    break;
                                                default:
                                                    this.al = A() + this.al;
                                                    break;
                                            }
                                        }
                                        i6 = i8;
                                        str5 = str6;
                                        i5 = i7;
                                        break;
                                    default:
                                        i5 = i7;
                                        i6 = i8;
                                        break;
                                }
                                this.al = i10;
                            }
                        }
                        D3--;
                    } else {
                        i5 = i7;
                        i6 = i8;
                    }
                }
                this.al = A() + this.al;
                R();
                i7 = i5;
                i8 = i6;
            }
            if (i8 == 0 && i7 == 0) {
                str = str4;
                str2 = str3;
            } else {
                str2 = null;
                str = null;
            }
            bdVar = new bd(this, i2, i3, str2, str, str5, i8);
        }
        return bdVar;
    }

    /* access modifiers changed from: package-private */
    public final void Code(String str, String str2, String str3) {
        this.Code.a();
        ar.Z.c(db.f());
        ar.Z.b(ar.Z.Code(str));
        ar.Z.b(ar.Z.Code(str2));
        ar.Z.b(ar.Z.Code(str3));
        ar.I.I(this.Code.C(), 16);
    }

    /* access modifiers changed from: package-private */
    public final int q(int i2) {
        int i3;
        if (!db.c || i2 <= 0 || this.X == null) {
            i3 = 0;
        } else {
            i3 = this.X.length + 0;
            if (this.M != null) {
                i3 += this.M.length * 4;
            }
            i2 = Math.max(1, i2 - i3);
        }
        if (this.Z != null) {
            this.aq.Code(i2, this.Z.b);
            return i3 + this.aq.b + this.aq.C;
        }
        this.aq.Code(i2, 0);
        return i3 + this.aq.b;
    }

    /* access modifiers changed from: package-private */
    public final int m() {
        int i2 = 0;
        if (db.c && this.X != null) {
            i2 = this.X.length + 0;
            if (this.M != null) {
                i2 += this.M.length * 4;
            }
        }
        if (this.Z != null) {
            return i2 + this.aq.b + this.aq.C;
        }
        return i2 + this.aq.b;
    }

    private static boolean Code(int i2, byte[] bArr, int i3) {
        switch (i2) {
            case 0:
                if (i3 != 0) {
                    try {
                        byte b2 = bArr[0] & 255;
                        int i4 = 0;
                        int i5 = 1;
                        while (true) {
                            if (i4 < b2) {
                                int I2 = I(bArr, i5 + 0, i3 - i5);
                                if (I2 >= 0) {
                                    int i6 = i5 + I2;
                                    int I3 = I(bArr, i6 + 0, i3 - i6);
                                    if (I3 > 2) {
                                        int i7 = i6 + I3;
                                        int Code2 = Code(bArr, i7 + 0, i3 - i7);
                                        if (Code2 >= 0) {
                                            int i8 = i7 + Code2;
                                            int Code3 = Code(bArr, i8 + 0, i3 - i8);
                                            if (Code3 >= 0) {
                                                i5 = i8 + Code3;
                                                i4++;
                                            }
                                        }
                                    }
                                }
                            } else if (i5 == i3) {
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        return false;
                    }
                }
                return false;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                return Code(bArr, i3, false);
            case 3:
            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
            case ConnectionResult.INVALID_ACCOUNT /*5*/:
                return false;
            case 18:
                return Code(bArr, i3, true);
            case 30:
                return i3 > 0;
            case 31:
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (i9 < 5) {
                        int I4 = I(bArr, i10, i3 - i10);
                        if (I4 >= 0) {
                            i10 += I4;
                            i9++;
                        }
                    } else if (i10 == i3) {
                        return true;
                    }
                }
                return false;
            case 37:
                return i3 > 0;
            default:
                return false;
        }
    }

    private static boolean Code(byte[] bArr, int i2, boolean z2) {
        if (i2 == 0) {
            return false;
        }
        byte b2 = bArr[0] & 255;
        int i3 = 1;
        for (int i4 = 0; i4 < b2; i4++) {
            int I2 = I(bArr, i3 + 0, i2 - i3);
            if (I2 < 0) {
                return false;
            }
            int i5 = i3 + I2;
            int I3 = I(bArr, i5 + 0, i2 - i5);
            if (I3 <= 2) {
                return false;
            }
            int i6 = I3 + i5;
            if (i6 == i2) {
                return false;
            }
            i3 = i6 + 1;
            if (bArr[i6 + 0] != 0) {
                int Code2 = Code(bArr, i3 + 0, i2 - i3);
                if (Code2 < 0) {
                    return false;
                }
                i3 += Code2;
            }
            if (z2) {
                int I4 = I(bArr, i3 + 0, i2 - i3);
                if (I4 < 0) {
                    return false;
                }
                i3 += I4;
            }
        }
        return i3 == i2;
    }

    private static int Code(byte[] bArr, int i2, int i3) {
        if (i3 < 2) {
            return -1;
        }
        int Z2 = ap.Z(bArr, i2);
        if (Z2 + 2 > i3 || !db.I(bArr, i2 + 2, Z2)) {
            return -1;
        }
        return Z2 + 2;
    }

    private static int I(byte[] bArr, int i2, int i3) {
        if (i3 < 2) {
            return -1;
        }
        int Z2 = ap.Z(bArr, i2);
        if (Z2 + 2 > i3 || !ap.I(bArr, i2 + 2, Z2)) {
            return -1;
        }
        return Z2 + 2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int n() {
        int i2 = 0;
        synchronized (this) {
            if (this.V != null) {
                ar.Z.o(this.V.length);
                int[] iArr = this.V;
                int[] iArr2 = ar.Z.I;
                an anVar = ar.Z;
                System.arraycopy(iArr, 0, iArr2, 0, this.V.length);
                i2 = ar.Z.o();
            }
        }
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized int o() {
        ar.Z.o(this.N * 5);
        int[] iArr = this.M;
        int[] iArr2 = ar.Z.I;
        an anVar = ar.Z;
        System.arraycopy(iArr, 0, iArr2, 0, this.N * 5);
        return ar.Z.o();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void B(int i2, int i3) {
        ar.Z.Code(i3, 0, 5, false);
        int[] iArr = ar.Z.I;
        an anVar = ar.Z;
        System.arraycopy(this.M, i2 * 5, iArr, 0, 5);
        ar.Z.p();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(cx cxVar, int i2, int i3) {
        int C2 = cxVar.C();
        int w2 = w(i3);
        int[] iArr = ar.Z.I;
        an anVar = ar.Z;
        int I2 = I(iArr, 0, w2, C2);
        ar.Z.Code(i2, 0, 3, false);
        int[] iArr2 = ar.Z.I;
        an anVar2 = ar.Z;
        iArr2[0] = cxVar.B();
        int[] iArr3 = ar.Z.I;
        an anVar3 = ar.Z;
        iArr3[1] = I2;
        int[] iArr4 = ar.Z.I;
        an anVar4 = ar.Z;
        iArr4[2] = cxVar.b();
        ar.Z.p();
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean C(int i2, int i3) {
        int i4;
        int i5;
        boolean z2 = false;
        synchronized (this) {
            if (P()) {
                int x2 = x(i3);
                int[] iArr = ar.Z.I;
                an anVar = ar.Z;
                int I2 = I(iArr, 2, x2, this.D);
                int I3 = I(iArr, 2, x2, this.D + this.F);
                if (I2 == I3) {
                    this.E = 0;
                } else {
                    if (I2 < 0) {
                        i4 = Math.max(I3 - this.F, 0);
                        i5 = I3;
                    } else if (I3 < 0) {
                        int i6 = I2;
                        i5 = Math.min(this.F + I2, iArr[0]);
                        i4 = i6;
                    } else {
                        i4 = I2;
                        i5 = I3;
                    }
                    ar.Z.Code(i2, 0, 4, false);
                    int[] iArr2 = ar.Z.I;
                    an anVar2 = ar.Z;
                    iArr2[0] = this.A;
                    int[] iArr3 = ar.Z.I;
                    an anVar3 = ar.Z;
                    iArr3[1] = i4;
                    int[] iArr4 = ar.Z.I;
                    an anVar4 = ar.Z;
                    iArr4[2] = this.E;
                    int[] iArr5 = ar.Z.I;
                    an anVar5 = ar.Z;
                    iArr5[3] = i5 - i4;
                    ar.Z.p();
                    this.E = 0;
                    z2 = true;
                }
            }
        }
        return z2;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0055  */
    public final synchronized int a(int i2, int i3) {
        int o2;
        if (this.V == null) {
            o2 = 0;
        } else {
            int i4 = this.V[(i2 * 5) + 1];
            int i5 = i4 + this.V[(i2 * 5) + 2];
            int c2 = c(i4, this.N);
            int i6 = c2;
            while (true) {
                int i7 = this.M[(i6 * 5) + 0];
                int i8 = this.M[(i6 * 5) + 1] + i7;
                if (i7 >= i4 && i8 <= i5) {
                    i6++;
                } else if (i3 != 0) {
                    ar.Z.o(i6 - c2);
                } else {
                    ar.Z.p(i6 - c2);
                }
            }
            if (i3 != 0) {
            }
            for (int i9 = c2; i9 < i6; i9++) {
                int[] iArr = ar.Z.I;
                an anVar = ar.Z;
                iArr[(i9 - c2) + 0] = i9;
            }
            o2 = ar.Z.o();
        }
        return o2;
    }

    public final void p() {
        this.Code.a();
        ar.I.I(this.Code.C(), 18);
    }
}
