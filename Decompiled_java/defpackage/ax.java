package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;

/* renamed from: ax  reason: default package */
/* compiled from: Source */
public final class ax extends InputStream {
    public DataInputStream Code;
    public int I;
    private int Z;

    public static ax Code(int i) {
        int i2 = -1;
        ax axVar = new ax();
        int i3 = i & 32767;
        axVar.Code = new DataInputStream(new ByteArrayInputStream(ar.n()));
        cg m = ar.m();
        db.Code((InputStream) axVar.Code, (int) axVar.Code.readShort());
        axVar.Code.readShort();
        int i4 = (i3 * 6) + 6;
        int i5 = m.Z ? m.Code[i3] : -1;
        if (m.Z) {
            i2 = m.I[i3];
        }
        axVar.I = i2;
        db.Code((InputStream) axVar.Code, i5 + i4);
        return axVar;
    }

    public static ax Code(int i, String str) {
        return cn.Code.J(ar.a(i), ar.Code(i, str));
    }

    public static ax Code(InputStream inputStream, int i) {
        ax axVar = new ax();
        axVar.Code = new DataInputStream(inputStream);
        axVar.I = i;
        return axVar;
    }

    public final int Code() {
        return this.I;
    }

    public final int read() {
        int read = this.Code.read();
        if (read < 0) {
            return -1;
        }
        this.Z++;
        return read;
    }

    public final int read(byte[] bArr, int i, int i2) {
        if (this.Z != this.I || i2 <= 0) {
            int read = this.Code.read(bArr, i, Math.min(i2, this.I - this.Z));
            if (read < 0) {
                throw new EOFException();
            }
            this.Z += read;
            return read;
        }
        throw new EOFException();
    }

    public final int I() {
        if (this.Z == this.I) {
            throw new EOFException();
        }
        this.Z++;
        return this.Code.readByte();
    }

    public final int Z() {
        if (this.Z + 2 > this.I) {
            throw new EOFException();
        }
        this.Z += 2;
        return this.Code.readShort();
    }

    public final int J() {
        if (this.Z + 4 > this.I) {
            throw new EOFException();
        }
        this.Z += 4;
        return this.Code.readInt();
    }

    public final long B() {
        if (this.Z + 8 > this.I) {
            throw new EOFException();
        }
        this.Z += 8;
        return this.Code.readLong();
    }

    public final int I(int i) {
        int min = Math.min(i, this.I - this.Z);
        db.Code((InputStream) this.Code, min);
        this.Z += min;
        if (i == min) {
            return i;
        }
        throw new EOFException();
    }

    public final void close() {
        db.Code((InputStream) this.Code);
        this.Code = null;
    }
}
