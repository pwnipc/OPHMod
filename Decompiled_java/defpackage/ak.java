package defpackage;

import java.io.DataInput;

/* renamed from: ak  reason: default package */
/* compiled from: Source */
public final class ak extends ah {
    public boolean B;
    public int C = 0;
    public int[] Code = null;
    public byte I = 0;
    public boolean J;
    public byte Z = 0;

    public final byte Code() {
        return 4;
    }

    /* access modifiers changed from: protected */
    public final int I() {
        return -1;
    }

    public final int Code(DataInput dataInput, int i) {
        boolean z;
        int readUnsignedByte = dataInput.readUnsignedByte();
        this.I = (byte) (readUnsignedByte & 7);
        this.J = (readUnsignedByte & 8) == 0;
        this.Z = (byte) ((readUnsignedByte & 112) >> 4);
        if ((readUnsignedByte & 128) == 0) {
            z = true;
        } else {
            z = false;
        }
        this.B = z;
        this.C = dataInput.readInt();
        int readShort = dataInput.readShort();
        this.Code = new int[readShort];
        this.Code[0] = dataInput.readInt() + i;
        for (int i2 = 1; i2 < readShort; i2++) {
            this.Code[i2] = dataInput.readInt() + this.Code[i2 - 1];
        }
        return this.Code[0];
    }
}
