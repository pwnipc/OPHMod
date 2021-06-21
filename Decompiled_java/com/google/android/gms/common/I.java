package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public final class I implements ServiceConnection {
    private boolean Code = false;
    private final BlockingQueue I = new LinkedBlockingQueue();

    public final IBinder Code() {
        if (this.Code) {
            throw new IllegalStateException();
        }
        this.Code = true;
        return (IBinder) this.I.take();
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.I.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
