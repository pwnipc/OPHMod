package com.begal.appclone.classes;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.service.quicksettings.TileService;
import android.util.Log;
import android.widget.Toast;

@TargetApi(24)
public class LaunchTileService extends TileService {
    private static final String TAG = LaunchTileService.class.getSimpleName();

    public void onStartListening() {
        Log.i(TAG, "onStartListening; ");
    }

    public void onClick() {
        Log.i(TAG, "onClick; ");
        Context context = getApplicationContext();
        try {
            Intent i = Utils.getLaunchIntent(context, context.getPackageName());
            i.addFlags(268435456);
            startActivity(i);
        } catch (Exception e) {
            Log.w(TAG, e);
            Toast.makeText(context, "Failed to launch app.", 0).show();
        }
    }
}
