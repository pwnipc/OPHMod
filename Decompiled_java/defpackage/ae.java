package defpackage;

/* renamed from: ae  reason: default package */
/* compiled from: Source */
public final class ae {
    private int Code;
    private int I;
    private int J;
    private int Z;

    public final void Code() {
        this.Code = 1;
        this.I = 0;
        this.Z = 0;
        this.J = 0;
    }

    public final void Code(byte[] bArr, int i, int i2) {
        this.J += i2;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                int i4 = this.Z;
                this.Z = i4 + 1;
                if (i4 == 2775) {
                    this.Code %= 65521;
                    this.I %= 65521;
                    this.Z = 0;
                }
                this.Code += bArr[i] & 255;
                this.I += this.Code;
                i2 = i3;
                i++;
            } else {
                return;
            }
        }
    }

    public final byte[] I() {
        this.Code %= 65521;
        this.I %= 65521;
        int i = (this.I << 16) | this.Code;
        byte[] bArr = new byte[4];
        bArr[3] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[1] = (byte) ((i >>> 16) & 255);
        bArr[0] = (byte) ((i >>> 24) & 255);
        return bArr;
    }
}
