package com.opera.mini.android;

import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: Source */
public abstract class ai {
    public static boolean Code(AsyncTask asyncTask, Object... objArr) {
        try {
            if (Build.VERSION.SDK_INT < 11) {
                asyncTask.execute(objArr);
            } else {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, objArr);
            }
            return true;
        } catch (RejectedExecutionException e) {
            return false;
        }
    }
}
