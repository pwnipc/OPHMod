package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;

/* renamed from: d  reason: default package */
/* compiled from: Source */
final class d extends J {
    d() {
    }

    public final Notification Code(Z z) {
        boolean z2 = true;
        Context context = z.Code;
        Notification notification = z.C;
        Notification.Builder deleteIntent = new Notification.Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, (RemoteViews) null).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(z.I).setContentText(z.Z).setContentInfo((CharSequence) null).setContentIntent(z.J).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 128) == 0) {
            z2 = false;
        }
        return deleteIntent.setFullScreenIntent((PendingIntent) null, z2).setLargeIcon((Bitmap) null).setNumber(0).setProgress(0, 0, false).getNotification();
    }
}
