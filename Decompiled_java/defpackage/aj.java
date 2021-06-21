package defpackage;

import java.io.DataInput;

/* renamed from: aj  reason: default package */
/* compiled from: Source */
public final class aj extends ah {
    private int B;
    public byte Code;
    public byte I;
    public int J;
    public boolean Z;

    public aj() {
        this.B = -1;
        this.I = 0;
        this.Code = 0;
        this.J = 0;
    }

    public aj(int i, byte b, boolean z, byte b2, int i2) {
        this.B = i;
        this.Code = b;
        this.Z = z;
        this.I = b2;
        this.J = i2;
    }

    public final byte Code() {
        return 2;
    }

    public final int I() {
        return this.B;
    }

    public final int Code(DataInput dataInput, int i) {
        this.B = dataInput.readInt() + i;
        int readUnsignedByte = dataInput.readUnsignedByte();
        this.Code = (byte) (readUnsignedByte & 7);
        this.Z = (readUnsignedByte & 8) == 0;
        this.I = (byte) ((readUnsignedByte & 112) >> 4);
        this.J = dataInput.readInt();
        return this.B;
    }
}
