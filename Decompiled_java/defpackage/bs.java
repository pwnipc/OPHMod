package defpackage;

/* renamed from: bs  reason: default package */
/* compiled from: Source */
public final class bs {
    private cq Code = new cq();
    private byte[] I = new byte[64];
    private byte[] J = new byte[32];
    private byte[] Z = new byte[64];

    public bs(byte[] bArr, int i, int i2) {
        if (i2 > 64) {
            this.Code.Code(bArr, i, i2);
            bArr = new byte[64];
            this.Code.Code(bArr);
            this.Code.Code();
            i2 = 64;
            i = 0;
        }
        System.arraycopy(bArr, i, this.I, 0, i2);
        System.arraycopy(bArr, i, this.Z, 0, i2);
        for (int i3 = 0; i3 < 64; i3++) {
            byte[] bArr2 = this.Z;
            bArr2[i3] = (byte) (bArr2[i3] ^ 54);
            byte[] bArr3 = this.I;
            bArr3[i3] = (byte) (bArr3[i3] ^ 92);
        }
        this.Code.Code(this.Z, 0, 64);
    }

    public final void Code(int i) {
        this.Code.Code(i);
    }

    public final void Code(byte[] bArr, int i, int i2) {
        this.Code.Code(bArr, i, i2);
    }

    public final void I(byte[] bArr, int i, int i2) {
        this.Code.Code(this.J);
        this.Code.Code(this.I, 0, 64);
        this.Code.Code(this.J, 0, 32);
        this.Code.Code(this.J);
        System.arraycopy(this.J, 0, bArr, i, i2);
        this.Code.Code(this.Z, 0, 64);
    }
}
