package com.begal.appclone.classes;

import android.app.Activity;
import android.util.Log;
import com.begal.appclone.classes.util.IActivityManagerHook;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class BackKeyHandler extends AbstractActivityContentProvider {
    /* access modifiers changed from: private */
    public static final String TAG = BackKeyHandler.class.getSimpleName();
    /* access modifiers changed from: private */
    public Map<Object, Activity> mActivities = new WeakHashMap();
    /* access modifiers changed from: private */
    public List<Object> mActivityTokens = new ArrayList();

    /* access modifiers changed from: protected */
    public abstract boolean handleBackPressed(Activity activity, Object obj);

    public boolean onCreate() {
        boolean res = super.onCreate();
        if (res) {
            try {
                new IActivityManagerHook() {
                    /* access modifiers changed from: protected */
                    public InvocationHandler getInvocationHandler(final Object originalActivityManager) {
                        return new InvocationHandler() {
                            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                                if ("finishActivity".equals(method.getName()) || "moveActivityTaskToBack".equals(method.getName())) {
                                    Log.i(BackKeyHandler.TAG, "invoke; finishActivity/moveActivityTaskToBack; ");
                                    Object token = args[0];
                                    String access$000 = BackKeyHandler.TAG;
                                    Log.i(access$000, "invoke; token: " + token + ", mActivityTokens: " + BackKeyHandler.this.mActivityTokens);
                                    if (BackKeyHandler.this.mActivityTokens.isEmpty() || BackKeyHandler.this.mActivityTokens.get(0) != token) {
                                        BackKeyHandler.this.removeToken(token);
                                    } else if (!"moveActivityTaskToBack".equals(method.getName()) && !Log.getStackTraceString(new Exception()).contains("onBackPressed")) {
                                        Log.i(BackKeyHandler.TAG, "invoke; no onBackPressed");
                                    } else if (!BackKeyHandler.this.handleBackPressed((Activity) BackKeyHandler.this.mActivities.get(token), token)) {
                                        return false;
                                    }
                                }
                                return method.invoke(originalActivityManager, args);
                            }
                        };
                    }
                }.install();
                Log.i(TAG, "onCreate; IActivityManagerHook installed");
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
        return res;
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        int flags = activity.getIntent().getFlags();
        if ((268435456 & flags) != 0) {
            Log.i(TAG, "onActivityCreated; new task");
            this.mActivityTokens.clear();
        }
        Object token = getActivityToken(activity);
        if (!this.mActivityTokens.contains(token)) {
            this.mActivityTokens.add(token);
            this.mActivities.put(token, activity);
        }
        String str = TAG;
        Log.i(str, "onActivityCreated; activity: " + activity + ", flags: " + flags + ", mActivityTokens: " + this.mActivityTokens);
    }

    /* access modifiers changed from: protected */
    public void onActivityDestroyed(Activity activity) {
        super.onActivityDestroyed(activity);
        removeToken(getActivityToken(activity));
    }

    /* access modifiers changed from: private */
    public void removeToken(Object token) {
        do {
        } while (this.mActivityTokens.remove(token));
        this.mActivities.remove(token);
        String str = TAG;
        Log.i(str, "removeToken; mActivityTokens: " + this.mActivityTokens);
    }

    private static Object getActivityToken(Activity activity) {
        try {
            Field f = Activity.class.getDeclaredField("mToken");
            f.setAccessible(true);
            return f.get(activity);
        } catch (Exception e) {
            Log.w(TAG, e);
            return "";
        }
    }
}
