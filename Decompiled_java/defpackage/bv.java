package defpackage;

/* renamed from: bv  reason: default package */
/* compiled from: Source */
public abstract class bv {
    public abstract bu Code(int i, int i2);

    /* access modifiers changed from: protected */
    public abstract bu Code(byte[] bArr, int i, int i2, boolean z);

    public abstract bu Code(int[] iArr, int i, int i2, boolean z, boolean z2);

    public abstract Object Code(byte[] bArr, int i, int i2);

    public bu Code(int[] iArr, int i, int i2, int i3, int i4, int i5) {
        int[] Code = Code(iArr, i, i2, i3, i4, 0, 0, 0, 0, i5, false);
        return Code(Code, Code.length / i4, i4, true, true);
    }

    /* access modifiers changed from: protected */
    public dc Code() {
        return null;
    }

    public final bu Code(byte[] bArr, int i, boolean z) {
        return Code(bArr, 0, i, 256, (bu[]) null, z);
    }

    public final bu Code(byte[] bArr, int i, int i2, int i3, bu[] buVarArr, boolean z) {
        return Code(bArr, i, i2, -1, -1, i3, buVarArr, z);
    }

    public final bu Code(byte[] bArr, int i, int i2, int i3, int i4, bu[] buVarArr) {
        return Code(bArr, i, i2, i3, i4, -1, buVarArr, false);
    }

    private bu Code(byte[] bArr, int i, int i2, int i3, int i4, int i5, bu[] buVarArr, boolean z) {
        byte b;
        byte b2;
        bu Code;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        if (i3 == 0 || i4 == 0 || i5 == 0) {
            return null;
        }
        bu buVar = null;
        if (db.w && I(bArr, i, i2)) {
            dc Code2 = Code();
            if (!Code2.Code(bArr, i, i2)) {
                return null;
            }
            int Code3 = Code2.Code();
            int I = Code2.I();
            if (i5 == 256) {
                i10 = I;
                i11 = Code3;
            } else if (i5 >= 0) {
                i10 = (((I * i5) * 256) + 65535) >> 16;
                i11 = Math.max(1, (Code3 * i10) / I);
            } else {
                i10 = i4;
                i11 = i3;
            }
            if (I == i10 && Code3 == i11) {
                Code = Code((int[]) null, Code3, I, false, z);
            } else if (ar.Code.t()) {
                return null;
            } else {
                int i12 = 0;
                if (i10 > I || i11 > Code3) {
                    i12 = 1;
                }
                Code = Code((int[]) null, Code3, I, i11, i10, i12);
            }
        } else if (bArr[i] == 82 || bArr[i] == 67 || bArr[i] == 88) {
            if (bArr[i] == 88) {
                b = (bArr[i + 1] << 3) | ((bArr[i + 2] >>> 5) & 7);
                b2 = ((bArr[i + 2] & 31) << 6) | ((bArr[i + 3] >>> 2) & 63);
            } else {
                b = bArr[i + 1];
                b2 = bArr[i + 2];
            }
            int[] iArr = new int[(b * b2)];
            if (bArr[i] == 82) {
                int i13 = i + 3;
                int i14 = 0;
                while (i14 < b * b2) {
                    iArr[i14] = ((bArr[i13] & 255) << 24) + ((bArr[i13 + 1] & 255) << 16) + ((bArr[i13 + 2] & 255) << 8) + (bArr[i13 + 3] & 255);
                    i14++;
                    i13 += 4;
                }
            } else if (bArr[i] == 67) {
                byte[] bArr2 = new byte[(b * b2 * 2)];
                by x = ar.Code.x();
                x.Code(bArr2);
                x.setInput(bArr, i + 3, i2 - 3);
                x.read((byte[]) null, 0, bArr2.length);
                x.end();
                int i15 = 0;
                while (i15 < b * b2 * 2) {
                    byte b3 = ((bArr2[i15] & 240) >>> 4) | (bArr2[i15] & 240);
                    byte b4 = ((bArr2[i15] & 15) << 4) | (bArr2[i15] & 15);
                    int i16 = i15 + 1;
                    iArr[i16 >> 1] = (b3 << 24) + (b4 << 16) + ((((bArr2[i16] & 240) >>> 4) | (bArr2[i16] & 240)) << 8) + (((bArr2[i16] & 15) << 4) | (bArr2[i16] & 15));
                    i15 = i16 + 1;
                }
            } else {
                byte[] bArr3 = new byte[(b * b2 * 3)];
                by x2 = ar.Code.x();
                x2.Code(bArr3);
                x2.setInput(bArr, i + 4, i2 - 4);
                x2.read((byte[]) null, 0, bArr3.length);
                x2.end();
                int i17 = 0;
                while (i17 < b * b2 * 3) {
                    byte b5 = bArr3[i17] & 252;
                    int i18 = i17 + 1;
                    int i19 = ((bArr3[i17] << 6) & 240) | ((bArr3[i18] >> 2) & 60);
                    int i20 = i18 + 1;
                    int i21 = ((bArr3[i18] << 4) & 240) | ((bArr3[i20] >> 4) & 12);
                    int i22 = (bArr3[i20] & 63) << 2;
                    iArr[i20 / 3] = ((b5 | (b5 >> 6)) << 24) + ((i19 | (i19 >> 6)) << 16) + ((i21 | (i21 >> 6)) << 8) + (i22 | (i22 >> 6));
                    i17 = i20 + 1;
                }
            }
            Code = Code(iArr, b, b2, true, z);
        } else if (db.t || bArr[i] == -119) {
            int i23 = 0;
            Code = Code(bArr, i, i2, z);
            if (i5 == 256) {
                i6 = Code.Z();
                i7 = Code.I();
            } else if (i5 >= 0) {
                i6 = (((Code.Z() * i5) * 256) + 65535) >> 16;
                i7 = Math.max(1, (Code.I() * i6) / Code.Z());
            } else {
                i6 = i4;
                i7 = i3;
            }
            if (!(Code.Z() == i6 && Code.I() == i7)) {
                if (buVarArr != null) {
                    buVarArr[0] = Code;
                }
                if (ar.Code.t()) {
                    return null;
                }
                if (i6 > Code.Z() || i7 > Code.I()) {
                    i23 = 1;
                }
                Code = Code.Code(0, 0, Code.I(), Code.Z(), i7, i6, 0, 0, 0, 0, i23, false);
            }
        } else {
            if (i5 == -1) {
                db.Code(bArr, i, i2, new int[3]);
                int h = db.h();
                int i24 = db.i();
                if (h <= 0) {
                    return null;
                }
                i5 = Math.max(Math.min(256, (i3 * 256) / h), Math.min(256, (i4 * 256) / i24));
            }
            bz bzVar = new bz();
            if (i5 == 256) {
                if (bzVar.Code(bArr, i, i2, 0, false) != 0 || bzVar.Code == 0 || bzVar.I == 0) {
                    Code = null;
                } else if (bzVar.Code < i3 || bzVar.I < i4) {
                    Code = Code(bzVar.Z, bzVar.Code, bzVar.I, i3, i4, 1);
                } else {
                    Code = Code(bzVar.Z, bzVar.Code, bzVar.I, false, z);
                }
            } else if (ar.Code.t()) {
                return null;
            } else {
                int Code4 = bzVar.Code(bArr, i, i2, 0, true);
                int i25 = (-65536 & Code4) >> 16;
                int i26 = Code4 & 65535;
                int i27 = 3;
                while ((256 >> i27) <= i5) {
                    i27--;
                }
                if ((i25 >> i27) == 0 || (i26 >> i27) == 0) {
                    return null;
                }
                if (bzVar.Code(bArr, i, i2, i27, false) == 0) {
                    if (i3 == -1 || i4 == -1) {
                        i8 = (((i26 * i5) * 256) + 65535) >> 16;
                        i9 = (((i25 * i5) * 256) + 65535) >> 16;
                    } else {
                        i8 = i4;
                        i9 = i3;
                    }
                    int i28 = 0;
                    if (bzVar.Code < i9 || bzVar.I < i8) {
                        i28 = 1;
                    }
                    buVar = Code(bzVar.Z, bzVar.Code, bzVar.I, i9, i8, i28);
                }
                Code = buVar;
            }
        }
        if (Code == null || Code.Z() != 0) {
            return Code;
        }
        throw new OutOfMemoryError("");
    }

    public static int[] Code(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, boolean z) {
        int i10;
        if (i9 == 2) {
            i10 = 1;
        } else {
            i10 = i9;
        }
        int[] iArr2 = new int[(i3 * i4)];
        Code(iArr, i5, 0, (i - i5) - i7, i6, i, iArr2, i5, 0, (i3 - i5) - i7, i6, i3, i10, z);
        Code(iArr, i5, i6, (i - i5) - i7, (i2 - i6) - i8, i, iArr2, i5, i6, (i3 - i5) - i7, (i4 - i6) - i8, i3, i10, z);
        int[] iArr3 = iArr;
        int i11 = i5;
        int i12 = i8;
        int i13 = i;
        int i14 = i5;
        Code(iArr3, i11, i2 - i8, (i - i5) - i7, i12, i13, iArr2, i14, i4 - i8, (i3 - i5) - i7, i8, i3, i10, z);
        Code(iArr, 0, i6, i5, (i2 - i6) - i8, i, iArr2, 0, i6, i5, (i4 - i6) - i8, i3, i10, z);
        int[] iArr4 = iArr;
        int i15 = i6;
        int i16 = i7;
        int i17 = i;
        Code(iArr4, i - i7, i15, i16, (i2 - i6) - i8, i17, iArr2, i3 - i7, i6, i7, (i4 - i6) - i8, i3, i10, z);
        Code(iArr, 0, 0, i, iArr2, 0, 0, i3, i5, i6);
        Code(iArr, 0, i2 - i8, i, iArr2, 0, i4 - i8, i3, i5, i8);
        Code(iArr, i - i7, 0, i, iArr2, i3 - i7, 0, i3, i7, i6);
        Code(iArr, i - i7, i2 - i8, i, iArr2, i3 - i7, i4 - i8, i3, i7, i8);
        return iArr2;
    }

    private static void Code(int[] iArr, int i, int i2, int i3, int i4, int i5, int[] iArr2, int i6, int i7, int i8, int i9, int i10, int i11, boolean z) {
        int i12;
        int i13;
        if (i3 != 0 && i4 != 0 && i8 != 0 && i9 != 0) {
            if (i3 == i8 && i4 == i9) {
                Code(iArr, i, i2, i5, iArr2, i6, i7, i10, i3, i4);
                return;
            }
            int i14 = i + (i2 * i5);
            int i15 = i6 + (i7 * i10);
            if (i4 == 2 && i9 >= 2 && i3 == i8) {
                int i16 = i14 + i3;
                int i17 = i15;
                for (int i18 = i14; i18 < i16; i18++) {
                    int i19 = iArr[i18];
                    int i20 = iArr[i18 + i5];
                    int i21 = (i19 >> 8) & 16711680;
                    int i22 = i19 & 16711680;
                    int i23 = 16711680 & (i19 << 8);
                    int i24 = 16711680 & (i19 << 16);
                    int i25 = (((i20 >> 8) & 16711680) - i21) / (i9 - 1);
                    int i26 = ((16711680 & i20) - i22) / (i9 - 1);
                    int i27 = (((i20 << 8) & 16711680) - i23) / (i9 - 1);
                    int i28 = (((i20 << 16) & 16711680) - i24) / (i9 - 1);
                    int i29 = i21;
                    int i30 = i22;
                    int i31 = i23;
                    int i32 = i24;
                    int i33 = 0;
                    int i34 = i17;
                    while (i33 < i9) {
                        iArr2[i34] = ((16711680 & i29) << 8) | (16711680 & i30) | ((16711680 & i31) >> 8) | (i32 >> 16);
                        i29 += i25;
                        i30 += i26;
                        i31 += i27;
                        i32 += i28;
                        i33++;
                        i34 += i10;
                    }
                    i17++;
                }
                return;
            }
            int i35 = (i3 * 256) / i8;
            int i36 = (i4 * 256) / i9;
            if (i35 > 512 || i36 > 512) {
                i12 = 0;
            } else {
                i12 = i11;
            }
            int i37 = i3 - 1;
            int i38 = i4 - 1;
            if (i37 == 0 || i38 == 0 || i8 == 1 || i9 == 1) {
                i12 = 0;
            }
            if (i12 == 1) {
                int i39 = 0;
                while (true) {
                    int i40 = i39;
                    if (i40 < i9) {
                        int i41 = ((i40 * i38) << 8) / (i9 - 1);
                        int i42 = i41 & 255;
                        int i43 = i41 >>> 8;
                        int i44 = 0;
                        while (true) {
                            int i45 = i44;
                            if (i45 >= i8) {
                                break;
                            }
                            int i46 = ((i45 * i37) << 8) / (i8 - 1);
                            int i47 = i46 & 255;
                            int i48 = i46 >>> 8;
                            int i49 = (i10 * i40) + i15 + i45;
                            int min = Math.min(i48 + 1, i37);
                            int min2 = Math.min(i43 + 1, i38);
                            int i50 = iArr[(i5 * i43) + i14 + i48];
                            int i51 = iArr[(i5 * i43) + i14 + min];
                            int i52 = iArr[i48 + (i5 * min2) + i14];
                            int i53 = iArr[(i5 * min2) + i14 + min];
                            if (z) {
                                i13 = (((((((i50 >>> 24) * (256 - i47)) * (256 - i42)) + (((i51 >>> 24) * i47) * (256 - i42))) + (((i52 >>> 24) * (256 - i47)) * i42)) + (((i53 >>> 24) * i47) * i42)) >>> 16) << 24;
                            } else {
                                i13 = 0;
                            }
                            iArr2[i49] = i13 + (((((((((i50 >> 16) & 255) * (256 - i47)) * (256 - i42)) + ((((i51 >> 16) & 255) * i47) * (256 - i42))) + ((((i52 >> 16) & 255) * (256 - i47)) * i42)) + ((((i53 >> 16) & 255) * i47) * i42)) >>> 16) << 16) + (((((((((i50 >> 8) & 255) * (256 - i47)) * (256 - i42)) + ((((i51 >> 8) & 255) * i47) * (256 - i42))) + ((((i52 >> 8) & 255) * (256 - i47)) * i42)) + ((((i53 >> 8) & 255) * i47) * i42)) >>> 16) << 8) + ((((i47 * (i53 & 255)) * i42) + (((((i50 & 255) * (256 - i47)) * (256 - i42)) + (((i51 & 255) * i47) * (256 - i42))) + (((i52 & 255) * (256 - i47)) * i42))) >>> 16);
                            if (!z) {
                                iArr2[i49] = iArr2[i49] | -16777216;
                            }
                            i44 = i45 + 1;
                        }
                        i39 = i40 + 1;
                    } else {
                        return;
                    }
                }
            } else {
                int i54 = 0;
                while (true) {
                    int i55 = i54;
                    if (i55 < i9) {
                        int min3 = Math.min((i55 * i36) >>> 8, i38);
                        for (int i56 = 0; i56 < i8; i56++) {
                            int i57 = (i10 * i55) + i15 + i56;
                            iArr2[i57] = iArr[Math.min((i56 * i35) >>> 8, i37) + (i5 * min3) + i14];
                            if (!z) {
                                iArr2[i57] = iArr2[i57] | -16777216;
                            }
                        }
                        i54 = i55 + 1;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private static void Code(int[] iArr, int i, int i2, int i3, int[] iArr2, int i4, int i5, int i6, int i7, int i8) {
        if (i7 != 0) {
            for (int i9 = 0; i9 < i8; i9++) {
                System.arraycopy(iArr, ((i2 + i9) * i3) + i, iArr2, ((i5 + i9) * i6) + i4, i7);
            }
        }
    }

    protected static boolean I(byte[] bArr, int i, int i2) {
        return i2 >= 20 && bArr[i] == 82 && bArr[i + 1] == 73 && bArr[i + 2] == 70 && bArr[i + 3] == 70 && bArr[i + 8] == 87 && bArr[i + 9] == 69 && bArr[i + 10] == 66 && bArr[i + 11] == 80;
    }
}
