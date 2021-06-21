package com.begal.appclone.classes;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public abstract class OnAppExitListener extends AbstractActivityContentProvider {
    private static final String TAG = OnAppExitListener.class.getSimpleName();
    private Set<Activity> mActivities = new HashSet();
    private Handler mHandler = new Handler();

    /* access modifiers changed from: protected */
    public abstract void onAppExit(Context context);

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.i(str, "onActivityCreated; activity: " + activity);
        this.mHandler.removeCallbacksAndMessages((Object) null);
        this.mActivities.add(activity);
    }

    /* access modifiers changed from: protected */
    public void onActivityDestroyed(Activity activity) {
        String str = TAG;
        Log.i(str, "onActivityDestroyed; activity: " + activity);
        this.mActivities.remove(activity);
        if (this.mActivities.isEmpty()) {
            final Context context = activity.getApplicationContext();
            if ("ch.iAgentur.i20Mio.MainActivity".equals(activity.getClass().getName())) {
                onAppExit(context);
            } else {
                this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        OnAppExitListener.this.onAppExit(context);
                    }
                }, 1000);
            }
        }
    }
}
