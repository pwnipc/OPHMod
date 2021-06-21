package defpackage;

/* renamed from: bi  reason: default package */
/* compiled from: Source */
public class bi {
    private cc[] Code = new cc[1];

    /* access modifiers changed from: package-private */
    public cc Code(int i) {
        return this.Code[i];
    }

    /* access modifiers changed from: package-private */
    public int Code() {
        return this.Code.length;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, cc ccVar) {
        if (i >= this.Code.length) {
            cc[] ccVarArr = new cc[(i + 1)];
            System.arraycopy(this.Code, 0, ccVarArr, 0, this.Code.length);
            this.Code = ccVarArr;
        }
        if (this.Code[i] != ccVar) {
            cc ccVar2 = this.Code[i];
            this.Code[i] = ccVar;
            if (ccVar2 != null) {
                ccVar2.I((bi) null, 0);
            }
            ccVar.I(this, i);
        }
    }

    /* access modifiers changed from: package-private */
    public final void I(int i) {
        if (this.Code[i] != null) {
            cc ccVar = this.Code[i];
            this.Code[i] = null;
            ccVar.I((bi) null, 0);
        }
    }
}
