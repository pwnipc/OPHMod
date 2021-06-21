package com.opera.mini.android.notifications;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.opera.mini.android.Browser;

/* compiled from: Source */
public final class q {
    private static q Code;
    private Context I;
    private NotificationManager Z;

    public static q Code(Context context) {
        if (Code == null) {
            Code = new q(context);
        }
        return Code;
    }

    public static boolean Code(Intent intent) {
        String action = intent.getAction();
        if (action == null || !action.startsWith("com.opera.mini.android.ACTION_USERNOTIFICATION:")) {
            return false;
        }
        try {
            if (Integer.parseInt(action.split(":")[1]) != 0) {
                return true;
            }
            Browser.I.Code("opera:downloads");
            return true;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    public static Notification Code(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, Browser.class);
        intent.setAction(str);
        return new Z(context).Code((CharSequence) str2).I(str3).Code().I().Code(PendingIntent.getActivity(context, 0, intent, 1073741824)).Z();
    }

    private q(Context context) {
        this.I = context;
        this.Z = (NotificationManager) context.getSystemService("notification");
    }

    public final void Code(int i, int i2, String str, String str2) {
        this.Z.notify(i2, Code(this.I, "com.opera.mini.android.ACTION_USERNOTIFICATION:" + i, str, str2));
    }
}
