package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

/* renamed from: cz  reason: default package */
/* compiled from: Source */
public final class cz {
    private static final da B = new da("server", "*", 0, "setup", 1);
    private static final da C = new da("probe", "*", 0, "*", 1);
    static int Code = 0;
    private static da[] I;
    private static final da J = new da("i", "*", 0, "/firsttime/*", 1);
    private static cp[] Z;
    private static final cp a = new cp(0, 0, "server4.operamini.com", 80, 1080, "c1dd7ab77e2c967746fe10681026c920f864811321bcb8be6bbfa5a03fda4e16c9c8db3af280f7703366e778e93c55e7159a8852d2b1381e521a337f22b1406cddf41a3114aecb4f4bfe79e0c5aa2ba8824fc989cb8bdcbf8ec5cef5176bfd4059f229b91bfa025126b295f9c409e75f6f6415ee094fd7f5dfd395a1f431668c5a08e88de891dc4dd38d4e9aa9b9c00dc604a0428e3aa5a28ccfa75af099147b", "server4.operamini.com");
    private static cp b;

    static void Code() {
        cn.Code.Z("zerorating");
        try {
            I(ap.J(cn.Code.Code("trafficrouting", 1), 0), cn.Code.Code("trafficrouting", 2));
        } catch (Throwable th) {
            Z();
        }
    }

    private static void Z() {
        I = new da[]{J, B, C};
        Z = new cp[0];
        b = null;
        Code = 0;
    }

    public static cp Code(int i) {
        cp cpVar;
        String str;
        cp[] cpVarArr = new cp[3];
        cpVarArr[0] = a;
        cpVarArr[1] = b;
        int i2 = 0;
        while (true) {
            if (i2 >= Z.length) {
                cpVar = null;
                break;
            } else if (Z[i2].Code == i) {
                cpVar = Z[i2];
                break;
            } else {
                i2++;
            }
        }
        cpVarArr[2] = cpVar;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        String str2 = null;
        String str3 = null;
        int i6 = 0;
        String str4 = null;
        for (int i7 = 0; i7 < 3; i7++) {
            cp cpVar2 = cpVarArr[i7];
            if (cpVar2 != null) {
                if (cpVar2.Z.length() != 0) {
                    str4 = cpVar2.Z;
                    i3 = i7;
                    str3 = str4;
                }
                if (cpVar2.C.length() != 0) {
                    str2 = cpVar2.C;
                }
                i6 = cpVar2.I;
                i5 = cpVar2.J;
                i4 = cpVar2.B;
            }
        }
        if (i3 == 2) {
            str = Code(str4);
        } else if (i != 0) {
            str3 = Code(str3, i);
            str = str4;
        } else {
            str = str4;
        }
        return new cp(i, i6, str3, i5, i4, str2, str);
    }

    private static String Code(String str) {
        int indexOf = str.indexOf(46);
        int lastIndexOf = str.lastIndexOf(45, indexOf - 1);
        try {
            int parseInt = Integer.parseInt(str.substring(lastIndexOf, indexOf));
            if (parseInt < -255 || parseInt >= 0) {
                return str;
            }
            return str.substring(0, lastIndexOf) + str.substring(indexOf);
        } catch (Throwable th) {
            return str;
        }
    }

    public static cp I(int i) {
        return new cp(i, a.I, Code(a.Z, 1), a.J, a.B, a.C, a.Z);
    }

    private static String Code(String str, int i) {
        int indexOf = str.indexOf(46);
        if (indexOf > 0) {
            return str.substring(0, indexOf) + '-' + i + str.substring(indexOf);
        }
        return str;
    }

    public static int Code(String str, String str2) {
        try {
            Object[] e = db.e(str);
            int i = 0;
            while (i < I.length) {
                da daVar = I[i];
                if (!(db.I(daVar.Code, (String) e[0]) && db.I(daVar.I, (String) e[1]) && (daVar.Z == 0 || ((Integer) e[2]).intValue() == daVar.Z) && db.I(daVar.J, (String) e[3]))) {
                    i++;
                } else if (I[i].B == 255) {
                    return Code(str2, (String) null);
                } else {
                    return I[i].B;
                }
            }
        } catch (Throwable th) {
        }
        return 0;
    }

    private static synchronized void I(int i, byte[] bArr) {
        cp cpVar;
        synchronized (cz.class) {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
            try {
                Z();
                cp cpVar2 = null;
                int readUnsignedByte = dataInputStream.readUnsignedByte();
                cp[] cpVarArr = new cp[readUnsignedByte];
                int i2 = 0;
                while (i2 < readUnsignedByte) {
                    int readUnsignedByte2 = dataInputStream.readUnsignedByte();
                    int readUnsignedByte3 = dataInputStream.readUnsignedByte();
                    String readUTF = dataInputStream.readUTF();
                    cpVarArr[i2] = new cp(readUnsignedByte2, readUnsignedByte3, readUTF, dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUTF(), readUTF);
                    if (cpVarArr[i2].Code == 255) {
                        cpVar = cpVarArr[i2];
                    } else {
                        cpVar = cpVar2;
                    }
                    i2++;
                    cpVar2 = cpVar;
                }
                int readUnsignedByte4 = dataInputStream.readUnsignedByte();
                da[] daVarArr = new da[(readUnsignedByte4 + 3)];
                daVarArr[0] = B;
                for (int i3 = 1; i3 <= readUnsignedByte4; i3++) {
                    daVarArr[i3] = new da(dataInputStream.readUTF(), dataInputStream.readUTF(), dataInputStream.readUnsignedShort(), dataInputStream.readUTF(), dataInputStream.readUnsignedByte());
                }
                daVarArr[readUnsignedByte4 + 1] = C;
                daVarArr[readUnsignedByte4 + 2] = J;
                b = cpVar2;
                Z = cpVarArr;
                I = daVarArr;
                Code = i;
            } catch (IOException e) {
                throw e;
            }
        }
        return;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    static synchronized void Code(int i, byte[] bArr) {
        synchronized (cz.class) {
            I(i, bArr);
            cn.Code.Z("trafficrouting");
            byte[] bArr2 = new byte[4];
            ap.Z(Code, bArr2, 0);
            cn.Code.Code("trafficrouting", bArr2);
            cn.Code.Code("trafficrouting", bArr);
        }
    }

    public static synchronized boolean I() {
        boolean z;
        synchronized (cz.class) {
            cn.Code.Z("trafficrouting");
            if (Code != 0) {
                Z();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
