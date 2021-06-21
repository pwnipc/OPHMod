package com.begal.appclone.classes;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import java.io.File;

public class ClearCacheOnExitProvider extends OnAppExitListener {
    private static final String TAG = ClearCacheOnExitProvider.class.getSimpleName();

    /* access modifiers changed from: protected */
    public boolean onInit(Application application) {
        String str = TAG;
        Log.i(str, "onInit; application: " + application);
        try {
            application.startService(new Intent(application, ClearCacheOnExitService.class));
            return true;
        } catch (Exception e) {
            Log.w(TAG, e);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        clearCache(context);
    }

    public static synchronized void clearCache(Context context) {
        File[] externalCacheDirs;
        synchronized (ClearCacheOnExitProvider.class) {
            try {
                new WebView(context).clearCache(true);
                context.deleteDatabase("webview.db");
                context.deleteDatabase("webviewCache.db");
            } catch (Throwable t) {
                Log.w(TAG, t);
            }
            try {
                File cacheDir = context.getCacheDir();
                Log.i(TAG, "clearCache; cacheDir: " + cacheDir);
                Utils.deleteDirectory(cacheDir);
                if (Build.VERSION.SDK_INT >= 19 && (externalCacheDirs = context.getExternalCacheDirs()) != null) {
                    for (File externalCacheDir : externalCacheDirs) {
                        Log.i(TAG, "clearCache; externalCacheDir: " + externalCacheDir);
                        Utils.deleteDirectory(externalCacheDir);
                    }
                }
            } catch (Throwable t2) {
                Log.w(TAG, t2);
            }
        }
        return;
    }
}
