package com.begal.appclone.classes.util;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

public abstract class IActivityManagerHook {
    private static final String TAG = IActivityManagerHook.class.getSimpleName();

    /* access modifiers changed from: protected */
    public abstract InvocationHandler getInvocationHandler(Object obj);

    public void install() throws Exception {
        Object singleton;
        Class<?> activityManagerNativeClass = Class.forName("android.app.ActivityManagerNative");
        Object originalActivityManager = activityManagerNativeClass.getMethod("getDefault", new Class[0]).invoke((Object) null, new Object[0]);
        String str = TAG;
        Log.i(str, "install; originalActivityManager: " + originalActivityManager);
        InvocationHandler invocationHandler = getInvocationHandler(originalActivityManager);
        Class<?> iActivityManagerClass = Class.forName("android.app.IActivityManager");
        Object proxy = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{iActivityManagerClass}, invocationHandler);
        try {
            Field defaultField = activityManagerNativeClass.getDeclaredField("gDefault");
            defaultField.setAccessible(true);
            singleton = defaultField.get((Object) null);
        } catch (Exception e) {
            Field f = Class.forName("android.app.ActivityManager").getDeclaredField("IActivityManagerSingleton");
            f.setAccessible(true);
            singleton = f.get((Object) null);
        }
        Field instanceField = Class.forName("android.util.Singleton").getDeclaredField("mInstance");
        instanceField.setAccessible(true);
        instanceField.set(singleton, proxy);
    }
}
