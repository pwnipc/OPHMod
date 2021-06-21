package com.opera.mini.android;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.os.Environmenu;
import android.os.StatFs;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Source */
public final class I implements MediaScannerConnection.MediaScannerConnectionClient, bn {
    static MediaScannerConnection Code;
    private Context I = Browser.I.getApplicationContext();

    I() {
        if (Code == null) {
            MediaScannerConnection mediaScannerConnection = new MediaScannerConnection(this.I, this);
            Code = mediaScannerConnection;
            mediaScannerConnection.connect();
        }
    }

    public final void onMediaScannerConnected() {
    }

    public final void onScanCompleted(String str, Uri uri) {
    }

    public final bm Code(String str, boolean z, int i) {
        File file = new File(b(str));
        if (z) {
            if (file.exists()) {
                file.delete();
            }
            if (!file.createNewFile()) {
                throw new IOException();
            }
        }
        if ((i & 1) != 0 && !file.canRead()) {
            throw new IOException();
        } else if ((i & 2) == 0 || file.canWrite()) {
            return new Z(this, file);
        } else {
            throw new IOException();
        }
    }

    public final boolean Code(String str) {
        return new File(b(str)).exists();
    }

    public final long I(String str) {
        return new File(b(str)).length();
    }

    public final long Z(String str) {
        return a(str);
    }

    static long a(String str) {
        StatFs statFs = new StatFs(b(str));
        return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
    }

    public final byte[] J(String str) {
        DataInputStream dataInputStream;
        Throwable th;
        DataInputStream dataInputStream2;
        try {
            dataInputStream = new DataInputStream(new FileInputStream(b(str)));
            try {
                if (dataInputStream.readInt() != 47404304) {
                    db.Code((InputStream) dataInputStream);
                    return null;
                }
                byte[] bArr = new byte[3];
                for (int i = 0; i < 3; i++) {
                    bArr[i] = dataInputStream.readByte();
                }
                int i2 = (bArr[2] & 255) + ((bArr[0] & 255) << 16) + ((bArr[1] & 255) << 8);
                byte[] bArr2 = new byte[i2];
                for (int i3 = 0; i3 < i2; i3 += dataInputStream.read(bArr2, i3, Math.min(1024, i2 - i3))) {
                }
                db.Code((InputStream) dataInputStream);
                return bArr2;
            } catch (IOException e) {
                dataInputStream2 = dataInputStream;
                db.Code((InputStream) dataInputStream2);
                return null;
            } catch (Throwable th2) {
                th = th2;
                db.Code((InputStream) dataInputStream);
                throw th;
            }
        } catch (IOException e2) {
            dataInputStream2 = null;
            db.Code((InputStream) dataInputStream2);
            return null;
        } catch (Throwable th3) {
            dataInputStream = null;
            th = th3;
            db.Code((InputStream) dataInputStream);
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0036 A[SYNTHETIC, Splitter:B:13:0x0036] */
    public final int Code(byte[] bArr, String str) {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        String b = b(str);
        if (bArr != null) {
            try {
                dataOutputStream = new DataOutputStream(new FileOutputStream(b));
                try {
                    dataOutputStream.writeInt(47404304);
                    dataOutputStream.writeByte(bArr.length >> 16);
                    dataOutputStream.writeShort(bArr.length);
                    dataOutputStream.write(bArr);
                    dataOutputStream.flush();
                } catch (Throwable th) {
                    Throwable th2 = th;
                    dataOutputStream2 = dataOutputStream;
                    th = th2;
                    db.Code((OutputStream) dataOutputStream2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (!(th instanceof SecurityException)) {
                    db.Code((OutputStream) dataOutputStream2);
                    return 2;
                }
                this.I.deleteFile(b);
                db.Code((OutputStream) dataOutputStream2);
                return 1;
            }
        } else {
            dataOutputStream = null;
        }
        db.Code((OutputStream) dataOutputStream);
        return 0;
    }

    public final boolean B(String str) {
        File file = new File(b(str));
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }

    public final boolean C(String str) {
        return new File(b(str)).mkdirs();
    }

    static String b(String str) {
        if (str.startsWith("file://")) {
            return str.substring(7);
        }
        if (str.startsWith("file:")) {
            return str.substring(5);
        }
        return str;
    }

    public final void Code() {
        String str;
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        if (absolutePath.indexOf("sdcard") != -1) {
            str = "SD Card";
        } else {
            str = absolutePath;
        }
        if (Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED) && ar.c.b(absolutePath) == null) {
            ar.c.Code(str, absolutePath);
        }
    }

    public final String I() {
        File file = new File(Environment.getExternalStorageDirectory(), "download");
        if (Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED) && !file.exists()) {
            file.mkdir();
        }
        return file.getAbsolutePath();
    }

    public final String Z() {
        return this.I.getFilesDir().getAbsolutePath();
    }

    public final String J() {
        return this.I.getCacheDir().getAbsolutePath();
    }

    public final int[] B() {
        String[] fileList = this.I.fileList();
        int i = 0;
        for (int i2 = 0; i2 < fileList.length; i2++) {
            if (bk.c(fileList[i2]) != 0) {
                bk bkVar = ar.c;
                if (bk.d(fileList[i2]) != 0) {
                    i += 2;
                }
            }
        }
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < fileList.length; i3++) {
            int c = bk.c(fileList[i3]);
            if (c != 0) {
                bk bkVar2 = ar.c;
                int d = bk.d(fileList[i3]);
                if (d != 0) {
                    int i4 = i - 1;
                    iArr[i4] = c;
                    i = i4 - 1;
                    iArr[i] = d;
                }
            }
        }
        return iArr;
    }
}
