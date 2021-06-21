package defpackage;

import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: cb  reason: default package */
/* compiled from: Source */
final class cb {
    private static final byte[] Code = new byte[256];
    private static final byte[] I = new byte[366];
    private static final int[] Z = new int[366];

    public static void Code() {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(db.B("/l"));
            try {
                dataInputStream.readFully(Code);
                dataInputStream.readFully(I);
                int i = 0;
                while (i < 366) {
                    int i2 = i + 1;
                    Z[i] = dataInputStream.readShort() & 65535;
                    i = i2;
                }
                db.Code((InputStream) dataInputStream);
            } catch (Exception e) {
                db.Code((InputStream) dataInputStream);
            } catch (Throwable th) {
                Throwable th2 = th;
                dataInputStream2 = dataInputStream;
                th = th2;
                db.Code((InputStream) dataInputStream2);
                throw th;
            }
        } catch (Exception e2) {
            dataInputStream = null;
            db.Code((InputStream) dataInputStream);
        } catch (Throwable th3) {
            th = th3;
            db.Code((InputStream) dataInputStream2);
            throw th;
        }
    }

    public static void Code(char[] cArr, int i, int i2, int i3, bp bpVar, au auVar) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = 0;
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i9 < length) {
            char c = cArr[i9];
            char c2 = 0;
            if (i9 + 1 < length) {
                c2 = cArr[i9 + 1];
            }
            if ((((I(c) & 8) == 0 && (I(c2) & 4) == 0) ? (I(c) == 0 && I(c2) == 0) ? false : true : false) || Code(c) || i9 == length - 1) {
                char c3 = Code(c) ? c : 0;
                if (c == 13 && c2 == 10) {
                    i5 = i9 + 1;
                    i4 = 2;
                    c3 = 65535;
                } else if (c == ' ' || Code(c)) {
                    i4 = 1;
                    i5 = i9;
                } else {
                    i4 = 0;
                    i5 = i9;
                }
                int i14 = (i5 - i10) + 1;
                int i15 = (i5 - i12) + 1;
                int Code2 = bpVar.Code(cArr, i12, i15);
                if (i4 != 0) {
                    i6 = bpVar.Code(cArr, i12, i15 - i4);
                } else {
                    i6 = Code2;
                }
                if (i6 + i13 > Code(i11, i2, i, i3)) {
                    if (i10 != i12) {
                        i8 = i12 - i10;
                    } else if (i15 - i4 == 1 || (db.B(c) && i15 - i4 == 2)) {
                        i8 = i14;
                    } else {
                        int Code3 = Code(i11, i2, i, i3) - i13;
                        int i16 = (Code(cArr, i12) ? 2 : 1) + i12;
                        int i17 = i5 - i4;
                        while (i17 > i16) {
                            if (Code(cArr, i17 - 1)) {
                                i17--;
                            }
                            if (bpVar.Code(cArr, i12, i17 - i12) <= Code3 || i17 <= i16) {
                                break;
                            }
                            i17--;
                        }
                        i8 = Math.max(i17, i16) - i10;
                    }
                    if (!Code(auVar, cArr, i10, i8, i11, i2, i3, 0)) {
                        i11++;
                        int i18 = i10 + i8;
                        i12 = i18;
                        i13 = 0;
                        i10 = i18;
                        i9 = i18;
                    } else {
                        return;
                    }
                } else if (Code(c) || i5 == length - 1) {
                    boolean z = Code(c) && i10 + i14 == length;
                    if (i3 == 0 && auVar == null) {
                        i4 = 0;
                    }
                    int i19 = i14 - i4;
                    if (i5 != length - 1 || z) {
                        i7 = i3;
                    } else {
                        i7 = 0;
                    }
                    if (!Code(auVar, cArr, i10, i19, i11, i2, i7, c3)) {
                        i11++;
                        int i20 = i10 + i14;
                        if (z) {
                            Code(auVar, cArr, 0, 0, i11, i2, 0, 0);
                            return;
                        }
                        i12 = i20;
                        i13 = 0;
                        i10 = i20;
                        i9 = i20;
                    } else {
                        return;
                    }
                } else {
                    i12 += i15;
                    i13 += Code2;
                    i9 = i5 + 1;
                }
            } else {
                i9++;
            }
        }
    }

    private static int Code(int i, int i2, int i3, int i4) {
        if (i == i2 - 1) {
            i3 -= i4;
        }
        return Math.max(0, i3);
    }

    private static boolean Code(au auVar, char[] cArr, int i, int i2, int i3, int i4, int i5, int i6) {
        boolean z;
        if (i4 <= 0 || i3 < i4 - 1) {
            z = false;
        } else {
            z = true;
        }
        if (z && i5 != 0 && i2 > 0 && cArr[(i + i2) - 1] == ' ') {
            i2--;
        }
        if (auVar != null) {
            auVar.Code(cArr, i3, i, i + i2, i6);
            if (z && i5 != 0) {
                auVar.Code(i3);
            }
        } else {
            ar.Code(cArr, i, i + i2);
        }
        return z;
    }

    private static boolean Code(char[] cArr, int i) {
        if (i < 0 || i >= cArr.length) {
            return false;
        }
        return db.B(cArr[i]);
    }

    private static int I(char c) {
        if (c < 256) {
            return Code[c];
        }
        if (c >= 65533) {
            return 0;
        }
        int length = Z.length;
        int i = 0;
        while (true) {
            int i2 = (length + i) / 2;
            if (Z[i2] > c) {
                length = i2;
            } else if (Z[i2 + 1] > c) {
                return I[i2];
            } else {
                i = i2;
            }
        }
    }

    public static boolean Code(char c) {
        return c == 10 || c == 13 || c == 11 || c == 133 || c == 12 || c == 8232 || c == 8233;
    }
}
