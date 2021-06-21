package defpackage;

import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: cg  reason: default package */
/* compiled from: Source */
public final class cg {
    int[] Code;
    int[] I;
    public boolean Z;

    public final void Code(DataInputStream dataInputStream) {
        db.Code((InputStream) dataInputStream, (int) dataInputStream.readShort());
        int readShort = dataInputStream.readShort();
        this.Code = new int[readShort];
        this.I = new int[readShort];
        int i = (readShort * 6) - 6;
        for (int i2 = 0; i2 < readShort; i2++) {
            dataInputStream.readShort();
            this.I[i2] = dataInputStream.readInt();
            this.Code[i2] = i;
            i += this.I[i2] - 6;
        }
        this.Z = true;
    }
}
