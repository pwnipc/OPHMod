package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Random;

/* renamed from: db  reason: default package */
/* compiled from: Source */
public class db {
    public static boolean A;
    public static long B;
    public static long C = 500000;
    public static boolean Code;
    public static int D = 512;
    public static boolean E;
    public static int F;
    protected static byte[] G;
    protected static byte[] H;
    public static boolean I;
    protected static boolean J;
    static boolean K;
    static String[] L = new String[4];
    static boolean M;
    static boolean N;
    static boolean O;
    static int P;
    static String Q;
    static String R;
    static String S;
    static int T;
    static int U;
    static boolean V;
    static boolean W;
    static byte X;
    static Object Y = new Object();
    protected static boolean Z;
    public static int a = -1;
    private static final byte[] aA = {33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 38, 38, 39, 39, 40, 40, 40, 40, 41, 41, 42, 42, 42, 42, 43, 43, 43, 43, 44, 44, 44, 44, 45, 45, 45, 45, 46, 46, 46, 46, 47, 47, 48, 48, 49, 49, 50, 50, 51, 51, 51, 51, 52, 52, 52, 52, 53, 53, 53, 53, 54, 54, 54, 54, 55, 55, 55, 55, 56, 56, 56, 56, 57, 57, 57, 57, 58, 58, 58, 58, 65, 65, 65, 65, 66, 66, 66, 66, 67, 67, 67, 67, 68, 68, 68, 68, 69, 69, 69, 69, 70, 70, 70, 70, 71, 71, 71, 71, 72, 72, 73, 73, 74, 74, 74, 74};
    private static int aB = -1;
    private static int aC = -1;
    private static final Hashtable aD;
    private static Integer aE = new Integer(0);
    static byte[] aa;
    static byte[] ab;
    static byte[] ac;
    protected static int ad;
    protected static int ae;
    public static bp[] af;
    static int ag;
    private static int ah = -1;
    private static int ai = -1;
    private static boolean aj;
    private static cq ak = new cq();
    private static boolean al = true;
    private static int am;
    private static int an;
    private static long ao;
    private static long ap;
    private static long aq;
    private static Object ar = new Object();
    private static int[] as;
    private static int at;
    private static bf au;
    private static int av;
    private static int aw;
    private static int ax;
    private static int ay;
    private static final byte[] az = {34, 34, 35, 35, 37, 37, 39, 39};
    public static int b = 4;
    public static boolean c = true;
    public static int d;
    public static int e;
    public static int f = -1;
    protected static int g;
    public static boolean h;
    public static String i;
    public static int j = -1;
    protected static int k;
    public static boolean l;
    public static boolean m;
    protected static int n = -1;
    protected static boolean o;
    protected static boolean p;
    protected static boolean q;
    protected static int r = 0;
    public static int s;
    static boolean t = true;
    static int u = 2;
    protected static int v = 2;
    public static boolean w;
    public static char x = '*';
    public static boolean y;
    public static boolean z;

    static {
        int[] iArr = {1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
        Hashtable hashtable = new Hashtable(6);
        aD = hashtable;
        hashtable.put("http", new Integer(80));
        aD.put("https", new Integer(443));
        aD.put("ftp", new Integer(21));
        aD.put("rtsp", new Integer(554));
    }

    public static void Code(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (Throwable th) {
        }
    }

    public static void Code(OutputStream outputStream) {
        try {
            outputStream.close();
        } catch (Throwable th) {
        }
    }

    public static void Code(bm bmVar) {
        try {
            bmVar.C();
        } catch (Throwable th) {
        }
    }

    static void Code(DataOutputStream dataOutputStream, int[] iArr) {
        if (iArr != null) {
            dataOutputStream.writeShort(iArr.length);
            dataOutputStream.write(Code(iArr));
            return;
        }
        dataOutputStream.writeShort(0);
    }

    static int[] Code(DataInputStream dataInputStream) {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        if (readUnsignedShort == 0) {
            return null;
        }
        byte[] bArr = new byte[(readUnsignedShort * 4)];
        dataInputStream.readFully(bArr);
        return Code(bArr, 0, bArr.length);
    }

    static byte[] Code(int[] iArr) {
        byte[] bArr = new byte[(iArr.length * 4)];
        int length = bArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return bArr;
            }
            bArr[length] = (byte) (iArr[length / 4] >> ((3 - (length % 4)) * 8));
        }
    }

    private static String Code(byte[] bArr, int i2) {
        int min = Math.min(i2, 128);
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < min + 0; i3++) {
            if ((bArr[i3] & 255) < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(Integer.toString(bArr[i3] & 255, 16));
        }
        return stringBuffer.toString();
    }

    public static int Code(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        int i7 = -1;
        while (i3 - i7 > 1) {
            int i8 = (i7 + i3) >>> 1;
            if ((iArr[(i8 * i4) + i2 + 0] & i5) < i6) {
                i7 = i8;
            } else {
                i3 = i8;
            }
        }
        return i3;
    }

    public static int Code(int[] iArr, int i2, int i3, int i4) {
        return Code(iArr, 0, i2, i3, -1, i4);
    }

    public static int Code(int i2, int i3, int i4) {
        return Math.max(Math.min(i2, i4), i3);
    }

    public static String Code(byte[] bArr) {
        cq cqVar = new cq();
        cqVar.Code(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[32];
        cqVar.Code(bArr2);
        return Code(bArr2, bArr2.length);
    }

    public static void Code(Object obj, int i2) {
        synchronized (obj) {
            try {
                obj.wait((long) i2);
            } catch (InterruptedException e2) {
            }
        }
    }

    public static void Code(Object obj) {
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    public static void Code() {
        try {
            Thread.sleep(200);
        } catch (InterruptedException e2) {
        }
    }

    public static void Code(Runnable runnable) {
        new Thread(runnable).start();
    }

    static String Code(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt == 0) {
                stringBuffer.append("%00");
            } else if ("%&=;".indexOf(charAt) >= 0) {
                stringBuffer.append('%').append(Integer.toString(charAt, 16));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    static String I(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.ensureCapacity(str.length());
        while (true) {
            int indexOf = str.indexOf(37);
            if (indexOf >= 0 && indexOf + 3 <= str.length()) {
                stringBuffer.append(str.substring(0, indexOf)).append((char) Integer.parseInt(str.substring(indexOf + 1, indexOf + 3), 16));
                str = str.substring(indexOf + 3, str.length());
            }
        }
        return stringBuffer.append(str).toString();
    }

    static String Z(String str) {
        if (str == null || str.endsWith("/")) {
            return str;
        }
        return str + "/";
    }

    public static boolean Code(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    static int[] Code(int[] iArr, int i2) {
        int[] iArr2 = new int[i2];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static void Code(InputStream inputStream, int i2) {
        while (i2 > 0) {
            i2 = (int) (((long) i2) - inputStream.skip((long) i2));
        }
    }

    static int[] Code(byte[] bArr, int i2, int i3) {
        int[] iArr = new int[(i3 / 4)];
        int length = iArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return iArr;
            }
            iArr[length] = (bArr[(length * 4) + i2] << 24) | ((bArr[((length * 4) + i2) + 1] & 255) << 16) | ((bArr[((length * 4) + i2) + 2] & 255) << 8) | (bArr[(length * 4) + i2 + 3] & 255);
        }
    }

    static byte[] J(String str) {
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) Integer.parseInt(str.substring(i2 * 2, (i2 * 2) + 2), 16);
        }
        return bArr;
    }

    public static boolean Code(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        return i2 < i6 + i8 && i2 + i4 > i6 && i3 < i7 + i9 && i3 + i5 > i7;
    }

    public static void Code(int i2) {
        F += i2;
        if (al) {
            ar.I.j();
            if (F >= 160) {
                al = false;
                Code((Object) ak);
            }
        }
    }

    public static void I() {
        I((int) System.currentTimeMillis());
    }

    public static void I(int i2) {
        synchronized (ak) {
            ak.Code(i2);
        }
    }

    private static void Code(DataInputStream dataInputStream, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                I(dataInputStream.readInt());
                i2 = i3;
            } else {
                return;
            }
        }
    }

    static ch I(byte[] bArr) {
        synchronized (ak) {
            int i2 = am;
            am = i2 + 1;
            I(i2);
            ak.Code(bArr);
            ak.Code(bArr, 0, 32);
        }
        ch chVar = new ch();
        chVar.Code(bArr, 0);
        byte[] bArr2 = be.c;
        chVar.I(bArr2, bArr2.length);
        chVar.Z(bArr, 0);
        return chVar;
    }

    private static byte[] b(int i2) {
        DataInputStream dataInputStream;
        int Code2;
        DataInputStream dataInputStream2;
        if ((32768 & i2) == 0) {
            try {
                dataInputStream = new DataInputStream(B("/t"));
            } catch (Exception e2) {
                dataInputStream = null;
                try {
                    dataInputStream.close();
                    return null;
                } catch (Throwable th) {
                    return null;
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                dataInputStream = null;
                th = th3;
                try {
                    dataInputStream.close();
                } catch (Throwable th4) {
                }
                throw th;
            }
            try {
                Code2 = Code(i2, dataInputStream);
                dataInputStream2 = dataInputStream;
            } catch (Exception e3) {
                dataInputStream.close();
                return null;
            } catch (Throwable th5) {
                th = th5;
                dataInputStream.close();
                throw th;
            }
        } else {
            ax Code3 = ax.Code(i2);
            dataInputStream = new DataInputStream(Code3);
            Code2 = Code3.Code();
            dataInputStream2 = dataInputStream;
        }
        try {
            byte[] bArr = new byte[Code2];
            dataInputStream2.readFully(bArr, 0, Code2);
            try {
                dataInputStream2.close();
            } catch (Throwable th6) {
            }
            return bArr;
        } catch (Exception e4) {
            dataInputStream = dataInputStream2;
            dataInputStream.close();
            return null;
        } catch (Throwable th7) {
            th = th7;
            dataInputStream = dataInputStream2;
            dataInputStream.close();
            throw th;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x004e, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0052, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0053, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:4:0x0012, B:12:0x0032] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0057 A[ExcHandler: Exception (e java.lang.Exception), PHI: r0 
      PHI: (r0v2 java.io.DataInputStream) = (r0v9 java.io.DataInputStream), (r0v9 java.io.DataInputStream), (r0v11 java.io.DataInputStream), (r0v11 java.io.DataInputStream), (r0v14 java.io.DataInputStream), (r0v14 java.io.DataInputStream) binds: [B:12:0x0032, B:13:?, B:6:0x0016, B:7:?, B:4:0x0012, B:5:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:4:0x0012] */
    static void Z(int i2) {
        DataInputStream dataInputStream;
        int Code2;
        DataInputStream dataInputStream2 = null;
        if ((32768 & i2) == 0) {
            try {
                dataInputStream = new DataInputStream(B("/t"));
            } catch (Exception e2) {
                dataInputStream = null;
                try {
                    dataInputStream.close();
                    return;
                } catch (Throwable th) {
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    dataInputStream2.close();
                } catch (Throwable th3) {
                }
                throw th;
            }
            try {
                Code2 = Code(i2, dataInputStream);
            } catch (Exception e3) {
            } catch (Throwable th4) {
                Throwable th5 = th4;
                dataInputStream2 = dataInputStream;
                th = th5;
                dataInputStream2.close();
                throw th;
            }
        } else {
            ax Code3 = ax.Code(i2);
            dataInputStream = new DataInputStream(Code3);
            Code2 = Code3.Code();
        }
        ar.Z.r(Code2);
        byte[] bArr = ar.Z.Code;
        an anVar = ar.Z;
        dataInputStream.readFully(bArr, 0, Code2);
        try {
            dataInputStream.close();
        } catch (Throwable th6) {
        }
    }

    static InputStream B(String str) {
        return ar.Code.Z(str);
    }

    static DataInputStream Z() {
        DataInputStream dataInputStream = new DataInputStream(B("/t"));
        Code(1, dataInputStream);
        return dataInputStream;
    }

    private static int Code(int i2, DataInputStream dataInputStream) {
        Code((InputStream) dataInputStream, (i2 & 32767) * 4);
        int readInt = dataInputStream.readInt();
        int readInt2 = (dataInputStream.readInt() + 4) - readInt;
        Code((InputStream) dataInputStream, readInt);
        return readInt2;
    }

    protected static String C(String str) {
        String property = System.getProperty(str);
        if (property != null) {
            byte[] bytes = property.getBytes();
            synchronized (ak) {
                ak.Code(bytes, 0, bytes.length);
            }
        }
        return property;
    }

    public static String J(int i2) {
        return L[i2] != null ? L[i2] : "";
    }

    public static void Code(int i2, String str, boolean z2) {
        if (L[i2] == null || !L[i2].equals(str)) {
            L[i2] = str;
            if (i2 == 1 && z2) {
                a("mc");
            } else if (i2 == 3 && z2) {
                a("md");
            }
        }
    }

    static void J() {
        long j2;
        long j3;
        long j4;
        synchronized (ar) {
            j2 = ap;
            j3 = aq;
            j4 = ao;
            ao = 0;
            aq = 0;
            ap = 0;
        }
        long j5 = j2 - j4;
        ar.I.h();
        ar.Z.Z(ar.Z.I(10, 63));
        ar.Z.B(ar.Z.Z(), 0, (int) j2);
        ar.Z.B(ar.Z.Z(), 1, (int) (j2 >> 32));
        ar.Z.B(ar.Z.Z(), 2, (int) j3);
        ar.Z.B(ar.Z.Z(), 3, (int) (j3 >> 32));
        ar.Z.B(ar.Z.Z(), 4, (int) j5);
        ar.Z.B(ar.Z.Z(), 5, (int) (j5 >> 32));
        ar.Z.B(ar.Z.Z(), 8, (int) j4);
        ar.Z.B(ar.Z.Z(), 9, (int) (j4 >> 32));
        ar.Z.b(ar.Z.Z());
        ar.Z.Z(0);
        ar.I.Z(38);
    }

    static void Code(long j2, long j3, long j4) {
        synchronized (ar) {
            ap += j2;
            aq += j3;
            ao += j4;
        }
    }

    static synchronized void B() {
        synchronized (db.class) {
            if (C()) {
                ar.I.h();
                ar.Z.c(160);
                ar.Z.c(F);
                ar.Z.c(1);
                ar.I.Z(24);
                while (F < 160) {
                    Code((Object) ak, 5000);
                }
                a("mc");
                a("md");
            }
            if (F >= 160 && L[1] == null) {
                byte[] bArr = new byte[32];
                I(bArr);
                Code(1, Code(bArr, bArr.length), true);
            }
        }
    }

    static boolean C() {
        cs.b();
        return F < 160 && E;
    }

    public static void a() {
        if (X < 3) {
            X = (byte) (X + 1);
            c();
        }
    }

    static void Code(byte[] bArr, int i2, int i3, int i4) {
        bArr[0] = 1;
        bArr[1] = 16;
        bArr[2] = (byte) i2;
        bArr[3] = (byte) (i3 >> 8);
        bArr[4] = (byte) i3;
        bArr[5] = (byte) i4;
    }

    /* JADX WARNING: type inference failed for: r0v15, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r0v17, types: [byte] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=byte, code=int, for r0v17, types: [byte] */
    /* JADX WARNING: Unknown variable types count: 1 */
    public static boolean Code(int i2, byte[] bArr) {
        int i3;
        synchronized (Y) {
            try {
                ? Code2 = cn.Code.Code("mo", 1);
                if (Code2.length == 1) {
                    i3 = Code2[0];
                } else {
                    i3 = -1;
                }
            } catch (Throwable th) {
                i3 = -1;
            }
            if (i3 == -1) {
                cn.Code.Z("mo");
            }
            if (i2 < i3) {
                try {
                    cn.Code.Code("mo", i2 + 2, bArr);
                } catch (Throwable th2) {
                    c();
                    a();
                    return false;
                }
            } else {
                byte[] bArr2 = {(byte) (i2 + 1)};
                if (i3 == -1) {
                    cn.Code.Code("mo", bArr2);
                    i3 = 0;
                } else {
                    cn.Code.Code("mo", 1, bArr2);
                }
                while (i3 < i2) {
                    cn.Code.Code("mo", new byte[0]);
                    i3++;
                }
                cn.Code.Code("mo", bArr);
            }
        }
        return true;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static byte[] B(int i2) {
        int i3;
        boolean z2;
        int readInt;
        synchronized (Y) {
            if (aa == null) {
                return null;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= aa.length) {
                    i3 = -1;
                    break;
                } else if (aa[i4] == ((byte) i2)) {
                    i3 = i4 / 3;
                    break;
                } else {
                    i4 += 3;
                }
            }
            if (i3 < 0) {
                return null;
            }
            int i5 = 0;
            while (true) {
                try {
                    byte[] Code2 = cn.Code.Code("mo", i3 + 2);
                    if (Code2[0] != 1) {
                        return null;
                    }
                    if (Code2[1] != 16) {
                        return null;
                    }
                    if (ab == null && !(aa[i3 * 3] == Code2[2] && aa[(i3 * 3) + 1] == Code2[3] && aa[(i3 * 3) + 2] == Code2[4])) {
                        ab = new byte[aa.length];
                        System.arraycopy(aa, 0, ab, 0, aa.length);
                    }
                    if (ab != null) {
                        ab[i3 * 3] = Code2[2];
                        ab[(i3 * 3) + 1] = Code2[3];
                        ab[(i3 * 3) + 2] = Code2[4];
                    }
                    ac[i3] = Code2[5];
                    if (Code2.length == 6) {
                        byte[] bArr = new byte[0];
                        return bArr;
                    }
                    dd ddVar = new dd();
                    ddVar.Code(new DataInputStream(new ByteArrayInputStream(Code2, 6, Code2.length - 6)));
                    DataInputStream dataInputStream = new DataInputStream(ddVar);
                    int Code3 = bg.Code((DataInput) dataInputStream);
                    int i6 = 0;
                    while (i6 < Code3) {
                        if ((dataInputStream.read() & 255 & 128) == 0) {
                            readInt = dataInputStream.readUnsignedShort();
                            i6 += readInt + 3;
                        } else {
                            readInt = dataInputStream.readInt();
                            i6 += readInt + 5;
                        }
                        if (dataInputStream.skipBytes(readInt) < readInt) {
                            throw new EOFException();
                        }
                    }
                    byte[] bArr2 = new byte[bg.Code((DataInput) dataInputStream)];
                    dataInputStream.readFully(bArr2);
                    return bArr2;
                } catch (Throwable th) {
                    if (i5 < ar.b) {
                        ar.I.h();
                        ar arVar = ar.I;
                        if (i5 > 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        arVar.Code(z2);
                        ar.I.i();
                        i5++;
                    } else {
                        a();
                        e();
                        return null;
                    }
                }
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, byte], vars: [r0v23 ?, r0v24 ?, r0v28 ?, r0v29 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:51)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    public static void b() {
        /*
            r2 = 1
            r1 = 0
            java.lang.Object r5 = Y
            monitor-enter(r5)
            byte[] r0 = aa     // Catch:{ all -> 0x002f }
            if (r0 == 0) goto L_0x000d
            byte[] r0 = ac     // Catch:{ all -> 0x002f }
            if (r0 != 0) goto L_0x003f
        L_0x000d:
            cn r0 = defpackage.cn.Code     // Catch:{ all -> 0x002f }
            java.lang.String r3 = "mo"
            boolean r0 = r0.Code(r3)     // Catch:{ all -> 0x002f }
            if (r0 != 0) goto L_0x0019
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
        L_0x0018:
            return
        L_0x0019:
            cn r0 = defpackage.cn.Code     // Catch:{ Throwable -> 0x0032 }
            java.lang.String r3 = "mo"
            r4 = 1
            byte[] r0 = r0.Code((java.lang.String) r3, (int) r4)     // Catch:{ Throwable -> 0x0032 }
            int r3 = r0.length     // Catch:{ Throwable -> 0x0032 }
            if (r3 != r2) goto L_0x00cb
            r3 = 0
            byte r0 = r0[r3]     // Catch:{ Throwable -> 0x0032 }
        L_0x0028:
            if (r0 != 0) goto L_0x0035
            c()     // Catch:{ all -> 0x002f }
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
            goto L_0x0018
        L_0x002f:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        L_0x0032:
            r0 = move-exception
            r0 = r1
            goto L_0x0028
        L_0x0035:
            int r3 = r0 * 3
            byte[] r3 = new byte[r3]     // Catch:{ all -> 0x002f }
            ab = r3     // Catch:{ all -> 0x002f }
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x002f }
            ac = r0     // Catch:{ all -> 0x002f }
        L_0x003f:
            byte[] r0 = ab     // Catch:{ all -> 0x002f }
            if (r0 != 0) goto L_0x0056
            byte[] r0 = aa     // Catch:{ all -> 0x002f }
            int r0 = r0.length     // Catch:{ all -> 0x002f }
            byte[] r0 = new byte[r0]     // Catch:{ all -> 0x002f }
            ab = r0     // Catch:{ all -> 0x002f }
            byte[] r0 = aa     // Catch:{ all -> 0x002f }
            r3 = 0
            byte[] r4 = ab     // Catch:{ all -> 0x002f }
            r6 = 0
            byte[] r7 = aa     // Catch:{ all -> 0x002f }
            int r7 = r7.length     // Catch:{ all -> 0x002f }
            java.lang.System.arraycopy(r0, r3, r4, r6, r7)     // Catch:{ all -> 0x002f }
        L_0x0056:
            r4 = r1
        L_0x0057:
            byte[] r0 = ab     // Catch:{ all -> 0x002f }
            int r0 = r0.length     // Catch:{ all -> 0x002f }
            int r0 = r0 / 3
            if (r4 >= r0) goto L_0x00c5
            r3 = r1
        L_0x005f:
            cn r0 = defpackage.cn.Code     // Catch:{ Throwable -> 0x00a9 }
            java.lang.String r6 = "mo"
            int r7 = r4 + 2
            byte[] r0 = r0.Code((java.lang.String) r6, (int) r7)     // Catch:{ Throwable -> 0x00a9 }
            r6 = 0
            byte r6 = r0[r6]     // Catch:{ Throwable -> 0x00a9 }
            if (r6 == r2) goto L_0x0073
            c()     // Catch:{ Throwable -> 0x00a9 }
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
            goto L_0x0018
        L_0x0073:
            r6 = 1
            byte r6 = r0[r6]     // Catch:{ Throwable -> 0x00a9 }
            r7 = 16
            if (r6 == r7) goto L_0x007f
            c()     // Catch:{ Throwable -> 0x00a9 }
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
            goto L_0x0018
        L_0x007f:
            byte[] r6 = ab     // Catch:{ Throwable -> 0x00a9 }
            int r7 = r4 * 3
            r8 = 2
            byte r8 = r0[r8]     // Catch:{ Throwable -> 0x00a9 }
            r6[r7] = r8     // Catch:{ Throwable -> 0x00a9 }
            byte[] r6 = ab     // Catch:{ Throwable -> 0x00a9 }
            int r7 = r4 * 3
            int r7 = r7 + 1
            r8 = 3
            byte r8 = r0[r8]     // Catch:{ Throwable -> 0x00a9 }
            r6[r7] = r8     // Catch:{ Throwable -> 0x00a9 }
            byte[] r6 = ab     // Catch:{ Throwable -> 0x00a9 }
            int r7 = r4 * 3
            int r7 = r7 + 2
            r8 = 4
            byte r8 = r0[r8]     // Catch:{ Throwable -> 0x00a9 }
            r6[r7] = r8     // Catch:{ Throwable -> 0x00a9 }
            byte[] r6 = ac     // Catch:{ Throwable -> 0x00a9 }
            r7 = 5
            byte r0 = r0[r7]     // Catch:{ Throwable -> 0x00a9 }
            r6[r4] = r0     // Catch:{ Throwable -> 0x00a9 }
            int r0 = r4 + 1
            r4 = r0
            goto L_0x0057
        L_0x00a9:
            r0 = move-exception
            int r0 = defpackage.ar.b     // Catch:{ all -> 0x002f }
            if (r3 >= r0) goto L_0x00bc
            ar r6 = defpackage.ar.I     // Catch:{ all -> 0x002f }
            if (r3 <= 0) goto L_0x00ba
            r0 = r2
        L_0x00b3:
            r6.Code((boolean) r0)     // Catch:{ all -> 0x002f }
            int r0 = r3 + 1
            r3 = r0
            goto L_0x005f
        L_0x00ba:
            r0 = r1
            goto L_0x00b3
        L_0x00bc:
            a()     // Catch:{ all -> 0x002f }
            c()     // Catch:{ all -> 0x002f }
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
            goto L_0x0018
        L_0x00c5:
            e()     // Catch:{ all -> 0x002f }
            monitor-exit(r5)     // Catch:{ all -> 0x002f }
            goto L_0x0018
        L_0x00cb:
            r0 = r1
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.db.b():void");
    }

    public static void c() {
        synchronized (Y) {
            aa = null;
            ab = null;
            ac = null;
            cn.Code.Z("mo");
        }
    }

    public static int d() {
        byte[] bArr;
        int i2;
        synchronized (Y) {
            if (ac != null) {
                byte[] bArr2 = new byte[6];
                byte[] bArr3 = new byte[ac.length];
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (i3 >= ac.length) {
                        i2 = i4;
                        bArr = bArr3;
                        break;
                    }
                    if ((ac[i3] & 1) != 0) {
                        i2 = i4 + 1;
                        bArr3[i4] = aa[i3 * 3];
                        aa[(i3 * 3) + 1] = 0;
                        aa[(i3 * 3) + 2] = 0;
                        Code(bArr2, (int) aa[i3 * 3], 0, (int) ac[i3]);
                        if (!Code(i3, bArr2)) {
                            bArr = bArr3;
                            break;
                        }
                    } else {
                        i2 = i4;
                    }
                    i3++;
                    i4 = i2;
                }
            } else {
                bArr = null;
                i2 = 0;
            }
            e();
        }
        if (i2 > 0) {
            return ar.Z.I(bArr, 0, i2);
        }
        return 0;
    }

    public static int Code(String str, String str2) {
        int length = str.length();
        if (str2.length() != length + 2 || !str2.startsWith(str)) {
            return -1;
        }
        return (str2.charAt(length + 1) - 'A') + ((str2.charAt(length) - 'A') * 26);
    }

    public static void e() {
        synchronized (Y) {
            if (ab != null) {
                aa = ab;
                ab = null;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static void a(String str) {
        String str2;
        String str3;
        boolean z2 = true;
        bf bfVar = new bf();
        DataOutputStream dataOutputStream = new DataOutputStream(bfVar);
        if ("mc".equals(str)) {
            dataOutputStream.write(1);
            dataOutputStream.writeUTF(J(1));
            dataOutputStream.writeBoolean(false);
        } else if ("md".equals(str)) {
            dataOutputStream.write(8);
            byte[] bArr = new byte[32];
            synchronized (ak) {
                ak.Code(bArr);
                ak.Code(bArr, 0, 32);
            }
            dataOutputStream.write(bArr);
            if (F < 160) {
                z2 = false;
            }
            dataOutputStream.writeBoolean(z2);
            cs.Code(dataOutputStream);
            dataOutputStream.writeBoolean(O);
            dataOutputStream.writeInt(an);
            dataOutputStream.writeInt(u);
            dataOutputStream.writeShort(ah);
            dataOutputStream.writeShort(ai);
            ar.Code.Code(dataOutputStream);
            dataOutputStream.writeInt(P);
            if (Q != null) {
                str2 = Q;
            } else {
                str2 = "";
            }
            dataOutputStream.writeUTF(str2);
            dataOutputStream.writeByte(X);
            if (!E || L[3] == null) {
                str3 = "";
            } else {
                str3 = L[3];
            }
            dataOutputStream.writeUTF(str3);
        }
        byte[] byteArray = bfVar.toByteArray();
        cn.Code.Z(str);
        cn.Code.Code(str, byteArray);
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static void b(String str) {
        byte readByte;
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(cn.Code.I(str)));
            if ("mc".equals(str)) {
                if (dataInputStream.readByte() == 1) {
                    String readUTF = dataInputStream.readUTF();
                    if (readUTF.length() >= 64) {
                        Code(1, readUTF, false);
                    }
                    aj = dataInputStream.readBoolean();
                }
            } else if ("md".equals(str) && (readByte = dataInputStream.readByte()) <= 8) {
                Code(dataInputStream, 8);
                if (readByte >= 8) {
                    aj = dataInputStream.readBoolean();
                }
                if (aj) {
                    F = 160;
                }
                cs.Code(dataInputStream, (int) readByte);
                O = dataInputStream.readBoolean();
                an = dataInputStream.readInt();
                u = dataInputStream.readInt();
                if (readByte >= 5) {
                    ah = dataInputStream.readShort();
                    ai = dataInputStream.readShort();
                }
                ar.Code.Code(dataInputStream, (int) readByte);
                P = dataInputStream.readInt();
                Q = dataInputStream.readUTF();
                X = (byte) (dataInputStream.readByte() & 3);
                String readUTF2 = dataInputStream.readUTF();
                if (!readUTF2.equals("")) {
                    Code(3, readUTF2, false);
                }
            }
        } catch (IOException e2) {
        } catch (Throwable th) {
        }
    }

    static synchronized int f() {
        int i2;
        synchronized (db.class) {
            i2 = an + 1;
            an = i2;
            a("md");
        }
        return i2;
    }

    private static int k() {
        int M2 = ar.Code.M();
        if (!(M2 == ah || M2 == -1)) {
            ah = M2;
            a("md");
        }
        return ah;
    }

    private static int l() {
        int N2 = ar.Code.N();
        if (!(N2 == ai || N2 == -1)) {
            ai = N2;
            a("md");
        }
        return ai;
    }

    static String g() {
        int k2 = k();
        int l2 = l();
        if (k2 == -1 || l2 == -1) {
            return null;
        }
        String num = Integer.toString(l2);
        while (num.length() < 3) {
            num = "0" + num;
        }
        return Integer.toString(k2) + "-" + num;
    }

    public static boolean Code(char c2) {
        return I(c2) || Z(c2);
    }

    public static boolean I(char c2) {
        return 1424 <= c2 && c2 <= 1535;
    }

    public static boolean Z(char c2) {
        return C(c2) || a(c2);
    }

    private static boolean C(char c2) {
        return 1536 <= c2 && c2 <= 1791;
    }

    private static boolean a(char c2) {
        return (64336 <= c2 && c2 <= 65023) || (65136 <= c2 && c2 <= 65278);
    }

    public static boolean J(char c2) {
        return ((I(c2) ? 2 : C(c2) ? 4 : a(c2) ? 8 : 0) & s) != 0;
    }

    static int C(int i2) {
        return af[i2].I();
    }

    private static int c(int i2) {
        return af[i2].J() > 0 ? af[i2].J() : af[i2].I() - af[i2].Z();
    }

    static int Code(int i2, char[] cArr, int i3, int i4) {
        return af[i2].Code(cArr, i3, i4);
    }

    static int Code(int i2, String str) {
        return af[i2].Code(str);
    }

    private static int Code(int i2, char c2) {
        return af[i2].Code(c2);
    }

    public static void Code(br brVar, int i2, char[] cArr, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        brVar.Code(i2, cArr, i3, i4, i5, i6 + af[i2].Z(), i7, true, i8, i9, i10);
    }

    static void a(int i2) {
        if (as == null || as.length < i2 * 2) {
            as = null;
            as = new int[new int[(i2 * 2)].length];
            Random random = new Random(4711);
            for (int i3 = 0; i3 < (as.length >> 1); i3++) {
                as[i3] = random.nextInt() & 127;
                as[(as.length >> 1) + i3] = as[i3] + 64;
            }
        }
    }

    static synchronized void Code(boolean z2) {
        synchronized (db.class) {
            ag = 0;
            if (z2 || G == null || G.length != 32) {
                cq cqVar = new cq();
                char[] cArr = {' ', 'm', 'i', '0', 'X', 229, 1575, 1503, 936, 12354, 1102, 19968, 13071};
                au = new bf(32);
                at = (ad - ae) * 16454;
                if (z2) {
                    ar.I.h();
                    ar.Z.c(at);
                    ar.I.Z(22);
                }
                for (int i2 = 0; i2 < ad; i2++) {
                    if (!ar.Code.a(i2)) {
                        au.write(af[i2].I() - Math.max(0, (af[i2].I() - c(i2)) - af[i2].Z()));
                        au.write(af[i2].I());
                        for (char Code2 : cArr) {
                            au.write(Code(i2, Code2));
                        }
                        Code((ByteArrayOutputStream) au, i2, 1, Code(af[i2]), af[i2].B());
                        cqVar.Code(au.Code(), 0, au.size());
                        au.reset();
                    }
                }
                cqVar.Code(1);
                au.Code(32);
                cqVar.Code(au.Code());
                if (z2) {
                    for (int i3 = 0; i3 < ad; i3++) {
                        if (!ar.Code.a(i3)) {
                            int max = Math.max(0, (af[i3].I() - c(i3)) - af[i3].Z());
                            au.write((i3 >> 8) & 255);
                            au.write(i3 & 255);
                            au.write(af[i3].I() - max);
                            au.write(max);
                            af[i3].d();
                            av = 0;
                            ax = 4;
                            ay = 1 << (ax - 1);
                            int[] iArr = {1, 31, 2043, 2303, 7037, 7423, 13312, 19903, 19968, 40895, 42183, 42751, 44032, 55203, 55296, 64255, 65536};
                            int i4 = 0;
                            int i5 = 0;
                            int i6 = Integer.MAX_VALUE;
                            int i7 = 1;
                            int i8 = 0;
                            while (i7 <= 65535) {
                                int i9 = i7 + 1;
                                int Code3 = Code(i3, (char) i7);
                                ag++;
                                int i10 = Code3 - i8;
                                int abs = Math.abs(i10);
                                if (i10 != i6 || i9 - 1 == iArr[i4]) {
                                    if (i5 > 0) {
                                        if (i5 < 4) {
                                            for (int i11 = 0; i11 < i5; i11++) {
                                                Code(i6, ax);
                                            }
                                        } else {
                                            Code(ay, ax);
                                            if (i5 <= (1 << ((ax * 2) - 1))) {
                                                Code(i5, ax * 2);
                                            } else {
                                                Code(2, ax * 2);
                                                Code(i5, 16);
                                            }
                                        }
                                        i5 = 0;
                                    }
                                    while ((abs >>> (ax - 1)) != 0) {
                                        Code(ay, ax);
                                        Code(1, ax * 2);
                                        ax++;
                                        ay = 1 << (ax - 1);
                                    }
                                    Code(i10, ax);
                                    if (i9 - 1 == iArr[i4]) {
                                        Code(0, ax);
                                        i4 += 2;
                                        i9 = iArr[i4 + 1] + 1;
                                        i5 = (iArr[i4 + 1] - iArr[i4]) - 1;
                                        i10 = 0;
                                    }
                                    i6 = i10;
                                    i7 = i9;
                                    i8 = Code3;
                                } else {
                                    i5++;
                                    i8 = Code3;
                                    i7 = i9;
                                }
                            }
                            if (i5 > 0) {
                                Code(ay, ax);
                                Code(2, ax * 2);
                                Code(i5, 16);
                            }
                            Code(ay, ax);
                            Code(3, ax * 2);
                            if (av != 0) {
                                au.write(aw << (8 - av));
                            }
                            bf bfVar = au;
                        }
                    }
                    ar.Code.ab();
                }
                G = au.toByteArray();
                au = null;
                H = null;
                if (z2) {
                    m();
                }
                if (z2) {
                    ar.I.h();
                    ar.I.Z(23);
                }
            }
        }
    }

    private static void Code(ByteArrayOutputStream byteArrayOutputStream, int i2, int i3, int i4, String str) {
        byte[] bArr = new byte[(ap.Code(str) + 2)];
        int Code2 = ap.Code(str, bArr, 0);
        byteArrayOutputStream.write((i2 >> 8) & 255);
        byteArrayOutputStream.write(i2 & 255);
        byteArrayOutputStream.write((i3 >> 8) & 255);
        byteArrayOutputStream.write(i3 & 255);
        byteArrayOutputStream.write(i4);
        byteArrayOutputStream.write(Code2);
        byteArrayOutputStream.write(bArr, 2, Code2);
    }

    private static int Code(bp bpVar) {
        int i2 = 0;
        int i3 = (bpVar.b() ? 4 : 0) | (bpVar.a() ? 2 : 0) | (bpVar.C() ? 1 : 0);
        if (bpVar.c()) {
            i2 = 8;
        }
        return i3 | i2;
    }

    private static synchronized void m() {
        int i2;
        String str;
        int i3 = 0;
        synchronized (db.class) {
            bf bfVar = new bf(32);
            int i4 = 0;
            int i5 = 0;
            String str2 = null;
            while (i3 < ad) {
                if (!ar.Code.a(i3)) {
                    bp bpVar = af[i3];
                    String B2 = bpVar.B();
                    i2 = Code(bpVar);
                    if (str2 != null && (!str2.equals(B2) || i2 != i5)) {
                        Code((ByteArrayOutputStream) bfVar, i4, i3 - i4, i5, str2);
                        str2 = null;
                    }
                    if (str2 == null) {
                        i4 = i3;
                        str = B2;
                        i3++;
                        str2 = str;
                        i5 = i2;
                    }
                }
                i2 = i5;
                str = str2;
                i3++;
                str2 = str;
                i5 = i2;
            }
            if (str2 != null) {
                Code((ByteArrayOutputStream) bfVar, i4, ad - i4, i5, str2);
            }
            H = bfVar.toByteArray();
        }
    }

    private static void Code(int i2, int i3) {
        int i4 = aw << i3;
        aw = i4;
        aw = i4 | (((1 << i3) - 1) & i2);
        av += i3;
        while (av >= 8) {
            av -= 8;
            au.write(aw >> av);
        }
    }

    public static String c(String str) {
        StringBuffer stringBuffer = null;
        int i2 = 0;
        while (i2 < str.length()) {
            char charAt = str.charAt(i2);
            if (65152 <= charAt && charAt <= 65276) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str);
                }
                if (charAt < 65269) {
                    stringBuffer.setCharAt(i2, (char) ((aA[charAt - 65152] & 255) + 1536));
                } else {
                    stringBuffer.setCharAt(i2, 1604);
                    i2++;
                    stringBuffer.insert(i2, (char) ((az[charAt - 65269] & 255) + 1536));
                }
            }
            i2++;
        }
        return stringBuffer == null ? str : stringBuffer.toString();
    }

    static bu Code(int i2, boolean z2) {
        byte[] b2 = b(i2);
        return ar.Code.q().Code(b2, b2.length, z2);
    }

    static void Code(byte[] bArr, int i2, int i3, int[] iArr) {
        int i4;
        int i5;
        if ((i3 >= 4 && bArr[i2] == 82) || bArr[i2] == 67 || bArr[i2] == 88) {
            if (bArr[i2] == 88) {
                iArr[0] = (bArr[i2 + 1] << 3) | (((bArr[i2 + 2] >>> 5) & 7) * ((bArr[i2 + 2] & 31) << 6)) | (((bArr[i2 + 3] >>> 2) & 63) * b);
            } else {
                iArr[0] = bArr[i2 + 1] * bArr[i2 + 2] * b;
            }
            int i6 = iArr[0];
            iArr[2] = i6;
            iArr[1] = i6;
            aB = 0;
            aC = 0;
            return;
        }
        if (i3 >= 23 && bArr[i2] == -119) {
            i5 = ap.J(bArr, i2 + 16);
            i4 = ap.J(bArr, i2 + 20);
        } else if (bArr[i2] == -1 && bArr[i2 + 1] == -40) {
            int i7 = 2;
            while (true) {
                if (i7 >= i3 || bArr[i2 + i7] != -1) {
                    break;
                }
                i7++;
                if (bArr[i2 + i7] != -1) {
                    if (bArr[i2 + i7] == 0) {
                        break;
                    } else if (bArr[i2 + i7] == 1 || (bArr[i2 + i7] >= -48 && bArr[i2 + i7] <= -41)) {
                        i7++;
                    } else if (bArr[i2 + i7] == -64 || bArr[i2 + i7] == -62) {
                        i5 = ap.Z(bArr, i2 + i7 + 6);
                        i4 = ap.Z(bArr, i7 + i2 + 4);
                    } else {
                        int i8 = i7 + 1;
                        i7 = i8 + ap.Z(bArr, i2 + i8);
                    }
                }
            }
            i4 = 0;
            i5 = 0;
            boolean z2 = t;
        } else {
            i4 = 0;
            i5 = 0;
        }
        iArr[1] = i5 * i4 * b;
        aB = i5;
        aC = i4;
        int i9 = iArr[1];
        iArr[2] = i9;
        iArr[0] = i9;
    }

    static void Code(byte[] bArr, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z2 = (i5 == -1 || i6 == -1) ? false : true;
        if ((i3 >= 4 && bArr[i2] == 82) || bArr[i2] == 67 || bArr[i2] == 88) {
            if (bArr[i2] == 88) {
                iArr[0] = (bArr[i2 + 1] << 3) | (((bArr[i2 + 2] >>> 5) & 7) * ((bArr[i2 + 2] & 31) << 6)) | (((bArr[i2 + 3] >>> 2) & 63) * b);
            } else {
                iArr[0] = bArr[i2 + 1] * bArr[i2 + 2] * b;
            }
            int i13 = iArr[0];
            iArr[2] = i13;
            iArr[1] = i13;
            aB = 0;
            aC = 0;
            return;
        }
        if (i3 >= 23 && bArr[i2] == -119) {
            int J2 = ap.J(bArr, i2 + 16);
            i8 = ap.J(bArr, i2 + 20);
            i9 = J2;
            i7 = 0;
        } else if (bArr[i2] == -1 && bArr[i2 + 1] == -40) {
            int i14 = 2;
            while (true) {
                if (i14 >= i3 || bArr[i2 + i14] != -1) {
                    break;
                }
                i14++;
                if (bArr[i2 + i14] != -1) {
                    if (bArr[i2 + i14] == 0) {
                        break;
                    } else if (bArr[i2 + i14] == 1 || (bArr[i2 + i14] >= -48 && bArr[i2 + i14] <= -41)) {
                        i14++;
                    } else if (bArr[i2 + i14] == -64 || bArr[i2 + i14] == -62) {
                        i11 = ap.Z(bArr, i2 + i14 + 6);
                        i10 = ap.Z(bArr, i14 + i2 + 4);
                    } else {
                        int i15 = i14 + 1;
                        i14 = i15 + ap.Z(bArr, i2 + i15);
                    }
                }
            }
            i10 = 0;
            i11 = 0;
            if (z2) {
                i12 = (i6 * 256) / i11;
            } else {
                i12 = i4;
            }
            if (t || i12 >= 256) {
                i7 = 0;
                i8 = i10;
                i9 = i11;
            } else {
                i7 = 8;
                while (256 / i7 <= i12) {
                    i7 /= 2;
                }
                i8 = i10;
                i9 = i11;
            }
        } else {
            i7 = 0;
            i8 = 0;
            i9 = 0;
        }
        aB = i6;
        aC = i5;
        iArr[1] = i6 * i5 * b;
        if (i4 != 256) {
            iArr[0] = ((((i6 * i4) - 1) / 256) + 1) * ((((i5 * i4) - 1) / 256) + 1) * b;
            if (i7 > 0) {
                iArr[2] = (((i8 * i9) * b) / i7) + iArr[0];
            } else {
                iArr[2] = iArr[0] + iArr[1];
            }
        } else {
            int i16 = iArr[1];
            iArr[2] = i16;
            iArr[0] = i16;
        }
    }

    static int h() {
        return aB;
    }

    static int i() {
        return aC;
    }

    static bu[] Code(bu[] buVarArr, int i2) {
        bu[] buVarArr2 = new bu[i2];
        System.arraycopy(buVarArr, 0, buVarArr2, 0, buVarArr.length);
        return buVarArr2;
    }

    public static String d(String str) {
        if (str == null || !str.startsWith("http://") || str.indexOf("&url=rtsp://") < 0) {
            return str;
        }
        return str.substring(str.indexOf("rtsp://"));
    }

    static boolean I(byte[] bArr, int i2, int i3) {
        if (i3 <= 8) {
            return false;
        }
        int i4 = i2 + 1;
        if (bArr[i2] != -119) {
            return false;
        }
        int i5 = i4 + 1;
        if (bArr[i4] != 80) {
            return false;
        }
        int i6 = i5 + 1;
        if (bArr[i5] != 78) {
            return false;
        }
        int i7 = i6 + 1;
        if (bArr[i6] != 71) {
            return false;
        }
        int i8 = i7 + 1;
        if (bArr[i7] != 13) {
            return false;
        }
        int i9 = i8 + 1;
        if (bArr[i8] != 10) {
            return false;
        }
        int i10 = i9 + 1;
        if (bArr[i9] == 26 && bArr[i10] == 10) {
            return true;
        }
        return false;
    }

    public static boolean I(String str, String str2) {
        int length = str2.length();
        int length2 = str.length();
        if (length2 == 0 && length == 0) {
            return true;
        }
        if (length2 == 0) {
            return false;
        }
        int i2 = -1;
        int i3 = 0;
        while (true) {
            int indexOf = str.indexOf(42, i2 + 1);
            String substring = indexOf != -1 ? str.substring(i2 + 1, indexOf) : str.substring(i2 + 1);
            int indexOf2 = (substring.length() == 0 && i3 == str2.length()) ? i3 : str2.indexOf(substring, i3);
            if (indexOf2 == -1) {
                return false;
            }
            if (i3 == 0 && indexOf2 > 0 && str.charAt(0) != '*') {
                return false;
            }
            if (i2 == length2 - 1) {
                return true;
            }
            int length3 = substring.length() + indexOf2;
            if (length3 >= length && indexOf == -1) {
                return true;
            }
            i3 = length3;
            i2 = indexOf;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0056  */
    public static Object[] e(String str) {
        String str2;
        String str3;
        String str4;
        Integer num;
        String lowerCase = str.toLowerCase();
        while (lowerCase.startsWith("<")) {
            lowerCase = lowerCase.substring(lowerCase.indexOf(62) + 1);
        }
        int indexOf = lowerCase.indexOf(58);
        if (indexOf != -1) {
            str2 = lowerCase.substring(0, indexOf);
            if (str2.indexOf(46) == -1) {
                lowerCase = lowerCase.substring(indexOf + 1);
                if (aD.containsKey(str2)) {
                    str4 = "";
                    String str5 = lowerCase;
                    num = aE;
                    str3 = str5;
                } else {
                    if (lowerCase.startsWith("//")) {
                        lowerCase = lowerCase.substring(2);
                    }
                    int indexOf2 = lowerCase.indexOf(63);
                    if (indexOf2 != -1) {
                        lowerCase = lowerCase.substring(0, indexOf2);
                    }
                    int indexOf3 = lowerCase.indexOf(47);
                    if (indexOf3 != -1) {
                        String substring = lowerCase.substring(0, indexOf3);
                        String substring2 = lowerCase.substring(indexOf3);
                        lowerCase = substring;
                        str3 = substring2;
                    } else {
                        str3 = "";
                    }
                    int indexOf4 = lowerCase.indexOf(64);
                    if (indexOf4 != -1) {
                        lowerCase = lowerCase.substring(indexOf4 + 1);
                    }
                    if (lowerCase.startsWith("www.")) {
                        str4 = lowerCase.substring(4);
                    } else {
                        str4 = lowerCase;
                    }
                    int indexOf5 = str4.indexOf(58);
                    if (indexOf5 != -1) {
                        num = Integer.valueOf(str4.substring(indexOf5 + 1));
                        str4 = str4.substring(0, indexOf5);
                    } else {
                        num = (Integer) aD.get(str2);
                    }
                }
                return new Object[]{str2, str4, num, str3};
            }
        }
        str2 = "http";
        if (aD.containsKey(str2)) {
        }
        return new Object[]{str2, str4, num, str3};
    }

    public static boolean B(char c2) {
        return (63488 & c2) == 55296;
    }

    private static boolean b(char c2) {
        return (64512 & c2) == 56320;
    }

    public static int Code(int i2, char[] cArr, int i3, int i4, int i5) {
        int i6;
        int i7 = 0;
        if (i5 <= 0) {
            return 0;
        }
        if (i4 > 0) {
            i6 = i3 + i4;
            if (Code(i2, cArr, i3, i4) > i5) {
                int i8 = i6 - 1;
                if (b(cArr[i8])) {
                    i8--;
                }
                int i9 = i8;
                int i10 = i3;
                i6 = i3;
                while (true) {
                    if (i10 >= i9) {
                        break;
                    }
                    i6 = (i10 + i9) / 2;
                    if (b(cArr[i6])) {
                        i6--;
                    }
                    int Code2 = Code(i2, cArr, i3, i6 - i3);
                    if (Code2 >= i5) {
                        if (Code2 == i5) {
                            i7 = Code2;
                            break;
                        }
                        i9 = i6;
                        i7 = Code2;
                    } else {
                        i10 = (B(cArr[i6]) ? 2 : 1) + i6;
                        i7 = Code2;
                    }
                }
                if (i7 > i5) {
                    i6--;
                    if (b(cArr[i6])) {
                        i6--;
                    }
                }
            }
        } else {
            i6 = i3;
        }
        return i6 - i3;
    }

    public static int Code(char[] cArr, boolean z2, int i2, int i3, bp bpVar) {
        int i4 = 0;
        if (bpVar.Code(cArr, 0, cArr.length) > i2) {
            int length = cArr.length;
            if (z2) {
                int i5 = length;
                while (i5 > 0) {
                    int i6 = i5 / 2;
                    if (bpVar.Code(cArr, 0, i6 + 0) + i3 <= i2) {
                        break;
                    }
                    i5 = i6;
                }
                while (i5 > 0 && bpVar.Code(cArr, 0, i5 + 0) + i3 > i2) {
                    i5--;
                }
                return i5;
            }
            while (i4 < length) {
                int i7 = ((length - i4) / 2) + i4 + 1;
                if (bpVar.Code(cArr, i7, length - i7) + i3 <= i2) {
                    break;
                }
                i4 = i7;
            }
            while (i4 < length && bpVar.Code(cArr, i4, length - i4) + i3 > i2) {
                i4++;
            }
            return i4;
        } else if (z2) {
            return cArr.length;
        } else {
            return 0;
        }
    }

    static int Code(String str, int i2) {
        return ap.Code(str.substring(0, i2));
    }

    static String j() {
        return "Opera Mini/7.6.35766/hifi/" + ar.Code.U() + "/" + ay.Code();
    }
}
