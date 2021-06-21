package defpackage;

/* renamed from: cy  reason: default package */
/* compiled from: Source */
public final class cy {
    private int Code;

    public final synchronized void Code() {
        Code(0);
    }

    public final synchronized void Code(int i) {
        do {
            if (this.Code == 0) {
                break;
            }
            db.Code((Object) this, i);
        } while (i <= 0);
    }

    public final synchronized void I() {
        this.Code++;
    }

    public final synchronized void Z() {
        this.Code--;
        notifyAll();
    }
}
