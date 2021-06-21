package defpackage;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: az  reason: default package */
/* compiled from: Source */
final class az extends OutputStream {
    private bf Code;
    private DataOutputStream I;
    private int J;
    private String Z;

    private az() {
    }

    public static az Code(int i, String str) {
        az azVar = new az();
        azVar.Code = new bf();
        azVar.I = new DataOutputStream(azVar.Code);
        azVar.Z = str;
        azVar.J = i;
        return azVar;
    }

    public static az Code(OutputStream outputStream) {
        az azVar = new az();
        azVar.Code = new bf();
        azVar.I = new DataOutputStream(outputStream);
        return azVar;
    }

    public final void write(int i) {
        this.I.write(i);
    }

    public final void write(byte[] bArr, int i, int i2) {
        this.I.write(bArr, i, i2);
    }

    public final void write(byte[] bArr) {
        this.I.write(bArr);
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i) {
        this.I.writeByte(i);
    }

    /* access modifiers changed from: package-private */
    public final void I(int i) {
        this.I.writeShort(i);
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i) {
        this.I.writeInt(i);
    }

    /* access modifiers changed from: package-private */
    public final void Code(long j) {
        this.I.writeLong(j);
    }

    public final void flush() {
        this.I.flush();
    }

    public final void close() {
        try {
            String a = ar.a(this.J);
            this.Z = ar.Code(this.J, this.Z);
            cn.Code.Code(a, this.Z, this.Code.Code(), this.Code.size());
        } catch (IOException e) {
        } finally {
            db.Code((OutputStream) this.I);
            this.I = null;
            this.Code = null;
            this.Z = null;
            this.J = 0;
        }
    }
}
