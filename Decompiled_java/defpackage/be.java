package defpackage;

/* renamed from: be  reason: default package */
/* compiled from: Source */
final class be {
    static byte[] c = new byte[0];
    static long d;
    static boolean e;
    byte[] B;
    byte[] C = new byte[0];
    final int[] Code;
    long I;
    int[] J;
    int[] Z;
    byte[] a = new byte[8];
    byte[] b = new byte[32];
    private ch f = new ch();
    private int g;

    public be(int[] iArr) {
        this.Code = iArr;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code() {
        this.J = null;
        this.Z = null;
        this.B = null;
        System.arraycopy(this.b, 0, this.a, 0, 8);
    }

    /* access modifiers changed from: package-private */
    public final synchronized int Code(cs csVar) {
        int i;
        if (this.B == null) {
            i = -1;
        } else {
            byte[] bArr = csVar.I;
            bArr[0] = (byte) (this.g >> 16);
            bArr[1] = (byte) (this.g & 255);
            this.f.I(bArr, 2);
            this.f.Z(bArr, 0);
            csVar.J = new bs(bArr, 0, 32);
            csVar.J.Code(this.a, 0, 8);
            this.f.Z(bArr, 0);
            csVar.B = new bs(bArr, 0, 32);
            csVar.B.Code(this.a, 0, 8);
            this.f.Z(bArr, 0);
            csVar.C = new cl(bArr);
            csVar.C.Code(bArr, 0, 1024);
            this.f.Z(bArr, 0);
            csVar.a = new cl(bArr);
            csVar.a.Code(bArr, 0, 1024);
            i = this.g;
            this.g = i + 1;
        }
        return i;
    }

    /* access modifiers changed from: package-private */
    public final boolean I() {
        if (!db.E) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (!Code(currentTimeMillis) || !Code(currentTimeMillis - d)) {
            return false;
        }
        return true;
    }

    private boolean Code(long j) {
        return this.I < j || this.I - 1814400000 > j;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z() {
        synchronized (this) {
            if (I() || this.J == null) {
                Code();
            } else {
                if (this.Z != null) {
                    cq cqVar = new cq();
                    byte[] Code2 = db.Code(at.Code(this.Z, this.Code));
                    if (Code2[0] == 0 && Code2[1] == 1 && Code2[(Code2.length - 32) - 1] == 0) {
                        int i = 2;
                        while (true) {
                            if (i >= (Code2.length - 32) - 2) {
                                cqVar.Code((int) (this.I >> 32));
                                cqVar.Code((int) this.I);
                                cqVar.Code(db.Code(this.J), 0, this.J.length * 4);
                                cqVar.Code(Code2);
                                for (int i2 = 0; i2 < 32; i2++) {
                                    if (Code2[i2] != Code2[(Code2.length + i2) - 32]) {
                                        Code();
                                        break;
                                    }
                                }
                                this.Z = null;
                                if (db.L[1] != null) {
                                    db.a("md");
                                }
                            } else if (Code2[i] != -1) {
                                Code();
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        Code();
                    }
                }
                if (this.B == null) {
                    ch I2 = db.I(this.b);
                    byte[] bArr = new byte[(this.J.length * 4)];
                    for (int i3 = 2; i3 < bArr.length - 32; i3++) {
                        while (bArr[i3] == 0) {
                            I2.Z(bArr, i3);
                        }
                    }
                    bArr[0] = 0;
                    bArr[1] = 2;
                    bArr[(bArr.length - 32) - 1] = 0;
                    I2.Z(bArr, bArr.length - 32);
                    this.f.Code(bArr, bArr.length - 32);
                    I2.Code(bArr, bArr.length - 32);
                    this.B = db.Code(at.Code(db.Code(bArr, 0, bArr.length), this.J));
                    this.g = 0;
                }
            }
        }
    }
}
