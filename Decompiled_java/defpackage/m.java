package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.List;

/* renamed from: m  reason: default package */
/* compiled from: Source */
final class m {
    private static final Object Code = new Object();
    private static Field I;
    private static boolean Z;

    public static SparseArray Code(List list) {
        SparseArray sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = (Bundle) list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle Code(Notification notification) {
        synchronized (Code) {
            if (Z) {
                return null;
            }
            try {
                if (I == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                        Z = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    I = declaredField;
                }
                Bundle bundle = (Bundle) I.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    I.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e("NotificationCompat", "Unable to access notification extras", e);
                Z = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e("NotificationCompat", "Unable to access notification extras", e2);
                Z = true;
                return null;
            }
        }
    }

    public static Bundle Code(Notification.Builder builder, l lVar) {
        builder.addAction(0, (CharSequence) null, (PendingIntent) null);
        Bundle bundle = new Bundle(lVar.Code());
        if (lVar.I() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", u.Code(lVar.I()));
        }
        return bundle;
    }
}
