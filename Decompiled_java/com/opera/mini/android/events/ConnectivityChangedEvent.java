package com.opera.mini.android.events;

import android.net.NetworkInfo;

/* compiled from: Source */
public class ConnectivityChangedEvent {
    public NetworkInfo Code;

    public ConnectivityChangedEvent(NetworkInfo networkInfo) {
        this.Code = networkInfo;
    }
}
