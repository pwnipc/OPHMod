package defpackage;

import java.io.InputStream;

/* renamed from: bt  reason: default package */
/* compiled from: Source */
public final class bt implements Runnable {
    private String Code;

    bt(String str) {
        this.Code = str;
    }

    public final void run() {
        try {
            bc Code2 = ar.Code.Code(this.Code, (String) null, "GET");
            if (cs.b) {
                Code2.Code("Test-Header", "debug");
            }
            db.Code((InputStream) Code2.Z());
            int J = Code2.J();
            if ((J >= 301 && J <= 303) || J == 307) {
                this.Code = Code2.Code("Location");
                run();
            }
            Code2.Code();
        } catch (Throwable th) {
        }
    }
}
