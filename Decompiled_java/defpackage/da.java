package defpackage;

/* renamed from: da  reason: default package */
/* compiled from: Source */
final class da {
    final int B;
    final String Code;
    final String I;
    final String J;
    final int Z;

    da(String str, String str2, int i, String str3, int i2) {
        this.Code = str;
        this.I = str2;
        this.Z = i;
        this.J = str3;
        this.B = i2;
    }

    public final String toString() {
        return "{" + this.Code + ", " + this.I + ", " + this.Z + ", " + this.J + "} -> slot " + this.B;
    }
}
