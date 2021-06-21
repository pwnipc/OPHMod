package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
import java.util.Map;

/* renamed from: ad  reason: default package */
/* compiled from: Source */
final class ad implements ab {
    private IBinder Code;

    ad(IBinder iBinder) {
        this.Code = iBinder;
    }

    public final IBinder asBinder() {
        return this.Code;
    }

    public final void Code(Map map, long j, String str, List list) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
            obtain.writeMap(map);
            obtain.writeLong(j);
            obtain.writeString(str);
            obtain.writeTypedList(list);
            this.Code.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final void Code() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.analytics.internal.IAnalyticsService");
            this.Code.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
