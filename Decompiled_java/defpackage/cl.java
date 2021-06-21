package defpackage;

/* renamed from: cl  reason: default package */
/* compiled from: Source */
public final class cl {
    private byte[] Code;
    private int I;
    private int Z;

    public cl(byte[] bArr) {
        this.Code = new byte[256];
        this.I = 0;
        this.Z = 0;
        this.I = 0;
        this.Z = 0;
        for (int i = 0; i < 256; i++) {
            this.Code[i] = (byte) i;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            i2 = (i2 + bArr[i3] + this.Code[i4]) & 255;
            byte b = this.Code[i4];
            this.Code[i4] = this.Code[i2];
            this.Code[i2] = b;
            i3 = (i3 + 1) % 32;
        }
    }

    public final void Code(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            this.I = (this.I + 1) & 255;
            this.Z = (this.Code[this.I] + this.Z) & 255;
            byte b = this.Code[this.I];
            this.Code[this.I] = this.Code[this.Z];
            this.Code[this.Z] = b;
            bArr[i + i3] = (byte) (bArr[i + i3] ^ this.Code[(this.Code[this.I] + this.Code[this.Z]) & 255]);
        }
    }
}
