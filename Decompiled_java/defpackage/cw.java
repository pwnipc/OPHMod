package defpackage;

/* renamed from: cw  reason: default package */
/* compiled from: Source */
final class cw {
    private String B = null;
    private char[] C = null;
    private final bg Code;
    private final int I;
    private final int J;
    private final int Z;
    private boolean a = false;

    cw(bg bgVar, int i, int i2, int i3) {
        this.Code = bgVar;
        this.I = i;
        this.Z = i2;
        this.J = i3;
    }

    /* access modifiers changed from: package-private */
    public final int Code(cw cwVar) {
        return this.I - cwVar.I;
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        return this.Z;
    }

    /* access modifiers changed from: package-private */
    public final int Z() {
        return this.J;
    }

    /* access modifiers changed from: package-private */
    public final int J() {
        return this.Code.I(this.I + 6);
    }

    /* access modifiers changed from: package-private */
    public final int B() {
        return this.Code.Code(this.I + 8);
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        return this.Code.I(this.I + 15);
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        if (this.B == null) {
            int i = this.I + 17;
            int Z2 = this.Code.Z(i);
            int i2 = i + 1;
            for (int i3 = Z2; i3 > 0; i3--) {
                int i4 = i2 + 1;
                switch (this.Code.Z(i2)) {
                    case 114:
                        this.a = true;
                        i2 = i4 + 2;
                        break;
                    default:
                        i2 = this.Code.I(i4) + 2 + i4;
                        break;
                }
            }
            this.B = this.Code.J(i2);
            if (db.Code(this.B.charAt(0)) && !db.J(this.B.charAt(0))) {
                this.B = new StringBuffer(this.B).reverse().toString();
            }
        }
        return this.B;
    }

    /* access modifiers changed from: package-private */
    public final char[] b() {
        if (this.C == null) {
            this.C = a().toCharArray();
        }
        return this.C;
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        return !db.Code(a().charAt(0));
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        if (this.B == null) {
            a();
        }
        return !this.a;
    }

    /* access modifiers changed from: package-private */
    public final boolean I(cw cwVar) {
        return Code(this.J, B(), cwVar.J, cwVar.B());
    }

    static boolean Code(int i, int i2, int i3, int i4) {
        return i < i3 + i4 && i + i2 > i3;
    }

    static boolean Code(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (!Code(i2, i4, i6, i8)) {
            return true;
        }
        if (i < i5) {
            if (i + i3 == i5) {
                return false;
            }
            return true;
        } else if (i == i5 + i7) {
            return false;
        } else {
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean Z(cw cwVar) {
        return Code(this.Z, this.J, J(), B(), cwVar.Z, cwVar.J, cwVar.J(), cwVar.B());
    }

    private boolean B(cw cwVar) {
        return this.Z < cwVar.Z;
    }

    private boolean C(cw cwVar) {
        return this.J > cwVar.J;
    }

    private boolean a(cw cwVar) {
        return this.J < cwVar.J;
    }

    private boolean b(cw cwVar) {
        return this.Z > cwVar.Z;
    }

    /* access modifiers changed from: package-private */
    public final cw e() {
        return this.Code.Code(this.I, this.Z, this.J);
    }

    /* access modifiers changed from: package-private */
    public final cw f() {
        int B2 = B() + this.J;
        for (cw e = e(); e != null; e = e.e()) {
            if (e.J >= B2) {
                return e;
            }
        }
        return null;
    }

    private cw m() {
        return this.Code.B(this.I);
    }

    /* access modifiers changed from: package-private */
    public final cw g() {
        int i = this.J;
        for (cw m = m(); m != null; m = m.m()) {
            if ((m.J + m.B()) - 1 < i) {
                return m;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final cw h() {
        cw m = m();
        if (m == null || I(m)) {
            return m;
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code(int i, int i2) {
        return db.Code(i, i2, 1, 1, this.Z, this.J, J(), B());
    }

    /* access modifiers changed from: package-private */
    public final boolean J(cw cwVar) {
        return db.Code(this.Z, this.J, J(), B(), cwVar.Z, cwVar.J, cwVar.J(), cwVar.B());
    }

    /* access modifiers changed from: package-private */
    public final int Code(boolean z) {
        return a().length() - I(z);
    }

    /* access modifiers changed from: package-private */
    public final int I(boolean z) {
        return c() ? z ? 1 : 0 : z ? a().length() - 1 : a().length();
    }

    /* access modifiers changed from: package-private */
    public final cw i() {
        cw e = e();
        if (e != null && ((e.I(this) && e.b(this)) || e.C(this))) {
            return e;
        }
        cw m = m();
        if (m == null || ((!m.I(this) || !m.b(this)) && !m.C(this))) {
            return null;
        }
        return m;
    }

    /* access modifiers changed from: package-private */
    public final cw j() {
        cw e = e();
        if (e != null && ((e.I(this) && e.B(this)) || e.C(this))) {
            return e;
        }
        cw m = m();
        if (m == null || ((!m.I(this) || !m.B(this)) && !m.C(this))) {
            return null;
        }
        return m;
    }

    /* access modifiers changed from: package-private */
    public final cw k() {
        cw e = e();
        if (e != null && ((e.I(this) && e.B(this)) || e.a(this))) {
            return e;
        }
        cw m = m();
        if (m == null || ((!m.I(this) || !m.B(this)) && !m.a(this))) {
            return null;
        }
        return m;
    }

    /* access modifiers changed from: package-private */
    public final cw l() {
        cw e = e();
        if (e != null && ((e.I(this) && e.b(this)) || e.a(this))) {
            return e;
        }
        cw m = m();
        if (m == null || ((!m.I(this) || !m.b(this)) && !m.a(this))) {
            return null;
        }
        return m;
    }

    public final String toString() {
        return "offset=" + this.I + " (\"" + (a().length() < 7 ? a() : a().substring(0, 5) + "…") + "\")";
    }
}
