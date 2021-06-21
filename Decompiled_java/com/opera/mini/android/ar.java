package com.opera.mini.android;

import android.net.NetworkInfo;
import com.opera.mini.android.events.ConnectivityChangedEvent;

/* compiled from: Source */
final class ar {
    ar() {
    }

    @dm
    public final void onConnectivityChanged(ConnectivityChangedEvent connectivityChangedEvent) {
        NetworkInfo networkInfo = connectivityChangedEvent.Code;
        String str = "DISCONNECTED";
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            str = networkInfo.getTypeName();
        }
        ap.CONNECTIVITY.Code(str);
    }
}
