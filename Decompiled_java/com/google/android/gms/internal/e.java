package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;

public abstract class e extends Binder implements d {
    public static d Code(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new f(iBinder) : (d) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = false;
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                String Code = Code();
                parcel2.writeNoException();
                parcel2.writeString(Code);
                return true;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean Code2 = Code(parcel.readInt() != 0);
                parcel2.writeNoException();
                if (Code2) {
                    z = true;
                }
                parcel2.writeInt(z ? 1 : 0);
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                String Code3 = Code(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(Code3);
                return true;
            case ConnectionResult.SIGN_IN_REQUIRED:
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    z = true;
                }
                Code(readString, z);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
