package defpackage;

/* renamed from: bw  reason: default package */
/* compiled from: Source */
final class bw implements Runnable {
    private boolean B;
    private bg C;
    private int Code;
    private boolean I;
    private int J;
    private bg[] Z = new bg[10];
    private boolean a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;

    bw() {
        db.Code((Runnable) this);
    }

    public final void run() {
        Thread.currentThread().setPriority(1);
        while (true) {
            try {
                Z();
                this.a = false;
                this.C.J();
                if (this.a) {
                    this.C.Code(this.b, this.c, this.d, this.f, this.e, this.g, this.h, this.i);
                } else {
                    this.C = null;
                }
            } catch (Throwable th) {
                this.C = null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        this.a = true;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.g = i5;
        this.h = i6;
        this.e = i8;
        this.f = i7;
        this.i = z;
    }

    private synchronized void Z() {
        while (true) {
            if (this.Code > 0 || (this.J == 0 && this.C == null)) {
                wait();
            }
        }
        this.I = false;
        if (this.J > 0 && (this.B || this.C == null)) {
            this.C = this.Z[0];
            bg[] bgVarArr = this.Z;
            bg[] bgVarArr2 = this.Z;
            int i2 = this.J - 1;
            this.J = i2;
            bgVarArr[0] = bgVarArr2[i2];
            this.Z[this.J] = null;
            this.B = false;
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code(bg bgVar) {
        int i2 = 0;
        synchronized (this) {
            while (true) {
                if (i2 >= this.J) {
                    break;
                } else if (this.Z[i2] == bgVar) {
                    bg[] bgVarArr = this.Z;
                    bg[] bgVarArr2 = this.Z;
                    int i3 = this.J - 1;
                    this.J = i3;
                    bgVarArr[i2] = bgVarArr2[i3];
                    this.Z[this.J] = null;
                    if (i2 == 0) {
                        this.B = false;
                    }
                } else {
                    i2++;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void I(bg bgVar) {
        if (!this.B) {
            int i2 = 0;
            while (i2 < this.J && this.Z[i2] != bgVar) {
                i2++;
            }
            if (i2 == this.J) {
                if (this.J == this.Z.length) {
                    this.Z[this.J - 1] = bgVar;
                } else {
                    bg[] bgVarArr = this.Z;
                    int i3 = this.J;
                    this.J = i3 + 1;
                    bgVarArr[i3] = bgVar;
                }
            }
        }
        this.I = true;
        if (this.Code == 0) {
            notify();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Z(bg bgVar) {
        synchronized (this) {
            this.Z[0] = bgVar;
            for (int i2 = 1; i2 < this.J; i2++) {
                this.Z[i2] = null;
            }
            this.J = 1;
            this.B = true;
            this.I = true;
            if (this.Code == 0) {
                notify();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void Code() {
        this.Code++;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void I() {
        this.Code--;
        if (this.Code == 0 && this.I) {
            notify();
        }
    }
}
