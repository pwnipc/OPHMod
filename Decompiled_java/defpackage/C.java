package defpackage;

import android.app.Notification;

/* renamed from: C  reason: default package */
/* compiled from: Source */
final class C extends J {
    C() {
    }

    public final Notification Code(Z z) {
        Notification notification = z.C;
        notification.setLatestEventInfo(z.Code, z.I, z.Z, z.J);
        notification.setLatestEventInfo(z.Code, z.I, z.Z, z.J);
        notification.fullScreenIntent = null;
        return notification;
    }
}
