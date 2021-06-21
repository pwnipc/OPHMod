package com.opera.mini.android;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import java.io.InputStream;

/* compiled from: Source */
public final class l extends bv {
    private static Paint Code = new Paint();

    public l() {
        Code.setFilterBitmap(true);
    }

    public final bu Code(int i, int i2) {
        return new k(i, i2);
    }

    public final bu Code(int[] iArr, int i, int i2, boolean z, boolean z2) {
        if (z2) {
            Code(iArr, i, i2);
        }
        return new k(iArr, i, i2, z);
    }

    private static void Code(int[] iArr, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4;
            for (int i6 = 0; i6 < i; i6++) {
                int i7 = iArr[i5];
                int i8 = (i7 >> 16) & 255;
                int i9 = (i7 >> 8) & 255;
                int i10 = i7 & 255;
                int i11 = i8 & -8;
                int i12 = i9 & -4;
                int i13 = i10 & -8;
                int i14 = i11 | (i11 >> 5);
                int i15 = i12 | (i12 >> 6);
                int i16 = i13 | (i13 >> 5);
                iArr[i5] = (i7 & -16777216) | (i14 << 16) | (i15 << 8) | i16;
                int i17 = i8 - i14;
                int i18 = i9 - i15;
                int i19 = i10 - i16;
                int i20 = i17 / 2;
                int i21 = i18 / 2;
                int i22 = i19 / 2;
                if (i6 < i - 1) {
                    Code(iArr, i5 + 1, i17 - i20, i18 - i21, i19 - i22);
                }
                if (i3 < i2 - 1) {
                    Code(iArr, i5 + i, i20, i21, i22);
                }
                i5++;
            }
            i3++;
            i4 = i5;
        }
    }

    private static void Code(int[] iArr, int i, int i2, int i3, int i4) {
        if (i2 != 0 || i3 != 0 || i4 != 0) {
            int i5 = iArr[i];
            int i6 = (i5 >> 16) & 255;
            int i7 = (i5 >> 8) & 255;
            int i8 = i5 & 255;
            if (i2 > 0) {
                i6 = Math.min(255, i6 + i2);
            } else if (i2 < 0) {
                i6 = Math.max(0, i6 + i2);
            }
            if (i3 > 0) {
                i7 = Math.min(255, i7 + i3);
            } else if (i3 < 0) {
                i7 = Math.max(0, i7 + i3);
            }
            if (i4 > 0) {
                i8 = Math.min(255, i8 + i4);
            } else if (i4 < 0) {
                i8 = Math.max(0, i8 + i4);
            }
            int i9 = i7 << 8;
            iArr[i] = i8 | i9 | (i6 << 16) | (i5 & -16777216);
        }
    }

    public final bu Code(int[] iArr, int i, int i2, int i3, int i4, int i5) {
        return new k(iArr, i, i2, i3, i4, i5);
    }

    private static bu Code(Bitmap bitmap, boolean z) {
        int[] iArr = new int[(bitmap.getWidth() * bitmap.getHeight())];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        if (z) {
            Code(iArr, bitmap.getWidth(), bitmap.getHeight());
        }
        return new k(iArr, bitmap.getWidth(), bitmap.getHeight(), true);
    }

    public static bu Code(InputStream inputStream) {
        return Code(BitmapFactory.decodeStream(inputStream), false);
    }

    /* access modifiers changed from: protected */
    public final bu Code(byte[] bArr, int i, int i2, boolean z) {
        return Code(BitmapFactory.decodeByteArray(bArr, i, i2), z);
    }

    public final Object Code(byte[] bArr, int i, int i2) {
        Bitmap bitmap;
        if (bArr.length < i + i2) {
            return null;
        }
        if (!db.w || !I(bArr, i, i2)) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, i, i2);
            if (decodeByteArray == null) {
                return null;
            }
            if (decodeByteArray.getConfig() == null) {
                bitmap = decodeByteArray.copy(decodeByteArray.hasAlpha() ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565, false);
            } else {
                bitmap = decodeByteArray;
            }
            return new n(bitmap);
        }
        u uVar = new u();
        if (!uVar.Code(bArr, i, i2)) {
            return null;
        }
        long Z = uVar.Z();
        uVar.Code();
        uVar.I();
        return new n(Z);
    }

    /* access modifiers changed from: protected */
    public final dc Code() {
        return new u();
    }
}
