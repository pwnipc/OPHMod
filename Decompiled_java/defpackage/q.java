package defpackage;

import android.os.Build;
import android.os.Bundle;

/* renamed from: q  reason: default package */
/* compiled from: Source */
public final class q extends t {
    private final Bundle B;
    private final String Code;
    private final CharSequence I;
    private final boolean J;
    private final CharSequence[] Z;

    public final String Code() {
        return this.Code;
    }

    public final CharSequence I() {
        return this.I;
    }

    public final CharSequence[] Z() {
        return this.Z;
    }

    public final boolean J() {
        return this.J;
    }

    public final Bundle B() {
        return this.B;
    }

    static {
        if (Build.VERSION.SDK_INT < 20) {
            int i = Build.VERSION.SDK_INT;
        }
    }
}
