package defpackage;

/* renamed from: ba  reason: default package */
/* compiled from: Source */
final class ba {
    private final bg Code;
    private final cx I;
    private boolean Z = false;

    ba(bg bgVar) {
        this.Code = bgVar;
        this.I = new cx(bgVar);
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
    public final int Code() {
        return this.I.B();
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        return this.I.C();
    }

    /* access modifiers changed from: package-private */
    public final cx Z() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i) {
        this.I.Code(i);
    }

    /* access modifiers changed from: package-private */
    public final void Code(boolean z) {
        this.Z = z;
    }

    /* access modifiers changed from: package-private */
    public final boolean J() {
        return this.Z;
    }

    /* access modifiers changed from: package-private */
    public final boolean I(int i) {
        return this.I.I(i);
    }

    /* access modifiers changed from: package-private */
    public final void Code(br brVar, int i, int i2, int i3) {
        if (this.Z) {
            int B = this.I.B();
            int C = this.I.C();
            int b = this.I.b();
            int a = this.Code.a(B) + i;
            int a2 = this.Code.a(C) + i2;
            int a3 = this.Code.a(b);
            brVar.Z(a - 1, a2, 3, 1, i3);
            brVar.Z(a, a2, 1, a3, i3);
            br brVar2 = brVar;
            brVar2.Z(a - 1, (a2 + a3) - 1, 3, 1, i3);
        }
    }
}
