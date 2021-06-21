package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import com.opera.mini.h4lflif4.R;
import java.util.ArrayList;

/* renamed from: Z  reason: default package */
/* compiled from: Source */
public final class Z {
    ArrayList B = new ArrayList();
    Notification C = new Notification();
    Context Code;
    CharSequence I;
    PendingIntent J;
    CharSequence Z;

    public Z(Context context) {
        this.Code = context;
        this.C.when = System.currentTimeMillis();
        this.C.audioStreamType = -1;
    }

    public final Z Code() {
        this.C.icon = R.drawable.notification_icon;
        return this;
    }

    public final Z Code(CharSequence charSequence) {
        this.I = charSequence;
        return this;
    }

    public final Z I(CharSequence charSequence) {
        this.Z = charSequence;
        return this;
    }

    public final Z Code(PendingIntent pendingIntent) {
        this.J = pendingIntent;
        return this;
    }

    public final Z I() {
        this.C.flags |= 16;
        return this;
    }

    public final Notification Z() {
        return I.Code.Code(this);
    }
}
