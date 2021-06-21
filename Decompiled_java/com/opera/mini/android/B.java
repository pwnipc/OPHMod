package com.opera.mini.android;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;

/* compiled from: Source */
public class B implements bp {
    private static Long Code;
    private static char[] b = new char[2];
    private static ThreadLocal c = new ThreadLocal() {
        /* access modifiers changed from: protected */
        public final /* bridge */ /* synthetic */ Object initialValue() {
            return new char[256];
        }
    };
    private TextPaint B;
    private int C;
    private int I;
    private Paint.FontMetricsInt J;
    private char[] Z = new char[1];
    private int a;

    private B(TextPaint textPaint, int i) {
        this.B = textPaint;
        this.I = i;
        this.J = textPaint.getFontMetricsInt();
        this.J.top--;
        this.a = this.J.bottom - this.J.top;
        this.C = (int) Math.ceil((double) textPaint.measureText(" "));
    }

    static B Code(int i, int i2, int i3, boolean z) {
        Typeface create;
        int i4 = 0;
        TextPaint textPaint = new TextPaint(129);
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = (i2 & 2) != 0;
        if (z2) {
            i4 = 1;
        }
        if (z3) {
            i4 |= 2;
        }
        if ((i2 & 4) != 0) {
            textPaint.setUnderlineText(true);
        }
        switch (i) {
            case 32:
                create = Typeface.create(Typeface.MONOSPACE, i4);
                break;
            case 128:
                create = Typeface.create(Typeface.SERIF, i4);
                break;
            default:
                create = Typeface.defaultFromStyle(i4);
                break;
        }
        textPaint.setTypeface(create);
        textPaint.setTextSize((float) i3);
        if (z) {
            if (z2 && !create.isBold()) {
                textPaint.setFakeBoldText(true);
            }
            if (z3 && !create.isItalic()) {
                textPaint.setTextSkewX(-0.25f);
            }
        }
        return new B(textPaint, i);
    }

    public static Long e() {
        return Code;
    }

    public final int Code() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public final int f() {
        return (int) this.B.getTextSize();
    }

    public final int Code(String str) {
        return Code(str.toCharArray(), 0, str.length());
    }

    private int Code(int i) {
        return (int) Math.ceil((double) this.B.measureText(b, 0, Character.toChars(i, b, 0)));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r12[r0] == ' ') goto L_0x001f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001b, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r0 != r6) goto L_0x0017;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001f, code lost:
        r4 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0020, code lost:
        if (r4 < r2) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0022, code lost:
        r7 = r4 - r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0024, code lost:
        if (r7 > 0) goto L_0x002b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0026, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0027, code lost:
        r2 = r3 + r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002d, code lost:
        if (r7 >= 255) goto L_0x0050;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x002f, code lost:
        r0 = (char[]) c.get();
        r5 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0038, code lost:
        if (r5 >= r7) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x003a, code lost:
        r0[r5] = r12[r5 + r2];
        r5 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0043, code lost:
        r0[r5] = 0;
        r0 = r10.measureText(r0, 0, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0049, code lost:
        r0 = (int) java.lang.Math.ceil((double) r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0050, code lost:
        r0 = r10.measureText(r12, r2, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0055, code lost:
        r0 = r4;
        r2 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0016, code lost:
        r0 = r2;
     */
    public static int Code(Paint paint, int i, char[] cArr, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = i2;
        int i6 = 0;
        while (i5 < i4) {
            int i7 = i6;
            while (true) {
                int i8 = i5;
                if (cArr[i8] != ' ') {
                    break;
                }
                i7 += i;
                i5 = i8 + 1;
                if (i5 == i4) {
                    return i7;
                }
            }
        }
        return i6;
    }

    public int Code(char[] cArr, int i, int i2) {
        return Code(this.B, this.C, cArr, i, i2);
    }

    public int Code(char[] cArr, int i, int i2, float f) {
        Paint paint = new Paint(this.B);
        paint.setTextSize(this.B.getTextSize() * f);
        return Code(paint, (int) Math.ceil((double) paint.measureText(" ")), cArr, i, i2);
    }

    public final int Code(char c2) {
        int Code2 = ak.Code(this, c2);
        if (Code2 != -1) {
            return Code2;
        }
        this.Z[0] = c2;
        return (int) Math.ceil((double) this.B.measureText(this.Z, 0, 1));
    }

    public final int J() {
        return -this.J.top;
    }

    public final TextPaint g() {
        return this.B;
    }

    public final boolean a() {
        return this.B.getTypeface().isItalic() || this.B.getTextSkewX() != 0.0f;
    }

    public final boolean C() {
        return this.B.getTypeface().isBold() || this.B.isFakeBoldText();
    }

    public final boolean b() {
        return this.I == 32;
    }

    public final boolean c() {
        return this.I == 128;
    }

    public final int I() {
        return this.a;
    }

    public final int Z() {
        return 0;
    }

    public final String B() {
        if (b()) {
            return "monospace";
        }
        return c() ? "serif" : "sans";
    }

    public final void d() {
        if (Code == null) {
            Code = Long.valueOf(System.nanoTime());
        }
        ak.Code(this);
    }
}
