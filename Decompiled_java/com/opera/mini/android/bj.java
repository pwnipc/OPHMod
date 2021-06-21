package com.opera.mini.android;

/* compiled from: Source */
abstract class bj {
    public final int B;
    private int C;
    public final String[] Code;
    public final int[] I;
    public final String J;
    public String Z;

    /* access modifiers changed from: protected */
    public abstract int Code();

    bj(String str) {
        this.Code = str.split(";");
        if (this.Code.length < 6 || str.startsWith("#")) {
            throw new IllegalArgumentException("Invalidly formatted test " + str);
        }
        this.J = this.Code[0];
        this.B = Integer.parseInt(this.Code[3]);
        this.C = Integer.parseInt(this.Code[5]);
        this.I = new int[this.C];
    }

    public final void I() {
        int i = 0;
        while (i < this.I.length) {
            try {
                this.I[i] = Code();
                i++;
            } catch (Exception e) {
                this.Z = e.getMessage();
                return;
            }
        }
    }
}
