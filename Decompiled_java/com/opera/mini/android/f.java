package com.opera.mini.android;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* compiled from: Source */
public class f implements d {
    private a Code;
    private ByteBuffer I;

    public native boolean Code();

    public native void I();

    public f(a aVar, ByteBuffer byteBuffer) {
        this.Code = aVar;
        this.I = byteBuffer;
    }

    public final void Code(Bitmap bitmap) {
        bitmap.copyPixelsFromBuffer(this.I);
    }
}
