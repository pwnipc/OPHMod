package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.InputStream;

/* renamed from: cf  reason: default package */
/* compiled from: Source */
class cf extends ce {
    private String B;
    private boolean C;
    private String J;
    protected ct Z;
    private int a;
    private int b;
    private int c;

    cf(String str, int i, String str2, String str3, boolean z, int i2, int i3, int i4) {
        super(str, i);
        this.J = str2;
        this.B = str3;
        this.C = z;
        this.a = i3;
        this.c = i2;
        this.b = i4;
    }

    cf(String str, int i, int i2, String str2, boolean z, int i3, int i4) {
        this(str, i, I(i2), str2, z, i3, i4, 0);
    }

    public void run() {
        db.B();
        super.run();
    }

    /* access modifiers changed from: protected */
    public final void I() {
        int Code;
        Object[] objArr = new Object[124];
        int[] iArr = new int[124];
        Code(objArr, iArr);
        if (this.b != 0) {
            Code = this.b;
        } else {
            Code = cz.Code(this.Code, (String) null);
        }
        this.Z = cs.Code(objArr, iArr, Code, true);
        try {
            if (!this.I) {
                I(new DataInputStream(this.Z));
            }
        } finally {
            db.Code((InputStream) this.Z);
        }
    }

    /* access modifiers changed from: protected */
    public void Code(Object[] objArr, int[] iArr) {
        int i = 1;
        if (this.J == null) {
            this.J = "";
        }
        objArr[64] = this.J.getBytes();
        iArr[65] = this.C ? 1 : 0;
        if (this.B != null) {
            i = 3;
        }
        iArr[29] = i;
        objArr[42] = this.B;
        iArr[37] = this.a;
        objArr[53] = this.Code;
        iArr[93] = this.c;
        objArr[97] = ar.Code.am();
    }

    /* access modifiers changed from: protected */
    public void I(DataInputStream dataInputStream) {
        ar.I.h();
        if (this.I) {
            ar.I.i();
            return;
        }
        ar.Z.c(-1);
        ar.Z.b(0);
        ar.Z.b(0);
        Code(43);
        Code(dataInputStream);
    }

    /* access modifiers changed from: protected */
    public final int Code(Exception exc) {
        return (this.Z == null || !this.Z.k()) ? super.Code(exc) : this.Z.m();
    }

    /* access modifiers changed from: protected */
    public final String I(Exception exc) {
        if (this.Z != null && this.Z.k()) {
            switch (this.Z.m()) {
                case 0:
                    return "Unknown error";
                case 1:
                    return "Key expired";
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                    return "Timeout";
            }
        }
        return super.I(exc);
    }
}
