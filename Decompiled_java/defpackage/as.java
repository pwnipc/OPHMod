package defpackage;

/* renamed from: as  reason: default package */
/* compiled from: Source */
final class as {
    static String Code(byte[] bArr, int i) {
        char c;
        byte b;
        int i2 = ((i * 4) + 2) / 3;
        int i3 = (4 - (i2 % 4)) % 4;
        byte[] bArr2 = new byte[(i2 + i3)];
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < 6) {
                int i7 = i6 << 1;
                int i8 = (i4 * 6) + i5;
                if (i8 / 8 < i) {
                    b = bArr[(i8 / 8) + 0];
                } else {
                    b = 0;
                }
                i5++;
                i6 = i7 | ((b >> (7 - (i8 % 8))) & 1);
            }
            if (i6 < 26) {
                c = (char) (i6 + 65);
            } else if (i6 < 52) {
                c = (char) ((i6 - 26) + 97);
            } else if (i6 < 62) {
                c = (char) ((i6 - 52) + 48);
            } else if (i6 == 62) {
                c = '+';
            } else {
                c = '/';
            }
            bArr2[i4] = (byte) c;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            bArr2[i2 + i9] = 61;
        }
        return new String(bArr2);
    }

    static byte[] Code(String str) {
        int i;
        byte[] bArr = new byte[((str.length() * 3) / 4)];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i2 >= str.length()) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt >= 'A' && charAt <= 'Z') {
                i = charAt - 'A';
            } else if (charAt >= 'a' && charAt <= 'z') {
                i = (charAt - 'a') + 26;
            } else if (charAt >= '0' && charAt <= '9') {
                i = (charAt - '0') + 52;
            } else if (charAt == '+') {
                i = 62;
            } else if (charAt == '/') {
                i = 63;
            } else if (charAt != '=') {
                return null;
            }
            int i6 = i | (i5 << 6);
            int i7 = i4 + 6;
            if (i7 >= 8) {
                bArr[i3] = (byte) (i6 >> (i7 - 8));
                int i8 = i3 + 1;
                int i9 = i6 ^ (bArr[i3] << (i7 - 8));
                int i10 = i7 - 8;
                i5 = i9;
                int i11 = i10;
                i3 = i8;
                i4 = i11;
            } else {
                i4 = i7;
                i5 = i6;
            }
            i2++;
        }
        if (i3 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i3);
        return bArr2;
    }
}
