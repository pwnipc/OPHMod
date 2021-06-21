package com.google.android.gms.common;

import android.content.Intent;

public class GooglePlayServicesRepairableException extends Code {
    private final int iL;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.iL = i;
    }

    public int getConnectionStatusCode() {
        return this.iL;
    }
}
