package defpackage;

import java.io.DataInput;
import java.io.EOFException;
import java.io.InputStream;

/* renamed from: af  reason: default package */
/* compiled from: Source */
final class af extends InputStream implements DataInput {
    private final InputStream Code;

    af(InputStream inputStream) {
        this.Code = inputStream;
    }

    public final int read() {
        return this.Code.read();
    }

    public final boolean readBoolean() {
        return Code() != 0;
    }

    public final char readChar() {
        return (char) I();
    }

    public final float readFloat() {
        return 0.0f;
    }

    public final double readDouble() {
        return 0.0d;
    }

    public final String readLine() {
        return null;
    }

    public final long readLong() {
        return -1;
    }

    public final String readUTF() {
        return null;
    }

    public final int skipBytes(int i) {
        return (int) skip((long) i);
    }

    public final void readFully(byte[] bArr) {
        if (this.Code.read(bArr) < bArr.length) {
            throw new EOFException();
        }
    }

    public final void readFully(byte[] bArr, int i, int i2) {
        if (this.Code.read(bArr, i, i2) < i2) {
            throw new EOFException();
        }
    }

    private int Code() {
        int read = this.Code.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public final byte readByte() {
        return (byte) Code();
    }

    public final int readUnsignedByte() {
        return Code();
    }

    private int I() {
        int Code2 = Code();
        int i = Code2 & 127;
        while ((Code2 & 128) != 0) {
            Code2 = Code();
            i = (i << 7) | (Code2 & 127);
        }
        return i;
    }

    public final int readInt() {
        return I();
    }

    public final int readUnsignedShort() {
        return I();
    }

    public final short readShort() {
        return (short) I();
    }
}
