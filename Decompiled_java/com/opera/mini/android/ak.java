package com.opera.mini.android;

import android.text.TextPaint;

/* compiled from: Source */
final class ak {
    private static int[] B = new int[32];
    private static int[] C = new int[32];
    private static char[] Code;
    private static float[] I;
    private static B J;
    private static int Z = -64;

    public static synchronized void Code(B b) {
        synchronized (ak.class) {
            if (J != b) {
                J = b;
                Z = -64;
                if (Code == null) {
                    Code = new char[64];
                }
                if (I == null) {
                    I = new float[64];
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:48:?, code lost:
        B[r5] = (1 << r6) | B[r5];
        r1 = false;
     */
    public static synchronized int Code(B b, char c) {
        int i = 0;
        boolean z = true;
        synchronized (ak.class) {
            if (J != b) {
                i = -1;
            } else {
                int i2 = Z + 64;
                if (c < Z || c >= i2) {
                    TextPaint g = J.g();
                    Z = (c / '@') * 64;
                    for (int i3 = 0; i3 < 64; i3++) {
                        Code[i3] = (char) (Z + i3);
                    }
                    int i4 = (c / '@') / 32;
                    int i5 = (c / '@') % 32;
                    if (((B[i4] >> i5) & 1) == 1) {
                        z = false;
                    } else {
                        if (!(((C[i4] >> i5) & 1) == 1)) {
                            int i6 = 0;
                            while (true) {
                                if (i6 >= 64) {
                                    break;
                                }
                                byte directionality = Character.getDirectionality(c + i6);
                                if (directionality == 1 || directionality == 2 || directionality == 6 || directionality == 16 || directionality == 17) {
                                    C[i4] = (1 << i5) | C[i4];
                                } else {
                                    i6++;
                                }
                            }
                            C[i4] = (1 << i5) | C[i4];
                        }
                    }
                    if (z) {
                        for (int i7 = 0; i7 < 64; i7++) {
                            I[i7] = g.measureText(Code, i7, 1);
                        }
                    } else {
                        g.getTextWidths(Code, 0, 64, I);
                    }
                }
                float f = I[c % '@'];
                if (f >= 0.0f) {
                    if (f > 1024.0f) {
                        i = 1024;
                    } else if (f - ((float) ((int) f)) > 0.0f) {
                        i = ((int) f) + 1;
                    } else {
                        i = (int) f;
                    }
                }
            }
        }
        return i;
    }

    public static synchronized void Code() {
        synchronized (ak.class) {
            J = null;
            Z = -64;
            Code = null;
            I = null;
        }
    }
}
