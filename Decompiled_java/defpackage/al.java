package defpackage;

import java.io.DataInput;

/* renamed from: al  reason: default package */
/* compiled from: Source */
public final class al extends ah {
    public int Code = -1;
    public byte[] I;

    public final byte Code() {
        return 0;
    }

    public final int I() {
        return -1;
    }

    public final int Code(DataInput dataInput, int i) {
        this.Code = dataInput.readInt();
        this.I = new byte[4];
        dataInput.readFully(this.I);
        return 0;
    }
}
