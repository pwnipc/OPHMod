package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;

/* renamed from: ct  reason: default package */
/* compiled from: Source */
final class ct extends InputStream {
    private Hashtable B;
    private int C;
    private cs Code;
    private ct I;
    private int[] J;
    private Object[] Z;
    private boolean a;
    private int b;
    private boolean c;
    private int d;
    private byte[] e;
    private int f;
    private int g;
    private int h;
    private int i;
    private final boolean j;
    private int k = 0;
    private byte[] l = new byte[1];
    private long m;

    ct(Object[] objArr, int[] iArr, int i2, boolean z) {
        this.Z = objArr;
        this.J = iArr;
        this.i = i2;
        this.j = z;
        iArr[46] = 0;
        this.B = objArr[9];
        objArr[9] = null;
    }

    /* access modifiers changed from: package-private */
    public final boolean Code(String str) {
        if (this.k >= 3) {
            return false;
        }
        this.k++;
        this.i = cz.Code(str, (String) null);
        this.Code = null;
        if (this.k == 1) {
            this.Z[90] = this.Z[53];
        }
        this.Z[53] = str;
        this.J[46] = 0;
        return true;
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public final boolean I() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final cs Z() {
        return this.Code;
    }

    /* access modifiers changed from: package-private */
    public final void Code(cs csVar, int i2) {
        this.Code = csVar;
        this.C = i2;
    }

    /* access modifiers changed from: package-private */
    public final void J() {
        this.Code = null;
    }

    /* access modifiers changed from: package-private */
    public final void Code(ct ctVar) {
        this.I = ctVar;
    }

    /* access modifiers changed from: package-private */
    public final ct B() {
        return this.I;
    }

    /* access modifiers changed from: package-private */
    public final ct I(ct ctVar) {
        if (ctVar == this) {
            ct ctVar2 = this.I;
            this.I = null;
            return ctVar2;
        }
        for (ct ctVar3 = this; ctVar3.I != null; ctVar3 = ctVar3.I) {
            if (ctVar3.I == ctVar) {
                ctVar3.I = ctVar.I;
                ctVar.I = null;
                return this;
            }
        }
        return this;
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        return this.C;
    }

    /* access modifiers changed from: package-private */
    public final Object[] a() {
        return this.Z;
    }

    /* access modifiers changed from: package-private */
    public final int[] b() {
        return this.J;
    }

    /* access modifiers changed from: package-private */
    public final Hashtable Code(boolean z) {
        Hashtable hashtable = this.B;
        if (z) {
            this.B = null;
        }
        return hashtable;
    }

    /* access modifiers changed from: package-private */
    public final byte[] c() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final int d() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public final int e() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        this.Z = null;
        this.J = null;
    }

    /* access modifiers changed from: package-private */
    public final boolean g() {
        return this.Z == null;
    }

    /* access modifiers changed from: package-private */
    public final boolean h() {
        return this.J[46] != 0;
    }

    /* access modifiers changed from: package-private */
    public final void i() {
        this.J[46] = 1;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(int i2) {
        this.g = i2;
        this.e = null;
        notifyAll();
    }

    /* access modifiers changed from: package-private */
    public final void j() {
        this.c = true;
        db.Code((Object) this);
    }

    public final int read() {
        if (read(this.l, 0, 1) < 0) {
            return -1;
        }
        return this.l[0] & 255;
    }

    public final int read(byte[] bArr, int i2, int i3) {
        do {
            this.f = i2;
            this.g = i3;
            this.e = bArr;
            db.Code((Object) this);
            while (!this.a) {
                cs csVar = this.Code;
                if (csVar != null) {
                    csVar.Code(this);
                }
                if (this.e != null) {
                    db.Code((Object) this, 1000);
                }
            }
            if (this.c) {
                return -1;
            }
            throw new IOException();
        } while (this.g == 0);
        return this.g;
    }

    public final boolean k() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public final void I(int i2) {
        this.a = true;
        this.d = i2;
        db.Code((Object) this);
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i2) {
        this.b = i2;
    }

    /* access modifiers changed from: package-private */
    public final int l() {
        return this.b;
    }

    public final void close() {
        cs.Code(this, false);
    }

    public final int m() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public final void J(int i2) {
        this.h += i2;
    }

    public final int n() {
        return this.h;
    }

    public final boolean o() {
        if (this.Code == null) {
            return false;
        }
        return this.Code.c();
    }

    /* access modifiers changed from: package-private */
    public final void p() {
        this.m = System.currentTimeMillis();
    }

    public final int q() {
        return (int) (System.currentTimeMillis() - this.m);
    }

    public final boolean r() {
        return this.Code.B();
    }

    /* access modifiers changed from: package-private */
    public final cp s() {
        return this.Code.Code();
    }
}
