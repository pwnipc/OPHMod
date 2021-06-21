package defpackage;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.TimeZone;
import java.util.Vector;

/* renamed from: cc  reason: default package */
/* compiled from: Source */
public class cc implements Runnable {
    private static int h;
    private static int i;
    private static cy u = new cy();
    private ct A;
    String B = null;
    int C = -1;
    final ar Code;
    private int D;
    private bi E;
    private int F;
    Hashtable I = new Hashtable();
    cr J;
    ba Z;
    Hashtable a;
    String b;
    int c;
    public int d;
    private bg e;
    private Vector f = new Vector();
    private boolean g;
    private int j;
    private ct k;
    private boolean l;
    private boolean m;
    private boolean n;
    private final Object[] o;
    private final int[] p;
    private final int q;
    private final int r;
    private boolean s = true;
    private bg t;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    private native void Code(boolean z2, String str);

    /* access modifiers changed from: package-private */
    public native void I();

    /* access modifiers changed from: package-private */
    public native void I(bi biVar);

    /* access modifiers changed from: package-private */
    public native void J();

    /* access modifiers changed from: package-private */
    public native void Z();

    cc(ar arVar, Object[] objArr, int[] iArr, bg bgVar, Hashtable hashtable, boolean z2, bg bgVar2) {
        this.Code = arVar;
        this.o = objArr;
        this.p = iArr;
        if (hashtable != null) {
            this.I = hashtable;
        }
        this.g = z2;
        this.t = bgVar2;
        this.q = iArr[19];
        this.r = iArr[14];
        Code(bgVar);
    }

    private void Code(bg bgVar) {
        this.e = new bg(this, bgVar, true, this.g);
        this.Z = new ba(this.e);
        this.J = new cr(this.e);
    }

    public static void Code() {
        u.Code(1000);
    }

    public final boolean B() {
        return this.k == null || this.k.o();
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        return ar.Z.B(ar.Z.B(this.c, 1), 0);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        ar.I.h();
        synchronized (this) {
            if (this.c == 0) {
                ar.I.i();
                throw new RuntimeException();
            }
        }
    }

    public final bg b() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final int c() {
        return this.q;
    }

    /* access modifiers changed from: package-private */
    public int d() {
        return this.r;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void e() {
        if (this.c != 0) {
            m();
            this.c = 0;
            this.e.b();
        }
    }

    /* access modifiers changed from: package-private */
    public final bg f() {
        if (this.e.I()) {
            return this.e;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i2) {
        this.y += i2;
    }

    /* access modifiers changed from: package-private */
    public final void I(int i2) {
        this.z = i2;
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i2) {
        if (this.v != i2) {
            if (i2 == 3 && this.j == 0) {
                this.j = this.k.q();
            }
            this.v = i2;
            Z(i2, 11);
        }
        if (i2 >= 4) {
            db.Code(0, (long) this.d, 0);
            this.d = 0;
        }
        db.J();
    }

    private void Z(int i2, int i3) {
        ar.I.h();
        if (this.c != 0) {
            int C2 = C();
            if (C2 != 0) {
                ar.Z.c(i2);
                ar.I.I(C2, i3);
                return;
            }
            ar.I.i();
            return;
        }
        ar.I.i();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void g() {
        if (this.k != null) {
            ct ctVar = this.k;
            if (ctVar != this.A) {
                this.D = 0;
            }
            this.x += this.k.n() - this.D;
            this.D = this.k.n();
            this.A = ctVar;
        }
        if (this.e != null) {
            ar.Z.C(this.c, 3, this.w);
            ar.Z.C(this.c, 4, this.x);
            ar.Z.C(this.c, 5, this.y);
            ar.Z.C(this.c, 6, this.z);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004f, code lost:
        u.Z();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x007c, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x007d, code lost:
        u.Z();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0082, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x007c A[ExcHandler: all (r0v0 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:26:0x0083] */
    public void run() {
        int readUnsignedByte;
        u.I();
        while (true) {
            if (this.t == null) {
                if (this.o[53].toString().startsWith("file://")) {
                    String substring = this.o[53].toString().substring(7);
                    if (bk.c(substring) == 16) {
                        this.e.Code(substring, (bg) null);
                        break;
                    }
                }
                if (db.W && this.g && ((String) this.o[53]).startsWith("odp:component")) {
                    this.e.Code((String) this.o[53], (bg) null);
                    break;
                }
                try {
                    if (this.k == null) {
                        Z(1);
                    } else {
                        db.Code((InputStream) this.k);
                    }
                    if (!db.V || !db.W || db.L[1] != null || ((this.o[94] != null && ((byte[]) this.o[94]).length > 0) || !this.o[53].equals("odp:blank"))) {
                        db.B();
                    } else if (db.E) {
                        this.s = false;
                    }
                    this.o[1] = db.C("microedition.configuration");
                    this.o[2] = db.C("microedition.profiles");
                    this.o[3] = db.C("microedition.platform");
                    this.o[4] = db.C("microedition.locale");
                    this.o[54] = db.j();
                    this.o[97] = ar.Code.am();
                    this.o[34] = ar.Code.U();
                    this.o[115] = ar.Code.ac();
                    this.o[49] = ay.I();
                    this.o[57] = ay.Z();
                    this.o[92] = db.g();
                    this.o[41] = db.i;
                    this.p[74] = 109;
                    this.p[75] = "android".charAt(0);
                    boolean z2 = ar.Code.m();
                    int[] iArr = this.p;
                    iArr[24] = (ar.Code.m() ? 32768 : 0) | 16777216 | (z2 ? 8 : 0) | (db.h ? 1 : 2) | 4 | 131072 | 134217728 | 4096 | 67108864 | 8388608 | 1048576 | 262144 | iArr[24];
                    int[] iArr2 = this.p;
                    iArr2[43] = (ar.Code.u() == 0 ? 67108864 : 0) | 2097152 | (this.e.I == null ? 4096 : 0) | 131072 | (db.q ? 16777216 : 0) | 65536 | (db.p ? 2048 : 0) | (db.o ? 512 : 0) | 16432 | 0 | 32768 | 1048576 | (db.w ? 8388608 : 0) | iArr2[43];
                    this.p[25] = ar.Code.C();
                    this.p[26] = ar.Code.a();
                    this.p[47] = ar.Code.b();
                    this.p[48] = ar.Code.c();
                    this.o[22] = String.valueOf(db.B - db.C);
                    this.p[58] = (int) (System.currentTimeMillis() / 1000);
                    this.o[59] = Calendar.getInstance(TimeZone.getDefault()).getTimeZone().getID();
                    this.p[61] = db.K ? 1 : 0;
                    this.p[68] = i;
                    this.p[69] = h;
                    this.p[82] = db.s;
                    if (db.L[1] != null) {
                        String[] strArr = db.L;
                        this.o[91] = db.L[3];
                    }
                    this.k = cs.Code(this.o, this.p, cz.Code((String) this.o[53], (String) this.o[38]), this.s);
                    if (this.l) {
                        Z(7);
                        db.Code((InputStream) this.k);
                        break;
                    }
                    bg bgVar = this.e;
                    int i2 = 1;
                    while (true) {
                        DataInputStream dataInputStream = new DataInputStream(this.k);
                        int n2 = this.k.n();
                        int i3 = 0;
                        while (true) {
                            readUnsignedByte = dataInputStream.readUnsignedByte();
                            if (readUnsignedByte != 255) {
                                break;
                            }
                            i3 = dataInputStream.readUnsignedByte();
                            if (i2 == 1) {
                                Z(2);
                            }
                            this.w = i3;
                        }
                        if (i2 > 1) {
                            bgVar = new bg(this, this.e, false, this.g);
                        }
                        bgVar.Code(this.k, dataInputStream, n2, readUnsignedByte);
                        if (i2 > 1) {
                            ar.I.h();
                            this.e.Z = null;
                            int B2 = ar.Z.B(this.c, 2);
                            if (!(this.B == null || B2 == 0)) {
                                bgVar.Code(this.B, (int[]) null, B2);
                            }
                            ba baVar = new ba(bgVar);
                            if (this.Z.J() && bgVar.Code(baVar, B2, this.Z)) {
                                baVar.Code(true);
                            }
                            this.Z = baVar;
                            cr crVar = new cr(bgVar);
                            if (this.J.Z() && bgVar.Code(crVar, B2, this.J)) {
                                crVar.Code(true);
                            }
                            this.J = crVar;
                            this.e = bgVar;
                            this.e.Code(false);
                            J();
                        } else {
                            Thread.currentThread().setPriority(1);
                        }
                        if (i3 == 100) {
                            Z(4);
                        }
                        i2++;
                    }
                } catch (EOFException e2) {
                    Z(5);
                } catch (OutOfMemoryError e3) {
                    if (this.v >= 5 || ((this.e.I == null || this.p[62] == 0) && (this.p[24] & 131072) == 0)) {
                        if (this.n) {
                            Z(0, 19);
                            Z(6);
                            break;
                        }
                        this.n = true;
                        this.Code.h();
                        this.Code.Code(true);
                        ar.Z.c(3);
                        this.Code.Z(78);
                    } else {
                        Code((bg) null);
                        this.p[62] = 0;
                        int[] iArr3 = this.p;
                        iArr3[43] = iArr3[43] | 4096;
                    }
                } catch (Throwable th) {
                }
            } else {
                this.e.Code("", this.t);
                this.t = null;
                break;
            }
        }
        u.Z();
    }

    /* access modifiers changed from: package-private */
    public final boolean h() {
        return this.p[56] == 1;
    }

    /* access modifiers changed from: package-private */
    public final String i() {
        return (String) this.o[42];
    }

    /* access modifiers changed from: package-private */
    public final String j() {
        return (String) this.o[53];
    }

    /* access modifiers changed from: package-private */
    public final int k() {
        return this.p[80];
    }

    /* access modifiers changed from: package-private */
    public final void l() {
        db.Code((InputStream) this.k);
        this.m = true;
    }

    /* access modifiers changed from: package-private */
    public final void m() {
        this.l = true;
        db.Code((InputStream) this.k);
        db.Code((Runnable) new Runnable() {
            public final void run() {
                try {
                    db.J();
                } catch (Throwable th) {
                }
            }
        });
    }

    static synchronized void J(int i2) {
        synchronized (cc.class) {
            if (h != 0) {
                h = (int) (((3 * ((long) h)) + (7 * ((long) i2))) / 10);
            } else {
                h = i2;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void B(int i2) {
        i = this.j - i2;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    public final synchronized void Code(String str, int i2, String str2) {
        switch (i2) {
            case 83:
            case 85:
            case 97:
            case 114:
            case 120:
                break;
            case 99:
                if (this.I.get(str2) == null) {
                    this.I.put(str2, str);
                } else {
                    this.I.remove(str2);
                }
            case 112:
                if (!this.I.containsKey(str2)) {
                    this.f.addElement(str2);
                    break;
                }
                break;
            case 115:
                this.I.put(str2, str.replace(' ', 0));
                Code(str2);
                break;
        }
        this.I.put(str2, str);
        Code(str2);
    }

    /* access modifiers changed from: package-private */
    public final void n() {
        Enumeration elements = this.f.elements();
        while (elements.hasMoreElements()) {
            this.I.remove(elements.nextElement());
        }
        this.f.removeAllElements();
    }

    /* access modifiers changed from: package-private */
    public final Hashtable o() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public String Code(char c2, String str, int i2) {
        switch (c2) {
            case 'S':
            case 'U':
            case 'a':
            case 'c':
            case 'p':
            case 'r':
            case 's':
            case 'x':
                String str2 = (String) this.I.get(str);
                if (str2 == null) {
                    return null;
                }
                String[] split = str2.split("\u0000");
                if (i2 < split.length) {
                    return split[i2];
                }
                return null;
            case 'f':
                if (this.a != null) {
                    Object[] objArr = (Object[]) this.a.get(str);
                    if (objArr == null || objArr[0] == null) {
                        return null;
                    }
                    return (String) objArr[0];
                }
                break;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public boolean Code(char c2, String str) {
        switch (c2) {
            case 'S':
            case 'U':
            case 'a':
            case 'c':
            case 'p':
            case 'r':
            case 's':
            case 'x':
                return this.I.containsKey(str);
            case 'f':
                return this.a.containsKey(str);
            default:
                return false;
        }
    }

    public final void Code(String str) {
        Code(!this.I.isEmpty() || (this.a != null && !this.a.isEmpty()), str);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(boolean z2, int i2, int i3, int i4) {
        this.J.Code(z2);
        if (z2) {
            this.Z.Code(i4, i2, i3);
            this.J.Code(this.Z.Z());
            this.J.I(this.Z.Z());
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2, int i3, int i4) {
        this.J.I(i4, i2, i3);
        this.J.J(i4, i2, i3);
        this.Z.Code(this.J.I());
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2, int i3) {
        this.e.Code(this.J.Code(), i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void I(int i2, int i3) {
        this.e.Code(this.J.I(), i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void I(int i2, int i3, int i4) {
        this.J.Code(i4, i2, i3);
        this.Z.Code(this.J.Code());
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z(int i2, int i3, int i4) {
        this.J.Z(i4, i2, i3);
        this.Z.Code(this.J.I());
    }

    /* access modifiers changed from: package-private */
    public final synchronized void p() {
        this.J.J();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void q() {
        this.J.B();
    }

    /* access modifiers changed from: package-private */
    public final synchronized String r() {
        return this.J.C();
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean s() {
        return this.J.a();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2, boolean z2) {
        this.Z.Code(i2);
        if (this.J.Z()) {
            if (!z2) {
                this.J.Code(this.Z.Z());
            }
            this.J.I(this.Z.Z());
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(boolean z2) {
        this.Z.Code(z2);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int[] iArr) {
        cx Z2 = this.Z.Z();
        iArr[0] = Z2.B();
        iArr[1] = Z2.C();
        iArr[2] = Z2.a();
        iArr[3] = Z2.b();
    }

    private boolean u() {
        return this.J.Z() && !this.J.Code().Code() && !this.J.I().Code();
    }

    private int v() {
        return this.J.Code().c();
    }

    private int w() {
        return this.J.Code().d();
    }

    private int x() {
        return this.J.I().c();
    }

    private int y() {
        return this.J.I().d();
    }

    private boolean z() {
        return this.Z.J() && !this.Z.Z().Code();
    }

    private int A() {
        return this.Z.Z().c();
    }

    private int D() {
        return this.Z.Z().d();
    }

    /* access modifiers changed from: package-private */
    public bi t() {
        return this.E;
    }

    /* access modifiers changed from: package-private */
    public final void Code(bi biVar, int i2) {
        biVar.Code(i2, this);
    }

    /* access modifiers changed from: package-private */
    public final void Code(bi biVar) {
        if (this.E == biVar) {
            biVar.I(this.F);
        }
    }

    /* access modifiers changed from: package-private */
    public final void I(bi biVar, int i2) {
        if (!(biVar == null || this.E == null || biVar == this.E)) {
            Code(this.E);
            I(this.E);
        }
        this.E = biVar;
        this.F = i2;
        if (biVar != null) {
            I(biVar);
        }
    }
}
