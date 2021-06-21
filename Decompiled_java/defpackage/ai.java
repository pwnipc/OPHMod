package defpackage;

import java.io.DataInput;

/* renamed from: ai  reason: default package */
/* compiled from: Source */
public final class ai extends ah {
    public int Code = -1;
    public int I = -1;
    private int J = -1;
    public byte[] Z;

    public final byte Code() {
        return 1;
    }

    public final int I() {
        return this.J;
    }

    public final int Code(DataInput dataInput, int i) {
        this.J = dataInput.readInt() + i;
        this.Code = dataInput.readUnsignedShort();
        this.I = dataInput.readUnsignedShort();
        this.Z = new byte[(this.Code > this.I ? this.Code : this.I)];
        dataInput.readFully(this.Z);
        return this.J;
    }
}
