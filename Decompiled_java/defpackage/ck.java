package defpackage;

import java.io.DataInputStream;

/* renamed from: ck  reason: default package */
/* compiled from: Source */
final class ck extends cf {
    private static Object B = new Object();
    private static int J = Integer.MIN_VALUE;
    private boolean C;

    ck(String str, int i, int i2) {
        super(str, i, i2, (String) null, true, 0, 0);
    }

    static void Z(int i) {
        if (i > J) {
            J = i;
            synchronized (B) {
                B.notifyAll();
            }
        }
    }

    public final void Code() {
        super.Code();
        synchronized (B) {
            B.notifyAll();
        }
    }

    public final void Z() {
        this.C = true;
    }

    /* access modifiers changed from: protected */
    public final void Code(DataInputStream dataInputStream) {
        byte[] bArr = new byte[2048];
        while (true) {
            if (this.I) {
                break;
            }
            int read = dataInputStream.read(bArr);
            ar.I.h();
            if (!this.I) {
                if (read >= 0) {
                    ar.Z.b(ar.Z.I(bArr, 0, read));
                    ar.Z.c(0);
                    ar.Z.c(read);
                    Code(44);
                    if (this.C) {
                        break;
                    }
                } else {
                    ar.I.i();
                    break;
                }
            } else {
                ar.I.i();
                return;
            }
        }
        while (!this.I) {
            if (!this.Z.r()) {
                try {
                    synchronized (B) {
                        B.wait();
                    }
                } catch (InterruptedException e) {
                    return;
                }
            } else {
                int read2 = dataInputStream.read();
                if (read2 < 0) {
                    Code(504, "Server closed connection");
                    return;
                } else if (read2 != 0) {
                    continue;
                }
            }
            ar.I.h();
            if (this.I) {
                ar.I.i();
                return;
            }
            Code(48);
        }
    }
}
