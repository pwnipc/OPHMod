package defpackage;

import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: cv  reason: default package */
/* compiled from: Source */
final class cv {
    private int B;
    private int C = 0;
    private Vector Code = new Vector();
    private Hashtable I = new Hashtable();
    private int J;
    private bg Z;
    private int a = 0;

    cv() {
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v41, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v3, resolved type: int[][]} */
    /* JADX WARNING: Multi-variable type inference failed */
    public final void Code(bg bgVar, int i, String str) {
        boolean z;
        String str2;
        int[][] iArr;
        boolean z2;
        String J2;
        int i2;
        int I2;
        int C2;
        int Code2;
        int Code3;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        this.Z = bgVar;
        int i5 = 0;
        while (true) {
            if (i5 >= str.length()) {
                z = false;
                break;
            } else if (db.Z(str.charAt(i5))) {
                z = true;
                break;
            } else {
                i5++;
            }
        }
        int[] iArr2 = {this.C, this.a, 0, 0};
        this.J = this.Z.Code(i, iArr2);
        while (this.J != -1) {
            this.C = iArr2[0];
            this.a = iArr2[1];
            boolean z5 = false;
            int i6 = this.J + 17;
            int i7 = i6 + 1;
            int Z2 = this.Z.Z(i6);
            while (Z2 > 0) {
                int i8 = i7 + 1;
                if (this.Z.Z(i7) != 116 || !this.Z.J(i8).equals("s")) {
                    z4 = z5;
                } else {
                    z4 = true;
                }
                Z2--;
                i7 = i8 + this.Z.I(i8) + 2;
                z5 = z4;
            }
            String J3 = this.Z.J(i7);
            if (z) {
                str = db.c(str);
                str2 = db.c(J3);
            } else {
                str2 = J3;
            }
            int Z3 = Z(i7);
            this.B = 0;
            while (!z5 && this.B < str2.length()) {
                int i9 = this.J;
                int i10 = this.B;
                int i11 = this.C;
                int i12 = this.a;
                int size = this.Code.size();
                int i13 = 1;
                int i14 = i12;
                int i15 = i11;
                int i16 = i9;
                String str3 = str;
                String str4 = str2;
                int i17 = Z3;
                while (true) {
                    if (str3.length() <= str4.length() - i10) {
                        if (str4.regionMatches(true, i10, str3, 0, str3.length())) {
                            int i18 = this.J;
                            int i19 = this.B;
                            int i20 = this.C;
                            int i21 = this.a;
                            int length = i10 + str3.length();
                            iArr = Array.newInstance(Integer.TYPE, new int[]{i13, 10});
                            int i22 = 0;
                            int i23 = i19;
                            int i24 = i18;
                            while (true) {
                                int i25 = i24 + 17;
                                z2 = true;
                                int i26 = i25 + 1;
                                int Z4 = this.Z.Z(i25);
                                while (Z4 > 0) {
                                    int i27 = i26 + 1;
                                    if (this.Z.Z(i26) == 114) {
                                        z3 = false;
                                    } else {
                                        z3 = z2;
                                    }
                                    Z4--;
                                    i26 = this.Z.I(i27) + 2 + i27;
                                    z2 = z3;
                                }
                                J2 = this.Z.J(i26);
                                i2 = 0;
                                int i28 = 0;
                                int i29 = 0;
                                while (i28 < i23) {
                                    if (J2.charAt(i28) == 10) {
                                        i4 = i2 + 1;
                                        i3 = i28 + 1;
                                    } else {
                                        i3 = i29;
                                        i4 = i2;
                                    }
                                    i28++;
                                    i2 = i4;
                                    i29 = i3;
                                }
                                I2 = this.Z.I(i24 + 15);
                                C2 = db.C(I2);
                                Code2 = db.Code(I2, J2.substring(i29, i23));
                                Code3 = db.Code(J2, i23);
                                if (i24 == i16) {
                                    break;
                                }
                                int Z5 = Z(i26);
                                int I3 = i20 + this.Z.I(Z5 + 1);
                                int Code4 = this.Z.Code(Z5 + 3) + i21;
                                int Code5 = db.Code(I2, J2.substring(i23, J2.length()));
                                int Code6 = db.Code(J2, J2.length()) - Code3;
                                if (!z2) {
                                    Code2 = 0;
                                }
                                iArr[i22] = Code(i24, Code3, Code6, Code2, C2 * i2, Code5, C2, i20, i21, size);
                                i22++;
                                i21 = Code4;
                                i20 = I3;
                                i23 = 0;
                                i24 = Z5;
                            }
                            int Code7 = db.Code(I2, J2.substring(i23, length));
                            int Code8 = db.Code(J2, length) - Code3;
                            if (!z2) {
                                Code2 = (this.Z.I(i24 + 6) - Code2) - Code7;
                            }
                            iArr[i22] = Code(i24, Code3, Code8, Code2, C2 * i2, Code7, C2, i20, i21, size);
                        } else {
                            iArr = null;
                        }
                    } else if (i17 == -1 || !str4.regionMatches(true, i10, str3, 0, str4.length() - i10)) {
                        iArr = null;
                    } else {
                        int I4 = this.Z.I(i16 + 6);
                        int Code9 = this.Z.Code(i16 + 8);
                        int I5 = i15 + this.Z.I(i17 + 1);
                        int Code10 = i14 + this.Z.Code(i17 + 3);
                        int I6 = this.Z.I(i17 + 6);
                        int Code11 = this.Z.Code(i17 + 8);
                        int i30 = i17 + 17;
                        int i31 = i30 + 1;
                        int Z6 = this.Z.Z(i30);
                        int i32 = i31;
                        while (Z6 > 0) {
                            int i33 = i32 + 1;
                            Z6--;
                            i32 = i33 + this.Z.I(i33) + 2;
                        }
                        String J4 = this.Z.J(i32);
                        if (z) {
                            J4 = db.c(J4);
                        }
                        int Z7 = Z(i32);
                        if (!cw.Code(i15, i14, I4, Code9, I5, Code10, I6, Code11)) {
                            str3 = str3.substring(str4.length() - i10);
                            i10 = 0;
                            i13++;
                            i14 = Code10;
                            i15 = I5;
                            i16 = i17;
                            str4 = J4;
                            i17 = Z7;
                        } else if (str3.charAt(str4.length() - i10) != ' ' || str3.length() <= (str4.length() - i10) + 1) {
                            iArr = null;
                        } else {
                            str3 = str3.substring((str4.length() - i10) + 1);
                            i10 = 0;
                            i13++;
                            i14 = Code10;
                            i15 = I5;
                            i16 = i17;
                            str4 = J4;
                            i17 = Z7;
                        }
                    }
                }
                iArr = null;
                if (iArr != null) {
                    this.Code.addElement(iArr);
                }
                this.B++;
            }
            this.J = this.Z.Code(i7 + 2 + this.Z.I(i7), iArr2);
        }
        Enumeration elements = this.Code.elements();
        while (elements.hasMoreElements()) {
            int[][] iArr3 = (int[][]) elements.nextElement();
            int i34 = 0;
            while (true) {
                int i35 = i34;
                if (i35 < iArr3.length) {
                    int[] iArr4 = iArr3[i35];
                    Integer num = new Integer(iArr4[0]);
                    if (this.I.containsKey(num)) {
                        ((Vector) this.I.get(num)).addElement(iArr4);
                    } else {
                        Vector vector = new Vector();
                        vector.addElement(iArr4);
                        this.I.put(num, vector);
                    }
                    i34 = i35 + 1;
                }
            }
        }
    }

    private static int[] Code(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        return new int[]{i, i2, i3, i4, i5, i6, i7, i8, i9, i10};
    }

    private int Z(int i) {
        int I2 = i + 2 + this.Z.I(i);
        if (I2 >= this.Z.Code() || this.Z.Z(I2) != 84) {
            return -1;
        }
        return I2;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code() {
        return this.Code.size() > 0;
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        return this.Code.size();
    }

    /* access modifiers changed from: package-private */
    public final int[][] Code(int i) {
        return (int[][]) this.Code.elementAt(i);
    }

    /* access modifiers changed from: package-private */
    public final Vector I(int i) {
        return (Vector) this.I.get(new Integer(i));
    }
}
