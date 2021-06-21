package com.opera.mini.android;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;

/* compiled from: Source */
public class h {
    public static native void Code();

    private static native void Code(int i, int i2, int[] iArr);

    public static void Code(AssetManager assetManager) {
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(assetManager.open("elements.png"));
            if (decodeStream != null) {
                int width = decodeStream.getWidth();
                int height = decodeStream.getHeight();
                int[] iArr = new int[(width * height)];
                decodeStream.getPixels(iArr, 0, width, 0, 0, width, height);
                Code(width, height, iArr);
                decodeStream.recycle();
            }
        } catch (IOException | ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
        }
    }
}
