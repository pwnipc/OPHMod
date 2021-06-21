package defpackage;

/* renamed from: cr  reason: default package */
/* compiled from: Source */
final class cr {
    private final bg Code;
    private final cx I;
    private boolean J = false;
    private final cx Z;

    cr(bg bgVar) {
        this.Code = bgVar;
        this.I = new cx(bgVar);
        this.Z = new cx(bgVar);
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, int i2, int i3) {
        this.I.Code(i, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final void Code(cx cxVar) {
        this.I.Code(cxVar);
    }

    /* access modifiers changed from: package-private */
    public final void I(int i, int i2, int i3) {
        this.I.I(i, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final cx Code() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i, int i2, int i3) {
        this.Z.Code(i, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final void I(cx cxVar) {
        this.Z.Code(cxVar);
    }

    /* access modifiers changed from: package-private */
    public final void J(int i, int i2, int i3) {
        this.Z.Z(i, i2, i3);
    }

    /* access modifiers changed from: package-private */
    public final cx I() {
        return this.Z;
    }

    /* access modifiers changed from: package-private */
    public final void Code(boolean z) {
        this.J = z;
    }

    /* access modifiers changed from: package-private */
    public final boolean Z() {
        return this.J;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code(int i) {
        return cx.Code(this.I, this.Z, i);
    }

    /* access modifiers changed from: package-private */
    public final void Code(br brVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, char[] cArr, int i9, int i10, int i11, boolean z) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (this.J && !this.I.Code() && !this.Z.Code()) {
            int C = db.C(i10);
            int i16 = i11 / C;
            int i17 = 1;
            int i18 = 0;
            while (i18 < i9 && i17 <= i16) {
                if (cArr[i18] == 10) {
                    i15 = i17 + 1;
                } else {
                    i15 = i17;
                }
                i18++;
                i17 = i15;
            }
            int a = this.Code.a(C);
            int i19 = 0;
            int i20 = 0;
            while (i19 < i17) {
                int i21 = 0;
                int i22 = i20;
                while (i22 < i9 && cArr[i22] != 10) {
                    i22++;
                    i21++;
                }
                if (cx.Code(this.I, this.Z, i8, i20, i21)) {
                    int a2 = i4 + this.Code.a((i11 * i19) / i17);
                    int Code2 = cx.Code(this.I, this.Z, i8, i20);
                    int Code3 = db.Code(i10, cArr, i20, Code2);
                    int Code4 = db.Code(i10, cArr, i20 + Code2, cx.I(this.I, this.Z, i8, i20, i21) - Code2);
                    int a3 = this.Code.a(Code3);
                    int a4 = this.Code.a(Code4);
                    if (z) {
                        i12 = a3 + i3;
                    } else {
                        i12 = ((i3 + i5) - a3) - a4;
                    }
                    brVar.Z(i12, a2, a4, a, -5189377);
                    if (i19 + 1 == i17 && cx.I(this.I, this.Z, i8)) {
                        cw Code5 = this.Code.Code(i8, i6, i7);
                        if (cw.Code(((i11 * i19) / i17) + i7, db.C(i10), Code5.Z(), Code5.B())) {
                            int i23 = z ? i12 + a4 : i12;
                            int Z2 = Code5.Z();
                            int B = Code5.B();
                            if (i11 < B) {
                                int a5 = this.Code.a(B + Z2);
                                int a6 = this.Code.a(Z2);
                                i13 = a5 - a6;
                                i14 = a6 + i2;
                            } else {
                                i13 = a;
                                i14 = a2;
                            }
                            int a7 = this.Code.a(Code5.I()) + i;
                            if (i23 < a7) {
                                brVar.Z(i23, i14, (a7 - i23) + 1, i13, -5189377);
                            } else {
                                int J2 = Code5.J();
                                brVar.Z(a7 + J2, i14, (i23 - (J2 + a7)) + 1, i13, -5189377);
                            }
                        }
                    }
                }
                i19++;
                i20 += i21 + 1;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void J() {
        this.I.I();
        this.Z.I();
    }

    /* access modifiers changed from: package-private */
    public final void B() {
        if (this.J) {
            ar.Code.w().Code(C());
        }
    }

    /* access modifiers changed from: package-private */
    public final String C() {
        if (!this.J || this.I.Code() || this.Z.Code()) {
            return "";
        }
        cx Code2 = cx.Code(this.I, this.Z);
        cx cxVar = Code2 != this.I ? this.I : this.Z;
        StringBuffer stringBuffer = new StringBuffer();
        cx cxVar2 = new cx(Code2);
        while (cxVar2.Z(cxVar) < 0) {
            stringBuffer.append(cxVar2.Z());
            if (cxVar2.J()) {
                break;
            }
        }
        return stringBuffer.toString();
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        if (!this.J || this.I.Code() || this.Z.Code() || this.I.I(this.Z)) {
            return false;
        }
        return true;
    }
}
