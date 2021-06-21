package defpackage;

/* renamed from: ch  reason: default package */
/* compiled from: Source */
public final class ch {
    private bs Code;
    private byte[] I = new byte[64];
    private byte[] Z = new byte[32];

    public final void Code(byte[] bArr, int i) {
        this.Code = new bs(bArr, i, 32);
    }

    public final void I(byte[] bArr, int i) {
        for (int i2 = i; i2 < 64; i2++) {
            this.I[i2] = 0;
        }
        System.arraycopy(bArr, 0, this.I, 0, Math.min(64, i));
        this.Code.Code(this.I, 0, 64);
        this.Code.I(this.Z, 0, 32);
    }

    public final void Z(byte[] bArr, int i) {
        this.Code.Code(this.Z, 0, 32);
        this.Code.Code(this.I, 0, 64);
        this.Code.I(bArr, i, 32);
        this.Code.Code(this.Z, 0, 32);
        this.Code.I(this.Z, 0, 32);
    }
}
