package com.begal.appclone.classes.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

public abstract class IPackageManagerHook {
    private static final String TAG = IPackageManagerHook.class.getSimpleName();

    /* access modifiers changed from: protected */
    public abstract InvocationHandler getInvocationHandler(Object obj);

    public void install(Context context) throws Exception {
        PackageManager pm = context.getApplicationContext().getPackageManager();
        Field f = pm.getClass().getDeclaredField("mPM");
        f.setAccessible(true);
        Object originalPackageManager = f.get(pm);
        String str = TAG;
        Log.i(str, "install; originalPackageManager: " + originalPackageManager);
        InvocationHandler invocationHandler = getInvocationHandler(originalPackageManager);
        Class<?> iPackageManagerClass = Class.forName("android.content.pm.IPackageManager");
        Object proxy = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{iPackageManagerClass}, invocationHandler);
        f.set(pm, proxy);
        Field f2 = Class.forName("android.app.ActivityThread").getDeclaredField("sPackageManager");
        f2.setAccessible(true);
        f2.set((Object) null, proxy);
    }
}
