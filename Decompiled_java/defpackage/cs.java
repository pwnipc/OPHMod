package defpackage;

import andhook.lib.xposed.callbacks.XCallback;
import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: cs  reason: default package */
/* compiled from: Source */
public final class cs implements Runnable {
    protected static byte Code = -1;
    private static boolean W = false;
    private static final Object X = new Object();
    private static int Y = -1;
    static Hashtable Z = new Hashtable();
    private static boolean aa;
    private static Vector ae = new Vector(2);
    private static bp af = null;
    static boolean b;
    private static byte f = -1;
    private static String g = null;
    private static int h;
    private static int j = 0;
    private static boolean k = false;
    private static boolean l;
    private static boolean m;
    private static boolean n = true;
    private static int o = 0;
    private static byte p = -1;
    private static String q = "";
    private static String r = "";
    private static ct y;
    private long A;
    bs B;
    cl C;
    private long D;
    private int E;
    private final boolean F;
    private by G;
    private by H;
    byte[] I = new byte[1024];
    bs J;
    private byte[] K;
    private Object[] L = new Object[124];
    private int[] M = new int[124];
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private bc R;
    private be S;
    private Object[] T;
    private int U;
    private int V;
    cl a;
    private final int ab;
    private boolean ac = false;
    private final boolean ad;
    private String[] c;
    private cp d;
    private byte e;
    private int i = 0;
    private boolean s;
    private Vector t = new Vector();
    private DataInputStream u;
    private DataOutputStream v;
    private DataInputStream w;
    private DataOutputStream x;
    private long z;

    public cs(int i2, byte b2, boolean z2, boolean z3) {
        int i3;
        boolean z4;
        boolean z5 = true;
        this.ab = i2;
        this.ad = z3;
        if (z2) {
            this.d = cz.I(i2);
            this.ac = true;
        } else {
            this.d = cz.Code(i2);
        }
        boolean L2 = ar.Code.L();
        if (L2) {
            i3 = 3;
        } else {
            i3 = 2;
        }
        this.c = new String[i3];
        if (!this.d.I()) {
            this.c[0] = "socket://server4.operamini.com/" + this.d.Z + ":" + this.d.B;
        } else {
            this.c[0] = "socket://do_not_use_me:0";
        }
        if (L2) {
            this.c[1] = "http://10.0.0.172:80/";
        }
        this.c[this.c.length - 1] = d();
        if (this.c.length != h) {
            h = this.c.length;
            J();
            z4 = true;
        } else {
            z4 = false;
        }
        String Z2 = this.d.Z();
        Object[] objArr = (Object[]) Z.get(Z2);
        if (objArr != null) {
            this.T = objArr;
            this.S = (be) objArr[0];
        } else {
            this.S = new be(db.Code(db.J(this.d.C), 0, 160));
            this.T = new Object[2];
            this.T[0] = this.S;
            this.T[1] = "";
            Z.put(Z2, this.T);
            z4 = true;
        }
        if (z4) {
            db.a("md");
        }
        this.e = b2 == -1 ? (Code < 0 || this.d.I()) ? p >= 0 ? p : 1 : Code : b2;
        this.F = db.F < 160 ? false : z5;
        if (ae.size() <= i2) {
            ae.setSize(i2 + 1);
        }
        if (z3) {
            ae.setElementAt(this, i2);
        }
        db.Code((Runnable) this);
    }

    private String d() {
        return "http://server4.operamini.com/" + this.d.Z + ":" + this.d.J + "/";
    }

    public final cp Code() {
        return this.d;
    }

    public static void Code(int i2) {
        if (i2 != j) {
            J(0);
            j = i2;
            k = true;
        }
    }

    static ct Code(Object[] objArr, int[] iArr, int i2, boolean z2) {
        ct ctVar = new ct(objArr, iArr, i2, z2);
        I(ctVar);
        f();
        return ctVar;
    }

    private ct e() {
        synchronized (X) {
            if (!B() && this == ae.elementAt(this.ab)) {
                ae.setElementAt((Object) null, this.ab);
            }
            do {
                if (y == null || (y != null && (this.ab != y.Code() || (B() && g() && this != y.Z())))) {
                    if (this.Q) {
                        for (int i2 = 0; i2 < this.t.size(); i2++) {
                            ct ctVar = (ct) this.t.elementAt(i2);
                            if (ctVar.l() != 0) {
                                return ctVar;
                            }
                        }
                    }
                    this.Q = false;
                    db.Code(X, 0);
                } else if (this.P) {
                    f();
                    return null;
                } else {
                    ct ctVar2 = y;
                    y = ctVar2.B();
                    int i3 = 1;
                    while (Z(i3) != null) {
                        i3++;
                    }
                    this.t.addElement(ctVar2);
                    ctVar2.Code(this, i3);
                    f();
                    return ctVar2;
                }
            } while (!this.P);
            f();
            return null;
        }
    }

    private static void I(ct ctVar) {
        synchronized (X) {
            ctVar.Code(y);
            y = ctVar;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        return;
     */
    private static void f() {
        byte b2 = 1;
        synchronized (X) {
            if (!m) {
                if (k) {
                    k = false;
                    J();
                }
                if (y != null) {
                    int Code2 = y.Code();
                    boolean I2 = y.I();
                    cp Code3 = cz.Code(Code2);
                    if (Code == -2 && p == -2) {
                        Code((byte) -1, (String) null);
                        I((byte) -1, (String) null);
                    }
                    if (Code3.I() && p == -2) {
                        I((byte) -1, (String) null);
                    }
                    if (((Code3.I() && p == -1) || (!Code3.I() && (Code == -1 || (Code == -2 && p == -1)))) && !l) {
                        o++;
                        f = -1;
                        n = true;
                        l = true;
                    }
                    if (ae.size() <= Code2 || ae.elementAt(Code2) == null) {
                        ci ciVar = ar.Code;
                        if (!n) {
                            b2 = -1;
                        }
                        ciVar.Code(Code2, b2, false, I2);
                    } else {
                        db.Code(X);
                    }
                }
            }
        }
    }

    static void Code(ct ctVar, boolean z2) {
        boolean z3;
        synchronized (X) {
            if (!ctVar.k()) {
                ctVar.I(0);
                cs Z2 = ctVar.Z();
                if (Z2 != null) {
                    boolean g2 = Z2.g();
                    int i2 = 0;
                    while (g2 && i2 < Z2.t.size()) {
                        ct ctVar2 = (ct) Z2.t.elementAt(i2);
                        if (ctVar2.k() || !ctVar2.g()) {
                            z3 = g2;
                        } else {
                            z3 = false;
                        }
                        i2++;
                        g2 = z3;
                    }
                    if (g2 || !Z2.B()) {
                        Z2.Code(false, 0);
                    } else {
                        Z2.Q = true;
                        ctVar.Z(z2 ? 7 : 6);
                        db.Code(X);
                    }
                } else if (y != null) {
                    y = y.I(ctVar);
                }
            }
        }
    }

    private synchronized void I(int i2) {
        Z(Z(i2));
    }

    private synchronized void Z(ct ctVar) {
        if (ctVar != null) {
            this.t.removeElement(ctVar);
        }
    }

    private synchronized ct Z(int i2) {
        ct ctVar;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= this.t.size()) {
                ctVar = null;
                break;
            }
            ctVar = (ct) this.t.elementAt(i4);
            if (ctVar.C() == i2) {
                break;
            }
            i3 = i4 + 1;
        }
        return ctVar;
    }

    private void Z(boolean z2) {
        Code(z2, 0);
    }

    private void Code(boolean z2, int i2) {
        if (!B(i2)) {
            return;
        }
        if (z2) {
            run();
        } else {
            db.Code((Runnable) this);
        }
    }

    public static void I() {
        int size = ae.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                cs csVar = (cs) ae.elementAt(i2);
                if (csVar != null) {
                    csVar.s |= false;
                    csVar.Code(false, 0);
                }
            } catch (Throwable th) {
            }
        }
    }

    private boolean g() {
        return ae.elementAt(this.ab) != this;
    }

    public static void Z() {
        synchronized (X) {
            int size = ae.size();
            for (int i2 = 0; i2 < size; i2++) {
                try {
                    cs csVar = (cs) ae.elementAt(i2);
                    if (csVar != null) {
                        ae.setElementAt((Object) null, i2);
                        csVar.s = false;
                        csVar.h();
                        if (csVar.t.isEmpty()) {
                            csVar.Code(false, 0);
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    private static void J(int i2) {
        synchronized (X) {
            while (y != null) {
                y.I(i2);
                y = y.B();
            }
        }
    }

    private synchronized void h() {
        int i2;
        int i3 = 0;
        while (i3 < this.t.size()) {
            ct ctVar = (ct) this.t.elementAt(i3);
            if (!ctVar.g()) {
                J(ctVar);
                i2 = i3 - 1;
            } else {
                i2 = i3;
            }
            i3 = i2 + 1;
        }
    }

    private synchronized void J(ct ctVar) {
        Z(ctVar);
        ctVar.J();
        I(ctVar);
    }

    private boolean B(int i2) {
        boolean z2;
        synchronized (X) {
            if (ae.elementAt(this.ab) == this) {
                ae.setElementAt((Object) null, this.ab);
            }
            if (n || this.s) {
                z2 = true;
            } else {
                z2 = false;
            }
            for (int i3 = 0; i3 < this.t.size(); i3++) {
                ct ctVar = (ct) this.t.elementAt(i3);
                if (ctVar.k() || ctVar.g() || (!z2 && ctVar.h())) {
                    ctVar.I(i2);
                } else {
                    if (!z2) {
                        ctVar.i();
                    }
                    ctVar.J();
                    I(ctVar);
                }
            }
            this.t.removeAllElements();
            if (this.P) {
                return false;
            }
            this.P = true;
            this.v = null;
            this.u = null;
            f();
            db.Code(X);
            return true;
        }
    }

    private synchronized void C(int i2) {
        this.D = System.currentTimeMillis();
        this.E = i2;
    }

    private synchronized void i() {
        j();
        this.E = 0;
    }

    private synchronized void j() {
        if (this.P) {
            throw new IOException();
        }
        this.z = System.currentTimeMillis();
    }

    private synchronized boolean k() {
        boolean z2;
        long max;
        if (this.E > 0) {
            if (this.z >= this.D) {
                max = Math.max(this.z, this.A) + 240000;
            } else {
                max = (B() ? this.D : Math.max(this.D, this.A)) + ((long) this.E);
            }
            if (max - System.currentTimeMillis() < 0) {
                z2 = true;
            }
        }
        z2 = false;
        return z2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(ct ctVar) {
        if (k()) {
            Code(false, 2);
            if (ctVar.k()) {
                throw new IOException();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:103:0x02ed  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x03dc A[LOOP:4: B:137:0x03d7->B:139:0x03dc, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0110  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0171  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0174  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0178  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x01d9  */
    private byte[] Code(ct ctVar, int i2) {
        int i3;
        Object Code2;
        int i4;
        int i5;
        int i6;
        byte[] Code3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        synchronized (X) {
            Object[] a2 = ctVar.a();
            int[] b2 = ctVar.b();
            int i12 = 0;
            String str = (String) this.T[1];
            if (!this.O) {
                int length = this.S.C.length + (str + "\u0000" + ar.Code.U() + "\u0000").getBytes().length + 41;
                if (this.F) {
                    i10 = db.J(1).length();
                } else {
                    i10 = 0;
                }
                int i13 = length + i10;
                if (this.v == null) {
                    i11 = 2;
                } else {
                    i11 = 0;
                }
                i12 = i11 + i13 + this.S.B.length;
                this.G = this.H;
                this.H = null;
                if (this.N > 0) {
                    this.K = null;
                    this.G = null;
                    this.N = 0;
                }
                if (this.K != null) {
                    i12 += this.K.length + 8;
                } else {
                    for (int i14 = 0; i14 < 124; i14++) {
                        this.L[i14] = null;
                        this.M[i14] = 0;
                    }
                    this.G = null;
                }
                if (this.G == null) {
                    i3 = i12 + 8;
                    if ((this.d.I & 4) == 0) {
                        a2[77] = null;
                        a2[73] = null;
                        a2[79] = null;
                        a2[117] = null;
                        a2[118] = null;
                        b2[99] = 0;
                        a2[86] = null;
                        a2[94] = null;
                        b2[85] = 0;
                    }
                    b2[0] = 16;
                    a2[40] = str;
                    a2[33] = db.J(2);
                    if (db.G == null) {
                        db.Code(false);
                    }
                    a2[6] = db.G;
                    if (db.H != null) {
                        a2[28] = db.H;
                    }
                    Code2 = ar.Code.Code("OM-Install-Referrer");
                    if (Code2 == null) {
                        Code2 = "";
                    }
                    a2[100] = Code2;
                    a2[120] = ar.Code.Code("OM-Facebook-Attribution-Id");
                    b2[50] = !db.O ? 1 : 0;
                    if (!B()) {
                        b2[24] = b2[24] & -131073;
                    }
                    i4 = 4;
                    for (i5 = 0; i5 < 124; i5++) {
                        if (a2[i5] != null) {
                            if (!(a2[i5] instanceof byte[]) || ((this.L[i5] instanceof byte[]) && db.Code((byte[]) a2[i5], (byte[]) this.L[i5]))) {
                                if ((this.L[i5] == null || !a2[i5].equals(this.L[i5])) && (a2[i5] instanceof String)) {
                                    int Code4 = ap.Code((String) a2[i5]);
                                    i8 = (Code4 <= 254 ? 4 : 7) + Code4;
                                    i9 = i4;
                                }
                            } else {
                                i8 = ((byte[]) a2[i5]).length + 7;
                                i9 = i4;
                            }
                        } else if (this.M[i5] == b2[i5] && this.L[i5] == null) {
                        } else if (b2[i5] <= 254) {
                            i8 = 4;
                            i9 = i4;
                        } else {
                            i8 = 7;
                            i9 = i4;
                        }
                        i4 = i9 + i8;
                    }
                    int i15 = i3 + i4 + 16 + ((i4 / 65529) * 8);
                    bf bfVar = new bf(i15);
                    DataOutputStream dataOutputStream = new DataOutputStream(bfVar);
                    int i16 = 0;
                    if (!this.O) {
                        if (this.v == null) {
                            dataOutputStream.write(1);
                            dataOutputStream.write(2);
                            i7 = 2;
                        } else {
                            i7 = 0;
                        }
                        dataOutputStream.write(1);
                        dataOutputStream.write(this.S.b, 0, 8);
                        dataOutputStream.writeInt(this.S.Code[0]);
                        dataOutputStream.write(this.S.C);
                        dataOutputStream.writeShort(i2);
                        dataOutputStream.write(this.S.B);
                        int size = bfVar.size();
                        dataOutputStream.writeUTF(this.F ? db.J(1) : "");
                        this.J.Code(bfVar.Code(), i7, bfVar.size() - i7);
                        this.B.Code(bfVar.Code(), i7, bfVar.size() - i7);
                        this.J.I(bfVar.Code(), bfVar.size(), 16);
                        bfVar.Code(bfVar.size() + 16);
                        this.C.Code(bfVar.Code(), size, bfVar.size() - size);
                        i16 = bfVar.size();
                        byte[] bytes = (str + "\u0000" + ar.Code.U() + "\u0000").getBytes();
                        Code(bfVar, 128, 3, bytes.length);
                        dataOutputStream.write(bytes);
                        if (this.K != null) {
                            Code(bfVar, 15, 0, 8);
                            dataOutputStream.write(this.K);
                        }
                        if (this.G == null) {
                            Code(bfVar, 16, 0, 0);
                        }
                    }
                    int i17 = i16;
                    this.N++;
                    Code(bfVar, 5, ctVar.C(), 0);
                    Code(bfVar, 22, ctVar.C(), Math.min(i4, 65529));
                    dataOutputStream.writeInt((i4 - 4) + Code(ctVar.Code(false)));
                    for (i6 = 0; i6 < 124; i6++) {
                        if (a2[i6] != null) {
                            if ((a2[i6] instanceof byte[]) && (!(this.L[i6] instanceof byte[]) || !db.Code((byte[]) a2[i6], (byte[]) this.L[i6]))) {
                                dataOutputStream.write(1);
                                dataOutputStream.writeShort(i6);
                                dataOutputStream.writeInt(((byte[]) a2[i6]).length);
                                dataOutputStream.write((byte[]) a2[i6]);
                            } else if ((this.L[i6] == null || !a2[i6].equals(this.L[i6])) && (a2[i6] instanceof String)) {
                                if (ap.Code((String) a2[i6]) <= 254) {
                                    dataOutputStream.write(0);
                                    dataOutputStream.write(i6 >> 16);
                                    int size2 = bfVar.size();
                                    dataOutputStream.writeUTF((String) a2[i6]);
                                    bfVar.Code()[size2] = (byte) i6;
                                } else {
                                    dataOutputStream.write(1);
                                    dataOutputStream.writeShort(i6);
                                    String str2 = (String) a2[i6];
                                    byte[] bArr = new byte[ap.Code(str2)];
                                    int i18 = 0;
                                    for (int i19 = 0; i19 < str2.length(); i19++) {
                                        i18 += ap.Code((int) str2.charAt(i19), bArr, i18);
                                    }
                                    dataOutputStream.writeInt(bArr.length);
                                    dataOutputStream.write(bArr);
                                }
                            }
                        } else if (this.M[i6] != b2[i6] || this.L[i6] != null) {
                            int i20 = b2[i6];
                            if (i20 <= 254) {
                                dataOutputStream.write(2);
                                dataOutputStream.writeShort(i6);
                                dataOutputStream.write(i20);
                            } else {
                                dataOutputStream.write(3);
                                dataOutputStream.writeShort(i6);
                                dataOutputStream.writeInt(i20);
                            }
                        }
                        this.L[i6] = a2[i6];
                        this.M[i6] = b2[i6];
                    }
                    int size3 = bfVar.size() - i4;
                    while (i4 > 65529) {
                        bfVar.Code(bfVar.size() + 8);
                        System.arraycopy(bfVar.Code(), 65529 + size3, bfVar.Code(), 65529 + size3 + 8, i4 - 65529);
                        size3 += 65537;
                        i4 -= 65529;
                        Code(bfVar.Code(), size3 - 8, 22, ctVar.C(), Math.min(i4, 65529));
                    }
                    Code(bfVar.Code(), i17, i15);
                    this.O = true;
                    Code3 = bfVar.Code();
                }
            }
            i3 = i12;
            if ((this.d.I & 4) == 0) {
            }
            b2[0] = 16;
            a2[40] = str;
            a2[33] = db.J(2);
            if (db.G == null) {
            }
            a2[6] = db.G;
            if (db.H != null) {
            }
            Code2 = ar.Code.Code("OM-Install-Referrer");
            if (Code2 == null) {
            }
            a2[100] = Code2;
            a2[120] = ar.Code.Code("OM-Facebook-Attribution-Id");
            b2[50] = !db.O ? 1 : 0;
            if (!B()) {
            }
            i4 = 4;
            while (i5 < 124) {
            }
            int i152 = i3 + i4 + 16 + ((i4 / 65529) * 8);
            bf bfVar2 = new bf(i152);
            DataOutputStream dataOutputStream2 = new DataOutputStream(bfVar2);
            int i162 = 0;
            if (!this.O) {
            }
            int i172 = i162;
            this.N++;
            Code(bfVar2, 5, ctVar.C(), 0);
            Code(bfVar2, 22, ctVar.C(), Math.min(i4, 65529));
            dataOutputStream2.writeInt((i4 - 4) + Code(ctVar.Code(false)));
            while (i6 < 124) {
            }
            int size32 = bfVar2.size() - i4;
            while (i4 > 65529) {
            }
            Code(bfVar2.Code(), i172, i152);
            this.O = true;
            Code3 = bfVar2.Code();
        }
        return Code3;
    }

    private static int Code(Hashtable hashtable) {
        if (hashtable == null) {
            return 0;
        }
        int i2 = 7;
        Enumeration keys = hashtable.keys();
        while (true) {
            int i3 = i2;
            if (!keys.hasMoreElements()) {
                return i3;
            }
            String str = (String) keys.nextElement();
            Object[] objArr = (Object[]) hashtable.get(str);
            i2 = ((Integer) objArr[1]).intValue() + 4 + i3 + ap.Code(str) + 2 + ap.Code((String) objArr[0]) + 2;
        }
    }

    private void B(ct ctVar) {
        Hashtable Code2;
        InputStream inputStream;
        int read;
        if (ctVar != null && (Code2 = ctVar.Code(true)) != null) {
            int priority = Thread.currentThread().getPriority();
            Thread.currentThread().setPriority(1);
            bf bfVar = new bf(4104);
            DataOutputStream dataOutputStream = new DataOutputStream(bfVar);
            Code(bfVar, 22, ctVar.C(), 7);
            dataOutputStream.write(1);
            dataOutputStream.writeShort(9);
            dataOutputStream.writeInt(Code(Code2) - 7);
            Code(bfVar.Code(), 0, 15);
            Code(bfVar.Code(), 15);
            bfVar.Code(0);
            InputStream inputStream2 = null;
            try {
                Enumeration keys = Code2.keys();
                while (true) {
                    try {
                        inputStream = inputStream2;
                        if (keys.hasMoreElements()) {
                            String str = (String) keys.nextElement();
                            Object[] objArr = (Object[]) Code2.get(str);
                            int Code3 = ap.Code((String) objArr[0]) + ap.Code(str) + 8;
                            Code(bfVar, 22, ctVar.C(), Code3);
                            dataOutputStream.writeUTF(str);
                            dataOutputStream.writeUTF((String) objArr[0]);
                            int intValue = ((Integer) objArr[1]).intValue();
                            dataOutputStream.writeInt(intValue);
                            Code(bfVar.Code(), 0, Code3 + 8);
                            Code(bfVar.Code(), Code3 + 8);
                            bfVar.Code(0);
                            inputStream2 = ar.c.Code((String) objArr[0], false, 1).Code();
                            byte[] Code4 = bfVar.Code();
                            int i2 = 0;
                            while (!ctVar.k() && (read = inputStream2.read(Code4, 8, 4096)) >= 0 && i2 < intValue) {
                                i2 += read;
                                Code(Code4, 0, 22, ctVar.C(), read);
                                Code(Code4, 0, read + 8);
                                Code(Code4, read + 8);
                            }
                            db.Code(inputStream2);
                        } else {
                            db.Code(inputStream);
                            Thread.currentThread().setPriority(priority);
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream;
                        db.Code(inputStream2);
                        Thread.currentThread().setPriority(priority);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static void Code(bf bfVar, int i2, int i3, int i4) {
        bfVar.Code(bfVar.size() + 8);
        Code(bfVar.Code(), bfVar.size() - 8, i2, i3, i4);
    }

    private static void Code(byte[] bArr, int i2, int i3, int i4, int i5) {
        bArr[i2 + 4 + 0] = (byte) ((i5 + 2) >> 8);
        bArr[i2 + 4 + 1] = (byte) (i5 + 2);
        bArr[i2 + 4 + 2] = (byte) i3;
        bArr[i2 + 4 + 3] = (byte) i4;
    }

    private void Code(byte[] bArr, int i2) {
        this.v.write(bArr, 0, i2);
        if (B()) {
            this.v.flush();
        }
        this.A = System.currentTimeMillis();
    }

    private void Code(int i2, int i3) {
        this.u.readFully(this.I, i2, i3);
        db.Code((long) i3, 0, 0);
    }

    public static void J() {
        synchronized (X) {
            if (!m) {
                Code((byte) -1, (String) null);
                I((byte) -1, (String) null);
                o++;
                n = true;
                Z();
            }
        }
    }

    public final boolean B() {
        return this.c[this.e].startsWith("socket://server4.operamini.com/");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private boolean l() {
        boolean z2;
        boolean z3;
        synchronized (X) {
            if (!l) {
                return false;
            }
            int i2 = o;
            l = false;
            m = true;
            try {
                if (f >= this.c.length - 1) {
                    f = -1;
                }
                boolean z4 = false;
                boolean z5 = false;
                cs csVar = this;
                while (true) {
                    if (!z5) {
                        f = (byte) (f + 1);
                    }
                    if (f < this.c.length) {
                        z2 = z4;
                    } else if (z4) {
                        m();
                        m = false;
                        f();
                        return true;
                    } else {
                        cp I2 = cz.I(this.ab);
                        if (!this.d.a.equals(I2.a) || !this.d.C.equals(I2.C) || this.d.J != I2.J) {
                            Enumeration elements = Z.elements();
                            while (elements.hasMoreElements()) {
                                ((be) ((Object[]) elements.nextElement())[0]).Code();
                            }
                            f = 0;
                            z2 = true;
                        } else {
                            m();
                            m = false;
                            f();
                            return true;
                        }
                    }
                    if (!this.c[f].startsWith("socket://server4.operamini.com/") || (Code < 0 && !W && !this.d.I())) {
                        this.S.Code();
                        db.a("md");
                        if (csVar == null) {
                            csVar = ar.Code.Code(this.ab, f, z2, this.ad);
                        } else {
                            csVar.K = null;
                            csVar.H = null;
                            csVar.e = f;
                            if (csVar.ad) {
                                ae.setElementAt(csVar, this.ab);
                            }
                            db.Code((Runnable) csVar);
                        }
                        while (n && !csVar.P && !csVar.k()) {
                            db.Code(X, 1000);
                        }
                        if (n && i2 == o) {
                            if (csVar.i != 1 || z5) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            if (csVar.i == 2) {
                                J(4);
                                f = -1;
                                db.a("md");
                                m = false;
                                f();
                                return true;
                            }
                            if (csVar.B() && !z3 && !this.c[f + 1].startsWith("socket://server4.operamini.com/")) {
                                Code((byte) -2, (String) null);
                            }
                            csVar.Code(false, 0);
                            z5 = z3;
                            csVar = null;
                            z4 = z2;
                        }
                    } else {
                        if (W) {
                            Code((byte) -2, (String) null);
                        }
                        z4 = z2;
                        z5 = false;
                    }
                }
                m = false;
                f();
                return true;
            } catch (Throwable th) {
                m = false;
                f();
                throw th;
            }
        }
    }

    private static void m() {
        J(0);
        Code((byte) -2, (String) null);
        I((byte) -2, (String) null);
        f = -1;
        db.a("md");
    }

    private static void Code(byte b2, String str) {
        Code = b2;
        q = str;
    }

    private static void I(byte b2, String str) {
        p = b2;
        r = str;
    }

    public static void C() {
        if (!n) {
            J();
        }
        throw new IOException();
    }

    public static void Code(boolean z2) {
        synchronized (X) {
            if (W != z2) {
                W = z2;
                J();
                db.a("md");
            }
        }
    }

    private void Code(ct ctVar, byte[] bArr) {
        String str;
        String str2;
        String str3;
        boolean z2;
        String Code2;
        String str4 = this.c[this.e];
        int indexOf = str4.indexOf(59);
        if (indexOf >= 0) {
            String substring = str4.substring(indexOf);
            String substring2 = str4.substring(0, indexOf);
            str = substring;
            str2 = substring2;
        } else {
            str = "";
            str2 = str4;
        }
        Y = this.ab;
        aa = this.ac;
        if (B()) {
            if (this.v == null) {
                bc Code3 = ar.Code.Code(str2, str);
                this.R = Code3;
                this.v = Code3.I();
                this.x = this.v;
                this.u = Code3.Z();
                this.w = this.u;
            }
            Code(bArr, bArr.length);
            if (ctVar != null) {
                ctVar.p();
            }
            B(ctVar);
            return;
        }
        String str5 = "";
        if (ctVar != null) {
            Object[] a2 = ctVar.a();
            str3 = (String) a2[53];
            str5 = (String) a2[42];
        } else {
            str3 = "server:test";
        }
        if ((this.d.I & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            String Code4 = Code(str3, str5);
            if (str3 != null && (str3.startsWith("b:") || str3.startsWith("javascript:"))) {
                str3 = Code((String) ctVar.a()[38], (String) null);
            } else if (!"".equals(Code4)) {
                str3 = Code4;
            } else if (str3 == null) {
                str3 = "internal";
            }
            str2 = str2 + str3;
        }
        bc Code5 = ar.Code.Code(str2, str, "POST");
        this.R = Code5;
        if (str2.startsWith("http://10.0.0.172")) {
            Object[] e2 = db.e(d());
            String str6 = ((String) e2[1]) + ":" + e2[2];
            if (str6 != null) {
                Code5.Code("X-Online-Host", str6);
            }
        }
        Code5.Code("Content-Type", "application/xml");
        this.v = Code5.I();
        this.x = this.v;
        Code(bArr, bArr.length);
        B(ctVar);
        this.v.close();
        if (ctVar != null) {
            ctVar.p();
        }
        this.v = null;
        this.u = Code5.Z();
        this.w = this.u;
        int J2 = Code5.J();
        if (J2 == 301 || J2 == 302 || J2 == 303 || J2 == 307) {
            this.i = 1;
            if (ctVar != null && this.d.Code() && (Code2 = Code5.Code("Location")) != null && Code2.length() > 0) {
                if (ctVar.Code(Code2)) {
                    J(ctVar);
                    f();
                } else {
                    ctVar.close();
                }
            }
            Z(false);
        } else if (J2 == 403) {
            this.i = 2;
            try {
                StringBuffer stringBuffer = new StringBuffer();
                int i2 = 0;
                while (true) {
                    int read = this.u.read();
                    if (read <= 32 || (i2 = i2 + 1) > 256) {
                        break;
                    }
                    stringBuffer.append((char) read);
                    if (i2 == 4 && !stringBuffer.toString().toLowerCase().equals("http")) {
                        stringBuffer.setLength(0);
                        break;
                    }
                }
                g = stringBuffer.length() > 0 ? stringBuffer.toString() : null;
            } catch (Throwable th) {
            }
            Code(false, 4);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public final void run() {
        try {
            if (this.P) {
                db.Code((OutputStream) this.x);
                db.Code((InputStream) this.w);
                this.R.Code();
            } else if (l()) {
            } else {
                if (this.O) {
                    byte[] bArr = new byte[8];
                    while (true) {
                        ct e2 = e();
                        if (e2.k()) {
                            int l2 = e2.l();
                            e2.Z(0);
                            Code(bArr, 0, l2, e2.C(), 0);
                            Code(bArr, 0, 8);
                            Code(bArr, 8);
                            if (l2 == 7) {
                                Z(e2);
                            }
                        } else if (!e2.g()) {
                            C((int) XCallback.PRIORITY_HIGHEST);
                            Code(e2, Code(e2, 0));
                        }
                    }
                } else {
                    boolean z2 = n;
                    this.S.Z();
                    int Code2 = this.S.Code(this);
                    if (Code2 < 0) {
                        byte[] bArr2 = new byte[15];
                        bArr2[0] = 1;
                        bArr2[1] = 2;
                        bArr2[2] = 0;
                        db.I(this.S.b);
                        System.arraycopy(this.S.b, 0, this.S.a, 0, 8);
                        System.arraycopy(this.S.a, 0, bArr2, 3, 8);
                        ap.Z(this.S.Code[0], bArr2, 11);
                        C(30000);
                        Code((ct) null, bArr2);
                        Code(0, 5);
                        if (this.I[0] == 2) {
                            n();
                            synchronized (X) {
                                if (n) {
                                    n = false;
                                    m = false;
                                    String str = this.c[this.e];
                                    String str2 = null;
                                    if (str.indexOf(59) >= 0) {
                                        str2 = str.substring(str.indexOf(59));
                                    }
                                    if (B()) {
                                        Code(this.e, str2);
                                    } else {
                                        I(this.e, str2);
                                    }
                                    if (this.ac && cz.I()) {
                                        ar arVar = ar.I;
                                        ar.v();
                                        Code(cz.Code);
                                    }
                                    f = -1;
                                    db.M = true;
                                    db.N = true;
                                    db.a("md");
                                }
                            }
                            if (this.S.I()) {
                                this.S.Code();
                                J(1);
                                Code(true, 0);
                                return;
                            } else if (!B()) {
                                this.s = true;
                                Code(true, 0);
                                return;
                            }
                        } else if (!C((ct) null)) {
                            this.i = 1;
                            e();
                            Code(true, 0);
                            return;
                        } else {
                            return;
                        }
                    }
                    if (Code2 < 0) {
                        this.S.Z();
                        Code2 = this.S.Code(this);
                    }
                    ct e3 = e();
                    C(240000);
                    Code(e3, Code(e3, Code2));
                    Code(0, 5);
                    switch (this.I[0]) {
                        case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                            n();
                            if (this.S.I()) {
                                this.S.Code();
                                J(1);
                            }
                            Code(true, 0);
                            return;
                        case 3:
                            this.z = System.currentTimeMillis();
                            if (!this.F) {
                                this.S.Code();
                            }
                            this.a.Code(this.I, 1, 4);
                            this.B.I(this.I, 5, 4);
                            if (this.I[1] == this.I[5] && this.I[2] == this.I[6] && this.I[3] == this.I[7] && this.I[4] == this.I[8]) {
                                if (B()) {
                                    db.Code((Runnable) this);
                                }
                                I(false);
                                return;
                            }
                            Code(true, 0);
                            return;
                        default:
                            if (!C(e3)) {
                                this.i = 1;
                                Code(true, 0);
                                return;
                            }
                            return;
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private boolean C(ct ctVar) {
        String str;
        if (this.I[0] != 72 || this.I[1] != 84 || this.I[2] != 84 || this.I[3] != 80) {
            return false;
        }
        Code(5, 7);
        if (this.d.Code() && this.I[8] == 32 && this.I[9] == 51 && this.I[10] == 48 && (this.I[11] == 49 || this.I[11] == 50 || this.I[11] == 51 || this.I[11] == 55)) {
            this.i = 1;
            try {
                str = Code("location");
            } catch (Throwable th) {
                str = null;
            }
            if (str == null || str.length() == 0) {
                return false;
            }
            if (ctVar != null) {
                if (ctVar.Code(str)) {
                    J(ctVar);
                    f();
                } else {
                    ctVar.close();
                }
            }
            synchronized (X) {
                for (ct ctVar2 = y; ctVar2 != null; ctVar2 = ctVar2.B()) {
                    if (ctVar2.Code() == this.ab && !ctVar2.k() && ctVar2 != ctVar) {
                        if (ctVar2.Code(str)) {
                            f();
                        } else {
                            ctVar2.close();
                        }
                    }
                }
            }
            Code(false, 0);
            return true;
        } else if (this.I[8] != 32 || this.I[9] != 52 || this.I[10] != 48 || this.I[11] != 51) {
            return false;
        } else {
            this.i = 2;
            StringBuffer stringBuffer = new StringBuffer();
            try {
                Code((String) null);
                int i2 = 0;
                while (true) {
                    i2++;
                    if (i2 > 256) {
                        break;
                    }
                    Code(0, 1);
                    if (this.I[0] <= 32) {
                        break;
                    }
                    stringBuffer.append((char) this.I[0]);
                    if (i2 == 4 && !stringBuffer.toString().toLowerCase().equals("http")) {
                        stringBuffer.setLength(0);
                        break;
                    }
                }
            } catch (Throwable th2) {
            }
            g = stringBuffer.length() > 4 ? stringBuffer.toString() : null;
            Code(false, 4);
            return true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0029, code lost:
        r1 = r0.toString();
     */
    private String Code(String str) {
        String stringBuffer;
        int indexOf;
        StringBuffer stringBuffer2 = new StringBuffer();
        while (true) {
            Code(0, 1);
            if (this.I[0] == 13) {
                Code(0, 1);
            }
            if (this.I[0] != 10) {
                stringBuffer2.append((char) this.I[0]);
            } else if (stringBuffer2.length() == 0) {
                if (str != null) {
                }
                return null;
            } else if (str != null && (indexOf = stringBuffer.indexOf(58)) >= 0 && stringBuffer.toLowerCase().startsWith(str)) {
                return stringBuffer.substring(indexOf + 1).trim();
            } else {
                stringBuffer2.setLength(0);
            }
        }
    }

    public static String a() {
        String str = g;
        g = null;
        return str;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00d7, code lost:
        if (r0 != false) goto L_0x0006;
     */
    public final void I(boolean z2) {
        boolean z3;
        boolean z4;
        int i2;
        boolean z5;
        int i3;
        ct ctVar;
        int i4;
        while (true) {
            Code(0, 6);
            this.a.Code(this.I, 0, 6);
            int Z2 = ap.Z(this.I, 4);
            if (Z2 > 1014) {
                throw new IOException();
            }
            Code(6, Z2);
            this.z = System.currentTimeMillis();
            this.a.Code(this.I, 6, Z2);
            bs bsVar = this.B;
            int i5 = this.U;
            this.U = i5 + 1;
            bsVar.Code(i5);
            this.B.Code(this.I, 4, Z2 + 2);
            this.B.I(this.I, 1020, 4);
            if (this.I[1020] == this.I[0] && this.I[1021] == this.I[1] && this.I[1022] == this.I[2] && this.I[1023] == this.I[3]) {
                byte b2 = this.I[6];
                byte b3 = this.I[7];
                int i6 = Z2 - 2;
                switch (b2) {
                    case ConnectionResult.SIGN_IN_REQUIRED:
                        Z(true);
                        continue;
                    case ConnectionResult.RESOLUTION_REQUIRED:
                    case ConnectionResult.DEVELOPER_ERROR:
                        break;
                    case ConnectionResult.NETWORK_ERROR:
                        I((int) b3);
                        continue;
                    case ConnectionResult.SERVICE_INVALID:
                        this.N = Math.max(this.N - 1, 0);
                        Z((int) b3).f();
                        db.Code(false);
                        continue;
                    case ConnectionResult.LICENSE_CHECK_FAILED:
                        this.G.Code(this);
                        this.G.setInput(this.I, 8, i6);
                        if (z2) {
                            return;
                        }
                        break;
                    case 15:
                        if (this.F) {
                            if (this.K == null) {
                                this.K = new byte[8];
                                System.arraycopy(this.I, 8, this.K, 0, 8);
                                break;
                            } else {
                                System.arraycopy(this.I, 8, this.K, 0, 8);
                                this.s = true;
                                Z(true);
                                return;
                            }
                        } else {
                            continue;
                        }
                    case 17:
                        this.G = ar.Code.x();
                        this.G.Code();
                        continue;
                    case 20:
                        db.Code((Runnable) new bt(ap.Code(this.I, 8, i6 + 8)));
                        continue;
                }
                ct Z3 = Z((int) b3);
                boolean z6 = false;
                int i7 = 8;
                while (true) {
                    if (Z3 != null) {
                        while (true) {
                            if (Z3.c() != null) {
                                int min = Math.min(Z3.e(), i6);
                                switch (b2) {
                                    case ConnectionResult.RESOLUTION_REQUIRED:
                                        Z3.j();
                                        Code(Z3, true);
                                        if (this.F && !B()) {
                                            this.H = this.G;
                                        }
                                        if (this.M[50] == 1) {
                                            db.O = false;
                                            db.a("md");
                                            break;
                                        } else {
                                            continue;
                                        }
                                    case ConnectionResult.DEVELOPER_ERROR:
                                        System.arraycopy(this.I, i7, Z3.c(), Z3.d(), min);
                                        if (min == i6) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        Z3.J(min);
                                        int i8 = min;
                                        z4 = z5;
                                        i2 = i8;
                                        break;
                                    case ConnectionResult.LICENSE_CHECK_FAILED:
                                        int read = this.G.read(Z3.c(), Z3.d(), Z3.e());
                                        if (read == 0) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        Z3.J(this.G.I());
                                        int i9 = read;
                                        z4 = z3;
                                        i2 = i9;
                                        break;
                                    default:
                                        int i10 = min;
                                        z4 = z6;
                                        i2 = i10;
                                        break;
                                }
                                Z3.Code(i2);
                                boolean z7 = z4;
                                i3 = i7 + i2;
                                ctVar = Z3;
                                i4 = i6 - i2;
                                z6 = z7;
                            } else if (Z3.k()) {
                                i4 = i6;
                                i3 = i7;
                                ctVar = null;
                            } else {
                                db.Code((Object) Z3, 1000);
                            }
                        }
                    } else if (b2 == 11) {
                        do {
                        } while (this.G.read((byte[]) null, 0, 1024) > 0);
                    }
                    i6 = i4;
                    Z3 = ctVar;
                    i7 = i3;
                }
            }
        }
        throw new IOException();
    }

    private static String Code(String str, String str2) {
        char charAt;
        if (str == null) {
            str = null;
        } else {
            int length = str.length();
            int indexOf = str.indexOf(":/");
            int indexOf2 = str.indexOf(58);
            if ((indexOf < 0 || indexOf > 10) && (indexOf2 == -1 || indexOf != -1 || (indexOf2 + 1 != length && (charAt = str.charAt(indexOf2 + 1)) >= '0' && charAt <= '9'))) {
                str = "http://server4.operamini.com/" + str;
            }
        }
        if (str == null) {
            return "";
        }
        int indexOf3 = str.indexOf("https://");
        int indexOf4 = str.indexOf(47, indexOf3 + 8);
        StringBuffer stringBuffer = new StringBuffer(str);
        if (str2 != null && str2.length() > 0 && indexOf3 == -1) {
            stringBuffer.append('?').append(I(str2));
        }
        if (!(indexOf3 == -1 || indexOf4 == -1)) {
            stringBuffer.delete(indexOf4, stringBuffer.length());
        }
        boolean z2 = false;
        boolean z3 = false;
        for (int length2 = stringBuffer.length() - 1; length2 >= 0; length2--) {
            char charAt2 = stringBuffer.charAt(length2);
            if (charAt2 < '!' || charAt2 > '~' || "\"#;<>[]^`{|}~\\".indexOf(charAt2) >= 0) {
                stringBuffer.deleteCharAt(length2);
            } else {
                if (charAt2 == '=') {
                    z2 = true;
                } else if (charAt2 == '&') {
                    z3 = false;
                    z2 = false;
                } else if (charAt2 == '.') {
                    z3 = true;
                }
                if (length2 > str.length() && z2 && z3) {
                    stringBuffer.deleteCharAt(length2);
                }
            }
        }
        stringBuffer.setLength(127);
        if (stringBuffer.charAt(126) == '%') {
            stringBuffer.setLength(126);
        } else if (stringBuffer.charAt(125) == '%') {
            stringBuffer.setLength(125);
        }
        return stringBuffer.toString().trim();
    }

    private static String I(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if ((charAt <= '/' || charAt >= ':') && ((charAt <= '@' || charAt >= '[') && ((charAt <= '`' || charAt >= '{') && "-_.~".indexOf(charAt) == -1 && "%&=".indexOf(charAt) == -1))) {
                stringBuffer.append('%').append(Integer.toString(charAt, 16));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    static synchronized void Code(DataOutputStream dataOutputStream) {
        synchronized (cs.class) {
            dataOutputStream.writeBoolean(n);
            dataOutputStream.writeByte(-1);
            dataOutputStream.writeByte(Code);
            dataOutputStream.writeByte(p);
            dataOutputStream.writeUTF(r == null ? "" : r);
            dataOutputStream.writeUTF(q == null ? "" : q);
            dataOutputStream.writeByte(h);
            dataOutputStream.writeBoolean(W);
            dataOutputStream.writeInt("server4.operamini.com".hashCode());
            dataOutputStream.writeBoolean(be.e);
            dataOutputStream.writeLong(be.d);
            dataOutputStream.writeByte(Z.size());
            Enumeration keys = Z.keys();
            while (keys.hasMoreElements()) {
                String str = (String) keys.nextElement();
                dataOutputStream.writeUTF(str);
                be beVar = (be) ((Object[]) Z.get(str))[0];
                db.Code(dataOutputStream, beVar.Code);
                dataOutputStream.writeLong(beVar.I);
                dataOutputStream.write(beVar.a);
                dataOutputStream.write(beVar.C.length);
                dataOutputStream.write(beVar.C);
                if (db.L[1] == null) {
                    dataOutputStream.writeInt(0);
                } else {
                    db.Code(dataOutputStream, beVar.Z);
                    db.Code(dataOutputStream, beVar.J);
                }
            }
        }
    }

    static synchronized void Code(DataInputStream dataInputStream, int i2) {
        String str = null;
        synchronized (cs.class) {
            if (i2 <= 5) {
                dataInputStream.readUTF();
                dataInputStream.readByte();
                dataInputStream.readByte();
                dataInputStream.readBoolean();
                dataInputStream.readBoolean();
                dataInputStream.readLong();
                dataInputStream.skip(8);
                dataInputStream.skip((long) dataInputStream.readUnsignedByte());
                dataInputStream.skip((long) (dataInputStream.readUnsignedShort() * 4));
                dataInputStream.skip((long) (dataInputStream.readUnsignedShort() * 4));
                if (i2 >= 4) {
                    dataInputStream.readByte();
                }
            } else {
                n = dataInputStream.readBoolean();
                dataInputStream.readByte();
                Code = dataInputStream.readByte();
                p = dataInputStream.readByte();
                String readUTF = dataInputStream.readUTF();
                if (readUTF.length() == 0) {
                    readUTF = null;
                }
                r = readUTF;
                String readUTF2 = dataInputStream.readUTF();
                if (readUTF2.length() != 0) {
                    str = readUTF2;
                }
                q = str;
                h = dataInputStream.readByte();
                if (i2 >= 7) {
                    W = dataInputStream.readBoolean();
                }
                if (dataInputStream.readInt() != "server4.operamini.com".hashCode()) {
                    cz.I();
                }
                be.e = true;
                if (i2 >= 8) {
                    be.e = dataInputStream.readBoolean();
                    be.d = dataInputStream.readLong();
                }
                byte readByte = dataInputStream.readByte();
                for (int i3 = 0; i3 < readByte; i3++) {
                    String readUTF3 = dataInputStream.readUTF();
                    be beVar = new be(db.Code(dataInputStream));
                    beVar.I = dataInputStream.readLong();
                    dataInputStream.readFully(beVar.a);
                    int readUnsignedByte = dataInputStream.readUnsignedByte();
                    if (readUnsignedByte != 0) {
                        byte[] bArr = new byte[readUnsignedByte];
                        beVar.C = bArr;
                        dataInputStream.readFully(bArr);
                        be.c = beVar.C;
                    }
                    beVar.Z = db.Code(dataInputStream);
                    beVar.J = db.Code(dataInputStream);
                    if (!beVar.I()) {
                        Z.put(readUTF3, new Object[]{beVar, ""});
                    }
                }
            }
        }
    }

    public static boolean b() {
        return true;
    }

    private void Code(byte[] bArr, int i2, int i3) {
        int i4 = i2;
        while (i4 < i3) {
            int Z2 = ap.Z(bArr, i4 + 4);
            bs bsVar = this.J;
            int i5 = this.V;
            this.V = i5 + 1;
            bsVar.Code(i5);
            this.J.Code(bArr, i4 + 4, Z2 + 2);
            this.J.I(bArr, i4, 4);
            i4 += Z2 + 6;
        }
        this.C.Code(bArr, i2, i3 - i2);
    }

    private void n() {
        j();
        this.S.Code();
        int i2 = ((this.I[1] & 255) * 4) + 128;
        byte b2 = this.I[2] & 255;
        Code(5, b2 + 166 + i2);
        i();
        this.S.C = new byte[(b2 + 1)];
        be.c = this.S.C;
        System.arraycopy(this.I, 2, this.S.C, 0, b2 + 1);
        int[] Code2 = db.Code(this.I, b2 + 3, 160);
        int[] Code3 = db.Code(this.I, b2 + 163, i2);
        be beVar = this.S;
        byte[] bArr = this.I;
        int i3 = i2 + b2 + 163;
        beVar.I = (((long) ao.J(bArr, i3 + 4)) & 4294967295L) | (((long) ao.J(bArr, i3)) << 32);
        this.S.Z = Code2;
        this.S.J = Code3;
        if (!be.e) {
            be.d = System.currentTimeMillis() - (this.S.I - 1209600000);
            be.e = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        return this.F;
    }

    static void Code(br brVar) {
        if (b) {
            String str = (aa ? "*" : "") + Y + ":" + (db.q ? '1' : '0');
            if (af == null) {
                af = ar.Code.s().Code(64, 0);
            }
            brVar.Code(str, (ar.Code.J() - af.Code(str)) / 2, 1, af, 16777088);
        }
    }
}
