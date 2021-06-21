package defpackage;

import java.io.DataInput;

/* renamed from: ah  reason: default package */
/* compiled from: Source */
public abstract class ah {
    public abstract byte Code();

    public abstract int Code(DataInput dataInput, int i);

    /* access modifiers changed from: protected */
    public abstract int I();

    public final int Code(Object obj) {
        int I = I() - ((ah) obj).I();
        if (I == 0) {
            return Code() - ((ah) obj).Code();
        }
        return I;
    }

    public final int hashCode() {
        return I();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ah) && I() == ((ah) obj).I() && Code() == ((ah) obj).Code();
    }
}
