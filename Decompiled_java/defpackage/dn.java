package defpackage;

import android.os.Looper;

/* renamed from: dn  reason: default package */
/* compiled from: Source */
public interface dn {
    public static final dn Code = new dn() {
        public final void Code(df dfVar) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("Event bus " + dfVar + " accessed from non-main thread " + Looper.myLooper());
            }
        }
    };

    void Code(df dfVar);
}
