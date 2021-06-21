package defpackage;

import java.io.IOException;

/* renamed from: bo  reason: default package */
/* compiled from: Source */
public final class bo {
    private String Code;
    private String I;

    public bo(String str, String str2) {
        this.Code = str;
        this.I = I(str2);
    }

    public final String Code() {
        return this.Code;
    }

    public final String I() {
        return this.I;
    }

    public final boolean Code(String str) {
        if (this.I == null || str == null) {
            return this.I == null && str == null;
        }
        return this.I.equals(I(str));
    }

    private static String I(String str) {
        if (str.startsWith("file://")) {
            return str;
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return "file://" + str;
    }

    public final boolean Z() {
        boolean z = false;
        bm bmVar = null;
        try {
            bmVar = ar.c.Code(this.I, false, 1);
            z = bmVar.J();
        } catch (IOException e) {
        } finally {
            db.Code(bmVar);
        }
        return z;
    }

    public final boolean J() {
        boolean z = false;
        bm bmVar = null;
        try {
            bmVar = ar.c.Code(this.I, false, 2);
            z = bmVar.B();
        } catch (IOException e) {
        } finally {
            db.Code(bmVar);
        }
        return z;
    }
}
