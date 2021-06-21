package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;

/* renamed from: ac  reason: default package */
/* compiled from: Source */
public abstract class ac extends Binder implements ab {
    public static ab Code(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
        if (queryLocalInterface == null || !(queryLocalInterface instanceof ab)) {
            return new ad(iBinder);
        }
        return (ab) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                Code(parcel.readHashMap(getClass().getClassLoader()), parcel.readLong(), parcel.readString(), parcel.createTypedArrayList(aa.Code));
                parcel2.writeNoException();
                return true;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                parcel.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                Code();
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
