package com.opera.mini.android;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* compiled from: Source */
class n {
    private static ByteBuffer b;
    private boolean B;
    private int C;
    private long Code;
    private Bitmap I;
    private int J;
    private int Z;
    private int a;

    /* access modifiers changed from: protected */
    public native void finalize();

    public n(Bitmap bitmap) {
        this.Z = bitmap.getHeight();
        this.J = bitmap.getWidth();
        this.B = bitmap.hasAlpha();
        this.C = bitmap.getRowBytes();
        if (bitmap.getConfig() == Bitmap.Config.ALPHA_8) {
            this.a = 0;
        } else if (bitmap.getConfig() == Bitmap.Config.ARGB_4444) {
            this.a = 1;
        } else if (bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            this.a = 2;
        } else if (bitmap.getConfig() == Bitmap.Config.RGB_565) {
            this.a = 3;
        } else {
            this.a = -1;
        }
        this.I = bitmap;
    }

    public n(long j) {
        this.Code = j;
    }

    public void Code(ByteBuffer byteBuffer) {
        this.I.copyPixelsToBuffer(byteBuffer);
    }

    public byte[] Code() {
        int i = this.C * this.Z;
        if (b == null || b.capacity() < i) {
            b = ByteBuffer.allocate(i);
        }
        b.rewind();
        this.I.copyPixelsToBuffer(b);
        return b.array();
    }
}
