package com.begal.appclone.classes;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import java.lang.Thread;

public class CrashHandler {
    public static final int CRASH_HANDLER_NOTIFICATION_ID = 1621363246;
    /* access modifiers changed from: private */
    public static final String TAG = CrashHandler.class.getSimpleName();
    /* access modifiers changed from: private */
    public boolean mAppBundle;
    /* access modifiers changed from: private */
    public Context mContext;
    private Thread.UncaughtExceptionHandler mExceptionHandler = new Thread.UncaughtExceptionHandler() {
        public void uncaughtException(Thread thread, Throwable t) {
            StringBuilder sb;
            try {
                Log.w(CrashHandler.TAG, t);
                if (CrashHandler.this.mIgnoreCrashesShowCrashMessages) {
                    String appName = Utils.getAppName(CrashHandler.this.mContext);
                    if (CrashHandler.this.mIgnoreCrashes) {
                        sb = new StringBuilder();
                        sb.append("Ignored ");
                        sb.append(appName);
                        sb.append(" crash");
                    } else {
                        sb = new StringBuilder();
                        sb.append(appName);
                        sb.append(" crashed");
                    }
                    String title = sb.toString();
                    String message = Log.getStackTraceString(t);
                    if (Build.VERSION.SDK_INT >= 28 && message.contains("You need to use a Theme.AppCompat theme")) {
                        message = "Please try enabling Change icon color > More > Round icon support.";
                    }
                    if (message.contains("android.content.res.Resources$NotFoundException")) {
                        if (CrashHandler.this.mAppBundle) {
                            message = "Please clone the standalone version of this app, not the Play Store version.";
                        } else {
                            message = "Please try enabling Change icon color > More > Round icon support.";
                        }
                    }
                    NotificationManager notificationManager = (NotificationManager) CrashHandler.this.mContext.getSystemService("notification");
                    Notification.Builder builder = new Notification.Builder(CrashHandler.this.mContext).setContentTitle(title).setContentText(message).setWhen(System.currentTimeMillis());
                    Utils.setSmallNotificationIcon(builder);
                    if (Build.VERSION.SDK_INT >= 16) {
                        builder.setStyle(new Notification.BigTextStyle().bigText(message));
                    }
                    notificationManager.notify(CrashHandler.CRASH_HANDLER_NOTIFICATION_ID, builder.getNotification());
                }
            } catch (Exception e) {
                Log.w(CrashHandler.TAG, e);
            }
            if (!CrashHandler.this.mIgnoreCrashes) {
                System.exit(0);
            }
        }
    };
    private Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public boolean mIgnoreCrashes;
    /* access modifiers changed from: private */
    public boolean mIgnoreCrashesShowCrashMessages;

    public CrashHandler(CloneSettings cloneSettings) {
        this.mIgnoreCrashes = cloneSettings.getBoolean("ignoreCrashes", false).booleanValue();
        this.mIgnoreCrashesShowCrashMessages = cloneSettings.getBoolean("ignoreCrashesShowCrashMessages", true).booleanValue();
        String str = TAG;
        Log.i(str, "CrashHandler; mIgnoreCrashes: " + this.mIgnoreCrashes + ", mIgnoreCrashesShowCrashMessages: " + this.mIgnoreCrashesShowCrashMessages);
    }

    public void install(Context context) {
        this.mContext = context;
        try {
            this.mAppBundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.begal.appclone.appBundle");
            String str = TAG;
            Log.i(str, "install; mAppBundle: " + this.mAppBundle);
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        installHandler();
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                CrashHandler.this.installHandler();
            }
        }, 5000);
    }

    /* access modifiers changed from: private */
    public void installHandler() {
        Log.i(TAG, "installHandler; ");
        try {
            Thread.setDefaultUncaughtExceptionHandler(this.mExceptionHandler);
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }
}
