package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* renamed from: ao  reason: default package */
/* compiled from: Source */
public class ao {
    public static String Code(byte[] bArr, int i) {
        int i2 = i + 2;
        return Code(bArr, i2, Z(bArr, i) + i2);
    }

    public static String Code(byte[] bArr, int i, int i2) {
        return new String(Z(bArr, i, i2));
    }

    private static boolean I(int i) {
        return i > 0 && i <= 1114111 && (i < 55296 || i > 57343) && ((i < 64976 || i > 65007) && (i & 65534) != 65534);
    }

    private static char[] Z(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = i;
        while (i6 < i2) {
            int I = ap.I(bArr[i6]);
            i6 += I;
            if (I == 4) {
                i5++;
            }
            i5++;
        }
        char[] cArr = new char[i5];
        while (i < i2) {
            int B = ap.B(bArr, i);
            if (B <= 65535) {
                i3 = i4 + 1;
                cArr[i4] = (char) B;
            } else {
                int i7 = i4 + 1;
                cArr[i4] = (char) (55296 | ((B - 65536) >> 10));
                i3 = i7 + 1;
                cArr[i7] = (char) (56320 | (B & 1023));
            }
            i += ap.I(bArr[i]);
            i4 = i3;
        }
        return cArr;
    }

    public static boolean I(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        while (i < i3) {
            switch ((bArr[i] & 255) >> 4) {
                case ConnectionResult.INTERNAL_ERROR /*8*/:
                case ConnectionResult.SERVICE_INVALID /*9*/:
                case ConnectionResult.DEVELOPER_ERROR /*10*/:
                case ConnectionResult.LICENSE_CHECK_FAILED /*11*/:
                    return false;
                case ConnectionResult.DATE_INVALID /*12*/:
                case 13:
                    if (i + 2 > i3 || (bArr[i + 1] & 192) != 128) {
                        return false;
                    }
                    int i4 = i + 1;
                    if ((bArr[i] & 31) >= 2) {
                        i = i4 + 1;
                        break;
                    } else {
                        return false;
                    }
                case 14:
                    if (i + 3 <= i3 && (bArr[i + 1] & 192) == 128 && (bArr[i + 2] & 192) == 128) {
                        int i5 = i + 1;
                        int i6 = i5 + 1;
                        i = i6 + 1;
                        byte b = ((bArr[i5] & 63) << 6) | ((bArr[i] & 15) << 12) | (bArr[i6] & 63);
                        if (b >= 2048 && I(b)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                    break;
                case 15:
                    if (i + 4 <= i3 && (bArr[i + 1] & 192) == 128 && (bArr[i + 2] & 192) == 128 && (bArr[i + 3] & 192) == 128 && (bArr[i] & 8) == 0) {
                        int i7 = i + 1;
                        int i8 = i7 + 1;
                        byte b2 = ((bArr[i7] & 63) << 12) | ((bArr[i] & 7) << 18);
                        int i9 = i8 + 1;
                        i = i9 + 1;
                        byte b3 = b2 | ((bArr[i8] & 63) << 6) | (bArr[i9] & 63);
                        if (b3 >= 65536 && I(b3)) {
                            break;
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                default:
                    int i10 = i + 1;
                    if (bArr[i] != 0) {
                        i = i10;
                        break;
                    } else {
                        return false;
                    }
            }
        }
        return true;
    }

    public static int Code(int i) {
        if (i <= 127) {
            return 1;
        }
        if (i <= 2047) {
            return 2;
        }
        if (i <= 65535) {
            return 3;
        }
        return 4;
    }

    public static int Code(int i, byte[] bArr, int i2) {
        if (i <= 127) {
            bArr[i2] = (byte) i;
            return 1;
        } else if (i <= 2047) {
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            return 2;
        } else if (i <= 65535) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            bArr[i3] = (byte) (((i >> 6) & 63) | 128);
            bArr[i3 + 1] = (byte) ((i & 63) | 128);
            return 3;
        } else {
            int i4 = i2 + 1;
            bArr[i2] = (byte) ((i >> 18) | 240);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((i >> 12) & 63) | 128);
            bArr[i5] = (byte) (((i >> 6) & 63) | 128);
            bArr[i5 + 1] = (byte) ((i & 63) | 128);
            return 4;
        }
    }

    public static int Code(String str, byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (i4 < str.length()) {
            char charAt = str.charAt(i4);
            if (charAt < 55296 || charAt > 56319) {
                char c = charAt;
                i2 = i4;
                i3 = c;
            } else {
                int i6 = 65536 + ((charAt - 55296) << 10);
                i2 = i4 + 1;
                i3 = (str.charAt(i2) - 56320) + i6;
            }
            i5 += Code(i3, bArr, i + i5 + 2);
            i4 = i2 + 1;
        }
        I(i5, bArr, i);
        return i5;
    }

    public static int Code(String str) {
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < 55296 || charAt > 56319) {
                i2 += Code((int) charAt);
            } else {
                i2 += 4;
                i++;
            }
            i++;
        }
        return i2;
    }

    public static int I(byte[] bArr, int i) {
        return (bArr[i] << 8) + (bArr[i + 1] & 255);
    }

    public static int Z(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    public static void I(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 8);
        bArr[i2 + 1] = (byte) i;
    }

    public static int J(byte[] bArr, int i) {
        return (bArr[i] << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    public static void Z(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }
}
