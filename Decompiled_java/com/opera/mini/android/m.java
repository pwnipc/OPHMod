package com.opera.mini.android;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: Source */
public final class m extends Inflater implements by {
    private byte[] Code;
    private int I;

    public m() {
        super(true);
    }

    public final void Code() {
        Code(new byte[32768]);
    }

    public final void Code(byte[] bArr) {
        this.Code = bArr;
        this.I = 0;
    }

    public final void Code(cs csVar) {
    }

    public final void setInput(byte[] bArr, int i, int i2) {
        super.setInput(bArr, i, i2);
    }

    public final int read(byte[] bArr, int i, int i2) {
        this.I = 0;
        if (bArr != null) {
            try {
                this.I = super.inflate(bArr, i, i2);
            } catch (DataFormatException e) {
            }
        } else {
            this.I = super.inflate(this.Code, i, i2);
        }
        return this.I;
    }

    public final int I() {
        return this.I;
    }

    public final void end() {
        super.end();
    }
}
