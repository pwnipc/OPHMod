package com.begal.appclone.classes;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.Collection;

public class ApplicationWrapper extends Application {
    /* access modifiers changed from: private */
    public static final String TAG = ApplicationWrapper.class.getSimpleName();
    /* access modifiers changed from: private */
    public Application mBaseApp;

    public Context getApplicationContext() {
        return this.mBaseApp != null ? this.mBaseApp : this;
    }

    public void onCreate() {
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(getPackageName(), 128);
            boolean sandboxExternalStorage = applicationInfo.metaData.getBoolean("com.begal.appclone.sandboxExternalStorage");
            String str = TAG;
            Log.i(str, "onCreate; sandboxExternalStorage: " + sandboxExternalStorage);
            if (sandboxExternalStorage) {
                Object o = DefaultProvider.ni(this, "com.begal.appclone.classes.secondary.SandboxExternalStorage");
                o.getClass().getMethod("init", new Class[]{Context.class}).invoke(o, new Object[]{this});
            }
            this.mBaseApp = createApplication(applicationInfo);
            final Field baseField = ContextWrapper.class.getDeclaredField("mBase");
            baseField.setAccessible(true);
            Context baseContext = new ContextWrapper(getBaseContext()) {
                public Context getApplicationContext() {
                    return ApplicationWrapper.this.mBaseApp;
                }
            };
            baseField.set(this.mBaseApp, baseContext);
            super.onCreate();
            final Field componentCallbacksField = Application.class.getDeclaredField("mComponentCallbacks");
            componentCallbacksField.setAccessible(true);
            registerComponentCallbacks(new ComponentCallbacks() {
                public void onConfigurationChanged(Configuration newConfig) {
                    try {
                        for (ComponentCallbacks componentCallbacks : (Collection) componentCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            componentCallbacks.onConfigurationChanged(newConfig);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onLowMemory() {
                    try {
                        for (ComponentCallbacks callbacks : (Collection) componentCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onLowMemory();
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }
            });
            final Field activityLifecycleCallbacksField = Application.class.getDeclaredField("mActivityLifecycleCallbacks");
            activityLifecycleCallbacksField.setAccessible(true);
            final Context finalBaseContext = baseContext;
            registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityCreated(activity, savedInstanceState);
                        }
                        baseField.set(activity, finalBaseContext);
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivityStarted(Activity activity) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityStarted(activity);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivityResumed(Activity activity) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityResumed(activity);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivityPaused(Activity activity) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityPaused(activity);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivityStopped(Activity activity) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityStopped(activity);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivitySaveInstanceState(activity, outState);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }

                public void onActivityDestroyed(Activity activity) {
                    try {
                        for (Application.ActivityLifecycleCallbacks callbacks : (Collection) activityLifecycleCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                            callbacks.onActivityDestroyed(activity);
                        }
                    } catch (Exception e) {
                        Log.w(ApplicationWrapper.TAG, e);
                    }
                }
            });
            if (Build.VERSION.SDK_INT >= 18) {
                final Field assistCallbacksField = Application.class.getDeclaredField("mAssistCallbacks");
                assistCallbacksField.setAccessible(true);
                registerOnProvideAssistDataListener(new Application.OnProvideAssistDataListener() {
                    @TargetApi(18)
                    public void onProvideAssistData(Activity activity, Bundle data) {
                        try {
                            for (Application.OnProvideAssistDataListener listener : (Collection) assistCallbacksField.get(ApplicationWrapper.this.mBaseApp)) {
                                listener.onProvideAssistData(activity, data);
                            }
                        } catch (Exception e) {
                            Log.w(ApplicationWrapper.TAG, e);
                        }
                    }
                });
            }
            this.mBaseApp.onCreate();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private Application createApplication(ApplicationInfo applicationInfo) throws Exception {
        String applicationClassName = applicationInfo.metaData.getString("com.begal.appclone.applicationClassName", "android.app.Application");
        String str = TAG;
        Log.i(str, "createApplication; applicationClassName: " + applicationClassName);
        return (Application) Class.forName(applicationClassName).newInstance();
    }

    public void onTerminate() {
        Log.i(TAG, "onTerminate; ");
        super.onTerminate();
        this.mBaseApp.onTerminate();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        String str = TAG;
        Log.i(str, "onConfigurationChanged; newConfig.locale: " + newConfig.locale);
        super.onConfigurationChanged(newConfig);
        this.mBaseApp.onConfigurationChanged(newConfig);
    }

    public void onLowMemory() {
        Log.i(TAG, "onLowMemory; ");
        super.onLowMemory();
        this.mBaseApp.onLowMemory();
    }

    public void onTrimMemory(int level) {
        String str = TAG;
        Log.i(str, "onTrimMemory; level: " + level);
        super.onTrimMemory(level);
        this.mBaseApp.onTrimMemory(level);
    }
}
