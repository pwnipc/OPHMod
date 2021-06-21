package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: cu  reason: default package */
/* compiled from: Source */
public final class cu {
    private static bu A;
    private static boolean B;
    private static int C;
    static int Code;
    private static boolean D;
    private static int E;
    private static int F;
    private static int G;
    private static final Object I = new Object();
    private static boolean J;
    private static ci Z;
    private static int a;
    private static bu b;
    private static bu c;
    private static int d;
    private static int e;
    private static int f;
    private static String g;
    private static int h;
    private static int i;
    private static int j;
    private static int k;
    private static bp l;
    private static int m;
    private static bu n;
    private static bu o;
    private static int p;
    private static int q;
    private static int r;
    private static String s;
    private static String t;
    private static int u;
    private static int v;
    private static bp w;
    private static bu x;
    private static int y;
    private static int z;

    public static void Code() {
        synchronized (I) {
            B = false;
        }
    }

    public static void I() {
        synchronized (I) {
            B = true;
        }
    }

    /* JADX WARNING: type inference failed for: r0v54, types: [int] */
    /* JADX WARNING: type inference failed for: r1v18, types: [int] */
    /* JADX WARNING: Multi-variable type inference failed */
    static void Z() {
        ar arVar = ar.I;
        Z = ar.e();
        try {
            if (cn.Code.Code("splash")) {
                Code = ao.J(cn.Code.Code("splash", 1), 0);
                DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(cn.Code.Code("splash", 2)));
                if (dataInputStream.readInt() == 1397764400) {
                    short readShort = dataInputStream.readShort();
                    String str = "";
                    for (short s2 = 0; s2 < readShort; s2++) {
                        String readUTF = dataInputStream.readUTF();
                        short readShort2 = dataInputStream.readShort();
                        short s3 = 0;
                        while (s3 < readShort2) {
                            String readUTF2 = dataInputStream.readUTF();
                            String readUTF3 = dataInputStream.readUTF();
                            if (!readUTF.equals("brand-logo") || !readUTF2.equals("bitmap")) {
                                readUTF3 = str;
                            }
                            s3++;
                            str = readUTF3;
                        }
                    }
                    int readShort3 = dataInputStream.readShort();
                    for (int i2 = 0; i2 < readShort3; i2++) {
                        String readUTF4 = dataInputStream.readUTF();
                        int readInt = dataInputStream.readInt();
                        if (readUTF4.equals(str)) {
                            byte[] bArr = new byte[readInt];
                            dataInputStream.readFully(bArr);
                            b = Z.q().Code(bArr, bArr.length, true);
                        } else {
                            db.Code((InputStream) dataInputStream, readInt);
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
        try {
            c = Z.ah();
            n = Z.ai();
            o = Z.aj();
            x = Z.ak();
            String l2 = ar.I.l();
            if ("hvga".equals(l2)) {
                G = 9;
            } else if ("vga".equals(l2)) {
                G = 12;
            } else if ("svga".equals(l2) || "qxga".equals(l2)) {
                G = 18;
            } else {
                G = 6;
            }
            if (b == null) {
                b = db.Code(32770, true);
            }
        } catch (Throwable th2) {
        }
        l = Z.s().Code(64, 0);
        w = Z.s().Code(64, 16);
        f = c.Z();
        e = c.I();
        if (b != null) {
            d = b.I();
        }
        r = n.Z();
        q = n.I();
        z = x.Z();
        y = x.I();
        J = true;
    }

    static void J() {
        synchronized (I) {
            J = false;
            b = null;
            c = null;
            n = null;
            o = null;
            x = null;
            A = null;
        }
    }

    static void Code(int i2, byte[] bArr) {
        cn.Code.Z("splash");
        byte[] bArr2 = new byte[4];
        ao.Z(i2, bArr2, 0);
        try {
            cn.Code.Code("splash", bArr2);
            Code = i2;
            cn.Code.Code("splash", bArr);
        } catch (IOException e2) {
        }
    }

    static boolean B() {
        boolean z2;
        synchronized (I) {
            z2 = J;
        }
        return z2;
    }

    static void Code(String str) {
        synchronized (I) {
            if (J && !B) {
                C();
                char[] charArray = str.toCharArray();
                int C2 = new au(charArray, 0, 0, 0, (String) null, l).C(0);
                if ((C2 & 14) != 0) {
                    g = new String(charArray, 0, au.Code(charArray, C2));
                } else {
                    g = str;
                }
                h = l.Code(g);
                Z.Code(0, k, C, l.Code());
            }
        }
    }

    static void Code(int i2, int i3) {
        synchronized (I) {
            i = i2 * 10;
            j = i3 * 10;
            Code(0);
        }
    }

    static void Code(int i2) {
        synchronized (I) {
            if (J && !B) {
                C();
                m = Math.min(i + (((j - i) * i2) / 100), 1000);
                try {
                    Z.Code(0, p, C, r);
                } catch (NullPointerException e2) {
                }
            }
        }
    }

    public static void Code(String str, String str2) {
        s = str;
        t = str2;
        C();
        if (Math.max(w.Code(s), w.Code(t)) > (C - y) - (G * 5)) {
            w = Z.s().Code(64, 0);
        }
        u = w.Code(s);
        v = w.Code(t);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x00d7, code lost:
        defpackage.cs.Code(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    static void Code(br brVar) {
        synchronized (I) {
            if (J && !B) {
                brVar.Z(brVar.Code(), brVar.I(), brVar.Z(), brVar.J(), 16777215);
                C();
                bu buVar = c;
                int i2 = e;
                int i3 = f;
                int i4 = (C - i2) / 2;
                int i5 = (k - (G * 2)) - i3;
                int i6 = (a * 5) / 100;
                if (i5 < i6) {
                    int i7 = i6 - i5;
                    int i8 = (int) (((double) i2) - ((((double) (i3 - i7)) / ((double) i3)) * ((double) i2)));
                    brVar.Code(c, (i8 / 2) + i4, i6, i2 - i8, i3 - i7, false);
                } else {
                    brVar.Code(c, i4, i5);
                }
                if (g != null) {
                    brVar.Code(g, (C - h) / 2, k, l, 0);
                }
                int i9 = (C - q) / 2;
                Code(brVar, n, i9, p, q, r);
                Code(brVar, o, i9, p, (q * m) / 1000, r);
                int i10 = r + p;
                int i11 = ((double) (((z * 2) + i10) + (G * 4))) > 0.9d * ((double) a) ? ((a - i10) - (z * 2)) / 4 : G * 2;
                int i12 = i10 + (i11 * 2);
                if (b == null || d <= 1) {
                    int i13 = (((C * 90) / 100) - y) - G;
                    int i14 = z + i12 + i11;
                    int min = y + G + Math.min(i13, u);
                    int min2 = y + G + Math.min(i13, v);
                    int max = Math.max(min, min2);
                    int Code2 = (z - w.Code()) / 2;
                    int i15 = (C - max) / 2;
                    if (!db.Code(s.charAt(0))) {
                        int i16 = y + i15 + G;
                        brVar.Code(x, i15, i12);
                        brVar.Code(x, i15, i14);
                        Code(brVar, w, s, i16, i12 + Code2, u, i13, false);
                        Code(brVar, w, t, i16, i14 + Code2, v, i13, false);
                    } else {
                        int i17 = C - i15;
                        brVar.Code(x, i17 - y, i12);
                        brVar.Code(x, i17 - y, i14);
                        Code(brVar, w, s, i17 - min, i12 + Code2, u, i13, true);
                        Code(brVar, w, t, i17 - min2, i14 + Code2, v, i13, true);
                    }
                } else {
                    brVar.Code(b, (C - d) / 2, i12);
                }
            }
        }
    }

    private static void Code(br brVar, bp bpVar, String str, int i2, int i3, int i4, int i5, boolean z2) {
        int i6;
        if (i4 < i5) {
            brVar.Code(str, i2, i3, bpVar, 0);
            return;
        }
        int Code2 = brVar.Code();
        int I2 = brVar.I();
        int Z2 = brVar.Z();
        int J2 = brVar.J();
        int Code3 = w.Code();
        int i7 = G * 4;
        int Code4 = w.Code();
        if (!(A != null && E == i7 && F == Code4 && D == z2)) {
            int[] iArr = new int[i7];
            int[] iArr2 = new int[(i7 * Code4)];
            if (z2) {
                for (int i8 = 0; i8 < i7; i8++) {
                    iArr[(i7 - i8) - 1] = (((i8 * 255) / i7) << 24) | 16777215;
                }
            } else {
                for (int i9 = 0; i9 < i7; i9++) {
                    iArr[i9] = (((i9 * 255) / i7) << 24) | 16777215;
                }
            }
            for (int i10 = 0; i10 < Code4; i10++) {
                System.arraycopy(iArr, 0, iArr2, i10 * i7, i7);
            }
            A = Z.q().Code(iArr2, i7, Code4, true, false);
            E = i7;
            F = Code4;
            D = z2;
        }
        brVar.I(i2, (i3 + Code3) - w.J(), i5, Code3);
        if (z2) {
            i6 = i2 - (i4 - i5);
        } else {
            i6 = i2;
        }
        brVar.Code(str, i6, i3, bpVar, 0);
        bu buVar = A;
        if (!z2) {
            i2 = (i2 + i5) - E;
        }
        brVar.Code(buVar, i2, i3);
        brVar.Code(Code2, I2, Z2, J2);
    }

    private static void Code(br brVar, bu buVar, int i2, int i3, int i4, int i5) {
        int i6;
        if (i5 > buVar.Z()) {
            i6 = i3 + ((i5 - buVar.Z()) / 2);
        } else {
            i6 = i3;
        }
        int min = Math.min(buVar.I() / 3, Math.min(i4 / 2, buVar.I()));
        brVar.Code(buVar, 0, 0, min, buVar.Z(), i2, i6);
        br brVar2 = brVar;
        bu buVar2 = buVar;
        brVar2.Code(buVar2, buVar.I() - min, 0, min, buVar.Z(), (i2 + i4) - min, i6);
        brVar.Code(buVar, min, 0, buVar.I() - (min * 2), buVar.Z(), i2 + min, i6, i4 - (min * 2), buVar.Z());
    }

    private static void C() {
        if (C != Z.J() || a != Z.B()) {
            C = Z.J();
            int B2 = Z.B();
            a = B2;
            int i2 = (B2 * 60) / 100;
            p = i2;
            k = (i2 - G) - l.Code();
        }
    }
}
