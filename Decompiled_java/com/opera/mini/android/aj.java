package com.opera.mini.android;

import android.content.Context;
import android.net.NetworkInfo;
import com.google.android.gms.common.ConnectionResult;
import com.opera.mini.android.events.ConnectivityChangedEvent;
import com.opera.mini.android.notifications.B;

/* compiled from: Source */
public final class aj {
    private int Code = -1;

    public aj(Context context) {
        Code(B.Z(context));
    }

    @dm
    public final void onConnectivityChanged(ConnectivityChangedEvent connectivityChangedEvent) {
        NetworkInfo networkInfo = connectivityChangedEvent.Code;
        int type = networkInfo != null ? networkInfo.getType() : -1;
        if (type != this.Code) {
            this.Code = type;
            Code(connectivityChangedEvent.Code);
        }
    }

    private static void Code(NetworkInfo networkInfo) {
        int i = -1;
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            switch (networkInfo.getType()) {
                case 0:
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                case 3:
                case ConnectionResult.SIGN_IN_REQUIRED:
                case ConnectionResult.INVALID_ACCOUNT:
                    i = 1;
                    break;
                case 1:
                    i = 6;
                    break;
                case ConnectionResult.RESOLUTION_REQUIRED:
                    i = 5;
                    break;
                case ConnectionResult.SERVICE_INVALID:
                    i = 7;
                    break;
                default:
                    i = 0;
                    break;
            }
        }
        ar.I.h();
        ar.Z.c(i);
        ar.I.Z(47);
    }
}
