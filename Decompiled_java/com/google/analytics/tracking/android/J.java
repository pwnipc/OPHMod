package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

/* compiled from: Source */
final class J implements Z {
    /* access modifiers changed from: private */
    public ab B;
    /* access modifiers changed from: private */
    public ServiceConnection Code;
    /* access modifiers changed from: private */
    public C I;
    /* access modifiers changed from: private */
    public Context J;
    /* access modifiers changed from: private */
    public a Z;

    public J(Context context, C c, a aVar) {
        this.J = context;
        if (c == null) {
            throw new IllegalArgumentException("onConnectedListener cannot be null");
        }
        this.I = c;
        if (aVar == null) {
            throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
        }
        this.Z = aVar;
    }

    public final void I() {
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.putExtra("app_package_name", this.J.getPackageName());
        if (this.Code != null) {
            af.I("Calling connect() while still connected, missing disconnect().");
            return;
        }
        this.Code = new B(this);
        boolean bindService = this.J.bindService(intent, this.Code, 129);
        af.J("connect: bindService returned " + bindService + " for " + intent);
        if (!bindService) {
            this.Code = null;
            this.Z.Code(1);
        }
    }

    public final void Z() {
        this.B = null;
        if (this.Code != null) {
            try {
                this.J.unbindService(this.Code);
            } catch (IllegalArgumentException | IllegalStateException e) {
            }
            this.Code = null;
            this.I.I();
        }
    }

    public final void Code(Map map, long j, String str, List list) {
        try {
            J().Code(map, j, str, list);
        } catch (RemoteException e) {
            af.I("sendHit failed: " + e);
        }
    }

    public final void Code() {
        try {
            J().Code();
        } catch (RemoteException e) {
            af.I("clear hits failed: " + e);
        }
    }

    private ab J() {
        if (this.B != null) {
            return this.B;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
}
