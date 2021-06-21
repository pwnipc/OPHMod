package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.Vector;

/* renamed from: ar  reason: default package */
/* compiled from: Source */
public class ar implements aq, Runnable {
    public static ci Code;
    private static cg E;
    private static byte[] F;
    private static byte[] G;
    private static String H;
    public static ar I;
    private static Hashtable K;
    private static Hashtable L;
    private static int[] M = new int[32];
    private static int[] N = new int[32];
    private static Vector O = new Vector();
    private static co P;
    private static int Q;
    private static int R;
    private static byte[] S;
    private static byte[] T;
    private static byte[] U;
    private static byte[] V;
    private static boolean W;
    private static boolean X;
    private static int Y;
    public static an Z;
    private static boolean aa;
    private static Hashtable ab = new Hashtable();
    private static Hashtable ac = new Hashtable();
    private static int ad = Integer.MAX_VALUE;
    private static boolean az;
    public static int b = 1;
    public static bk c;
    static byte[] d;
    public static boolean e;
    protected static final String[] f = {"hqvga", "qvga", "hvga", "vga", "svga", "qxga"};
    private static int x = -1;
    private boolean A;
    protected cc B;
    public boolean C;
    private boolean D = true;
    protected Vector J = new Vector();
    public int a;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private int ak;
    private int al;
    private int am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private int as;
    private int at;
    private int au;
    private int av;
    private int aw;
    private int ax;
    private int ay;
    protected br g;
    private boolean h = true;
    private boolean i;
    private boolean j;
    private int k = -1;
    private int l;
    private long m;
    private boolean n;
    private boolean o;
    private boolean p;
    private final Vector q = new Vector();
    private int r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private int w;
    private boolean y;
    private boolean z;

    private native void I(cc ccVar);

    private native void L();

    private native void Z(cc ccVar);

    static {
        ab.put("hqvga", new Integer(210));
        ab.put("qvga", new Integer(300));
        ab.put("hvga", new Integer(440));
        ab.put("vga", new Integer(600));
        ab.put("svga", new Integer(900));
        ab.put("qxga", new Integer(Integer.MAX_VALUE));
        ac.put("keypad", f);
        ac.put("touch", new String[]{"qvga", "hvga", "vga", "svga", "qxga"});
        ac.put("apad", new String[]{"hvga", "vga", "svga", "qxga"});
    }

    public ar(ci ciVar) {
        I = this;
        Code = ciVar;
    }

    public static ci e() {
        return Code;
    }

    public void f() {
        int i2;
        int i3 = 0;
        int i4 = 1;
        cb.Code();
        F = b("/v");
        cu.Z();
        Z = new an(this);
        Code.Code();
        db.I();
        if (Code.m()) {
            c = Code.l();
        }
        if ("debug".equals(Code.Code("OM-Campaign"))) {
            cs.b = true;
        }
        if (E().equals("undefined")) {
            cn.Code.Z("resource");
        } else {
            if (cn.Code.Code("resource")) {
                try {
                    String str = new String(cn.Code.Code("resource", 2));
                    String F2 = F();
                    if (!new String(cn.Code.Code("resource", 3)).equals(C(str)) || !B(F2).equals(B(str))) {
                        cn.Code.Z("resource");
                    }
                } catch (IOException e2) {
                }
            }
            W = true;
        }
        if (W) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (!X) {
            i4 = 0;
        }
        int i5 = i2 + i4;
        if (i5 > 0) {
            i3 = 50 / i5;
        }
        Y = i3;
        cz.Code();
        v();
        new Thread(this).start();
    }

    public void run() {
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        boolean z4;
        boolean z5;
        int i4;
        boolean z6;
        int i5;
        int i6;
        Code.Q();
        try {
            cu.Code(0, 20);
            Z.Code(db.B("/a"));
            if (Code("vm_stat")) {
                do {
                } while (db.B("a").skip(2147483647L) > 0);
                an anVar = Z;
                an.w();
            }
            Z.a();
            if (Z.a(58) == 0) {
                i2 = t() + 200;
                z2 = true;
            } else {
                Z.b();
                Z.d();
                i2 = 0;
                z2 = false;
            }
            Code.e();
            int i7 = 0;
            boolean z7 = false;
            boolean z8 = true;
            loop1:
            while (!I()) {
                synchronized (this) {
                    this.h = false;
                    this.j = false;
                    if (this.o && !Code.Z()) {
                        if (z8) {
                            this.h = true;
                            this.j = true;
                            z7 = true;
                        } else {
                            this.o = false;
                            this.h = true;
                        }
                    }
                    notifyAll();
                    if (!z7) {
                        while (true) {
                            if (!this.h || this.j) {
                                if (this.k >= 0 || Code.I()) {
                                    break;
                                } else if (this.o) {
                                    i3 = i7;
                                    z5 = z3;
                                    z4 = true;
                                    break;
                                } else if (this.p) {
                                    this.p = false;
                                    Z.c(160);
                                    Z.c(db.F);
                                    Z.c(0);
                                    this.k = 24;
                                    i3 = i7;
                                    z4 = z7;
                                    z5 = z3;
                                    break;
                                } else {
                                    if (!this.i) {
                                        if (!this.n || (i7 = this.l - t()) > 0) {
                                            if (z3 && (i7 = i2 - t()) <= 0) {
                                                this.k = 58;
                                                i3 = i7;
                                                z4 = z7;
                                                z5 = false;
                                                break;
                                            } else if (z8 || this.y || this.z != this.A) {
                                                i3 = i7;
                                                z5 = z3;
                                                z4 = true;
                                            }
                                        } else {
                                            this.n = false;
                                            this.k = 33;
                                            i3 = i7;
                                            z4 = z7;
                                            z5 = z3;
                                            break;
                                        }
                                    }
                                    if (Z.Code((Object) this)) {
                                        if (Z.u()) {
                                            z8 = true;
                                        }
                                    } else if (this.i || (!this.n && !z3)) {
                                        wait();
                                    } else {
                                        wait((long) i7);
                                    }
                                }
                            } else {
                                wait();
                            }
                        }
                        this.h = true;
                    }
                    i3 = i7;
                    z4 = z7;
                    z5 = z3;
                    this.h = true;
                }
                Z.C();
                if (z4) {
                    if (this.z != this.A) {
                        this.z = this.A;
                        an anVar2 = Z;
                        if (this.A) {
                            i6 = 63;
                        } else {
                            i6 = 64;
                        }
                        anVar2.C(i6);
                    }
                    if (this.y) {
                        if (l().equals("hqvga") && db.X == 0) {
                            db.a();
                        }
                        int J2 = Code.J();
                        int B2 = Code.B();
                        Code.I(J2, B2);
                        Code.Code(J2, B2);
                        Z.c(db.a);
                        Z.C(77);
                        Z.c(J2);
                        Z.c(B2);
                        Z.C(65);
                        if (this.D) {
                            an anVar3 = Z;
                            if (Code.E()) {
                                i5 = 1;
                            } else {
                                i5 = 0;
                            }
                            anVar3.c(i5);
                            Z.C(66);
                        }
                        Z.C(61);
                        this.y = false;
                        db.Code((Object) this);
                    } else {
                        Z.C(61);
                    }
                    if (this.s && !this.C) {
                        this.C = true;
                        Code.W();
                    }
                    z();
                    z4 = false;
                    z3 = z5;
                    i4 = i2;
                    z6 = false;
                } else {
                    z();
                    if (this.k != 58) {
                        Z.C(this.k);
                        z3 = z5;
                        i4 = i2;
                        z6 = true;
                    } else if (Z.a(this.k) == 0) {
                        i4 = t() + 200;
                        z3 = true;
                        z6 = true;
                    } else {
                        Z.b();
                        Z.d();
                        Code.I(Code.J(), Code.B());
                        z3 = z5;
                        i4 = i2;
                        z6 = true;
                    }
                }
                this.k = -1;
                int i8 = i3;
                z8 = z6;
                i2 = i4;
                z7 = z4;
                i7 = i8;
            }
        } catch (Throwable th) {
        }
        this.h = true;
        this.j = false;
        db.Code((Object) this);
        Enumeration elements = O.elements();
        while (elements.hasMoreElements()) {
            ((ce) elements.nextElement()).Code();
        }
        O.removeAllElements();
        cs.I();
        M();
        cc.Code();
        Code.R();
        Code.o();
    }

    public void a() {
    }

    public final void g() {
        this.D = false;
    }

    private void z() {
        if (this.v > 0) {
            if (!this.o || this.t < this.at || this.u < this.au || this.t + this.v > this.at + this.av || this.u + this.w > this.au + this.aw) {
                Code.Code(this.t, this.u, this.v, this.w);
            }
            this.v = 0;
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final synchronized void h() {
        while (this.h) {
            if (I()) {
                this.i = false;
                throw new RuntimeException();
            } else {
                this.i = true;
                wait();
            }
        }
        this.i = false;
        this.h = true;
        Z.C();
    }

    public final synchronized void i() {
        this.h = false;
        notifyAll();
    }

    private synchronized void A() {
        if (!this.h) {
            notifyAll();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void j() {
        if (this.C) {
            this.p = true;
            A();
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    public final synchronized void Z(int i2) {
        if (!I()) {
            an anVar = Z;
            an.i();
            this.j = true;
            this.k = i2;
            notifyAll();
            while (this.j) {
                wait();
            }
        }
    }

    private synchronized void D() {
        this.j = true;
        this.k = 62;
        an anVar = Z;
        int i2 = this.k;
        an.i();
        notifyAll();
    }

    public final synchronized void I(int i2, int i3) {
        Z.b(i2);
        Z(i3);
    }

    private static String E() {
        String C2 = C("server-url");
        return (C2 == null || C2.equals("")) ? "http://mini5resource.opera-mini.net" : C2;
    }

    public static int J(int i2) {
        while (i2 != 0) {
            for (int i3 = 1; i3 < M.length; i3++) {
                if (M[i3] == i2) {
                    int[] iArr = N;
                    iArr[i3] = iArr[i3] + 1;
                    return i3;
                }
            }
            for (int i4 = 1; i4 < M.length; i4++) {
                if (M[i4] == 0) {
                    int[] iArr2 = N;
                    iArr2[i4] = iArr2[i4] + 1;
                    M[i4] = i2;
                    return i4;
                }
            }
            int[] iArr3 = new int[(M.length + 32)];
            System.arraycopy(M, 0, iArr3, 0, M.length);
            M = iArr3;
            int[] iArr4 = new int[(N.length + 32)];
            System.arraycopy(N, 0, iArr4, 0, N.length);
            N = iArr4;
        }
        return 0;
    }

    public static int B(int i2) {
        if (i2 <= 0 || i2 >= M.length) {
            return 0;
        }
        return M[i2];
    }

    public static int C(int i2) {
        if (i2 <= 0 || i2 >= M.length) {
            return 0;
        }
        int i3 = M[i2];
        int[] iArr = N;
        int i4 = iArr[i2] - 1;
        iArr[i2] = i4;
        if (i4 != 0) {
            return i3;
        }
        M[i2] = 0;
        return i3;
    }

    public static void Code(ce ceVar) {
        O.addElement(ceVar);
    }

    public static void I(ce ceVar) {
        O.removeElement(ceVar);
    }

    private static String B(String str) {
        return str.substring(str.indexOf(45) + 1);
    }

    private static String C(String str) {
        if (K == null) {
            K = new Hashtable();
            String trim = new String(b("/resources")).trim();
            int i2 = 0;
            while (i2 < trim.length()) {
                int indexOf = trim.indexOf(61, i2);
                int indexOf2 = trim.indexOf(10, indexOf + 1);
                if (indexOf2 < 0) {
                    indexOf2 = trim.length();
                }
                K.put(trim.substring(i2, indexOf).trim(), trim.substring(indexOf + 1, indexOf2).trim());
                i2 = indexOf2 + 1;
            }
        }
        return (String) K.get(str);
    }

    /* access modifiers changed from: protected */
    public boolean k() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String Code(String[] strArr) {
        int i2;
        int min = Math.min(Code.C(), Code.a());
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (i2 >= strArr.length) {
                return strArr[strArr.length - 1];
            }
            Integer num = (Integer) ab.get(strArr[i2]);
            if (num != null && min >= num.intValue()) {
                i3 = i2 + 1;
            }
        }
        return strArr[i2];
    }

    private String a(String str) {
        String[] strArr = (str == null || !ac.containsKey(str)) ? f : (String[]) ac.get(str);
        if (db.l) {
            return strArr[0];
        }
        return Code(strArr);
    }

    public String l() {
        return a((String) null);
    }

    private String F() {
        String str = Code.d() ? "apad" : db.Code ? "touch" : "keypad";
        return a(str) + "-" + str;
    }

    private String G() {
        return C(F());
    }

    private static Hashtable H() {
        ByteArrayInputStream byteArrayInputStream;
        ByteArrayInputStream byteArrayInputStream2;
        int i2;
        String str;
        String str2;
        int i3 = 10;
        int i4 = 0;
        if (L == null) {
            L = new Hashtable();
            try {
                byteArrayInputStream = new ByteArrayInputStream(n());
                try {
                    String readUTF = new DataInputStream(byteArrayInputStream).readUTF();
                    if (readUTF.indexOf(10) < 0) {
                        i3 = 38;
                    }
                    while (i4 < readUTF.length()) {
                        int indexOf = readUTF.indexOf(i3, i4);
                        if (indexOf < 0) {
                            i2 = readUTF.length();
                        } else {
                            i2 = indexOf;
                        }
                        String trim = readUTF.substring(i4, i2).trim();
                        if (!trim.equals("")) {
                            int indexOf2 = trim.indexOf(61);
                            if (indexOf2 >= 0) {
                                str2 = trim.substring(0, indexOf2).trim();
                                str = trim.substring(indexOf2 + 1).trim();
                            } else {
                                String str3 = trim;
                                str = "true";
                                str2 = str3;
                            }
                            L.put(str2, str);
                        }
                        i4 = i2 + 1;
                    }
                    db.Code((InputStream) byteArrayInputStream);
                } catch (IOException e2) {
                    byteArrayInputStream2 = byteArrayInputStream;
                    db.Code((InputStream) byteArrayInputStream2);
                    return L;
                } catch (Throwable th) {
                    th = th;
                    db.Code((InputStream) byteArrayInputStream);
                    throw th;
                }
            } catch (IOException e3) {
                byteArrayInputStream2 = null;
                db.Code((InputStream) byteArrayInputStream2);
                return L;
            } catch (Throwable th2) {
                th = th2;
                byteArrayInputStream = null;
                db.Code((InputStream) byteArrayInputStream);
                throw th;
            }
        }
        return L;
    }

    public static String Z(String str) {
        return (String) H().get(str);
    }

    public static cg m() {
        if (E != null && E.Z) {
            return E;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(n()));
        try {
            cg cgVar = new cg();
            E = cgVar;
            cgVar.Code(dataInputStream);
            return E;
        } catch (IOException e2) {
            return null;
        }
    }

    public static byte[] n() {
        if (F != null) {
            return F;
        }
        E = null;
        byte[] K2 = K();
        F = K2;
        return K2;
    }

    private static byte[] K() {
        try {
            byte[] I2 = cn.Code.I("resource");
            try {
                byte[] Code2 = cn.Code.Code("resource", 4);
                if (Code2 == null || Code2.length == 0) {
                    return I2;
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(I2);
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(Code2);
                ag agVar = new ag();
                agVar.Code((InputStream) byteArrayInputStream2);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                am.Code((InputStream) byteArrayInputStream, (OutputStream) byteArrayOutputStream, agVar);
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e2) {
                return I2;
            }
        } catch (IOException e3) {
            return b("/v");
        }
    }

    private static byte[] b(String str) {
        InputStream B2 = db.B(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = B2.read(bArr);
                if (read >= 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    db.Code(B2);
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception e2) {
            db.Code(B2);
            return null;
        } catch (Throwable th) {
            db.Code(B2);
            throw th;
        }
    }

    public void Code(int i2) {
        if (!this.C) {
            cu.Code(i2);
        }
    }

    public void Code() {
        Code.Code(true);
    }

    public boolean I() {
        return Code.p();
    }

    public static boolean o() {
        return W || X;
    }

    public void Z() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z2;
        boolean z3;
        int i22;
        int i23;
        int i24;
        int i25 = 2;
        int i26 = 1;
        Z.J(2, k() ? 1 : 0);
        Z.J(3, db.k);
        Z.J(6, db.n);
        an anVar = Z;
        if (db.y) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        anVar.J(13, i2);
        an anVar2 = Z;
        if (db.J) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        anVar2.J(19, i3);
        an anVar3 = Z;
        if (Code.Y()) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        anVar3.J(30, i4);
        an anVar4 = Z;
        if (Code.aa()) {
            i5 = 0;
        } else {
            i5 = 1;
        }
        anVar4.J(29, i5);
        an anVar5 = Z;
        if ((db.s & 4) != 0) {
            i6 = 0;
        } else {
            i6 = 1;
        }
        anVar5.J(20, i6);
        Z.J(8, 1);
        an anVar6 = Z;
        if (db.A) {
            i7 = 1;
        } else {
            i7 = 0;
        }
        anVar6.J(12, i7);
        an anVar7 = Z;
        if (db.z) {
            i8 = 1;
        } else {
            i8 = 0;
        }
        anVar7.J(4, i8);
        an anVar8 = Z;
        if (Code.u() == 0 || Code.u() >= 4) {
            i9 = 0;
        } else {
            i9 = 1;
        }
        anVar8.J(5, i9);
        if (!db.m) {
            String Z2 = Z("resolution");
            if ("ri".equals(Z2)) {
                Z2 = l();
            }
            if ("hqvga".equals(Z2)) {
                db.l = true;
            }
            db.m = true;
        }
        Z.J(7, db.l ? 1 : 0);
        Z.J(9, Code.G() > 0 ? Code.G() : 7);
        Z.J(10, Code.H());
        Z.J(11, db.v);
        if (db.f == 0 && !db.Code) {
            i25 = 3;
        } else if (db.f == 0) {
            i25 = 1;
        }
        Z.J(14, i25);
        an anVar9 = Z;
        if (db.g > 0) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        anVar9.J(15, i10);
        an anVar10 = Z;
        if (db.g == 1) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        anVar10.J(16, i11);
        an anVar11 = Z;
        if (db.Code) {
            i12 = 1;
        } else {
            i12 = 0;
        }
        anVar11.J(17, i12);
        an anVar12 = Z;
        if (!db.Code || !db.Z) {
            i13 = 0;
        } else {
            i13 = 1;
        }
        anVar12.J(18, i13);
        Z.J(21, db.j);
        an anVar13 = Z;
        if ((Code.v() & 1) != 0) {
            i14 = 1;
        } else {
            i14 = 0;
        }
        anVar13.J(22, i14);
        an anVar14 = Z;
        if ((Code.v() & 2) != 0) {
            i15 = 1;
        } else {
            i15 = 0;
        }
        anVar14.J(23, i15);
        an anVar15 = Z;
        if ((Code.v() & 4) != 0) {
            i16 = 1;
        } else {
            i16 = 0;
        }
        anVar15.J(24, i16);
        an anVar16 = Z;
        if ((Code.v() & 8) != 0) {
            i17 = 1;
        } else {
            i17 = 0;
        }
        anVar16.J(25, i17);
        an anVar17 = Z;
        if ((Code.v() & 16) != 0) {
            i18 = 1;
        } else {
            i18 = 0;
        }
        anVar17.J(26, i18);
        an anVar18 = Z;
        if ((Code.v() & 32) != 0) {
            i19 = 1;
        } else {
            i19 = 0;
        }
        anVar18.J(27, i19);
        an anVar19 = Z;
        if ((Code.v() & 64) != 0) {
            i20 = 1;
        } else {
            i20 = 0;
        }
        anVar19.J(28, i20);
        db.V = !k();
        an anVar20 = Z;
        if (db.V) {
            i21 = 1;
        } else {
            i21 = 0;
        }
        anVar20.J(37, i21);
        db.W = db.V;
        Z.Z(-1, Z.Code(Code.T()));
        an anVar21 = Z;
        if (db.f < 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        anVar21.J(31, z2 ? 1 : 0);
        an anVar22 = Z;
        switch (db.f) {
            case -9:
            case -8:
            case -3:
            case -2:
                z3 = true;
                break;
            default:
                z3 = false;
                break;
        }
        if (!z3) {
            i26 = 0;
        }
        anVar22.J(32, i26);
        an anVar23 = Z;
        switch (db.f) {
            case -7:
            case -5:
            case -4:
            case -3:
            case -1:
                i22 = 35;
                break;
            default:
                i22 = 42;
                break;
        }
        anVar23.J(33, i22);
        Z.J(34, ca.Code());
        an anVar24 = Z;
        switch (db.f) {
            case -4:
            case -3:
                i23 = 48;
                break;
            case -2:
                i23 = 35;
                break;
            default:
                i23 = ca.Code();
                break;
        }
        anVar24.J(35, i23);
        an anVar25 = Z;
        switch (db.f) {
            case -3:
                i24 = 42;
                break;
            default:
                i24 = 48;
                break;
        }
        anVar25.J(36, i24);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v206, resolved type: java.lang.Object[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    public void I(int i2) {
        boolean z2;
        int i3;
        Hashtable hashtable;
        Hashtable hashtable2;
        int i4;
        int i5;
        int i6;
        boolean z3;
        int i7;
        boolean z4;
        int i8;
        int Code2;
        bu buVar;
        int i9;
        boolean z5;
        int i10;
        ce cfVar;
        boolean z6;
        switch (i2) {
            case -346:
                Z.c(R);
                return;
            case -345:
                if (Q >= 4) {
                    Z.c(-1);
                    return;
                }
                if (P != null) {
                    int i11 = P.J;
                    if (i11 == -1) {
                        z6 = true;
                    } else if (i11 == 0) {
                        Z.c(0);
                        return;
                    } else {
                        int min = Math.min((P.B * 100) / i11, 99);
                        byte[] bArr = P.a;
                        if (bArr == null) {
                            Z.c(min);
                            return;
                        }
                        String F2 = F();
                        String C2 = H != null ? H : C(F2);
                        if (db.Code(bArr).equals(C2)) {
                            try {
                                if (H == null) {
                                    byte[] bArr2 = new byte[0];
                                    cn.Code.Code("resource", bArr);
                                    cn.Code.Code("resource", F2.getBytes());
                                    cn.Code.Code("resource", C2.getBytes());
                                    cn.Code.Code("resource", bArr2);
                                    cn.Code.Code("resource", bArr2);
                                    String str = P.C;
                                    H = str;
                                    X = str != null;
                                    F = null;
                                    z6 = false;
                                } else {
                                    try {
                                        if (new String(cn.Code.Code("resource", 5)).equals(H)) {
                                            H = null;
                                            F = null;
                                            P = null;
                                            Z.c(0);
                                            return;
                                        }
                                    } catch (IOException e2) {
                                        byte[] bArr3 = new byte[0];
                                        cn.Code.Code("resource", bArr3);
                                        cn.Code.Code("resource", bArr3);
                                    }
                                    cn.Code.Code("resource", 4, bArr);
                                    cn.Code.Code("resource", 5, C2.getBytes());
                                    F = null;
                                    z6 = false;
                                }
                            } catch (IOException e3) {
                                R = -3;
                                P = null;
                                Z.c(-1);
                                return;
                            }
                        } else {
                            z6 = true;
                        }
                    }
                    if (z6) {
                        cn.Code.Z("resource");
                        int i12 = Q + 1;
                        Q = i12;
                        if (i12 < 4) {
                            co coVar = new co(E(), G());
                            P = coVar;
                            coVar.start();
                            Z.c(0);
                            return;
                        }
                        R = -2;
                        P = null;
                        Z.c(-1);
                        return;
                    }
                    P = null;
                }
                Z.c(100);
                return;
            case -344:
                cu.Code(Z.f(Z.f()), Z.f(Z.f()));
                F = null;
                if (W) {
                    W = false;
                    co coVar2 = new co(E(), G());
                    P = coVar2;
                    coVar2.start();
                    Z.c(Y);
                    return;
                } else if (X) {
                    X = false;
                    co coVar3 = new co(E(), H);
                    P = coVar3;
                    coVar3.start();
                    Z.c(Y);
                    return;
                } else {
                    Z.c(0);
                    return;
                }
            case -343:
                x();
                return;
            case -342:
                cu.J();
                Code(0, 0, Code.J(), Code.B());
                return;
            case -341:
                this.y = true;
                this.s = true;
                return;
            case -340:
                if (!this.C) {
                    cu.Code(Z.h());
                    return;
                }
                return;
            case -339:
                if (!this.C) {
                    int h2 = Z.h();
                    int h3 = Z.h();
                    int f2 = Z.f();
                    cu.Code(h3, h2);
                    if (f2 != 0) {
                        cu.Code(Z.f(f2));
                        return;
                    }
                    return;
                }
                return;
            case -334:
                Z.c(0);
                return;
            case -333:
                Z.c(0);
                return;
            case -332:
                Z.c(Code.j());
                return;
            case -331:
                Code.i();
                return;
            case -330:
                Code.I(Z.h());
                return;
            case -329:
                Z.c(db.x);
                return;
            case -328:
                if (Code.g()) {
                    Z.c(1);
                    return;
                } else if (Code.h() != 0) {
                    Z.c(-1);
                    return;
                } else {
                    Z.c(0);
                    return;
                }
            case -327:
                Z.c(Code.Code(Z.h()) ? 1 : 0);
                return;
            case -326:
                Code.Code(Z.y(Z.f()), Z.f(Z.f()), Z.h(), Z.h() != 0);
                return;
            case -325:
                Z.c(-1);
                return;
            case -324:
                Code.Code(Z.y(Z.f()));
                return;
            case -323:
                Code.Code(Z.y(Z.f()), Z.h(), Z.h() != 0 ? -1000 : Z.h(), Z.h(), Z.h(), Z.h(), Z.h());
                return;
            case -322:
                Code.Code(Z.y(Z.f()), Z.f(Z.f()));
                return;
            case -321:
                String I2 = Code.I(Z.y(Z.f()));
                if (I2 != null) {
                    Z.b(Z.Code(I2));
                    return;
                } else {
                    Z.b(0);
                    return;
                }
            case -320:
                boolean z7 = Z.h() != 0;
                int h4 = Z.h();
                int h5 = Z.h();
                int h6 = Z.h();
                int f3 = Z.f();
                bp bpVar = (bp) (f3 != 0 ? Z.y(f3) : null);
                int h7 = Z.h();
                int h8 = Z.h();
                int h9 = Z.h();
                int h10 = Z.h();
                int h11 = Z.h();
                int h12 = Z.h();
                int h13 = Z.h();
                int h14 = Z.h();
                int h15 = Z.h();
                int f4 = Z.f();
                String f5 = Z.f(Z.f());
                String f6 = Z.f(Z.f());
                int h16 = Z.h();
                String f7 = Z.f(Z.f());
                String f8 = Z.f(Z.f());
                ci ciVar = Code;
                if (z7) {
                    i5 = -1000;
                } else {
                    i5 = h13;
                }
                int Code3 = Z.Code(77, 1, ciVar.Code(h15, f4, f5, f6, h16, f7, f8, h14, i5, h12, h11, h10, h9, h8, h7, bpVar, h6, h5, h4));
                this.a = J(Code3);
                Z.b(Code3);
                return;
            case -316:
            case -313:
                ((ce) Z.y(Z.f())).Code();
                return;
            case -315:
                ((ck) Z.y(Z.f())).Z();
                return;
            case -314:
                ck ckVar = new ck(Z.f(Z.f()), Z.f(), Z.f());
                ckVar.start();
                Z.b(Z.Code(75, 1, (Object) ckVar));
                return;
            case -312:
                int h17 = Z.h();
                int h18 = Z.h();
                int f9 = Z.f();
                boolean z8 = Z.h() != 0;
                int h19 = Z.h();
                int f10 = Z.f();
                String f11 = f10 != 0 ? Z.f(f10) : null;
                int f12 = Z.f();
                String f13 = Z.f(Z.f());
                if (h19 == 1) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (h17 == 1) {
                    cfVar = new cd(f13, f9, f12, f11, z8, h18, i10);
                } else {
                    cfVar = new cf(f13, f9, f12, f11, z8, h18, i10);
                }
                cfVar.start();
                Z.b(Z.Code(74, 1, (Object) cfVar));
                return;
            case -300:
                az azVar = (az) Z.y(Z.f());
                int f14 = Z.f();
                Z.j(f14);
                int k2 = Z.k(f14);
                azVar.I(k2);
                byte[] bArr4 = Z.Code;
                an anVar = Z;
                azVar.write(bArr4, 0, k2);
                return;
            case -299:
                ((az) Z.y(Z.f())).Code(Z.h(Z.f()));
                return;
            case -298:
                ((az) Z.y(Z.f())).Z(Z.h());
                return;
            case -297:
                ((az) Z.y(Z.f())).I(Z.h());
                return;
            case -296:
                ((az) Z.y(Z.f())).Code(Z.h());
                return;
            case -295:
                db.Code((OutputStream) (az) Z.y(Z.f()));
                return;
            case -294:
                az azVar2 = (az) Z.y(Z.f());
                int f15 = Z.f();
                int h20 = Z.h();
                int h21 = Z.h();
                int i13 = 0;
                int i14 = f15;
                while (true) {
                    try {
                        i8 = i13;
                        Z.I(i14, h21, h20, true);
                        byte[] bArr5 = Z.Code;
                        an anVar2 = Z;
                        azVar2.write(bArr5, 0, h20);
                        return;
                    } catch (Throwable th) {
                        if (i8 == b) {
                            throw th;
                        }
                        Z.B(i14);
                        Code(i8 > 0);
                        i14 = Z.B();
                        Z.B(0);
                        i13 = i8 + 1;
                    }
                }
            case -293:
                String f16 = Z.f(Z.f());
                try {
                    bm Code4 = c.Code(f16, !c.B(f16), 3);
                    if (Code4.B()) {
                        Z.b(Z.Code(71, 1, (Object) az.Code(Code4.Code(0))));
                        return;
                    } else {
                        Z.b(0);
                        return;
                    }
                } catch (Throwable th2) {
                    Z.b(0);
                    return;
                }
            case -292:
                ax axVar = (ax) Z.y(Z.f());
                int Z2 = axVar.Z();
                if (Z2 < 0) {
                    Z.b(0);
                    return;
                } else if (Z2 == 0) {
                    Z.b(Z.j());
                    return;
                } else {
                    Z.i(Z2);
                    byte[] bArr6 = Z.Code;
                    an anVar3 = Z;
                    axVar.read(bArr6, 0, Z2);
                    byte[] bArr7 = Z.Code;
                    an anVar4 = Z;
                    if (!ap.I(bArr7, 0, Z2)) {
                        an anVar5 = Z;
                        an.k();
                        throw Z.e(32);
                    }
                    Z.b(Z.l());
                    return;
                }
            case -291:
                Z.b(Z.Code(((ax) Z.y(Z.f())).B()));
                return;
            case -290:
                Z.c(((ax) Z.y(Z.f())).J());
                return;
            case -289:
                Z.c(((ax) Z.y(Z.f())).Z());
                return;
            case -288:
                Z.c(((ax) Z.y(Z.f())).I());
                return;
            case -287:
                db.Code((InputStream) (ax) Z.y(Z.f()));
                return;
            case -286:
                Z.c(((ax) Z.y(Z.f())).I(Z.h()));
                return;
            case -285:
                int f17 = Z.f();
                int h22 = Z.h();
                Z.I(f17, Z.h(), h22, false);
                an anVar6 = Z;
                byte[] bArr8 = Z.Code;
                an anVar7 = Z;
                anVar6.c(((ax) Z.y(Z.f())).read(bArr8, 0, h22));
                Z.s(Z.g());
                return;
            case -284:
                String f18 = Z.f(Z.f());
                try {
                    bm Code5 = c.B(f18) ? c.Code(f18, false, 3) : null;
                    if (Code5 != null) {
                        Z.b(Z.Code(70, 1, (Object) ax.Code(Code5.Code(), (int) Code5.Z())));
                        return;
                    } else {
                        Z.b(0);
                        return;
                    }
                } catch (Throwable th3) {
                    Z.b(0);
                    return;
                }
            case -283:
                Z.b(Z.Code(70, 1, (Object) ax.Code(Z.h())));
                return;
            case -282:
                db.Z(Z.h() | 32768);
                Z.b(Z.q());
                return;
            case -246:
                Code.J(Z.f(Z.f()), Z.f(Z.f()));
                return;
            case -241:
                int f19 = Z.f();
                int h23 = Z.h();
                int h24 = Z.h();
                int f20 = Z.f();
                int h25 = Z.h();
                Z.I(f20, Z.h(), h25, true);
                byte[] bArr9 = Z.Code;
                an anVar8 = Z;
                bs bsVar = new bs(bArr9, 0, h25);
                Z.I(f19, h24, h23, true);
                byte[] bArr10 = Z.Code;
                an anVar9 = Z;
                bsVar.Code(bArr10, 0, h23);
                byte[] bArr11 = new byte[32];
                bsVar.I(bArr11, 0, bArr11.length);
                Z.b(Z.Code(bArr11));
                return;
            case -240:
                Z.b(Z.Code(as.Code(Z.f(Z.f()))));
                return;
            case -239:
                int f21 = Z.f();
                int h26 = Z.h();
                Z.I(f21, Z.h(), h26, true);
                an anVar10 = Z;
                an anVar11 = Z;
                byte[] bArr12 = Z.Code;
                an anVar12 = Z;
                anVar10.b(anVar11.Code(as.Code(bArr12, h26)));
                return;
            case -238:
                int f22 = Z.f();
                int n2 = Z.n(f22);
                String[] strArr = new String[n2];
                Z.Code(f22, n2);
                for (int i15 = 0; i15 < n2; i15++) {
                    an anVar13 = Z;
                    int[] iArr = Z.I;
                    an anVar14 = Z;
                    strArr[i15] = anVar13.f(iArr[i15 + 0]);
                }
                String[] strArr2 = new String[n2];
                Z.Code(Z.f(), n2);
                for (int i16 = 0; i16 < n2; i16++) {
                    an anVar15 = Z;
                    int[] iArr2 = Z.I;
                    an anVar16 = Z;
                    strArr2[i16] = anVar15.f(iArr2[i16 + 0]);
                }
                String f23 = Z.f(Z.f());
                StringBuffer stringBuffer = new StringBuffer(f23.length());
                int i17 = 0;
                while (i17 < f23.length()) {
                    int i18 = 0;
                    while (true) {
                        if (i18 >= n2) {
                            i6 = i17;
                            z3 = false;
                        } else if (f23.startsWith(strArr2[i18], i17)) {
                            stringBuffer.append(strArr[i18]);
                            i6 = strArr2[i18].length() + i17;
                            z3 = true;
                        } else {
                            i18++;
                        }
                    }
                    if (!z3) {
                        i17 = i6 + 1;
                        stringBuffer.append(f23.charAt(i6));
                    } else {
                        i17 = i6;
                    }
                }
                Z.b(Z.Code(stringBuffer.toString()));
                return;
            case -233:
                Z.c(Code.K() ? 1 : 0);
                return;
            case -232:
                Code.J(Z.h() != 0);
                return;
            case -230:
                ay.I(Z.f(Z.f()));
                Z.c(1);
                return;
            case -229:
                Z.b(Z.Code(ay.I()));
                return;
            case -228:
                ay.Code(Z.f(Z.f()));
                Z.c(1);
                return;
            case -227:
                Z.b(Z.Code(ay.Code()));
                return;
            case -226:
                this.l = Z.h();
                this.n = true;
                return;
            case -225:
                TimeZone timeZone = TimeZone.getDefault();
                Calendar instance = Calendar.getInstance(timeZone);
                Z.b(Z.Code((long) timeZone.getOffset(1, instance.get(1), instance.get(2), instance.get(5), instance.get(7), 0)));
                return;
            case -224:
                Z.c(t());
                return;
            case -223:
                Z.b(Z.Code(System.currentTimeMillis()));
                return;
            case -219:
                Z.b(Z.Code(Runtime.getRuntime().freeMemory()));
                return;
            case -218:
                Code(false);
                return;
            case -211:
                Code.s();
                Z.h();
                Z.h();
                Z.h();
                Z.h();
                return;
            case -210:
                Z.Z(Z.f());
                bp bpVar2 = (bp) Z.y(Z.Z());
                String str2 = null;
                int f24 = Z.f();
                if (f24 != 0) {
                    str2 = Z.f(f24);
                }
                au auVar = new au(Z.g(Z.f()), Z.h(), Z.h(), Z.h(), str2, bpVar2);
                Z.l(0);
                for (int i19 = 0; i19 < auVar.Code(); i19++) {
                    Z.J(Z.I(9, 51));
                    if (auVar.c(i19)) {
                        Z.B(Z.J(), 4, bpVar2.Code(str2));
                        Code2 = Z.Code(str2);
                    } else {
                        Z.B(Z.J(), 4, auVar.b(i19));
                        Code2 = Z.Code(auVar.I(), auVar.Z(i19), auVar.J(i19));
                    }
                    Z.J(Z.J(), 0, Code2);
                    Z.B(Z.J(), 2, auVar.a(i19));
                    Z.J(Z.J(), 1, Z.Z());
                    Z.B(Z.J(), 3, auVar.I(i19));
                    Z.B(Z.J(), 5, bpVar2.I());
                    Z.B(Z.J(), 6, auVar.B(i19));
                    Z.B(Z.J(), 8, auVar.C(i19));
                    Z.m(Z.J());
                }
                int I3 = Z.I(2, 52);
                Z.J(I3, 0, Z.n());
                Z.B(I3, 1, auVar.Z() ? 1 : 0);
                Z.b(I3);
                Z.Z(0);
                Z.J(0);
                return;
            case -209:
                bp bpVar3 = (bp) Z.y(Z.f());
                int i20 = 0;
                String str3 = "";
                int f25 = Z.f();
                if (f25 != 0) {
                    str3 = Z.f(f25);
                    i20 = bpVar3.Code(str3);
                }
                int f26 = Z.f();
                char[] g2 = Z.g(f26);
                boolean z9 = Z.h() == 0;
                int Code6 = db.Code(g2, z9, Z.h(), i20, bpVar3);
                if (z9 && Code6 < g2.length) {
                    Z.b(Z.Code(new String(g2, 0, Code6) + str3));
                    return;
                } else if (z9 || Code6 <= 0) {
                    Z.b(f26);
                    return;
                } else {
                    Z.b(Z.Code(str3 + new String(g2, Code6, g2.length - Code6)));
                    return;
                }
            case -208:
                Z.f();
                int h27 = Z.h();
                Z.h();
                int h28 = Z.h();
                char[] g3 = Z.g(Z.f());
                Z.l(0);
                cb.Code(g3, h28, h27, 0, (bp) Z.y(Z.f()), (au) null);
                Z.b(Z.n());
                return;
            case -207:
                Z.c(((bp) Z.y(Z.f())).Code(Z.Code(Z.f(), Z.h(), Z.h())));
                return;
            case -206:
                Z.c(((bp) Z.y(Z.f())).Code(Z.f(Z.f())));
                return;
            case -205:
                Z.c(((bp) Z.y(Z.f())).I());
                return;
            case -204:
                Z.b(Z.Code(50, 1, (Object) Code.s().Code(Z.h(), Z.h(), Z.h())));
                return;
            case -203:
                Z.b(Code(((bu) Z.y(Z.f())).Code(Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h(), Z.h() != 0)));
                return;
            case -202:
                Z.c(((bu) Z.y(Z.f())).J());
                return;
            case -201:
                Z.c(((bu) Z.y(Z.f())).Z());
                return;
            case -200:
                Z.c(((bu) Z.y(Z.f())).I());
                return;
            case -199:
                int h29 = Z.h() | 32768;
                boolean z10 = Z.h() != 0;
                int i21 = 0;
                while (true) {
                    try {
                        i7 = i21;
                        Z.b(Code(db.Code(h29, z10)));
                        return;
                    } catch (Throwable th4) {
                        if (i7 == b) {
                            throw Z.e(29);
                        }
                        if (i7 > 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        Code(z4);
                        i21 = i7 + 1;
                    }
                }
            case -198:
                Z.Z(Z.f());
                int h30 = Z.h();
                int h31 = Z.h();
                boolean z11 = Z.h() != 0;
                int i22 = 0;
                while (true) {
                    int i23 = i22;
                    if (i23 <= b) {
                        try {
                            Z.I(Z.Z(), h30, h31, true);
                            bv q2 = Code.q();
                            byte[] bArr13 = Z.Code;
                            an anVar17 = Z;
                            buVar = q2.Code(bArr13, 0, h31, 256, (bu[]) null, z11);
                        } catch (Throwable th5) {
                            if (i23 != b) {
                                if (i23 > 0) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                Code(z5);
                                i22 = i23 + 1;
                            }
                        }
                    }
                }
                buVar = null;
                Z.Z(0);
                an anVar18 = Z;
                if (buVar != null) {
                    i9 = Code(buVar);
                } else {
                    i9 = 0;
                }
                anVar18.b(i9);
                return;
            case -197:
                Z.b(Code(Code.q().Code(Z.h(), Z.h())));
                return;
            case -196:
                this.r = Z.f();
                return;
            case -195:
                Code(Z.h(), Z.h(), Z.h(), Z.h());
                return;
            case -132:
                Z.c(Code.s().Code(Z.h()));
                return;
            case -131:
                Z.c(db.ag);
                return;
            case -128:
                int[] f27 = ((cc) Z.y(Z.f())).b().f();
                if (f27 == null) {
                    Z.b(0);
                    return;
                }
                Z.Z(Z.I(4, 65));
                Z.B(Z.Z(), 0, f27[0]);
                Z.B(Z.Z(), 1, f27[1]);
                Z.B(Z.Z(), 2, f27[2]);
                Z.B(Z.Z(), 3, f27[3]);
                Z.b(Z.Z());
                Z.Z(0);
                return;
            case -127:
                cs.J();
                return;
            case -121:
                db.O = true;
                db.a("md");
                return;
            case -119:
                Z.c(((cc) Z.y(Z.f())).b().Code());
                return;
            case -118:
                Z.b(((cc) Z.y(Z.f())).b().e(Z.f()));
                return;
            case -117:
                Z.b(((cc) Z.y(Z.f())).b().Code(Z.h(), (char) Z.h(), Z.f()));
                return;
            case -107:
                ((cc) Z.y(Z.f())).Code(Z.h() != 0);
                return;
            case -106:
                ((cc) Z.y(Z.f())).Code(Z.h(), Z.h() != 0);
                return;
            case -105:
                Z.c(((cc) Z.y(Z.f())).s() ? 1 : 0);
                return;
            case -104:
                Z.b(Z.Code(((cc) Z.y(Z.f())).r()));
                return;
            case -103:
                ((cc) Z.y(Z.f())).q();
                return;
            case -102:
                ((cc) Z.y(Z.f())).p();
                return;
            case -101:
                ((cc) Z.y(Z.f())).Z(Z.h(), Z.h(), Z.f());
                return;
            case -100:
                ((cc) Z.y(Z.f())).I(Z.h(), Z.h(), Z.f());
                return;
            case -99:
                ((cc) Z.y(Z.f())).I(Z.f(), Z.f());
                return;
            case -98:
                ((cc) Z.y(Z.f())).Code(Z.f(), Z.f());
                return;
            case -97:
                ((cc) Z.y(Z.f())).Code(Z.h(), Z.h(), Z.f());
                return;
            case -96:
                ((cc) Z.y(Z.f())).Code(Z.h() != 0, Z.h(), Z.h(), Z.f());
                return;
            case -94:
                bg b2 = ((cc) Z.y(Z.f())).b();
                Z.Z(Z.f());
                int f28 = Z.f();
                int f29 = Z.f();
                String f30 = Z.f(f28);
                int[] iArr3 = {0, 0, 0, 0};
                Z.h();
                int Code7 = b2.Code(f30, iArr3, f29);
                Z.B(Z.Z(), 0, iArr3[0]);
                Z.B(Z.Z(), 1, iArr3[1]);
                Z.B(Z.Z(), 2, iArr3[2]);
                Z.B(Z.Z(), 3, iArr3[3]);
                Z.c(Code7);
                Z.Z(0);
                return;
            case -93:
                ((cc) Z.y(Z.f())).b().l();
                return;
            case -92:
                ((cc) Z.y(Z.f())).e();
                return;
            case -91:
                Z.c(((cc) Z.y(Z.f())).b().Z() ? 1 : 0);
                return;
            case -90:
                this.B = (cc) Z.y(Z.f());
                if (db.d > 0) {
                    u();
                }
                Code(this.B);
                return;
            case -89:
                Z.b(((cc) Z.y(Z.f())).b().Code(Z.f(), Z.h(), Z.h(), Z.h(), Z.h(), Z.f()));
                return;
            case -88:
                Z.c(((cc) Z.y(Z.f())).b().Code(Z.f(), Z.f()));
                return;
            case -87:
                ((cc) Z.y(Z.f())).b().Code(Z.h(), Z.h(), Z.h(), Z.h());
                return;
            case -86:
                ((cc) Z.y(Z.f())).b().Code(Z.f(Z.f()), Z.f(Z.f()));
                return;
            case -85:
                bj Code8 = bj.Code(Z.h());
                Z.c(Code8 == null ? 0 : Code8.a());
                return;
            case -84:
                bj Code9 = bj.Code(Z.h());
                if (Code9 != null) {
                    Code9.B();
                    return;
                }
                return;
            case -83:
                bj Code10 = bj.Code(Z.h());
                if (Code10 != null) {
                    Code10.J();
                    return;
                }
                return;
            case -82:
                bj Code11 = bj.Code(Z.h());
                if (Code11 != null) {
                    Code11.Z();
                    return;
                }
                return;
            case -81:
                bj Code12 = bj.Code(Z.h());
                if (Code12 != null) {
                    Code12.I();
                    return;
                }
                return;
            case -80:
                bj Code13 = bj.Code(Z.h());
                if (Code13 != null) {
                    Code13.Code();
                    return;
                }
                return;
            case -79:
                bj Code14 = bj.Code(Z.h());
                if (Code14 != null) {
                    Z.c(Code14.C() ? 1 : 0);
                    return;
                } else {
                    Z.c(0);
                    return;
                }
            case -78:
                Z.c(db.f());
                return;
            case -77:
                new bj(Z.f(Z.f()), Z.f(Z.f()), Z.h(), Z.f(Z.f()), Z.h() != 0);
                return;
            case -76:
                String f31 = Z.f(Z.f());
                int i24 = 0;
                if (cs.Code == -2 || cz.Code(cz.Code(f31, (String) null)).I()) {
                    i24 = 2;
                } else if (cs.Code == 0) {
                    i24 = 1;
                }
                Z.c(i24);
                return;
            case -75:
                boolean C3 = db.C();
                if (C3) {
                    db.Code((Runnable) new Runnable() {
                        public final void run() {
                            db.B();
                        }
                    });
                }
                Z.c(C3 ? 0 : 1);
                return;
            case -68:
                Z.c(((cc) Z.y(Z.f())).b().d());
                return;
            case -67:
                Z.c(((cc) Z.y(Z.f())).b().c());
                return;
            case -64:
                Z.o(4);
                int[] iArr4 = Z.I;
                an anVar19 = Z;
                ((cc) Z.y(Z.f())).Code(iArr4);
                Z.b(Z.o());
                return;
            case -57:
                cc ccVar = (cc) Z.y(Z.f());
                int f32 = Z.f();
                ccVar.Code(f32 != 0 ? Z.f(f32) : null, Z.h(), Z.f(Z.f()));
                return;
            case -56:
                Z.b(Z.Code(((cc) Z.y(Z.f())).b().p(Z.h())));
                return;
            case -54:
                Z.b(Z.Code(((cc) Z.y(Z.f())).b().o(Z.h())));
                return;
            case -53:
                Z.b(Z.Code(((cc) Z.y(Z.f())).b().n(Z.h())));
                return;
            case -52:
                Z.b(((cc) Z.y(Z.f())).b().Z(Z.h(), Z.f()));
                return;
            case -49:
                Z.c(((cc) Z.y(Z.f())).b().l(Z.h()));
                return;
            case -45:
                Z.c(((cc) Z.y(Z.f())).b().j(Z.h()));
                return;
            case -44:
                Z.c(((cc) Z.y(Z.f())).b().i(Z.h()));
                return;
            case -43:
                Z.c(((cc) Z.y(Z.f())).b().h(Z.h()));
                return;
            case -42:
                Z.b(((cc) Z.y(Z.f())).b().g(Z.h()));
                return;
            case -41:
                Z.b(((cc) Z.y(Z.f())).b().k(Z.h()));
                return;
            case -40:
                Z.c(((cc) Z.y(Z.f())).b().f(Z.h()));
                return;
            case -38:
                ((cc) Z.y(Z.f())).m();
                return;
            case -37:
                Z.c(((cc) Z.y(Z.f())).b().C(Z.f(), Z.f()) ? 1 : 0);
                return;
            case -36:
                ((cc) Z.y(Z.f())).g();
                return;
            case -35:
                Z.c(((cc) Z.y(Z.f())).B() ? 1 : 0);
                return;
            case -34:
                Z.c(Code.f() ? 1 : 0);
                return;
            case -33:
                cc ccVar2 = (cc) Z.y(Z.f());
                int f33 = Z.f();
                ccVar2.b().Code(Z.f(), Z.h(), Z.h(), Z.f(), Z.h(), Z.h() != 0, Z.h() != 0, Z.h() != 0, Z.f(), Z.h(), Z.h());
                Z.b(ccVar2.b().b(f33));
                return;
            case -32:
                Z.b(((cc) Z.y(Z.f())).b().b(Z.f()));
                return;
            case -31:
                ((cc) Z.y(Z.f())).b().Code(Z.f(), Z.h(), Z.h(), Z.f(), Z.h(), Z.h() != 0, Z.h() != 0, Z.h() != 0, Z.f(), Z.h(), Z.h());
                return;
            case -30:
                ((cc) Z.y(Z.f())).b().I(Z.h() != 0);
                return;
            case -29:
                Z.b(((cc) Z.y(Z.f())).b().a());
                return;
            case -28:
                Object[] objArr = new Object[124];
                int[] iArr5 = new int[124];
                boolean z12 = Z.h() != 0;
                boolean z13 = Z.h() != 0;
                boolean z14 = Z.h() != 0;
                if (Z.h() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                bg bgVar = null;
                int f34 = Z.f();
                if (f34 != 0) {
                    bgVar = ((cc) Z.y(f34)).b();
                }
                int f35 = Z.f();
                if (db.W && !z12 && f35 != 0) {
                    objArr[86] = Z.t(f35);
                }
                int f36 = Z.f();
                if (f36 != 0) {
                    objArr[122] = Z.t(f36);
                }
                int f37 = Z.f();
                if (f37 != 0) {
                    objArr[123] = Z.t(f37);
                }
                int h32 = Z.h();
                iArr5[17] = Z.h();
                iArr5[93] = Z.h();
                iArr5[80] = Z.h();
                iArr5[14] = Code.C(Z.h());
                iArr5[23] = Z.h() == 0 ? 1 : db.u;
                iArr5[24] = (Z.h() == 1 ? 16 : 0) | iArr5[24];
                iArr5[24] = (Z.h() == 1 ? 1073741824 : 0) | iArr5[24];
                iArr5[21] = Z.h() == 1 ? 115 : 100;
                iArr5[56] = Z.h();
                int f38 = Z.f();
                if (f38 != 0) {
                    String f39 = Z.f(f38);
                    objArr[27] = f39;
                    if (f39.startsWith("-")) {
                        iArr5[17] = 1;
                    }
                }
                iArr5[20] = Z.h();
                iArr5[19] = Z.h();
                int f40 = Z.f();
                if (f40 != 0) {
                    objArr[42] = Z.f(f40);
                }
                int f41 = Z.f();
                if (f41 != 0) {
                    objArr[38] = Z.f(f41);
                }
                objArr[53] = Z.f(Z.f());
                String str4 = (String) objArr[53];
                if ("debug:".equals(str4)) {
                    aa = true;
                }
                if (aa && "opera:routing".equals(str4)) {
                    cs.b = !cs.b;
                }
                if (db.W && !z12) {
                    iArr5[99] = 2;
                    objArr[94] = db.aa;
                    if (z2) {
                        iArr5[85] = iArr5[85] | 2;
                    }
                    if (z13) {
                        iArr5[85] = iArr5[85] | 1;
                    }
                    int i25 = iArr5[85];
                    int i26 = (db.X & 2) != 0 ? 8 : 0;
                    if ((db.X & 1) != 0) {
                        i4 = 4;
                    } else {
                        i4 = 0;
                    }
                    iArr5[85] = i26 | i4 | i25;
                }
                if (d != null) {
                    objArr[77] = d;
                }
                if (T != null) {
                    objArr[73] = T;
                }
                if (U != null) {
                    objArr[79] = U;
                    e = false;
                }
                String str5 = db.Q;
                if (str5 == null || str5.equals("")) {
                    str5 = Code.Code("OM-Campaign");
                }
                if (str5 != null && !str5.equals("") && !str5.equals("debug")) {
                    objArr[78] = str5;
                }
                objArr[117] = db.R;
                objArr[118] = db.S;
                objArr[116] = Code.V();
                byte[] ag2 = Code.ag();
                if (ag2 != null) {
                    objArr[121] = ag2;
                }
                if (Code.ae()) {
                    objArr[119] = Code.af();
                }
                if (Z.x(38) != 0) {
                    iArr5[43] = iArr5[43] | 524288;
                }
                if (Code.aa()) {
                    iArr5[109] = iArr5[109] | 8;
                }
                iArr5[109] = iArr5[109] | 8192;
                iArr5[109] = iArr5[109] | 32768;
                if (Code.S()) {
                    iArr5[43] = iArr5[43] | 262144;
                }
                iArr5[109] = iArr5[109] | 2048;
                iArr5[87] = Code.d() ? 116 : 109;
                iArr5[101] = 115;
                objArr[103] = "m";
                iArr5[102] = 53;
                String l2 = l();
                if (l2.equals("hqvga")) {
                    i3 = 4;
                } else {
                    i3 = l2.equals("qvga") ? 1 : l2.equals("hvga") ? 2 : l2.equals("vga") ? 3 : (l2.equals("svga") || l2.equals("qxga")) ? 6 : 0;
                }
                iArr5[76] = i3;
                iArr5[15] = Z.h();
                bg bgVar2 = null;
                int f42 = Z.f();
                if (f42 != 0) {
                    cc ccVar3 = (cc) Z.y(f42);
                    if (h32 != 0) {
                        hashtable2 = ccVar3.o();
                    } else {
                        hashtable2 = null;
                    }
                    bgVar2 = ccVar3.f();
                    if (bgVar2 != null) {
                        iArr5[62] = bgVar2.C();
                    }
                    objArr[9] = ccVar3.a;
                    hashtable = hashtable2;
                } else {
                    hashtable = null;
                }
                cc ccVar4 = new cc(this, objArr, iArr5, bgVar2, hashtable, z14, bgVar);
                this.J.addElement(ccVar4);
                Z.Code(Z.f());
                Z.m();
                ccVar4.c = Z.Code(3, 9, (Object) ccVar4);
                Z.C(ccVar4.c, 1, Z.Code());
                Z.Code(0);
                I(ccVar4);
                db.Code((Runnable) ccVar4);
                Z.b(ccVar4.c);
                return;
            default:
                d(i2);
                return;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v6, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v19, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v21, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v44, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v51, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v53, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v55, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v58, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v60, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v50, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v53, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v55, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v58, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v61, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v85, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v87, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v89, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v72, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v98, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v83, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v107, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v113, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v115, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v98, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v134, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v146, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v148, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v150, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v152, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v155, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v157, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v160, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v164, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v184, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v159, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v161, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v164, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v166, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v186, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v168, resolved type: boolean} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v182, resolved type: int} */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r1v7, types: [int] */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: type inference failed for: r2v20 */
    /* JADX WARNING: type inference failed for: r1v32, types: [int] */
    /* JADX WARNING: type inference failed for: r2v50 */
    /* JADX WARNING: type inference failed for: r2v52 */
    /* JADX WARNING: type inference failed for: r2v54 */
    /* JADX WARNING: type inference failed for: r2v56 */
    /* JADX WARNING: type inference failed for: r2v57 */
    /* JADX WARNING: type inference failed for: r2v59 */
    /* JADX WARNING: type inference failed for: r2v80 */
    /* JADX WARNING: type inference failed for: r2v81 */
    /* JADX WARNING: type inference failed for: r2v84 */
    /* JADX WARNING: type inference failed for: r2v86 */
    /* JADX WARNING: type inference failed for: r2v88 */
    /* JADX WARNING: type inference failed for: r2v97 */
    /* JADX WARNING: type inference failed for: r2v106 */
    /* JADX WARNING: type inference failed for: r2v112 */
    /* JADX WARNING: type inference failed for: r2v114 */
    /* JADX WARNING: type inference failed for: r1v135 */
    /* JADX WARNING: type inference failed for: r2v144 */
    /* JADX WARNING: type inference failed for: r2v145 */
    /* JADX WARNING: type inference failed for: r2v147 */
    /* JADX WARNING: type inference failed for: r2v149 */
    /* JADX WARNING: type inference failed for: r2v151 */
    /* JADX WARNING: type inference failed for: r2v154 */
    /* JADX WARNING: type inference failed for: r2v156 */
    /* JADX WARNING: type inference failed for: r2v159 */
    /* JADX WARNING: type inference failed for: r2v163 */
    /* JADX WARNING: type inference failed for: r2v183 */
    /* JADX WARNING: type inference failed for: r1v160 */
    /* JADX WARNING: type inference failed for: r2v185 */
    /* JADX WARNING: type inference failed for: r1v163 */
    /* JADX WARNING: type inference failed for: r1v165 */
    /* JADX WARNING: type inference failed for: r1v167 */
    /* JADX WARNING: type inference failed for: r1v169 */
    /* JADX WARNING: type inference failed for: r1v183 */
    /* JADX WARNING: type inference failed for: r1v212 */
    /* JADX WARNING: type inference failed for: r1v213 */
    /* JADX WARNING: type inference failed for: r1v214 */
    /* JADX WARNING: type inference failed for: r1v215 */
    /* JADX WARNING: type inference failed for: r1v216 */
    /* JADX WARNING: type inference failed for: r1v217 */
    /* JADX WARNING: type inference failed for: r1v218 */
    /* JADX WARNING: type inference failed for: r1v219 */
    /* JADX WARNING: type inference failed for: r1v220 */
    /* JADX WARNING: type inference failed for: r1v221 */
    /* JADX WARNING: type inference failed for: r1v222 */
    /* JADX WARNING: type inference failed for: r1v223 */
    /* JADX WARNING: Multi-variable type inference failed */
    private void d(int i2) {
        int i3;
        String J2;
        String Z2;
        boolean z2;
        String str = null;
        int i4 = 1;
        ? r1 = 0;
        switch (i2) {
            case -338:
                an anVar = Z;
                if (!Code.w().I()) {
                    i4 = 0;
                }
                anVar.c(i4);
                return;
            case -337:
                Z.b(Z.Code(Code.w().Code()));
                return;
            case -336:
                Code.w().Code(Z.f(Z.f()));
                return;
            case -335:
                an anVar2 = Z;
                if (!Code.k()) {
                    i4 = 0;
                }
                anVar2.c(i4);
                return;
            case -319:
                if (db.V) {
                    if (Z.h() == 0) {
                        i4 = 0;
                    }
                    db.W = i4;
                    return;
                }
                return;
            case -318:
                an anVar3 = Z;
                if (db.V) {
                    r1 = db.d();
                }
                anVar3.b(r1);
                return;
            case -317:
                if (!db.V || db.aa == null) {
                    Z.b(0);
                    return;
                }
                synchronized (db.Y) {
                    Z.r(db.aa.length / 3);
                    while (r1 < db.aa.length) {
                        byte[] bArr = Z.Code;
                        an anVar4 = Z;
                        bArr[(r1 / 3) + 0] = db.aa[r1];
                        r1 += 3;
                    }
                    Z.b(Z.q());
                }
                return;
            case -311:
                G = Z.t(Z.f());
                return;
            case -310:
                Z.b(Z.Code(G));
                G = null;
                return;
            case -309:
                an anVar5 = Z;
                if (G == null) {
                    i4 = 0;
                }
                anVar5.c(i4);
                return;
            case -308:
                int h2 = Z.h();
                try {
                    cn.Code.I(a(h2), h2);
                    return;
                } catch (Throwable th) {
                    return;
                }
            case -307:
                int h3 = Z.h();
                try {
                    if (cn.Code.Code(a(h3), Code(h3, Z.f(Z.f())))) {
                        Z.c(1);
                        return;
                    }
                } catch (Throwable th2) {
                }
                Z.c(0);
                return;
            case -306:
                int h4 = Z.h();
                try {
                    cn.Code.I(a(h4), Code(h4, Z.f(Z.f())));
                    return;
                } catch (Throwable th3) {
                    return;
                }
            case -305:
                int f2 = Z.f();
                int h5 = Z.h();
                String f3 = Z.f(Z.f());
                int u2 = Z.u(f2);
                Z.I(f2, 0, u2, true);
                String a2 = a(h5);
                String Code2 = Code(h5, f3);
                try {
                    cn cnVar = cn.Code;
                    byte[] bArr2 = Z.Code;
                    an anVar6 = Z;
                    cnVar.Code(a2, Code2, bArr2, u2);
                    return;
                } catch (Throwable th4) {
                    return;
                }
            case -304:
                Z.b(Z.Code(71, 1, (Object) az.Code(Z.h(), Z.f(Z.f()))));
                return;
            case -303:
                J(Z.f());
                Z.f(Z.f());
                Z.h();
                cn cnVar2 = cn.Code;
                Z.c(0);
                return;
            case -302:
                int h6 = Z.h();
                try {
                    byte[] Z3 = cn.Code.Z(a(h6), Code(h6, Z.f(Z.f())));
                    if (Z3 != null) {
                        r1 = Z.I(Z3, 0, Code(Z3));
                    }
                } catch (Throwable th5) {
                }
                Z.b(r1);
                return;
            case -301:
                Z.b(Z.Code(70, 1, (Object) ax.Code(Z.h(), Z.f(Z.f()))));
                return;
            case -281:
                Z.c(Code.P());
                return;
            case -280:
                Z.c(Code.O());
                return;
            case -279:
                try {
                    if (!Code.I(Z.f(Z.f()))) {
                        i4 = 0;
                    }
                } catch (IOException e2) {
                    i4 = 2;
                }
                Z.c(i4);
                return;
            case -277:
                if (!Code.J(Z.f(Z.f()).toLowerCase())) {
                    i4 = 0;
                }
                Z.c(i4);
                return;
            case -276:
                if (Code.m()) {
                    r1 = Z.Code(67, 1, (Object) c);
                }
                Z.b(r1);
                return;
            case -275:
                if (!Code.m()) {
                    i4 = 0;
                }
                Z.c(i4);
                return;
            case -274:
                int f4 = Z.f();
                if (f4 != 0) {
                    ((bl) Z.y(f4)).Z();
                    return;
                }
                return;
            case -273:
                bl blVar = (bl) Z.y(Z.f());
                Z.Z(Z.f());
                if (!blVar.Code()) {
                    Z.c(0);
                } else {
                    Object[] I2 = blVar.I();
                    int i5 = (((Integer) I2[1]).intValue() & 4) == 0 ? 0 : 1;
                    Z.Code(Z.Code((String) I2[2]));
                    Z.I(Z.Code((String) I2[0]));
                    Z.B(Z.Z(), 2, i5);
                    Z.J(Z.Z(), 0, Z.Code());
                    Z.J(Z.Z(), 1, Z.I());
                    Z.B(Z.Z(), 3, 0);
                    Z.B(Z.Z(), 4, 0);
                    Z.c(1);
                }
                Z.Z(0);
                Z.Code(0);
                Z.I(0);
                return;
            case -271:
                String f5 = Z.f(Z.f());
                an anVar7 = Z;
                if (!((bk) Z.y(Z.f())).J(f5)) {
                    i4 = 0;
                }
                anVar7.c(i4);
                return;
            case -270:
                String f6 = Z.f(Z.f());
                an anVar8 = Z;
                if (!((bk) Z.y(Z.f())).Z(f6)) {
                    i4 = 0;
                }
                anVar8.c(i4);
                return;
            case -268:
                if (((bk) Z.y(Z.f())).B(Z.f(Z.f()))) {
                    Z.c(1);
                    return;
                } else {
                    Z.c(0);
                    return;
                }
            case -267:
                Z.b(Z.Code(((bk) Z.y(Z.f())).e(Z.f(Z.f()))));
                return;
            case -266:
                try {
                    Z.y(Z.f());
                    r1 = Z.Code(68, 1, (Object) new bl(c, Z.f(Z.f()), Z.f(Z.f())));
                } catch (Throwable th6) {
                }
                Z.b(r1);
                return;
            case -265:
                ((bk) Z.y(Z.f())).a();
                Z.b(0);
                return;
            case -264:
                Z.y(Z.f());
                Z.f();
                Z.h();
                Z.f(Z.f());
                Z.f(Z.f());
                Z.b(0);
                return;
            case -263:
                Z.y(Z.f());
                Z.c(Code.I(Z.f(Z.f()), Z.f(Z.f())));
                return;
            case -262:
                Z.y(Z.f());
                Z.b(Z.Code("/"));
                return;
            case -261:
                bo[] B2 = ((bk) Z.y(Z.f())).B();
                Z.l(B2.length);
                while (r1 < B2.length) {
                    if (B2[r1] != null) {
                        Z.m(Z.Code(66, 1, (Object) B2[r1]));
                    }
                    r1++;
                }
                Z.b(Z.n());
                return;
            case -260:
                Z.y(Z.f());
                Z.f(Z.f());
                c.Z();
                Z.b(0);
                return;
            case -259:
                Z.y(Z.f());
                Z.h();
                String J3 = c.J();
                if (J3 != null) {
                    Z.b(Z.Code(J3));
                    return;
                } else {
                    Z.b(0);
                    return;
                }
            case -258:
                an anVar9 = Z;
                if (!((bo) Z.y(Z.f())).J()) {
                    i4 = 0;
                }
                anVar9.c(i4);
                return;
            case -257:
                Z.y(Z.f());
                Z.c(1);
                return;
            case -256:
                an anVar10 = Z;
                if (!((bo) Z.y(Z.f())).Z()) {
                    i4 = 0;
                }
                anVar10.c(i4);
                return;
            case -255:
                String I3 = ((bo) Z.y(Z.f())).I();
                if (I3 != null) {
                    Z.b(Z.Code(I3));
                    return;
                } else {
                    Z.b(0);
                    return;
                }
            case -254:
                String Code3 = ((bo) Z.y(Z.f())).Code();
                if (Code3 != null) {
                    Z.b(Z.Code(Code3));
                    return;
                } else {
                    Z.b(0);
                    return;
                }
            case -251:
                if (Code.m()) {
                    c.b();
                }
                Z.c(0);
                return;
            case -250:
                int f7 = Z.f();
                if (f7 != 0) {
                    str = Z.f(f7);
                }
                if (Code.m()) {
                    try {
                        String a3 = c.a(str);
                        if (a3 != null) {
                            r1 = Z.Code(a3);
                        }
                    } catch (Throwable th7) {
                    }
                }
                Z.b(r1);
                return;
            case -248:
                if (Code.D()) {
                    Z.Z(-3, Z.Code(cj.Code));
                    Z.Z(-2, Z.Code(cj.I));
                    Z.Z(-4, Z.Code(cj.Z));
                    Z.c(1);
                    return;
                }
                cj.I = null;
                cj.Code = null;
                cj.Z = null;
                Z.c(0);
                return;
            case -247:
                Code.A();
                return;
            case -245:
                Z.Code(Z.f());
                if (bx.Code != null && bx.Code.size() > 0) {
                    bx.Code.elementAt(0);
                    bx.Code.removeElementAt(0);
                    Z.J(Z.Code(), 0, Z.Code((String) null));
                    Z.J(Z.Code(), 1, Z.Code((String) null));
                    Z.J(Z.Code(), 2, Z.Code((byte[]) null));
                    Z.B(Z.Code(), 3, 0);
                    if (bx.Code.size() > 0) {
                        Z.Code(0);
                        Z.c(1);
                        return;
                    }
                }
                bx.Code = null;
                Z.Code(0);
                Z.c(0);
                return;
            case -244:
                Vector Z4 = Code.Z(Z.h());
                bx.Code = Z4;
                if (Z4 == null) {
                    Z.c(0);
                    return;
                } else {
                    Z.c(bx.Code.size());
                    return;
                }
            case -243:
                Code.B(Z.h());
                return;
            case -242:
                an anVar11 = Z;
                if (!Code.J(Z.h())) {
                    i4 = 0;
                }
                anVar11.c(i4);
                return;
            case -237:
                String f8 = Z.f(Z.f());
                Code.Code(Z.h(), Z.h(), Z.f(Z.f()), f8);
                return;
            case -236:
                Code.X();
                return;
            case -235:
                Code.B(Z.f(Z.f()));
                return;
            case -234:
                Code.Z(Z.f(Z.f()), Z.f(Z.f()));
                return;
            case -231:
                if (Code.F()) {
                    Z.c(4);
                    return;
                } else {
                    Z.c(1);
                    return;
                }
            case -217:
                Z.E(0);
                Code.y();
                return;
            case -214:
                Code.z();
                return;
            case -213:
                return;
            case -212:
                Code();
                throw Z.x();
            case -148:
                ((cc) Z.y(Z.f())).Code((bi) Z.y(Z.f()));
                return;
            case -147:
                ((cc) Z.y(Z.f())).Code((bi) Z.y(Z.f()), Z.h());
                return;
            case -146:
                Z.b(Z.Code(6, 1, (Object) new bi()));
                return;
            case -145:
                Object y2 = Z.y(Z.f());
                bg Code4 = bg.Code(y2);
                an anVar12 = Z;
                if (Code4.I(y2, Z.h())) {
                    r1 = 1;
                }
                anVar12.c(r1);
                return;
            case -144:
                Object y3 = Z.y(Z.f());
                Z.c(bg.Code(y3).Code(y3, (bp) Z.y(Z.f()), Z.h()));
                return;
            case -143:
                Object y4 = Z.y(Z.f());
                bg.Code(y4).Z(y4, Z.h());
                return;
            case -142:
                Object y5 = Z.y(Z.f());
                Z.b(bg.Code(y5).Code(y5, Z.h()));
                return;
            case -141:
                Object y6 = Z.y(Z.f());
                Z.c(bg.Code(y6).I(y6));
                return;
            case -140:
                Object y7 = Z.y(Z.f());
                bg.Code(y7).Z(y7);
                return;
            case -139:
                int h7 = Z.h();
                int h8 = Z.h();
                if (Code.m() && (J2 = c.J(h8, h7)) != null) {
                    r1 = Z.Code(J2);
                }
                Z.b(r1);
                return;
            case -138:
                int h9 = Z.h();
                int h10 = Z.h();
                if (Code.m()) {
                    r1 = Z.Code(c.B(h10, h9));
                }
                Z.b(r1);
                return;
            case -137:
                int h11 = Z.h();
                int h12 = Z.h();
                if (Code.m() && (Z2 = c.Z(h12, h11)) != null) {
                    r1 = Z.Code(Z2);
                }
                Z.b(r1);
                return;
            case -136:
                if (Code.m()) {
                    try {
                        int[] C2 = c.C();
                        if (C2 != null) {
                            Z.o(C2.length);
                            an anVar13 = Z;
                            int i6 = 0;
                            int i7 = 0;
                            while (i6 < C2.length) {
                                if (C2[i6] != 0) {
                                    i3 = i7 + 1;
                                    Z.I[i7] = C2[i6];
                                } else {
                                    i3 = i7;
                                }
                                i6++;
                                i7 = i3;
                            }
                            Z.b(Z.o());
                            return;
                        }
                    } catch (Throwable th8) {
                    }
                }
                Z.b(0);
                return;
            case -135:
                int h13 = Z.h();
                an anVar14 = Z;
                if (h13 != 16) {
                    i4 = 0;
                }
                anVar14.c(i4);
                return;
            case -134:
                int h14 = Z.h();
                int h15 = Z.h();
                if (Z.h() == 0) {
                    i4 = 0;
                }
                if (Code.m()) {
                    if (i4 != 0) {
                        str = c.I(h15, h14);
                    } else {
                        str = c.Code(h15, h14);
                    }
                }
                if (str == null || "".equals(str)) {
                    str = "";
                } else if (!str.startsWith("file://")) {
                    str = "file://" + str;
                }
                Z.b(Z.Code(str));
                return;
            case -133:
                int h16 = Z.h();
                int h17 = Z.h();
                if (Z.h() != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                an anVar15 = Z;
                if (!bg.Code(z2, h17, h16)) {
                    i4 = 0;
                }
                anVar15.c(i4);
                return;
            case -123:
                break;
            case -122:
                int indexOf = "http://nada:4711".indexOf("://") + 3;
                int indexOf2 = "http://nada:4711".indexOf(58, indexOf);
                if (indexOf >= 3 && indexOf2 >= 0) {
                    String substring = "http://nada:4711".substring(indexOf, indexOf2);
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("http://").append(substring).append("/hrandom/connected?l=").append(ay.Code()).append("&b=").append(Code.U());
                    if (db.r == 2) {
                        stringBuffer.append("&showlink");
                    }
                    Z.b(Z.Code(stringBuffer.toString()));
                    break;
                } else {
                    Z.b(0);
                    break;
                }
            case -120:
                Z.b(((cc) Z.y(Z.f())).b().I(Z.f(), Z.f()));
                return;
            case -116:
                bg b2 = ((cc) Z.y(Z.f())).b();
                int f9 = Z.f();
                if (Z.h() == 0) {
                    i4 = 0;
                }
                b2.Code(f9, i4);
                return;
            case -115:
                ((cc) Z.y(Z.f())).b().C(Z.f());
                return;
            case -114:
                ((cc) Z.y(Z.f())).b().B(Z.h(), Z.f());
                return;
            case -113:
                Z.b(((cc) Z.y(Z.f())).b().o());
                return;
            case -112:
                Z.b(((cc) Z.y(Z.f())).b().a(Z.h(), Z.f()));
                return;
            case -111:
                Z.b(((cc) Z.y(Z.f())).b().n());
                return;
            case -110:
                if (V == null) {
                    byte[] t2 = Z.t(Z.f());
                    U = t2;
                    if (t2.length == 0) {
                        U = null;
                    }
                } else {
                    int f10 = Z.f();
                    int u3 = Z.u(f10);
                    Z.I(f10, 0, u3, true);
                    U = new byte[(V.length + u3)];
                    byte[] bArr3 = Z.Code;
                    an anVar16 = Z;
                    System.arraycopy(bArr3, 0, U, 0, u3);
                    System.arraycopy(V, 0, U, u3, V.length);
                    U[0] = (byte) ((U.length - 1) / 4);
                }
                e = true;
                return;
            case -109:
                byte[] t3 = Z.t(Z.f());
                T = t3;
                if (t3.length == 0) {
                    T = null;
                    return;
                }
                return;
            case -108:
                S = Z.t(Z.f());
                v();
                return;
            case -95:
                Z.h();
                if (Z.h() == 0) {
                    i4 = 0;
                }
                try {
                    int Z5 = ((cc) Z.y(Z.f())).b().Z(i4);
                    if (Z5 != 0) {
                        Z.o(2);
                        an anVar17 = Z;
                        Z.I[0] = Z5;
                        Z.I[1] = 16;
                        r1 = Z.o();
                    }
                } catch (Throwable th9) {
                }
                Z.b(r1);
                return;
            case -74:
                Z.c(((cc) Z.y(Z.f())).b().k());
                return;
            case -73:
                Z.c(((cc) Z.y(Z.f())).b().j());
                return;
            case -72:
                Z.c(((cc) Z.y(Z.f())).b().i());
                return;
            case -71:
                Z.c(((cc) Z.y(Z.f())).b().h());
                return;
            case -70:
                switch (((cc) Z.y(Z.f())).b().g()) {
                    case 68:
                    case 79:
                        break;
                    default:
                        r1 = 2;
                        break;
                }
                Z.c(r1);
                return;
            case -69:
                switch (((cc) Z.y(Z.f())).b().e()) {
                    case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                        i4 = 2;
                        break;
                    case 3:
                        i4 = 4;
                        break;
                }
                Z.c(i4);
                return;
            case -66:
                Z.b(Z.Code(2, 1, (Object) ((cc) Z.y(Z.f())).b().J(Z.h(), Z.h(), Z.f())));
                return;
            case -65:
                int h18 = Z.h();
                String f11 = Z.f(Z.f());
                if ("cookies".equals(f11)) {
                    if (h18 == 0) {
                        r1 = 1;
                    }
                    db.K = r1;
                } else if ("protocol".equals(f11)) {
                    if (h18 == 0) {
                        r1 = 1;
                    }
                    cs.Code(r1);
                } else if ("landscape".equals(f11)) {
                    if (h18 != x) {
                        x = h18;
                        ci ciVar = Code;
                        if (h18 == 1) {
                            r1 = 1;
                        }
                        ciVar.Z(r1);
                        this.y = true;
                    }
                } else if ("imagequality".equals(f11)) {
                    db.u = h18;
                } else if ((db.A && "statusbar".equals(f11)) || (!db.A && "fullscreen".equals(f11))) {
                    if (h18 == 0) {
                        r1 = 1;
                    }
                    Code.I(r1);
                } else if ("eula_agreed".equals(f11)) {
                    if (h18 != 0) {
                        r1 = 1;
                    }
                    db.E = r1;
                    if (r1 != 0) {
                        if (db.L[3] != null) {
                            db.a("md");
                        }
                        cs.Z();
                        synchronized (this.q) {
                            while (this.q.size() > 0) {
                                final String str2 = (String) this.q.firstElement();
                                if (!(str2 == null || str2.length() == 0)) {
                                    synchronized (this.q) {
                                        if (!db.E) {
                                            this.q.addElement(str2);
                                        } else {
                                            new Thread() {
                                                public final void run() {
                                                    ar.this.h();
                                                    ar.Z.b(ar.Z.Code(str2));
                                                    ar.this.Z(35);
                                                }
                                            }.start();
                                        }
                                    }
                                }
                                this.q.removeElementAt(0);
                            }
                        }
                    }
                } else {
                    i4 = 0;
                }
                Z.c(i4);
                return;
            case -63:
                String d2 = ((cc) Z.y(Z.f())).b().d(Z.h());
                if (d2 != null) {
                    Z.b(Z.Code(d2));
                    return;
                } else {
                    Z.b(0);
                    return;
                }
            case -62:
                ((cc) Z.y(Z.f())).b().c(Z.f());
                return;
            case -55:
                Z.h();
                int d3 = ((cc) Z.y(Z.f())).d();
                if (d3 >= db.ad) {
                    d3 = 0;
                }
                Z.b(Z.Code(50, 1, (Object) db.af[d3]));
                return;
            case -51:
                Z.b(Z.Code(5, 1, ((cc) Z.y(Z.f())).b().m(Z.h())));
                return;
            case -50:
                ((cc) Z.y(Z.f())).n();
                return;
            case -48:
                ((cc) Z.y(Z.f())).b().I(Z.h(), Z.h(), Z.f(), Z.h());
                return;
            case -47:
                ((cc) Z.y(Z.f())).b().Z(Z.h(), Z.h(), Z.f());
                return;
            case -46:
                Z.c(((cc) Z.y(Z.f())).b().J(Z.h(), Z.f()));
                return;
            case -27:
                ((bd) Z.y(Z.f())).Code(Z.h());
                return;
            case -26:
                an anVar18 = Z;
                if (!((bd) Z.y(Z.f())).e()) {
                    i4 = 0;
                }
                anVar18.c(i4);
                return;
            case -25:
                an anVar19 = Z;
                if (!((bd) Z.y(Z.f())).d()) {
                    i4 = 0;
                }
                anVar19.c(i4);
                return;
            case -24:
                an anVar20 = Z;
                if (!((bd) Z.y(Z.f())).c()) {
                    i4 = 0;
                }
                anVar20.c(i4);
                return;
            case -23:
                an anVar21 = Z;
                Z.y(Z.f());
                anVar21.c(0);
                return;
            case -21:
                an anVar22 = Z;
                if (!((bd) Z.y(Z.f())).b()) {
                    i4 = 0;
                }
                anVar22.c(i4);
                return;
            case -20:
                an anVar23 = Z;
                if (!((bd) Z.y(Z.f())).a()) {
                    i4 = 0;
                }
                anVar23.c(i4);
                return;
            case -19:
                Z.b(Z.Code(((bd) Z.y(Z.f())).C()));
                return;
            case -18:
                an anVar24 = Z;
                if (!((bd) Z.y(Z.f())).B()) {
                    i4 = 0;
                }
                anVar24.c(i4);
                return;
            case -17:
                an anVar25 = Z;
                Z.y(Z.f());
                anVar25.c(0);
                return;
            case -16:
                Z.b(Z.Code(((bd) Z.y(Z.f())).J()));
                return;
            case -15:
                an anVar26 = Z;
                if (!((bd) Z.y(Z.f())).Z()) {
                    i4 = 0;
                }
                anVar26.c(i4);
                return;
            case -14:
                Z.c(((bd) Z.y(Z.f())).I());
                return;
            case -13:
                Z.c(((bd) Z.y(Z.f())).Code());
                return;
            default:
                if (Code("vm_error")) {
                    throw new RuntimeException("Invalid function: " + i2);
                }
                return;
        }
        String a4 = cs.a();
        an anVar27 = Z;
        if (a4 != null) {
            r1 = Z.Code(a4);
        }
        anVar27.b(r1);
    }

    static void Code(char[] cArr, int i2, int i3) {
        Z.m(Z.Code(cArr, i2, i3 - i2));
    }

    public static String a(int i2) {
        return "b_" + i2;
    }

    public static String Code(int i2, String str) {
        return ((char) (i2 + 33)) + str;
    }

    public static int J(String str) {
        return str.charAt(0) - '!';
    }

    public static byte[] Code(String str, byte[] bArr, int i2) {
        int Code2 = ap.Code(str) + 2;
        byte[] bArr2 = new byte[(i2 + Code2 + 5)];
        ap.Code(str, bArr2, i2);
        int i3 = i2 + Code2;
        ap.I(Code2, bArr2, i3);
        int i4 = i3 + 2;
        bArr2[i4] = 1;
        ap.I(32528, bArr2, i4 + 1);
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }

    public static int Code(byte[] bArr) {
        return (bArr.length - 5) - ap.I(bArr, bArr.length - 5);
    }

    public static String Code(byte[] bArr, int i2) {
        return ap.Code(bArr, i2);
    }

    public static boolean I(byte[] bArr) {
        return bArr != null && bArr.length >= 3 && ap.I(bArr, bArr.length + -2) == 32528 && bArr[bArr.length + -3] == 1;
    }

    public void J() {
    }

    public void B() {
        Z.A(this.r);
        for (int i2 = 1; i2 < M.length; i2++) {
            if (M[i2] != 0) {
                Z.A(M[i2]);
            }
        }
    }

    public void C() {
        this.r = Z.D(this.r);
        for (int i2 = 1; i2 < M.length; i2++) {
            if (M[i2] != 0) {
                M[i2] = Z.D(M[i2]);
            }
        }
    }

    public void Code(int i2, int i3) {
        Object y2 = Z.y(i2);
        if (y2 instanceof bg) {
            ((bg) y2).J = i3;
        } else if (y2 instanceof cc) {
            ((cc) y2).c = i3;
        } else if (y2 instanceof bu) {
            ((bu) y2).Code = i3;
        }
    }

    public void Code(Object obj) {
        if (obj instanceof bg) {
            ((bg) obj).b();
        } else if (obj instanceof cc) {
            cc ccVar = (cc) obj;
            ccVar.e();
            this.J.removeElement(obj);
            Z(ccVar);
            if (obj == this.B) {
                this.B = null;
            }
        } else if (obj instanceof bu) {
            ((bu) obj).Code();
        }
        Code.Z(obj);
    }

    public void Code(boolean z2) {
        boolean z3;
        an anVar;
        int i2 = 0;
        this.m = System.currentTimeMillis();
        s();
        if (db.c) {
            anVar = Z;
            i2 = 99;
        } else {
            if (z2 || b < 2) {
                z3 = true;
            } else {
                z3 = false;
            }
            int size = this.J.size();
            for (int i3 = 0; i3 < size; i3++) {
                cc ccVar = (cc) this.J.elementAt(i3);
                if (ccVar != this.B) {
                    ccVar.b().I(z3);
                } else {
                    ccVar.b().I(false);
                }
            }
            anVar = Z;
            if (z3) {
                i2 = 99;
            }
        }
        anVar.E(i2);
        Code.y();
        if (db.d > 0) {
            u();
        }
    }

    public final void p() {
        if (this.m + 5000 < System.currentTimeMillis()) {
            Code(false);
        }
    }

    public final synchronized void I(boolean z2) {
        this.A = z2;
        notifyAll();
    }

    public final synchronized void q() {
        if (!I()) {
            db.a(Code.J());
            this.y = true;
            notifyAll();
            while (this.y) {
                db.Code((Object) this, 0);
            }
        }
    }

    private synchronized void Code(int i2, int i3, int i4, int i5) {
        if (i4 > 0 && i5 > 0 && i2 + i4 > 0 && i3 + i5 > 0) {
            if (i2 < Code.J() && i3 < Code.B()) {
                if (this.v > 0) {
                    int i6 = this.t + this.v;
                    this.t = Math.min(this.t, i2);
                    this.v = Math.max(i2 + i4, i6) - this.t;
                    int i7 = this.u + this.w;
                    this.u = Math.min(this.u, i3);
                    this.w = Math.max(i3 + i5, i7) - this.u;
                } else {
                    this.t = i2;
                    this.u = i3;
                    this.v = i4;
                    this.w = i5;
                }
            }
        }
    }

    public static boolean r() {
        return I.t() - ad > 3000;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        Z.C();
        ad = t();
        r10.ae = 0;
        r10.af = 0;
        r10.ag = 0;
        r10.ah = 0;
        r10.ai = 0;
        r10.aj = 0;
        r10.ak = 0;
        r10.al = 0;
        r10.am = 0;
        r10.an = 0;
        r10.ao = 0;
        r10.ap = 0;
        r10.aq = 0;
        r10.ar = 0;
        r10.as = 0;
        r10.ax = 0;
        r10.ay = 0;
        b(r10.r);
        ad = Integer.MAX_VALUE;
        D();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        defpackage.cs.Code(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x008e, code lost:
        r2 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00ed, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00f4, code lost:
        r0 = true;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00cc A[SYNTHETIC, Splitter:B:41:0x00cc] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00ed A[ExcHandler: all (th java.lang.Throwable), PHI: r2 
      PHI: (r2v1 boolean) = (r2v5 boolean), (r2v5 boolean), (r2v0 boolean), (r2v0 boolean) binds: [B:44:0x00d0, B:45:?, B:13:0x0040, B:14:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:13:0x0040] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00f6  */
    public final void Code(br brVar) {
        boolean z2 = true;
        if (cu.B()) {
            cu.Code(brVar);
            return;
        }
        try {
            this.g = brVar;
            this.at = this.g.Code();
            this.au = this.g.I();
            this.av = this.g.Z();
            this.aw = this.g.J();
            long currentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                if (this.h || this.i) {
                    this.o = true;
                    notifyAll();
                    while (this.o) {
                        int currentTimeMillis2 = (int) ((4000 + currentTimeMillis) - System.currentTimeMillis());
                        if (currentTimeMillis2 <= 0) {
                            this.o = false;
                            Code(this.at, this.au, this.av, this.aw);
                            this.g = null;
                            return;
                        }
                        wait((long) currentTimeMillis2);
                    }
                } else {
                    this.h = true;
                }
            }
        } catch (Throwable th) {
            th = th;
            z2 = false;
            if (z2) {
                i();
            }
            this.g = null;
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public void b(int i2) {
        int i3;
        int i4;
        if (i2 == 0) {
            Code("paintnode");
            return;
        }
        an anVar = Z;
        int r2 = an.r();
        Code("paintnode");
        this.ae++;
        this.as += Z.v(i2) + 3;
        int B2 = Z.B(i2, 0);
        int B3 = Z.B(i2, 1);
        this.ax += B2;
        this.ay += B3;
        try {
            if (r2 == Z.d(37) || r2 == Z.d(38)) {
                this.as--;
                this.af++;
                boolean z2 = false;
                if (r2 == Z.d(38)) {
                    if (Z.B(i2, 7) == 1) {
                        int B4 = Z.B(i2, 3) + this.ax;
                        int B5 = Z.B(i2, 4) + this.ay;
                        int B6 = Z.B(i2, 5);
                        int B7 = Z.B(i2, 6);
                        z2 = true;
                        if (B4 < this.at + this.av && B4 + B6 > this.at && B5 < this.au + this.aw && B5 + B7 > this.au) {
                            z2 = false;
                        }
                    }
                }
                if (!z2) {
                    int B8 = Z.B(i2, 2);
                    int n2 = Z.n(B8);
                    Z.Code(B8, n2);
                    int[] iArr = Z.I;
                    an anVar2 = Z;
                    int i5 = n2 + 0;
                    for (int i6 = 0; i6 < i5; i6++) {
                        b(iArr[i6]);
                    }
                }
            } else if (r2 == Z.d(46)) {
                this.am++;
                this.g.Code((bu) Z.y(Z.B(i2, 2)), this.ax, this.ay);
            } else if (r2 == Z.d(48)) {
                this.ao++;
                bu buVar = (bu) Z.y(Z.B(i2, 2));
                int B9 = Z.B(i2, 3);
                int B10 = Z.B(i2, 5);
                int B11 = Z.B(i2, 6);
                int B12 = Z.B(i2, 7);
                int B13 = Z.B(i2, 8);
                int B14 = Z.B(i2, 9);
                int B15 = Z.B(i2, 10);
                int I2 = buVar.I();
                int Z2 = buVar.Z();
                int min = Math.min(I2 - B12, B14 - B12);
                int min2 = Math.min(I2 - B10, B14 - min);
                if ((B9 >>> 24) == 255) {
                    i4 = Math.min(Z2 - B13, B15 - B13);
                    i3 = Math.min(Z2 - B11, B15 - i4);
                } else {
                    i3 = B13;
                    i4 = B11;
                }
                this.g.Code(buVar, 0, 0, min, i4, this.ax, this.ay);
                this.g.Code(buVar, I2 - min2, 0, min2, i4, (this.ax + B14) - min2, this.ay);
                this.g.Code(buVar, 0, Z2 - i3, min, i3, this.ax, (this.ay + B15) - i3);
                this.g.Code(buVar, I2 - min2, Z2 - i3, min2, i3, (this.ax + B14) - min2, (this.ay + B15) - i3);
                Code(buVar, 0, B11, B10, (Z2 - B11) - B13, this.ax, this.ay + i4, B10, (B15 - i4) - i3);
                Code(buVar, B10, 0, (I2 - B10) - B12, B11, this.ax + min, this.ay, (B14 - min) - min2, B11);
                Code(buVar, I2 - B12, B11, B12, (Z2 - B11) - B13, (this.ax + B14) - B12, this.ay + i4, B12, (B15 - i4) - i3);
                Code(buVar, B10, Z2 - B13, (I2 - B10) - B12, B13, this.ax + min, (this.ay + B15) - B13, (B14 - min) - min2, B13);
                if ((B9 >>> 24) == 255) {
                    this.g.Z(this.ax + B10, this.ay + B11, (B14 - B10) - B12, (B15 - B11) - B13, B9);
                } else {
                    Code(buVar, B10, B11, (I2 - B10) - B12, (Z2 - B11) - B13, this.ax + B10, this.ay + B11, (B14 - B10) - B12, (B15 - B11) - B13);
                }
            } else if (r2 == Z.d(44)) {
                this.ak++;
                bp bpVar = (bp) Z.y(Z.B(i2, 3));
                this.g.Code(Z.f(Z.B(i2, 2)), this.ax, this.ay + bpVar.Z(), bpVar, Z.B(i2, 4));
            } else if (r2 == Z.d(45)) {
                this.al++;
                int B16 = Z.B(i2, 2);
                bp bpVar2 = (bp) Z.y(Z.B(B16, 1));
                char[] g2 = Z.g(Z.B(B16, 0));
                int length = g2.length;
                int B17 = Z.B(B16, 8);
                if ((B17 & 14) != 0) {
                    length = au.Code(g2, B17);
                }
                this.g.Code(g2, 0, length, this.ax, this.ay + bpVar2.Z(), bpVar2, Z.B(i2, 3));
            } else if (r2 == Z.d(42)) {
                this.ai++;
                this.g.J(this.ax, this.ay, Z.B(i2, 2), Z.B(i2, 3), Z.B(i2, 4));
            } else if (r2 == Z.d(43)) {
                this.aj++;
                this.g.Code(this.ax, this.ay, Z.B(i2, 2), Z.B(i2, 3), Z.B(i2, 4), Z.B(i2, 5));
            } else if (r2 == Z.d(47)) {
                this.an++;
                Code((bu) Z.y(Z.B(i2, 2)), Z.B(i2, 5), Z.B(i2, 6), Z.B(i2, 7), Z.B(i2, 8), this.ax, this.ay, Z.B(i2, 3), Z.B(i2, 4));
            } else if (r2 == Z.d(39)) {
                this.ag++;
                int i7 = this.at;
                int i8 = this.au;
                int i9 = this.av;
                int i10 = this.aw;
                this.at = Math.max(this.ax, this.at);
                this.av = Math.min(this.av + i7, this.ax + Z.B(i2, 3)) - this.at;
                this.au = Math.max(this.ay, this.au);
                this.aw = Math.min(this.aw + i8, this.ay + Z.B(i2, 4)) - this.au;
                if (this.av > 0 && this.aw > 0) {
                    this.g.Code(this.at, this.au, this.av, this.aw);
                    b(Z.B(i2, 2));
                    this.g.Code(i7, i8, i9, i10);
                }
                this.at = i7;
                this.au = i8;
                this.av = i9;
                this.aw = i10;
            } else if (r2 == Z.d(40)) {
                this.ap++;
                if (Z.B(i2, 5) == 0) {
                    br brVar = this.g;
                    int i11 = this.ax;
                    int i12 = this.ay;
                    int i13 = this.at;
                    int i14 = this.au;
                    int i15 = this.av;
                    int i16 = this.aw;
                    bu buVar2 = (bu) Z.y(Z.B(i2, 2));
                    this.av = buVar2.I();
                    this.aw = buVar2.Z();
                    this.at = 0;
                    this.au = 0;
                    this.ax = 0;
                    this.ay = 0;
                    this.g = buVar2.B();
                    b(Z.B(i2, 3));
                    this.at = i13;
                    this.au = i14;
                    this.av = i15;
                    this.aw = i16;
                    this.ax = i11;
                    this.ay = i12;
                    this.g = brVar;
                    Z.C(i2, 5, 1);
                }
                int B18 = Z.B(i2, 4);
                if (B18 != 0) {
                    b(B18);
                } else {
                    this.g.Code((bu) Z.y(Z.B(i2, 2)), this.ax, this.ay);
                }
            } else if (r2 == Z.d(41)) {
                this.ah++;
                this.g.Code(this.ax, this.ay, this.ax + Z.B(i2, 2), this.ay + Z.B(i2, 3), Z.B(i2, 4));
            } else if (r2 == Z.d(4)) {
                this.aq++;
                boolean z3 = true;
                int B19 = Z.B(Z.B(i2, 2), 0);
                int B20 = Z.B(Z.B(i2, 3), 0);
                if (B19 != 0) {
                    z3 = !((cc) Z.y(B19)).b().Code(this.g, this.ax, this.ay, Z.B(i2, 4), B20);
                }
                if (z3) {
                    this.g.Z(this.ax, this.ay, Z.B(i2, 4), this.aw - (this.ay - this.au), 16777215);
                }
            } else if (r2 == Z.d(36)) {
                this.ar++;
                b(Z.B(i2, 2));
            }
        } catch (Throwable th) {
        } finally {
            this.ax -= B2;
            this.ay -= B3;
        }
    }

    private void Code(bu buVar, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        if (i4 > 0 && i5 > 0) {
            this.g.Code(buVar, i2, i3, i4, i5, i6, i7, i8, i9);
        }
    }

    /* access modifiers changed from: protected */
    public final void s() {
        if (Code("vm_mem")) {
            Object[] c2 = Z.c();
            for (int length = c2.length - 1; length >= 0; length--) {
                if (c2[length] != null && (c2[length] instanceof bu)) {
                    ((bu) c2[length]).J();
                }
            }
            System.gc();
            Runtime.getRuntime().freeMemory();
        }
    }

    public void b() {
        Code.n();
    }

    public void d() {
    }

    public boolean Code(String str) {
        return false;
    }

    public InputStream I(String str) {
        return null;
    }

    public boolean c() {
        return false;
    }

    public byte[] Code(int i2, int i3, int i4, int i5, int i6) {
        return null;
    }

    public int t() {
        return (int) System.currentTimeMillis();
    }

    private static int Code(bu buVar) {
        if (buVar == null) {
            return Z.Code(49, 1, (Object) null);
        }
        if (buVar.Code == 0) {
            buVar.Code = Z.Code(49, 1, (Object) buVar);
        }
        return buVar.Code;
    }

    private static int Code(bg bgVar, int i2) {
        int m2;
        if (bgVar.B() && (m2 = bgVar.m()) <= i2) {
            return m2;
        }
        bgVar.I(false);
        int m3 = bgVar.m();
        if (m3 <= i2) {
            return m3;
        }
        bgVar.I(true);
        return bgVar.m();
    }

    public final void u() {
        int i2;
        int i3;
        if (!az) {
            int size = this.J.size();
            if (this.B != null) {
                int i4 = db.d * 1024;
                bg b2 = this.B.b();
                int q2 = b2.q(i4);
                if (q2 > i4) {
                    q2 = Code(b2, i4);
                }
                i2 = i4 - Math.max(q2, db.e * 1024);
                if (size > 1) {
                    i2 /= size - 1;
                }
            } else {
                i2 = db.d * 1024;
                if (size > 0) {
                    i2 /= size;
                }
            }
            int max = Math.max(1, i2);
            int i5 = 0;
            int i6 = 0;
            while (i5 < size) {
                cc ccVar = (cc) this.J.elementAt(i5);
                if (ccVar != this.B) {
                    bg b3 = ccVar.b();
                    int max2 = Math.max(1, max + i6);
                    int q3 = b3.q(max2);
                    if (q3 > max2) {
                        q3 = Code(b3, max2);
                    }
                    if (q3 > max) {
                        i3 = i6 - (q3 - max);
                    } else {
                        i3 = (max - q3) + i6;
                    }
                } else {
                    i3 = i6;
                }
                i5++;
                i6 = i3;
            }
            if (i6 < 0) {
                az = true;
                Code(true);
                az = false;
            }
        }
    }

    /* JADX WARNING: type inference failed for: r1v4, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r0v19, types: [byte] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=byte, code=int, for r0v19, types: [byte] */
    static void v() {
        int i2 = 0;
        if (S != null) {
            i2 = S[0];
        } else if (d != null) {
            i2 = d[0] - 5;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((i2 + 5) * 5) + 1);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeByte(i2 + 5);
            if (S != null) {
                dataOutputStream.write(S, 1, S.length - 1);
            }
            dataOutputStream.writeByte(3);
            dataOutputStream.writeInt(cu.Code);
            dataOutputStream.writeByte(4);
            dataOutputStream.writeInt(db.P);
            dataOutputStream.writeByte(17);
            dataOutputStream.writeInt(cz.Code);
            dataOutputStream.writeByte(38);
            dataOutputStream.writeInt(db.T);
            dataOutputStream.writeByte(40);
            dataOutputStream.writeInt(db.U);
        } catch (IOException e2) {
        }
        d = byteArrayOutputStream.toByteArray();
    }

    /* access modifiers changed from: package-private */
    public final synchronized void c(int i2) {
        int i3 = 0;
        synchronized (this) {
            if (V != null) {
                int length = V.length;
                while (true) {
                    if (i3 < length) {
                        if (ap.J(V, i3) == i2) {
                            break;
                        }
                        i3 += 4;
                    } else {
                        byte[] bArr = new byte[(length + 4)];
                        System.arraycopy(V, 0, bArr, 0, length);
                        V = bArr;
                        i3 = length;
                        break;
                    }
                }
            } else {
                V = new byte[4];
            }
            V[i3] = (byte) ((-16777216 & i2) >> 24);
            V[i3 + 1] = (byte) ((16711680 & i2) >> 16);
            V[i3 + 2] = (byte) ((65280 & i2) >> 8);
            V[i3 + 3] = (byte) (i2 & 255);
            if (U == null) {
                byte[] bArr2 = new byte[(V.length + 1)];
                U = bArr2;
                bArr2[0] = (byte) (V.length / 4);
                System.arraycopy(V, 0, U, 1, V.length);
            } else {
                byte[] bArr3 = new byte[(U.length + 4)];
                System.arraycopy(U, 0, bArr3, 0, U.length);
                System.arraycopy(V, i3, bArr3, U.length, 4);
                bArr3[0] = (byte) ((bArr3.length - 1) / 4);
                U = bArr3;
            }
            e = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void w() {
        V = null;
    }

    /* access modifiers changed from: protected */
    public void Code(cc ccVar) {
    }

    /* access modifiers changed from: protected */
    public void x() {
    }

    public final void y() {
        int size = this.J.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((cc) this.J.elementAt(i2)).b().I(true);
        }
        Object[] c2 = Z.c();
        Vector vector = new Vector();
        for (int i3 = 0; i3 < c2.length; i3++) {
            if (c2[i3] instanceof bu) {
                vector.addElement(c2[i3]);
            }
        }
        Code(vector);
    }

    private void Code(Vector vector) {
        int[] iArr = new int[vector.size()];
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            bu buVar = (bu) vector.elementAt(i3);
            if (buVar.Code != 0) {
                iArr[i2] = buVar.Code;
                i2++;
            }
        }
        if (i2 > 0) {
            int[] iArr2 = new int[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = iArr[i4];
                int i6 = i4;
                int i7 = 0;
                while (i7 < i6) {
                    int i8 = (i7 + i6) / 2;
                    if (i5 < iArr2[i8]) {
                        i6 = i8;
                    } else {
                        i7 = i8 + 1;
                    }
                }
                System.arraycopy(iArr2, i7, iArr2, i7 + 1, i4 - i7);
                iArr2[i7] = i5;
            }
            Z.Code(iArr2);
            Z(79);
            return;
        }
        i();
    }

    private synchronized void M() {
        Iterator it = this.J.iterator();
        while (it.hasNext()) {
            ((cc) it.next()).m();
        }
    }
}
