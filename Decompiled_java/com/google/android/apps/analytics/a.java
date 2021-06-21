package com.google.android.apps.analytics;

final class a {
    final int B;
    final int C;
    final String Code;
    final String I;
    final String J;
    final String Z;
    final int a;
    J b;
    private long c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private u m;
    private k n;

    a(long j2, String str, int i2, int i3, int i4, int i5, int i6, String str2, String str3, String str4, int i7, int i8, int i9) {
        this.c = j2;
        this.Code = str;
        this.d = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = i6;
        this.I = str2;
        this.Z = str3;
        this.J = str4;
        this.B = i7;
        this.a = i9;
        this.C = i8;
        this.j = -1;
        this.l = false;
    }

    a(a aVar, String str) {
        this(aVar.c, str, aVar.d, aVar.f, aVar.g, aVar.h, aVar.i, aVar.I, aVar.Z, aVar.J, aVar.B, aVar.C, aVar.a);
        this.e = aVar.e;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
        this.b = aVar.b;
        this.m = aVar.m;
        this.n = aVar.n;
    }

    /* access modifiers changed from: package-private */
    public final int B() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public final void B(int i2) {
        this.i = i2;
    }

    /* access modifiers changed from: package-private */
    public final int C() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public final void C(int i2) {
        this.j = i2;
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i2) {
        this.d = i2;
    }

    public final void Code(k kVar) {
        if (!this.I.equals("__##GOOGLEITEM##__")) {
            throw new IllegalStateException("Attempted to add an item to an event of type " + this.I);
        }
        this.n = kVar;
    }

    public final void Code(u uVar) {
        if (!this.I.equals("__##GOOGLETRANSACTION##__")) {
            throw new IllegalStateException("Attempted to add a transction to an event of type " + this.I);
        }
        this.m = uVar;
    }

    /* access modifiers changed from: package-private */
    public final int I() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public final void I(int i2) {
        this.f = i2;
    }

    /* access modifiers changed from: package-private */
    public final int J() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public final void J(int i2) {
        this.h = i2;
    }

    /* access modifiers changed from: package-private */
    public final int Z() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public final void Z(int i2) {
        this.g = i2;
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.k = false;
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        return this.l;
    }

    public final u e() {
        return this.m;
    }

    public final k f() {
        return this.n;
    }

    public final boolean g() {
        return this.f != -1;
    }

    public final String toString() {
        return "id:" + this.c + " random:" + this.d + " timestampCurrent:" + this.h + " timestampPrevious:" + this.g + " timestampFirst:" + this.f + " visits:" + this.i + " value:" + this.B + " category:" + this.I + " action:" + this.Z + " label:" + this.J + " width:" + this.C + " height:" + this.a;
    }
}
