package com.opera.mini.android;

/* compiled from: Source */
class bc {
    private int B;
    final /* synthetic */ MiniView Code;
    private float I;
    private float J = 1.0f;
    private long Z;

    bc(MiniView miniView, int i) {
        this.Code = miniView;
        this.B = i;
    }

    /* access modifiers changed from: package-private */
    public int Code(float f) {
        if (f == 0.0f) {
            return 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.Z;
        float abs = Math.abs(f);
        if (j > 1500 || this.I * f < 0.0f) {
            this.J = 1.0f;
        } else if (abs >= this.I) {
            this.J = ((abs * ((float) this.B)) / ((float) j)) + this.J;
        } else {
            this.J -= (abs * ((float) this.B)) / ((float) j);
            this.J = Math.max(this.J, 1.0f);
        }
        this.Z = currentTimeMillis;
        this.I = f;
        return (int) (this.J * f);
    }
}
