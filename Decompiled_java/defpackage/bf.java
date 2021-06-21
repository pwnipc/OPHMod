package defpackage;

import java.io.ByteArrayOutputStream;

/* renamed from: bf  reason: default package */
/* compiled from: Source */
public final class bf extends ByteArrayOutputStream {
    bf() {
    }

    bf(int i) {
        super(i);
    }

    public final byte[] Code() {
        return this.buf;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i) {
        this.count = i;
    }
}
