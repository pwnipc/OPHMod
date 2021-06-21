package defpackage;

import com.google.android.gms.common.ConnectionResult;

/* renamed from: bd  reason: default package */
/* compiled from: Source */
final class bd {
    /* access modifiers changed from: private */
    public final String B;
    /* access modifiers changed from: private */
    public final String C;
    /* access modifiers changed from: private */
    public final bg Code;
    private final int I;
    private final String J;
    private final int Z;
    private final int a;

    static /* synthetic */ String Code(bd bdVar) {
        String str = bdVar.B;
        int indexOf = str.indexOf(63);
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf > 0) {
            str = str.substring(lastIndexOf + 1);
        }
        return (str.indexOf(46) != -1 || bdVar.C == null || !bdVar.C.startsWith("image/")) ? str : str + "." + bdVar.C.substring(bdVar.C.indexOf(47) + 1);
    }

    bd(bg bgVar, int i, int i2, String str, String str2, String str3, int i3) {
        this.Code = bgVar;
        this.I = i;
        this.Z = i2;
        this.J = str;
        this.B = str2;
        this.C = str3;
        this.a = i3;
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        return this.Z;
    }

    /* access modifiers changed from: package-private */
    public final boolean Z() {
        return this.J != null;
    }

    /* access modifiers changed from: package-private */
    public final String J() {
        return Z() ? this.J : "";
    }

    /* access modifiers changed from: package-private */
    public final boolean B() {
        return this.B != null;
    }

    /* access modifiers changed from: package-private */
    public final String C() {
        return B() ? this.B : "";
    }

    private int f() {
        if (this.a <= 0) {
            return 0;
        }
        return this.Code.l(this.a);
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        int f = f();
        return f == 97 || f == 120 || f == 112 || f == 83 || f == 85;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        if (a() && !this.Code.o(this.a).equals("")) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        return f() == 112;
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        return f() == 102;
    }

    /* access modifiers changed from: package-private */
    public final boolean e() {
        return f() == 97;
    }

    private static String Code(String str) {
        char[] cArr = new char[str.length()];
        for (int i = 0; i < cArr.length; i++) {
            cArr[i] = '*';
        }
        return new String(cArr);
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i) {
        switch (i) {
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                if (B()) {
                    db.Code((Runnable) new Runnable() {
                        public final void run() {
                            bd.this.Code.Code(bd.Code(bd.this), bd.this.C, bd.this.B);
                        }
                    });
                    return;
                }
                return;
            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                if (a()) {
                    String o = this.Code.o(this.a);
                    if (c()) {
                        o = Code(o);
                    }
                    ar.Code.w().Code(o);
                    return;
                }
                return;
            case ConnectionResult.INVALID_ACCOUNT /*5*/:
                if (a()) {
                    String o2 = this.Code.o(this.a);
                    if (c()) {
                        o2 = Code(o2);
                    }
                    ar.Code.w().Code(o2);
                    this.Code.Code(this.a, "");
                    return;
                }
                return;
            case ConnectionResult.RESOLUTION_REQUIRED /*6*/:
                if (a()) {
                    this.Code.Code(this.a, ar.Code.w().Code());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
