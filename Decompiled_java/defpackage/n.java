package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

/* renamed from: n  reason: default package */
/* compiled from: Source */
public final class n implements Code {
    private Notification.Builder Code;
    private final Bundle I;
    private List Z = new ArrayList();

    public n(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        Notification.Builder lights = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, (RemoteViews) null).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        if ((notification.flags & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z);
        if ((notification.flags & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z2);
        if ((notification.flags & 16) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.Code = onlyAlertOnce.setAutoCancel(z3).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText((CharSequence) null).setContentInfo((CharSequence) null).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent((PendingIntent) null, (notification.flags & 128) == 0 ? false : z4).setLargeIcon((Bitmap) null).setNumber(0).setUsesChronometer(false).setPriority(0).setProgress(0, 0, false);
        this.I = new Bundle();
    }

    public final void Code(l lVar) {
        this.Z.add(m.Code(this.Code, lVar));
    }

    public final Notification Code() {
        Notification build = this.Code.build();
        Bundle Code2 = m.Code(build);
        Bundle bundle = new Bundle(this.I);
        for (String str : this.I.keySet()) {
            if (Code2.containsKey(str)) {
                bundle.remove(str);
            }
        }
        Code2.putAll(bundle);
        SparseArray Code3 = m.Code(this.Z);
        if (Code3 != null) {
            m.Code(build).putSparseParcelableArray("android.support.actionExtras", Code3);
        }
        return build;
    }
}
