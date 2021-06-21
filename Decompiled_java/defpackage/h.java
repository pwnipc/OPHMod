package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;

/* renamed from: h  reason: default package */
/* compiled from: Source */
public final class h implements Code {
    private Notification.Builder Code;

    public h(Context context, Notification notification, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
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
        this.Code = onlyAlertOnce.setAutoCancel(z3).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText((CharSequence) null).setContentInfo((CharSequence) null).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent((PendingIntent) null, (notification.flags & 128) == 0 ? false : z4).setLargeIcon((Bitmap) null).setNumber(0).setUsesChronometer(false).setPriority(0).setProgress(0, 0, false).setLocalOnly(false).setExtras((Bundle) null).setGroup((String) null).setGroupSummary(false).setSortKey((String) null);
    }

    public final void Code(l lVar) {
        Notification.Action.Builder builder = new Notification.Action.Builder(0, (CharSequence) null, (PendingIntent) null);
        if (lVar.I() != null) {
            for (RemoteInput addRemoteInput : r.Code(lVar.I())) {
                builder.addRemoteInput(addRemoteInput);
            }
        }
        if (lVar.Code() != null) {
            builder.addExtras(lVar.Code());
        }
        this.Code.addAction(builder.build());
    }

    public final Notification Code() {
        return this.Code.build();
    }
}
