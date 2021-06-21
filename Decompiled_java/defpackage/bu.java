package defpackage;

/* renamed from: bu  reason: default package */
/* compiled from: Source */
public abstract class bu {
    int Code;

    public abstract br B();

    public abstract int I();

    public abstract int J();

    public abstract int Z();

    public final void Code() {
        this.Code = 0;
    }

    public bu Code(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z) {
        if (i3 != i5 || i4 != i6) {
            int[] Code2 = bv.Code(new int[(i3 * i4)], i3, i4, i5, i6, i7, i8, i9, i10, i11, z);
            bv bvVar = null;
            return bvVar.Code(Code2, Code2.length / i6, i6, true, true);
        } else if (i3 == I() && i4 == Z()) {
            return this;
        } else {
            return Code(i, i2, i3, i4, i3, i4, 0, 0, 0, 0, 0, true);
        }
    }
}
