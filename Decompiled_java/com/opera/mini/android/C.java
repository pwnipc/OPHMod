package com.opera.mini.android;

import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
import java.util.Enumeration;
import java.util.Hashtable;

/* compiled from: Source */
public final class C implements bq {
    private static C B;
    private static Hashtable C = new Hashtable();
    static int Code;
    private static int I = 95;
    private static final int[] J = {10, 11, 12, 14, 16, 18, 20, 23, 26, 30, 34, 39, 44, 50, 57, 65};
    private static final int[] Z = {8, 10, 12, 13, 15, 17, 19, 21, 23, 25, 28, 32};

    public static boolean I(int i) {
        return i < Code;
    }

    private C() {
        float min = Math.min(s.m(), s.n());
        int i = s.ah.widthPixels;
        int i2 = s.ah.heightPixels;
        int max = Math.max(30, Math.min(95, (int) (((1083.3310546875d / Math.sqrt(Math.sqrt((double) ((i * i) + (i2 * i2))))) + ((double) (3683.7212f / min))) - 2.154400110244751d)));
        I = max;
        I = Math.round(((float) max) / 10.0f) * 10;
        for (int i3 = 0; i3 < J.length; i3++) {
            J[i3] = (int) (((float) (J[i3] * 100)) / (((float) I) * 1.25f));
        }
        I = (int) (((float) I) * 1.25f);
    }

    public static C Code() {
        if (B == null) {
            B = new C();
        }
        return B;
    }

    public final bp Code(int i, int i2) {
        int i3;
        switch (i2) {
            case 0:
                i3 = J[2];
                break;
            case 16:
                i3 = J[4];
                break;
            default:
                i3 = J[0];
                break;
        }
        bp Code2 = Code(i, 0, i3);
        if (Code2 == null) {
            return Code(64, 0, i3);
        }
        return Code2;
    }

    public final synchronized bp Code(int i, int i2, int i3) {
        return Code(i, i2, i3, true);
    }

    private synchronized bp Code(int i, int i2, int i3, boolean z) {
        B b;
        Integer num = new Integer((z ? 1 : 0) | (i2 * 2) | (i * 1024) | (i3 * 8));
        WeakReference weakReference = (WeakReference) C.get(num);
        if (weakReference != null) {
            b = (B) weakReference.get();
        } else {
            b = null;
        }
        if (b == null) {
            b = B.Code(i, i2, i3, z);
        }
        if (b != null) {
            C.put(num, new WeakReference(b));
            J();
        }
        return b;
    }

    private static void J() {
        Enumeration keys = C.keys();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            WeakReference weakReference = (WeakReference) C.get(num);
            if (weakReference != null && weakReference.get() == null) {
                C.remove(num);
            }
        }
    }

    public static int Z(int i) {
        switch (i) {
            case 0:
                return Code + 0;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                return Code + 4;
            default:
                return Code + 2;
        }
    }

    public static int I() {
        return J[Z(0)];
    }

    public final bp[] Z() {
        bp[] bpVarArr = new bp[((Z.length * 12) + (J.length * 12))];
        int Code2 = Code(bpVarArr, Code(bpVarArr, Code(bpVarArr, 0, 64, true), 128, true), 32, true);
        Code = Code2;
        int Code3 = Code(bpVarArr, Code(bpVarArr, Code(bpVarArr, Code2, 64, false), 128, false), 32, false);
        if (Code3 >= bpVarArr.length) {
            return bpVarArr;
        }
        bp[] bpVarArr2 = new bp[Code3];
        System.arraycopy(bpVarArr, 0, bpVarArr2, 0, Code3);
        return bpVarArr2;
    }

    private int Code(bp[] bpVarArr, int i, int i2, boolean z) {
        return Code(bpVarArr, Code(bpVarArr, i, i2, 0, z), i2, 1, z);
    }

    private int Code(bp[] bpVarArr, int i, int i2, int i3, boolean z) {
        return I(bpVarArr, I(bpVarArr, i, i2, i3, z), i2, i3 | 2, z);
    }

    /* JADX WARNING: type inference failed for: r10v0, types: [bp[]] */
    /* JADX WARNING: Unknown variable types count: 1 */
    private int I(bp[] r10, int i, int i2, int i3, boolean z) {
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr = z ? Z : J;
        int length = iArr.length;
        int i8 = 0;
        int i9 = i;
        while (i8 < length) {
            int i10 = iArr[i8];
            if (!z) {
                z2 = true;
            } else {
                z2 = false;
            }
            B b = (B) Code(i2, i3, i10, z2);
            if (b != null) {
                if (b.C()) {
                    i6 = 1;
                } else {
                    i6 = 0;
                }
                if (b.a()) {
                    i7 = 2;
                } else {
                    i7 = 0;
                }
                i4 = i6 | i7;
            } else {
                i4 = i3;
            }
            if (b == null || i4 != i3) {
                i5 = i9;
            } else {
                r10[i9] = b;
                i5 = i9 + 1;
            }
            i8++;
            i9 = i5;
        }
        return i9;
    }

    public final int Code(int i) {
        int i2 = 48;
        int i3 = I;
        switch (i) {
            case 0:
                i3 = (int) (((float) i3) * 1.25f);
                break;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                i3 = (int) (((float) i3) / 1.25f);
                break;
        }
        if (i3 <= 48 || i3 >= 52) {
            i2 = i3;
        } else if (i3 > 50) {
            i2 = 52;
        }
        return Math.min(95, i2);
    }
}
