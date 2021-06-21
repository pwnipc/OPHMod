package com.begal.appclone.classes;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Set;

public abstract class AbstractActivityContentProvider extends AbstractContentProvider {
    /* access modifiers changed from: private */
    public static final String TAG = AbstractActivityContentProvider.class.getSimpleName();
    /* access modifiers changed from: private */
    public Set<Activity> mActivities = new HashSet();
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public Runnable mRunnable = new Runnable() {
        public void run() {
            try {
                if (!AbstractActivityContentProvider.this.mActivities.isEmpty()) {
                    for (Activity activity : AbstractActivityContentProvider.this.mActivities) {
                        try {
                            AbstractActivityContentProvider.this.onActivityTimer(activity);
                        } catch (Exception e) {
                            Log.w(AbstractActivityContentProvider.TAG, e);
                        }
                    }
                    AbstractActivityContentProvider.this.mHandler.postDelayed(this, (long) AbstractActivityContentProvider.this.getActivityTimerDelayMillis());
                }
            } catch (Exception e2) {
                Log.w(AbstractActivityContentProvider.TAG, e2);
            }
        }
    };

    /* access modifiers changed from: protected */
    public int getActivityTimerDelayMillis() {
        return 3000;
    }

    /* access modifiers changed from: protected */
    public boolean onInit(Application application) {
        return true;
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityStarted(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityResumed(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityTimer(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityPaused(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityStopped(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void onActivityDestroyed(Activity activity) {
    }

    public boolean onCreate() {
        Application application = Utils.getApplication();
        if (application == null || !onInit(application)) {
            return true;
        }
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                AbstractActivityContentProvider.this.onActivityCreated(activity);
            }

            public void onActivityStarted(Activity activity) {
                AbstractActivityContentProvider.this.onActivityStarted(activity);
            }

            public void onActivityResumed(Activity activity) {
                AbstractActivityContentProvider.this.onActivityResumed(activity);
                AbstractActivityContentProvider.this.mActivities.add(activity);
                AbstractActivityContentProvider.this.mHandler.removeCallbacksAndMessages((Object) null);
                AbstractActivityContentProvider.this.mHandler.post(AbstractActivityContentProvider.this.mRunnable);
            }

            public void onActivityPaused(Activity activity) {
                AbstractActivityContentProvider.this.onActivityPaused(activity);
                AbstractActivityContentProvider.this.mActivities.remove(activity);
            }

            public void onActivityStopped(Activity activity) {
                AbstractActivityContentProvider.this.onActivityStopped(activity);
            }

            public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
            }

            public void onActivityDestroyed(Activity activity) {
                AbstractActivityContentProvider.this.onActivityDestroyed(activity);
            }
        });
        return true;
    }

    /* access modifiers changed from: protected */
    public View getRootView(Activity activity) {
        return activity.getWindow().getDecorView().getRootView();
    }
}
