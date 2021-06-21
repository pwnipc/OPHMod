package defpackage;

import java.io.DataInputStream;
import java.io.EOFException;

/* renamed from: ce  reason: default package */
/* compiled from: Source */
abstract class ce extends Thread {
    protected String Code;
    protected boolean I;
    private int Z;

    /* access modifiers changed from: protected */
    public abstract void I();

    ce(String str, int i) {
        this.Code = str;
        this.Z = ar.J(i);
        ar.Code(this);
    }

    public void Code() {
        this.I = true;
    }

    public void run() {
        try {
            I();
        } catch (Exception e) {
            if (!this.I) {
                Code(Code(e), I(e));
            }
        }
        ar.C(this.Z);
        ar.I(this);
    }

    /* access modifiers changed from: protected */
    public final void Code(int i) {
        if (this.Z != 0) {
            ar.I.I(ar.B(this.Z), i);
        }
    }

    /* access modifiers changed from: protected */
    public void Code(DataInputStream dataInputStream) {
        int i;
        byte[] bArr = new byte[2048];
        while (!this.I) {
            try {
                i = dataInputStream.read(bArr);
            } catch (EOFException e) {
                i = -1;
            }
            ar.I.h();
            if (this.I) {
                ar.I.i();
                return;
            } else if (i <= 0) {
                Code(45);
                return;
            } else {
                ar.Z.b(ar.Z.I(bArr, 0, i));
                ar.Z.c(0);
                ar.Z.c(i);
                Code(44);
            }
        }
    }

    /* access modifiers changed from: protected */
    public int Code(Exception exc) {
        return 0;
    }

    /* access modifiers changed from: protected */
    public String I(Exception exc) {
        String message = exc.getMessage();
        return message != null ? message : exc.toString();
    }

    /* access modifiers changed from: protected */
    public void Code(int i, String str) {
        if (!ar.Code.p()) {
            ar.I.h();
            if (this.I) {
                ar.I.i();
                return;
            }
            an anVar = ar.Z;
            an anVar2 = ar.Z;
            if (str == null) {
                str = "Unspecified error";
            }
            anVar.b(anVar2.Code(str));
            ar.Z.c(i);
            Code(46);
        }
    }

    protected static String I(int i) {
        if (i == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int n = ar.Z.n(i);
        ar.Z.Code(i, n);
        for (int i2 = 0; i2 < n / 2; i2++) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(10);
            }
            an anVar = ar.Z;
            int[] iArr = ar.Z.I;
            an anVar2 = ar.Z;
            stringBuffer.append(anVar.f(iArr[(i2 * 2) + 0]));
            stringBuffer.append(':');
            an anVar3 = ar.Z;
            int[] iArr2 = ar.Z.I;
            an anVar4 = ar.Z;
            stringBuffer.append(anVar3.f(iArr2[(i2 * 2) + 0 + 1]));
        }
        return stringBuffer.toString();
    }
}
