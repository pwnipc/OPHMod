package defpackage;

/* renamed from: bh  reason: default package */
/* compiled from: Source */
final class bh {
    int B;
    int C;
    int[] Code = new int[1536];
    bu[] I = new bu[256];
    int J;
    bu[] Z = new bu[256];
    private int a;
    /* access modifiers changed from: private */
    public int b;

    bh() {
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i) {
        this.a = i;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, int i2) {
        if (i <= 0) {
            this.B = 0;
            this.C = 0;
            return;
        }
        this.B = Math.max(1, i - i2);
        this.C = i2;
    }

    /* access modifiers changed from: package-private */
    public final boolean I(int i) {
        if (this.B != 0 && this.b + i >= this.B) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, boolean z, boolean z2) {
        bu buVar;
        bu buVar2;
        if (z && (buVar2 = this.Z[i]) != null) {
            this.b -= buVar2.J();
            this.Z[i] = null;
        }
        if (z2 && (buVar = this.I[i]) != null) {
            this.b -= buVar.J();
            this.I[i] = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean Code(int i, boolean z, bu buVar, bu buVar2) {
        bu[] buVarArr;
        bu[] buVarArr2;
        if (z) {
            buVarArr = this.I;
            buVarArr2 = this.Z;
        } else {
            buVarArr = this.Z;
            buVarArr2 = this.I;
        }
        if (!Code(buVarArr, i, buVar)) {
            return false;
        }
        if (buVar2 != null) {
            Code(buVarArr2, i, buVar2);
        }
        return true;
    }

    private boolean Code(bu[] buVarArr, int i, bu buVar) {
        bu buVar2 = buVarArr[i];
        if (buVar2 != null) {
            this.b -= buVar2.J();
            buVarArr[i] = null;
        }
        int J2 = buVar.J();
        if (!I(J2)) {
            return false;
        }
        buVarArr[i] = buVar;
        this.b = J2 + this.b;
        return true;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code(int i, int i2, bh bhVar, int i3) {
        bu buVar;
        int Z2 = Z(i);
        if (!I(Z2, i)) {
            return false;
        }
        bu buVar2 = this.I[Z2];
        if (buVar2 != null) {
            int J2 = buVar2.J();
            bhVar.I[i3] = buVar2;
            bhVar.b += J2;
            if (bhVar.B > 0) {
                bhVar.B += J2;
                bhVar.C -= J2;
            }
        }
        if (i2 == this.a && (buVar = this.Z[Z2]) != null) {
            int J3 = buVar.J();
            bhVar.Z[i3] = buVar;
            bhVar.b += J3;
            if (bhVar.B > 0) {
                bhVar.B += J3;
                bhVar.C -= J3;
            }
        }
        if (bhVar.C < 0) {
            bhVar.C = 0;
        }
        int[] iArr = bhVar.Code;
        int i4 = (i3 * 6) + 2;
        iArr[i4] = (this.Code[(Z2 * 6) + 2] & Integer.MIN_VALUE) | iArr[i4];
        return true;
    }

    /* access modifiers changed from: package-private */
    public final int Z(int i) {
        return db.Code(this.Code, this.J, 6, i);
    }

    /* access modifiers changed from: package-private */
    public final boolean I(int i, int i2) {
        return i < this.J && this.Code[(i * 6) + 0] == i2;
    }
}
