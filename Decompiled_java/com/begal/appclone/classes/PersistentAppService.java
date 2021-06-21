package com.begal.appclone.classes;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class PersistentAppService extends Service {
    private static final String TAG = PersistentAppService.class.getSimpleName();

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i(TAG, "onStartCommand; ");
        return 1;
    }
}
