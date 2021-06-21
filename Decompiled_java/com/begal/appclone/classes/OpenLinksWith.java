package com.begal.appclone.classes;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.begal.appclone.classes.util.IActivityManagerHook;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class OpenLinksWith {
    /* access modifiers changed from: private */
    public static final String TAG = OpenLinksWith.class.getSimpleName();
    /* access modifiers changed from: private */
    public String mPackageName;

    public OpenLinksWith(CloneSettings cloneSettings) {
        this.mPackageName = cloneSettings.getString("openLinksWith", (String) null);
    }

    public void init(final Context context) {
        if (!TextUtils.isEmpty(this.mPackageName)) {
            if ("SELF".equals(this.mPackageName)) {
                this.mPackageName = context.getPackageName();
            }
            String str = TAG;
            Log.i(str, "init; mPackageName: " + this.mPackageName);
            try {
                new IActivityManagerHook() {
                    /* access modifiers changed from: protected */
                    public InvocationHandler getInvocationHandler(final Object originalActivityManager) {
                        return new InvocationHandler() {
                            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                                Intent intent;
                                Uri data;
                                String scheme;
                                try {
                                    if ("startActivity".equals(method.getName()) && (intent = args[2]) != null && "android.intent.action.VIEW".equals(intent.getAction()) && (data = intent.getData()) != null && (scheme = data.getScheme()) != null && scheme.startsWith("http") && OpenLinksWith.isApplicationInstalled(context, OpenLinksWith.this.mPackageName)) {
                                        intent.setPackage(OpenLinksWith.this.mPackageName);
                                    }
                                } catch (Exception e) {
                                    Log.w(OpenLinksWith.TAG, e);
                                }
                                return method.invoke(originalActivityManager, args);
                            }
                        };
                    }
                }.install();
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }

    /* access modifiers changed from: private */
    public static boolean isApplicationInstalled(Context context, String packageName) {
        try {
            PackageManager pm = context.getPackageManager();
            if (pm == null) {
                return false;
            }
            pm.getPackageInfo(packageName, 128);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
