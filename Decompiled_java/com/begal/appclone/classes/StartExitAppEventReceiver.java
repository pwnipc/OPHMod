package com.begal.appclone.classes;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public abstract class StartExitAppEventReceiver extends BroadcastReceiver {
    private static final String TAG = StartExitAppEventReceiver.class.getSimpleName();
    /* access modifiers changed from: private */
    public static final Set<Activity> sActivities = new HashSet();
    private static boolean sInited;

    public static void init() {
        try {
            if (!sInited) {
                Log.i(TAG, "init; ");
                new AbstractActivityContentProvider() {
                    /* access modifiers changed from: protected */
                    public void onActivityCreated(Activity activity) {
                        StartExitAppEventReceiver.sActivities.add(activity);
                    }

                    /* access modifiers changed from: protected */
                    public void onActivityDestroyed(Activity activity) {
                        StartExitAppEventReceiver.sActivities.remove(activity);
                    }
                }.onCreate();
                sInited = true;
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: protected */
    public void handleEventAction(Context context, String eventAction) {
        String str = TAG;
        Log.i(str, "handleAction; eventAction: " + eventAction);
        if ("START_APP".equals(eventAction)) {
            startApp(context);
        } else if ("EXIT_APP".equals(eventAction)) {
            exitApp();
        }
    }

    private void startApp(Context context) {
        Log.i(TAG, "startApp; ");
        try {
            Intent i = Utils.getLaunchIntent(context, context.getPackageName());
            if (i != null) {
                i.setFlags(335544320);
                context.startActivity(i);
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    private void exitApp() {
        Log.i(TAG, "exitApp; ");
        for (Activity activity : sActivities) {
            try {
                activity.finish();
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }
}
