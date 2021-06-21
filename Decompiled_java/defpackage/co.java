package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;

/* renamed from: co  reason: default package */
/* compiled from: Source */
final class co extends cm {
    int B;
    String C;
    int J;
    byte[] a;
    private String b;

    co(String str, String str2) {
        super(str + "/res/7.6.35766/" + str2);
    }

    /* access modifiers changed from: protected */
    public final void Code(DataInputStream dataInputStream) {
        int read;
        if (this.J > 0) {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(this.J);
            while (this.B < this.J && (read = dataInputStream.read(bArr)) >= 0) {
                byteArrayOutputStream.write(bArr, 0, read);
                this.B = read + this.B;
            }
            this.a = byteArrayOutputStream.toByteArray();
        } else if (this.b == null) {
            Code(0, "Invalid content length");
        }
    }

    /* access modifiers changed from: protected */
    public final boolean Code(String str, String str2) {
        if (str.equals("content-length")) {
            this.J = Integer.parseInt(str2);
            return true;
        } else if (!str.equals("update-digest")) {
            return true;
        } else {
            this.C = str2;
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public final void Code(int i, String str) {
        this.b = str;
        this.J = -1;
    }
}
