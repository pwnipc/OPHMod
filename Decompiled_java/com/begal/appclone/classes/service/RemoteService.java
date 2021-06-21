package com.begal.appclone.classes.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.begal.appclone.classes.service.IRemoteService;

public class RemoteService extends Service {
    private static final String TAG = RemoteService.class.getSimpleName();
    private final IRemoteService.Stub binder = new IRemoteService.Stub() {
        public int getInterfaceVersion() {
            return 1;
        }
    };

    public void onCreate() {
        Log.i(TAG, "onCreate; ");
        super.onCreate();
    }

    public IBinder onBind(Intent intent) {
        return this.binder;
    }
}
