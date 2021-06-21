package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;

/* renamed from: bj  reason: default package */
/* compiled from: Source */
final class bj implements Runnable {
    private static Hashtable B = new Hashtable();
    private ct C;
    private String Code;
    private String I;
    private String J;
    private int Z;
    private bc a;
    private int b = 0;
    private int c = -1;
    private int d = 0;
    private boolean e = false;
    private boolean f = false;
    private boolean g;
    private boolean h;
    private boolean i;
    private Thread[] j = new Thread[2];
    private String k;

    bj(String str, String str2, int i2, String str3, boolean z) {
        boolean z2;
        boolean z3 = true;
        this.Code = str;
        this.I = str2;
        B.put(new Integer(i2), this);
        this.Z = i2;
        this.J = str3;
        if (!z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.e = z2;
        this.g = db.q ? false : z3;
    }

    public static bj Code(int i2) {
        return (bj) B.get(new Integer(i2));
    }

    public final void Code() {
        this.h = false;
        synchronized (this.j) {
            if (this.j[0] == null) {
                this.j[0] = new Thread(this);
                this.j[0].start();
            } else if (this.j[1] == null) {
                this.j[1] = new Thread(this);
                this.j[1].start();
            }
        }
    }

    private void b() {
        synchronized (this.j) {
            this.j[0] = this.j[1];
            this.j[1] = null;
        }
    }

    private static boolean I(int i2) {
        if (i2 < 0 && (65535 & i2) == 0) {
            return true;
        }
        return false;
    }

    private int Code(DataInputStream dataInputStream) {
        int i2 = 4;
        byte[] bArr = new byte[4];
        while (dataInputStream != null && !this.i && i2 > 0) {
            i2 -= dataInputStream.read(bArr, 4 - i2, i2);
        }
        return ap.J(bArr, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:105:?, code lost:
        f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:?, code lost:
        d();
        defpackage.db.Code(r8);
        defpackage.db.Code((java.io.InputStream) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x022b, code lost:
        if (r9 == null) goto L_0x0230;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x022d, code lost:
        r9.C();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0230, code lost:
        h();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0237, code lost:
        if (r17.f != false) goto L_0x023c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x0239, code lost:
        B();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x023c, code lost:
        b();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x0243, code lost:
        if (r12 != false) goto L_0x0255;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x024a, code lost:
        if (r17.c == -1) goto L_0x02a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0250, code lost:
        if (r1 == r17.c) goto L_0x02a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x0252, code lost:
        f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x0255, code lost:
        r13 = new byte[defpackage.db.D];
        d();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x0260, code lost:
        if (r17.i != false) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x0262, code lost:
        if (r1 == 0) goto L_0x02d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x0265, code lost:
        if (r1 != -1) goto L_0x02ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x0267, code lost:
        r2 = 512;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x0269, code lost:
        r5 = r7.read(r13, 0, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x026f, code lost:
        if (r5 != -1) goto L_0x02b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x0276, code lost:
        if (r17.c != -1) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x0278, code lost:
        r17.c = r17.d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x0280, code lost:
        r8.flush();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:?, code lost:
        d();
        defpackage.db.Code(r8);
        defpackage.db.Code((java.io.InputStream) r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x028c, code lost:
        if (r9 == null) goto L_0x0291;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x028e, code lost:
        r9.C();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0291, code lost:
        h();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0298, code lost:
        if (r17.f != false) goto L_0x029d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x029a, code lost:
        B();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x029d, code lost:
        b();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:?, code lost:
        r17.c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x02a7, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x02a8, code lost:
        r2 = r7;
        r3 = r8;
        r4 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x02ad, code lost:
        r2 = java.lang.Math.min(r1, 512);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x02b4, code lost:
        r8.write(r13, 0, r5);
        r17.d += r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x02c1, code lost:
        if (r1 <= 0) goto L_0x0360;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x02c3, code lost:
        r11 = r1 - r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x02c5, code lost:
        defpackage.db.Code(0, (long) r5, (long) r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x02cc, code lost:
        if (r12 != false) goto L_0x02d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x02d6, code lost:
        if (r17.d == r17.c) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x02d8, code lost:
        r1 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x02d9, code lost:
        if (r1 != 0) goto L_0x035d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x02db, code lost:
        if (r10 != false) goto L_0x02df;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x02dd, code lost:
        if (r12 != false) goto L_0x0308;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x02df, code lost:
        r17.c = r17.d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x02e8, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x02e9, code lost:
        r2 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:?, code lost:
        r1 = Code(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x0312, code lost:
        if (I(r1) == false) goto L_0x031e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x0317, code lost:
        if ((536870912 & r1) == 0) goto L_0x031e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x031c, code lost:
        if ((16777216 & r1) == 0) goto L_0x0323;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x031e, code lost:
        f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:183:0x0326, code lost:
        if ((r1 & 268435456) == 0) goto L_0x0336;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:184:0x0328, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:185:0x0329, code lost:
        r2 = Code(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:186:0x032f, code lost:
        java.lang.Thread.yield();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:0x0332, code lost:
        r10 = r1;
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:188:0x0336, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:206:0x035d, code lost:
        r2 = r1;
        r1 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:207:0x0360, code lost:
        r11 = r1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02f5  */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x0301  */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x0338 A[SYNTHETIC, Splitter:B:189:0x0338] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0163 A[Catch:{ all -> 0x033d }] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:69:0x0171=Splitter:B:69:0x0171, B:164:0x02ea=Splitter:B:164:0x02ea} */
    public final synchronized void run() {
        OutputStream outputStream;
        bm bmVar;
        boolean z;
        DataInputStream dataInputStream;
        boolean z2;
        boolean z3;
        int i2;
        boolean z4;
        bm bmVar2 = null;
        OutputStream outputStream2 = null;
        DataInputStream dataInputStream2 = null;
        try {
            if (this.h) {
                d();
                db.Code((OutputStream) null);
                db.Code((InputStream) null);
                h();
                if (!this.f) {
                    B();
                }
                b();
            } else {
                this.i = false;
                this.f = true;
                bmVar = ar.c.Code(this.J, !this.e, 3);
                try {
                    this.e = bmVar.J();
                    this.J = bmVar.I();
                    int i3 = 0;
                    this.d = 0;
                    if (this.b == 4) {
                        i3 = (int) bmVar.Z();
                        this.d = i3;
                        d();
                    }
                    int i4 = i3;
                    outputStream = bmVar.Code((long) i4);
                    try {
                        this.b = 4;
                        d();
                        int i5 = -1;
                        boolean z5 = false;
                        boolean z6 = true;
                        while (true) {
                            if (this.i) {
                                z = z5;
                                dataInputStream = dataInputStream2;
                                break;
                            }
                            h();
                            if (this.g) {
                                this.a = ar.Code.Code(db.Code(this.Code), (String) null, "GET");
                                if (i4 > 0) {
                                    this.a.Code("Range", "bytes=" + i4 + "-");
                                    this.a.Code("If-Range", this.k);
                                } else {
                                    this.k = this.a.Code("Last-Modified");
                                }
                                if (this.a.J() != (i4 == 0 ? 200 : 206)) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                dataInputStream2 = this.a.Z();
                                if (this.a.B() >= 0) {
                                    i5 = ((int) this.a.B()) + i4;
                                }
                                boolean z7 = z4;
                                i2 = i5;
                                z2 = z5;
                                z3 = z7;
                            } else {
                                Object[] objArr = new Object[124];
                                int[] iArr = new int[124];
                                iArr[29] = 2;
                                iArr[37] = i4;
                                iArr[43] = iArr[43] | 16777216;
                                objArr[53] = this.Code;
                                db.B();
                                this.C = cs.Code(objArr, iArr, cz.Code(this.I, (String) null), true);
                                DataInputStream dataInputStream3 = new DataInputStream(this.C);
                                try {
                                    int Code2 = Code(dataInputStream3);
                                    if (Code2 <= 0) {
                                        if (I(Code2)) {
                                            if ((16777216 & Code2) != 0 || (1073741824 & Code2) == 0) {
                                                z2 = z5;
                                                z3 = true;
                                                int i6 = Code2;
                                                dataInputStream2 = dataInputStream3;
                                                i2 = i6;
                                            } else {
                                                z6 = (268435456 & Code2) != 0;
                                                dataInputStream2 = dataInputStream3;
                                                i2 = Code(dataInputStream3);
                                                z2 = true;
                                                z3 = false;
                                            }
                                        } else if (Code2 < 0) {
                                            z2 = z5;
                                            z3 = true;
                                            int i7 = Code2;
                                            dataInputStream2 = dataInputStream3;
                                            i2 = i7;
                                        }
                                    }
                                    z2 = z5;
                                    z3 = false;
                                    int i8 = Code2;
                                    dataInputStream2 = dataInputStream3;
                                    i2 = i8;
                                } catch (Throwable th) {
                                    th = th;
                                    dataInputStream2 = dataInputStream3;
                                    d();
                                    db.Code(outputStream);
                                    db.Code((InputStream) dataInputStream2);
                                    if (bmVar != null) {
                                    }
                                    h();
                                    if (!this.f) {
                                    }
                                    b();
                                    throw th;
                                }
                            }
                            if (z3) {
                                if (this.Code.equals(this.I)) {
                                    break;
                                }
                                this.Code = this.I;
                                z5 = z2;
                                i5 = i2;
                            } else {
                                z = z2;
                                dataInputStream = dataInputStream2;
                                i5 = i2;
                                break;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        d();
                        db.Code(outputStream);
                        db.Code((InputStream) dataInputStream2);
                        if (bmVar != null) {
                        }
                        h();
                        if (!this.f) {
                        }
                        b();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    outputStream = null;
                    d();
                    db.Code(outputStream);
                    db.Code((InputStream) dataInputStream2);
                    if (bmVar != null) {
                    }
                    h();
                    if (!this.f) {
                    }
                    b();
                    throw th;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            bmVar = null;
            d();
            db.Code(outputStream);
            db.Code((InputStream) dataInputStream2);
            if (bmVar != null) {
                bmVar.C();
            }
            h();
            if (!this.f) {
                B();
            }
            b();
            throw th;
        }
    }

    private void c() {
        db.Code((Runnable) new Runnable() {
            public final void run() {
                bj.this.d();
            }
        });
    }

    /* access modifiers changed from: private */
    public void d() {
        switch (this.b) {
            case 1:
                Z(1);
                return;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
            case 3:
                Z(3);
                return;
            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                if (this.d == this.c) {
                    Z(2);
                    return;
                } else {
                    Z(0);
                    return;
                }
            default:
                return;
        }
    }

    private void e() {
        this.b = 1;
        g();
    }

    public final void I() {
        e();
        c();
    }

    public final void Z() {
        this.b = 4;
        Code();
        c();
    }

    public final void J() {
        this.d = 0;
        this.b = 2;
        g();
        c();
    }

    private void f() {
        this.d = 0;
        this.b = 3;
        g();
    }

    private void g() {
        this.h = true;
        this.i = true;
        h();
    }

    private void h() {
        if (this.C != null) {
            db.Code((InputStream) this.C);
            this.C = null;
        }
        if (this.a != null) {
            try {
                this.a.Code();
            } catch (Throwable th) {
            }
            this.a = null;
        }
    }

    public final void B() {
        this.f = false;
        if (this.e && ar.c.Z(this.J)) {
            this.e = false;
        }
    }

    private void Z(int i2) {
        try {
            ar.I.h();
            ar.Z.c(this.Z);
            ar.Z.c(i2);
            ar.I.Z(25);
            db.J();
        } catch (Throwable th) {
        }
    }

    public final boolean C() {
        return this.e;
    }

    public final int a() {
        return this.d;
    }
}
