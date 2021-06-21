package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

/* compiled from: Source */
final class B implements ServiceConnection {
    private /* synthetic */ J Code;

    B(J j) {
        this.Code = j;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        af.Code("service connected, binder: " + iBinder);
        try {
            if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(iBinder.getInterfaceDescriptor())) {
                af.Code("bound to service");
                ab unused = this.Code.B = ac.Code(iBinder);
                this.Code.I.Code();
                return;
            }
        } catch (RemoteException e) {
        }
        this.Code.J.unbindService(this);
        ServiceConnection unused2 = this.Code.Code = null;
        this.Code.Z.Code(2);
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        af.Code("service disconnected: " + componentName);
        ServiceConnection unused = this.Code.Code = null;
        this.Code.I.I();
    }
}
