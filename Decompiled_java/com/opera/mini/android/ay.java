package com.opera.mini.android;

/* compiled from: Source */
final class ay {
    private String Code;
    private String I;
    private String J;
    private String Z;

    ay(String str) {
        this(str, (String) null, (String) null, (String) null);
    }

    ay(String str, String str2, String str3, String str4) {
        this.Code = str;
        this.I = str2;
        this.Z = str3;
        this.J = str4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ay)) {
            return false;
        }
        ay ayVar = (ay) obj;
        if ((ayVar.Code != null || this.Code != null) && !ayVar.Code.equals(this.Code)) {
            return false;
        }
        if ((ayVar.I != null || this.I != null) && !ayVar.I.equals(this.I)) {
            return false;
        }
        if ((ayVar.Z != null || this.Z != null) && !ayVar.Z.equals(this.Z)) {
            return false;
        }
        if ((ayVar.J != null || this.J != null) && !ayVar.J.equals(this.J)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.Code != null ? this.Code : "") + "jz78qgNXYe" + (this.I != null ? this.I : "") + "jz78qgNXYe" + (this.Z != null ? this.Z : "") + "jz78qgNXYe" + (this.J != null ? this.J : "")).hashCode();
    }
}
