package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* renamed from: cx  reason: default package */
/* compiled from: Source */
class cx {
    private bg Code;
    private cw I = null;
    private int J;
    private int Z;

    cx(bg bgVar) {
        this.Code = bgVar;
        this.J = Integer.MIN_VALUE;
    }

    private cx(bg bgVar, cw cwVar, int i) {
        this.Code = bgVar;
        this.I = cwVar;
        this.Z = i;
    }

    cx(cx cxVar) {
        Code(cxVar);
    }

    /* access modifiers changed from: package-private */
    public final boolean Code() {
        return this.I == null;
    }

    /* access modifiers changed from: package-private */
    public final void I() {
        this.I = null;
    }

    /* access modifiers changed from: package-private */
    public final void Code(cx cxVar) {
        this.Code = cxVar.Code;
        this.I = cxVar.I;
        this.Z = cxVar.Z;
        this.J = cxVar.J;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, int i2, int i3) {
        if (this.I == null || !this.I.Code(i2, i3)) {
            Code(this.Code.I(i, i2, i3), i2, i3);
        } else {
            Code(this.I, i2, i3);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x0026  */
    public final void Code(cw cwVar, int i, int i2) {
        cx cxVar;
        int i3;
        if (cwVar != null) {
            this.J = Integer.MIN_VALUE;
            this.I = cwVar;
            this.Z = 0;
            int i4 = Integer.MAX_VALUE;
            cx cxVar2 = new cx(this);
            do {
                int C = db.C(cxVar2.I.C());
                cw e = cxVar2.I.e();
                if (e == null) {
                    cxVar = new cx(this.Code, e, 0);
                } else {
                    cxVar = new cx(this.Code, cxVar2.I, cxVar2.I.a().length());
                }
                boolean z = false;
                while (cxVar2.Z(cxVar) <= 0 && !z) {
                    int B = cxVar2.B() - i;
                    int C2 = (cxVar2.C() + (C / 2)) - i2;
                    i3 = (B * B) + (C2 * C2);
                    if (i3 >= i4) {
                        Code(cxVar2);
                    } else {
                        i3 = i4;
                    }
                    i4 = i3;
                    z = cxVar2.J();
                }
                cxVar2.I = e;
                cxVar2.Z = 0;
                if (cxVar2.I == null || !cxVar2.I.J(this.I)) {
                }
                int C3 = db.C(cxVar2.I.C());
                cw e2 = cxVar2.I.e();
                if (e2 == null) {
                }
                boolean z2 = false;
                while (cxVar2.Z(cxVar) <= 0) {
                    int B2 = cxVar2.B() - i;
                    int C22 = (cxVar2.C() + (C3 / 2)) - i2;
                    i3 = (B2 * B2) + (C22 * C22);
                    if (i3 >= i4) {
                    }
                    i4 = i3;
                    z2 = cxVar2.J();
                }
                cxVar2.I = e2;
                cxVar2.Z = 0;
                return;
            } while (!cxVar2.I.J(this.I));
        }
    }

    /* access modifiers changed from: package-private */
    public final void I(int i, int i2, int i3) {
        Code(i, i2, i3);
        String a = this.I.a();
        if (this.Z > a.length()) {
            this.Z = a.length();
        }
        while (this.Z > 0 && (r1 = a.charAt(this.Z - 1)) != ' ' && r1 != 10) {
            this.Z--;
        }
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i, int i2, int i3) {
        Code(i, i2, i3);
        String a = this.I.a();
        while (this.Z < a.length() && (r1 = a.charAt(this.Z)) != ' ' && r1 != 10) {
            this.Z++;
        }
    }

    /* access modifiers changed from: package-private */
    public final char Z() {
        String a = this.I.a();
        if (this.Z < a.length()) {
            return a.charAt(this.Z);
        }
        cw e = this.I.e();
        if (e == null) {
            return 0;
        }
        if (this.I.I(e)) {
            return ' ';
        }
        return 10;
    }

    /* access modifiers changed from: package-private */
    public final boolean J() {
        int length = this.I.a().length();
        if (this.Z < length - 1) {
            this.Z++;
            return false;
        }
        cw e = this.I.e();
        if (e != null) {
            if (this.Z != length - 1 || !this.I.Z(e)) {
                this.I = e;
                this.Z = 0;
                return false;
            }
            this.Z++;
            return false;
        } else if (this.Z >= length) {
            return true;
        } else {
            this.Z++;
            return false;
        }
    }

    private void Z(int i) {
        int C = C();
        int b = b();
        int i2 = Integer.MAX_VALUE;
        boolean z = false;
        cx cxVar = new cx(this);
        while (cw.Code(cxVar.C(), cxVar.b(), C, b) && !z) {
            int abs = Math.abs(cxVar.B() - i);
            if (abs < i2) {
                Code(cxVar);
                i2 = abs;
            }
            z = cxVar.J();
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00cf  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0133  */
    public final void Code(int i) {
        boolean z = true;
        if (!Code()) {
            switch (i) {
                case 1:
                    this.J = Integer.MIN_VALUE;
                    int B = B();
                    boolean z2 = true;
                    do {
                        if (this.I.c()) {
                            int length = this.I.a().length();
                            if (this.Z < length - 1) {
                                this.Z++;
                            } else {
                                cw k = this.I.d() ? this.I.k() : this.I.j();
                                if (this.Z == length - 1 && (k == null || this.I.Z(k))) {
                                    this.Z = length;
                                } else if (k != null) {
                                    this.Z = k.Code(this.Z == length && !this.I.Z(k));
                                    this.I = k;
                                } else {
                                    z2 = false;
                                }
                            }
                        } else if (this.Z > 0) {
                            this.Z--;
                        } else {
                            cw k2 = this.I.d() ? this.I.k() : this.I.j();
                            if (k2 != null) {
                                this.Z = k2.Code(!k2.Z(this.I));
                                this.I = k2;
                            } else {
                                z2 = false;
                            }
                        }
                        if (!z2 || B() != B) {
                            return;
                        }
                        if (this.I.c()) {
                        }
                        return;
                    } while (B() != B);
                    return;
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                    this.J = Integer.MIN_VALUE;
                    int B2 = B();
                    boolean z3 = true;
                    do {
                        if (!this.I.c()) {
                            int length2 = this.I.a().length();
                            if (this.Z < length2 - 1) {
                                this.Z++;
                            } else {
                                cw i2 = this.I.d() ? this.I.i() : this.I.l();
                                if (this.Z == length2 - 1 && (i2 == null || this.I.Z(i2))) {
                                    this.Z = length2;
                                } else if (i2 != null) {
                                    this.Z = i2.I(this.Z == length2 && !i2.Z(this.I));
                                    this.I = i2;
                                } else {
                                    z3 = false;
                                }
                            }
                        } else if (this.Z > 0) {
                            this.Z--;
                        } else {
                            cw i3 = this.I.d() ? this.I.i() : this.I.l();
                            if (i3 != null) {
                                this.Z = i3.I(!this.I.Z(this.I));
                                this.I = i3;
                            } else {
                                z3 = false;
                            }
                        }
                        if (!z3 || B() != B2) {
                            return;
                        }
                        if (!this.I.c()) {
                        }
                        return;
                    } while (B() != B2);
                    return;
                case 3:
                    int e = e();
                    String a = this.I.a();
                    int i4 = this.Z - 1;
                    while (true) {
                        if (i4 < 0) {
                            i4 = -1;
                        } else if (a.charAt(i4) != 10) {
                            i4--;
                        }
                    }
                    if (i4 == -1) {
                        z = false;
                    } else {
                        this.Z = i4;
                        while (this.Z > 0 && a.charAt(this.Z - 1) != 10) {
                            this.Z--;
                        }
                    }
                    if (!z) {
                        cw cwVar = null;
                        for (cw g = this.I.g(); g != null; g = g.h()) {
                            cwVar = g;
                        }
                        if (cwVar != null) {
                            this.I = cwVar;
                            this.Z = 0;
                            String a2 = this.I.a();
                            for (int i5 = 0; i5 < a2.length(); i5++) {
                                if (a2.charAt(i5) == 10) {
                                    this.Z = i5 + 1;
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    Z(e);
                    return;
                case ConnectionResult.SIGN_IN_REQUIRED:
                    int e2 = e();
                    String a3 = this.I.a();
                    int i6 = this.Z;
                    while (true) {
                        if (i6 >= a3.length()) {
                            z = false;
                        } else if (a3.charAt(i6) == 10) {
                            this.Z = i6 + 1;
                        } else {
                            i6++;
                        }
                    }
                    if (!z) {
                        cw f = this.I.f();
                        if (f != null) {
                            this.I = f;
                            this.Z = 0;
                        } else {
                            return;
                        }
                    }
                    Z(e2);
                    return;
                default:
                    return;
            }
        }
    }

    private int e() {
        if (this.J == Integer.MIN_VALUE) {
            this.J = B();
        }
        return this.J;
    }

    /* access modifiers changed from: package-private */
    public final int B() {
        if (Code()) {
            return 0;
        }
        int C = this.I.C();
        char[] b = this.I.b();
        if (this.I.c()) {
            int i = this.Z - 1;
            while (i >= 0 && b[i] != 10) {
                i--;
            }
            return db.Code(C, b, i + 1, (this.Z - 1) - i) + this.I.I();
        }
        int i2 = this.Z;
        while (i2 < b.length && b[i2] != 10) {
            i2++;
        }
        return db.Code(C, b, this.Z, i2 - this.Z) + this.I.I();
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        if (Code()) {
            return 0;
        }
        int Z2 = this.I.Z();
        int C = this.I.C();
        String a = this.I.a();
        int C2 = db.C(C);
        for (int i = 0; i < this.Z; i++) {
            if (a.charAt(i) == 10) {
                Z2 += C2;
            }
        }
        return Z2;
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        return Code() ? 0 : 1;
    }

    /* access modifiers changed from: package-private */
    public final int b() {
        if (Code()) {
            return 0;
        }
        return db.C(this.I.C());
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.I.Code();
    }

    /* access modifiers changed from: package-private */
    public final int d() {
        return db.Code(this.I.a(), this.Z);
    }

    /* access modifiers changed from: package-private */
    public final boolean I(int i) {
        if (!Code() && this.I.Code() == i) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean I(cx cxVar) {
        if (Code() || cxVar.Code()) {
            if (Code() == cxVar.Code()) {
                return true;
            }
            return false;
        } else if (Z(cxVar) != 0) {
            return false;
        } else {
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public final int Z(cx cxVar) {
        return this.I.Code(cxVar.I) == 0 ? this.Z - cxVar.Z : this.I.Code(cxVar.I);
    }

    static cx Code(cx cxVar, cx cxVar2) {
        if (cxVar.Code()) {
            return cxVar;
        }
        if (cxVar2.Code()) {
            return cxVar2;
        }
        if (cxVar.I.Code() < cxVar2.I.Code()) {
            return cxVar;
        }
        if (cxVar.I.Code() > cxVar2.I.Code()) {
            return cxVar2;
        }
        if (cxVar.Z > cxVar2.Z) {
            return cxVar2;
        }
        return cxVar;
    }

    static boolean Code(cx cxVar, cx cxVar2, int i) {
        if (cxVar.Code() || cxVar2.Code()) {
            return false;
        }
        cx Code2 = Code(cxVar, cxVar2);
        if (Code2 == cxVar) {
            cxVar = cxVar2;
        }
        if (Code2.I.Code() > i || cxVar.I.Code() < i) {
            return false;
        }
        return true;
    }

    static boolean I(cx cxVar, cx cxVar2, int i) {
        if (cxVar.Code() || cxVar2.Code()) {
            return false;
        }
        if (Code(cxVar, cxVar2) == cxVar) {
            cxVar = cxVar2;
        }
        if (i < cxVar.I.Code()) {
            return true;
        }
        return false;
    }

    static boolean Code(cx cxVar, cx cxVar2, int i, int i2, int i3) {
        int i4;
        int i5;
        cx Code2 = Code(cxVar, cxVar2);
        if (Code2 == cxVar) {
            cxVar = cxVar2;
        }
        int i6 = i2 + i3;
        if (Code2.I.Code() == i) {
            i4 = Code2.Z;
        } else {
            i4 = 0;
        }
        if (cxVar.I.Code() == i) {
            i5 = cxVar.Z;
        } else {
            i5 = i6;
        }
        if (i4 > i6 || i5 < i2) {
            return false;
        }
        return true;
    }

    static int Code(cx cxVar, cx cxVar2, int i, int i2) {
        cx Code2 = Code(cxVar, cxVar2);
        if (Code2.I.Code() != i) {
            return 0;
        }
        return Math.max(0, Code2.Z - i2);
    }

    static int I(cx cxVar, cx cxVar2, int i, int i2, int i3) {
        if (Code(cxVar, cxVar2) != cxVar) {
            cxVar2 = cxVar;
        }
        return cxVar2.I.Code() != i ? i3 : Math.min(cxVar2.Z - i2, i3);
    }

    public final String toString() {
        return "node=" + this.I + " offset=" + this.Z + " (x: " + B() + ", y: " + C() + ")";
    }
}
