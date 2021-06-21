package defpackage;

/* renamed from: at  reason: default package */
/* compiled from: Source */
public final class at {
    public static int[] Code(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[iArr2.length];
        int[] iArr4 = new int[(iArr2.length * 2)];
        Code(iArr4, iArr, iArr);
        I(iArr4, iArr2);
        System.arraycopy(iArr4, iArr4.length - iArr3.length, iArr3, 0, iArr3.length);
        for (int i = 0; i < iArr4.length; i++) {
            iArr4[i] = 0;
        }
        Code(iArr4, iArr3, iArr);
        I(iArr4, iArr2);
        System.arraycopy(iArr4, iArr4.length - iArr3.length, iArr3, 0, iArr3.length);
        return iArr3;
    }

    private static int[] Code(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int length = iArr3.length - 1; length >= 0; length--) {
            long j = ((long) iArr3[length]) & 4294967295L;
            long j2 = 0;
            for (int length2 = iArr2.length - 1; length2 >= 0; length2--) {
                long j3 = j2 + ((((long) iArr2[length2]) & 4294967295L) * j) + (((long) iArr[length + length2 + 1]) & 4294967295L);
                iArr[length + length2 + 1] = (int) j3;
                j2 = j3 >>> 32;
            }
            iArr[length] = (int) j2;
        }
        return iArr;
    }

    private static void I(int[] iArr, int[] iArr2) {
        int i;
        int i2;
        long j;
        int i3;
        int length = iArr.length - Code(0, iArr);
        int length2 = iArr2.length - Code(0, iArr2);
        int length3 = (iArr.length - length) - (iArr2.length - length2);
        int[] iArr3 = new int[((iArr2.length - length2) + length3)];
        for (int i4 = length3 * 32; i4 >= 0; i4--) {
            int i5 = i4 >>> 5;
            int i6 = i4 & 31;
            int length4 = iArr2.length - length2;
            if (i6 == 0) {
                System.arraycopy(iArr2, length2, iArr3, (iArr3.length - length4) - i5, length4);
            } else {
                int i7 = 32 - i6;
                int i8 = iArr2[length2] >>> i7;
                if (i8 != 0) {
                    i5++;
                }
                int length5 = (iArr3.length - length4) - i5;
                if (i8 != 0) {
                    i = length5 + 1;
                    iArr3[length5] = i8;
                } else {
                    i = length5;
                }
                int i9 = iArr2[length2];
                int i10 = length2 + 1;
                while (i10 < length4) {
                    int i11 = iArr2[i10];
                    iArr3[i] = (i9 << i6) | (i11 >>> i7);
                    i10++;
                    i9 = i11;
                    i++;
                }
                iArr3[i] = iArr2[(length4 + length2) - 1] << i6;
            }
            int length6 = (iArr3.length - length4) - i5;
            while (true) {
                int length7 = iArr.length - Code(length, iArr);
                int length8 = iArr3.length - Code(length6, iArr3);
                if (iArr.length - length7 != iArr3.length - length8) {
                    i2 = (iArr.length - length7) - (iArr3.length - length8);
                } else {
                    while (length7 < iArr.length - 1 && iArr[length7] == iArr3[length8]) {
                        length7++;
                        length8++;
                    }
                    i2 = (int) (((((long) iArr[length7]) & 4294967295L) - (((long) iArr3[length8]) & 4294967295L)) >> 63);
                }
                if (i2 < 0) {
                    break;
                }
                int length9 = iArr.length - 1;
                int length10 = iArr3.length - 1;
                int i12 = 0;
                int i13 = length9;
                while (true) {
                    int i14 = length10 - 1;
                    j = ((((long) iArr[i13]) & 4294967295L) - (((long) iArr3[length10]) & 4294967295L)) + ((long) i12);
                    i3 = i13 - 1;
                    iArr[i13] = (int) j;
                    i12 = (int) (j >> 63);
                    if (i14 < length6) {
                        break;
                    }
                    i13 = i3;
                    length10 = i14;
                }
                long j2 = j;
                for (int i15 = i3; i15 >= length && j2 < 0; i15--) {
                    j2 = (((long) iArr[i15]) & 4294967295L) + ((long) i12);
                    iArr[i15] = (int) j2;
                }
            }
        }
    }

    private static int Code(int i, int[] iArr) {
        while (iArr[i] == 0) {
            i++;
            if (i == iArr.length) {
                return 0;
            }
        }
        return iArr.length - i;
    }
}
