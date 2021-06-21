package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DeviceAdminReceiver;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

@SuppressLint({"Registered"})
public class DisableCameras extends OnAppExitListener {
    private static final String ACTION_ENABLE_CAMERAS = "com.begal.appclone.action.ENABLE_CAMERAS";
    private static final int NOTIFICATION_ID = 556711456;
    /* access modifiers changed from: private */
    public static final String TAG = DisableCameras.class.getSimpleName();

    public void install() {
        Log.i(TAG, "install; ");
        try {
            onCreate();
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        maybeEnableDeviceAdmin(activity);
        disableCameras(activity);
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        enableCameras(context);
    }

    public void maybeEnableDeviceAdmin(Activity activity) {
        Log.i(TAG, "maybeEnableDeviceAdmin; ");
        try {
            DevicePolicyManager dpm = (DevicePolicyManager) activity.getSystemService("device_policy");
            if (dpm != null) {
                ComponentName deviceAdmin = new ComponentName(activity, MyDeviceAdminReceiver.class);
                if (!dpm.isAdminActive(deviceAdmin)) {
                    Intent i = new Intent("android.app.action.ADD_DEVICE_ADMIN");
                    i.putExtra("android.app.extra.DEVICE_ADMIN", deviceAdmin);
                    activity.startActivity(i);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: private */
    public static void disableCameras(Context context) {
        Log.i(TAG, "disableCameras; ");
        try {
            DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService("device_policy");
            if (dpm != null) {
                ComponentName deviceAdmin = new ComponentName(context, MyDeviceAdminReceiver.class);
                if (dpm.isAdminActive(deviceAdmin) && !dpm.getCameraDisabled(deviceAdmin)) {
                    dpm.setCameraDisabled(deviceAdmin, true);
                    Toast.makeText(context, Utils.getAppClonerResourceText(context, "disable_cameras_cameras_disabled_message", "Cameras disabled."), 1).show();
                    showNotification(context);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: private */
    public static void enableCameras(Context context) {
        Log.i(TAG, "enableCameras; ");
        try {
            DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService("device_policy");
            if (dpm != null) {
                ComponentName deviceAdmin = new ComponentName(context, MyDeviceAdminReceiver.class);
                if (dpm.getCameraDisabled(deviceAdmin)) {
                    dpm.setCameraDisabled(deviceAdmin, false);
                    Toast.makeText(context, Utils.getAppClonerResourceText(context, "disable_cameras_cameras_enabled_message", "Cameras enabled."), 1).show();
                    hideNotification(context);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    public static class MyDeviceAdminReceiver extends DeviceAdminReceiver {
        public void onEnabled(Context context, Intent intent) {
            Log.i(DisableCameras.TAG, "onEnabled; ");
            DisableCameras.disableCameras(context);
        }
    }

    private static void showNotification(Context context) {
        Log.i(TAG, "showNotification; ");
        hideNotification(context);
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                CharSequence title = Utils.getAppClonerResourceText(context, "disable_cameras_cameras_disabled_message", "Cameras disabled.");
                CharSequence message = Utils.getAppClonerResourceText(context, "disable_cameras_touch_to_enable_message", "Touch to enable cameras.");
                Intent i = new Intent(ACTION_ENABLE_CAMERAS);
                i.setPackage(context.getPackageName());
                Notification.Builder builder = new Notification.Builder(context).setContentTitle(title).setContentText(message).setContentIntent(PendingIntent.getBroadcast(context, 0, i, 0)).setWhen(0);
                Utils.setSmallNotificationIcon(builder);
                notificationManager.notify(NOTIFICATION_ID, builder.getNotification());
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    private static void hideNotification(Context context) {
        Log.i(TAG, "hideNotification; ");
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(NOTIFICATION_ID);
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    public static class EnableCamerasReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            String access$000 = DisableCameras.TAG;
            Log.i(access$000, "onReceive; intent: " + intent);
            DisableCameras.enableCameras(context);
        }
    }
}
