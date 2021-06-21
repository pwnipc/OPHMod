package defpackage;

import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: bk  reason: default package */
/* compiled from: Source */
public final class bk {
    private int B = 0;
    private int C = 0;
    private String Code;
    private String I;
    private Object[] J = null;
    private bn Z;
    private bo[] a = new bo[10];

    public static String Code(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("file://")) {
            return str;
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return "file://" + str;
    }

    /* access modifiers changed from: package-private */
    public final byte[] I(String str) {
        return this.Z.J(str);
    }

    /* access modifiers changed from: package-private */
    public final int Code(byte[] bArr, String str) {
        return this.Z.Code(bArr, str);
    }

    /* access modifiers changed from: package-private */
    public final boolean Z(String str) {
        return this.Z.B(str);
    }

    /* access modifiers changed from: package-private */
    public final boolean J(String str) {
        return this.Z.C(str);
    }

    public final bm Code(String str, boolean z, int i) {
        return this.Z.Code(str, z, i);
    }

    public final boolean B(String str) {
        return this.Z.Code(str);
    }

    public final long C(String str) {
        return this.Z.I(str);
    }

    /* access modifiers changed from: package-private */
    public final void Code() {
        J(d());
    }

    /* access modifiers changed from: package-private */
    public final void I() {
        J(c());
    }

    private String c() {
        String Z2;
        if (this.I == null || this.I.equals("")) {
            Z2 = db.Z(this.Z.J());
        } else {
            Z2 = this.I;
        }
        this.I = Code(Z2);
        return this.I;
    }

    private String d() {
        String str;
        bo boVar = null;
        if (this.Code == null || "".equals(this.Code)) {
            str = null;
        } else {
            str = this.Code;
        }
        if (str == null || "".equals(str)) {
            str = this.Z.Z();
        }
        if (str == null || "".equals(str)) {
            bn bnVar = this.Z;
            bo[] B2 = B();
            if (B2.length > 0) {
                boVar = B2[0];
            }
            if (boVar != null) {
                str = db.Z(boVar.I()) + "OperaSavedPages/";
            }
        }
        if (str == null || "".equals(str)) {
            str = "OperaSavedPages/";
        }
        this.Code = Code(str);
        return this.Code;
    }

    /* access modifiers changed from: package-private */
    public final String a(String str) {
        if (str == null || "".equals(str)) {
            this.Code = null;
            this.Code = d();
            String Z2 = this.Z.Z();
            if (Z2 == null) {
                Z2 = "";
            }
            StringBuilder sb = new StringBuilder();
            bn bnVar = this.Z;
            return sb.append(Z2).toString();
        }
        this.Code = str;
        return null;
    }

    public final String Z() {
        bn bnVar = this.Z;
        return null;
    }

    public final String J() {
        return this.Z.I();
    }

    public bk(bn bnVar) {
        this.Z = bnVar;
    }

    /* access modifiers changed from: package-private */
    public final bo[] B() {
        try {
            this.Z.Code();
        } catch (Throwable th) {
        }
        return this.a;
    }

    public final void Code(String str, String str2) {
        int length = this.a.length;
        if (this.C >= length) {
            bo[] boVarArr = new bo[(length + 5)];
            for (int i = 0; i < this.C; i++) {
                boVarArr[i] = this.a[i];
            }
            this.a = boVarArr;
        }
        bo[] boVarArr2 = this.a;
        int i2 = this.C;
        this.C = i2 + 1;
        boVarArr2[i2] = new bo(str, str2);
    }

    public final bo b(String str) {
        for (int i = 0; i < this.C; i++) {
            bo boVar = this.a[i];
            if (boVar.Code(str)) {
                return boVar;
            }
        }
        return null;
    }

    public static int c(String str) {
        if (str.length() > 7 && str.indexOf(".obml") == (str.length() - 5) - 2) {
            try {
                int parseInt = Integer.parseInt(str.substring(str.length() - 2));
                if (Code(parseInt)) {
                    return parseInt;
                }
            } catch (Exception e) {
            }
        }
        return 0;
    }

    public static int d(String str) {
        if (c(str) == 0) {
            return 0;
        }
        try {
            return Integer.parseInt(str.substring(0, (str.length() - 5) - 2));
        } catch (Exception e) {
            return 0;
        }
    }

    public final String Code(int i, int i2) {
        if (i2 == -1) {
            i2 = 16;
        }
        return db.Z(d()) + i + ".obml" + i2;
    }

    public final String I(int i, int i2) {
        if (i2 == -1) {
            i2 = 16;
        }
        return db.Z(c()) + i + ".obml" + i2;
    }

    /* access modifiers changed from: package-private */
    public final String Z(int i, int i2) {
        Object[] C2 = C(i, i2);
        if (C2 != null) {
            return (String) C2[0];
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final String J(int i, int i2) {
        Object[] C2 = C(i, i2);
        if (C2 != null) {
            return (String) C2[1];
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final byte[] B(int i, int i2) {
        Object[] C2 = C(i, i2);
        if (C2 != null) {
            return (byte[]) C2[2];
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final long e(String str) {
        return this.Z.Z(str);
    }

    /* access modifiers changed from: package-private */
    public final int[] C() {
        return this.Z.B();
    }

    /* access modifiers changed from: package-private */
    public final bo a() {
        bn bnVar = this.Z;
        return null;
    }

    public final boolean b() {
        bn bnVar = this.Z;
        return false;
    }

    private static boolean Code(int i) {
        return i == 15 || i == 16;
    }

    private Object[] C(int i, int i2) {
        bm bmVar;
        InputStream inputStream;
        DataInputStream dataInputStream;
        bm bmVar2;
        InputStream inputStream2;
        DataInputStream dataInputStream2;
        Object[] objArr;
        byte[] bArr;
        String str;
        int i3 = 0;
        if (i == this.B) {
            return this.J;
        }
        if (!Code(i2)) {
            return null;
        }
        this.B = i;
        this.J = null;
        try {
            bmVar = this.Z.Code(Code(i, i2), false, 1);
            try {
                inputStream = bmVar.Code();
                try {
                    dataInputStream = new DataInputStream(inputStream);
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = null;
                    db.Code((InputStream) dataInputStream);
                    db.Code(inputStream);
                    db.Code(bmVar);
                    throw th;
                }
                try {
                    byte[] bArr2 = new byte[4];
                    do {
                        i3 += dataInputStream.read(bArr2, i3, 4 - i3);
                    } while (i3 < 4);
                    if (ap.J(bArr2, 0) != 47404304) {
                        db.Code((InputStream) dataInputStream);
                        db.Code(inputStream);
                        db.Code(bmVar);
                        return null;
                    }
                    db.Code((InputStream) dataInputStream, 3);
                    if (dataInputStream.read() != i2) {
                        db.Code((InputStream) dataInputStream);
                        db.Code(inputStream);
                        db.Code(bmVar);
                        return null;
                    }
                    db.Code((InputStream) dataInputStream, i2 == 15 ? 10 : 7);
                    String readUTF = dataInputStream.readUTF();
                    int readShort = dataInputStream.readShort();
                    byte[] bArr3 = new byte[readShort];
                    dataInputStream.readFully(bArr3, 0, readShort);
                    if (readShort == 0) {
                        bArr = null;
                    } else {
                        bArr = bArr3;
                    }
                    String readUTF2 = dataInputStream.readUTF();
                    String readUTF3 = dataInputStream.readUTF();
                    if (readUTF3 == null || readUTF3.length() <= 0 || readUTF3.charAt(0) != 0) {
                        str = readUTF3;
                    } else {
                        str = readUTF2 + readUTF3.substring(1, readUTF3.length());
                    }
                    objArr = new Object[]{readUTF, str, bArr};
                    db.Code((InputStream) dataInputStream);
                    db.Code(inputStream);
                    db.Code(bmVar);
                    this.J = objArr;
                    return objArr;
                } catch (Throwable th2) {
                    th = th2;
                    db.Code((InputStream) dataInputStream);
                    db.Code(inputStream);
                    db.Code(bmVar);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                dataInputStream = null;
                inputStream = null;
                db.Code((InputStream) dataInputStream);
                db.Code(inputStream);
                db.Code(bmVar);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            dataInputStream = null;
            inputStream = null;
            bmVar = null;
            db.Code((InputStream) dataInputStream);
            db.Code(inputStream);
            db.Code(bmVar);
            throw th;
        }
    }
}
