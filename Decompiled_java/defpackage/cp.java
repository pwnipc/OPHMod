package defpackage;

/* renamed from: cp  reason: default package */
/* compiled from: Source */
public final class cp {
    public final int B;
    public final String C;
    public final int Code;
    public final int I;
    public final int J;
    public final String Z;
    public final String a;

    cp(int i, int i2, String str, int i3, int i4, String str2, String str3) {
        this.Code = i;
        this.I = i2;
        this.Z = str;
        this.J = i3;
        this.B = i4;
        this.C = str2;
        this.a = str3;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code() {
        return (this.I & 1) != 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean I() {
        return this.B == 0;
    }

    public final String Z() {
        return this.a + this.C.substring(0, 8);
    }

    public final String toString() {
        return "{slot: " + this.Code + ", flags: " + Integer.toBinaryString(this.I) + ", domain: " + this.Z + ":" + this.J + "/" + this.B + ", key: " + ((this.C == null || this.C.length() == 0) ? "<none>" : this.C.substring(0, 8)) + "..." + (this.a.equals(this.Z) ? "" : ", clusterDomain: " + this.a) + "}";
    }
}
