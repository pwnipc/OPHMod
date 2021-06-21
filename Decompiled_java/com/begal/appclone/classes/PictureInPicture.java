package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.Toast;

@SuppressLint({"Registered"})
public class PictureInPicture extends AbstractActivityContentProvider {
    /* access modifiers changed from: private */
    public static final String TAG = PictureInPicture.class.getSimpleName();
    @SuppressLint({"StaticFieldLeak"})
    static Activity sActivity;
    private Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public int mPictureInPictureKeyCode;
    /* access modifiers changed from: private */
    public boolean mPictureInPictureLongPress;
    private boolean mPictureInPictureSupport;

    public PictureInPicture(CloneSettings cloneSettings) {
        this.mPictureInPictureSupport = cloneSettings.getBoolean("pictureInPictureSupport", false).booleanValue();
        this.mPictureInPictureKeyCode = cloneSettings.getInteger("pictureInPictureKeyCode", 0).intValue();
        this.mPictureInPictureLongPress = cloneSettings.getBoolean("pictureInPictureLongPress", false).booleanValue();
        String str = TAG;
        Log.i(str, "PictureInPicture; mPictureInPictureSupport: " + this.mPictureInPictureSupport + ", mPictureInPictureKeyCode: " + this.mPictureInPictureKeyCode + ", mPictureInPictureLongPress: " + this.mPictureInPictureLongPress);
    }

    public void init(Context context) {
        if (this.mPictureInPictureSupport) {
            onCreate();
            Log.i(TAG, "init; created");
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(final Activity activity) {
        String str = TAG;
        Log.i(str, "onActivityCreated; activity: " + activity);
        if (this.mPictureInPictureSupport) {
            this.mHandler.postDelayed(new Runnable() {
                public void run() {
                    try {
                        Window window = activity.getWindow();
                        window.setCallback(new WindowCallbackWrapper(window.getCallback()) {
                            public boolean dispatchKeyEvent(KeyEvent event) {
                                int keyCode = event.getKeyCode();
                                boolean longPress = event.isLongPress() || event.getRepeatCount() == 10;
                                String access$000 = PictureInPicture.TAG;
                                Log.i(access$000, "dispatchKeyEvent; keyCode: " + keyCode + ", longPress: " + longPress + ", event: " + event);
                                if (keyCode != PictureInPicture.this.mPictureInPictureKeyCode || event.getAction() != 0 || (PictureInPicture.this.mPictureInPictureLongPress && !longPress)) {
                                    return super.dispatchKeyEvent(event);
                                }
                                PictureInPicture.this.startPictureInPictureDelayed(activity);
                                return true;
                            }
                        });
                        Log.i(PictureInPicture.TAG, "run; window callback installed");
                    } catch (Exception e) {
                        Log.w(PictureInPicture.TAG, e);
                    }
                }
            }, 500);
        }
    }

    /* access modifiers changed from: private */
    public void startPictureInPictureDelayed(final Activity activity) {
        String str = TAG;
        Log.i(str, "startPictureInPictureDelayed; activity: " + activity);
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                PictureInPicture.this.startPictureInPicture(activity);
            }
        }, 100);
    }

    /* access modifiers changed from: private */
    public void startPictureInPicture(Activity activity) {
        String str = TAG;
        Log.i(str, "startPictureInPicture; activity: " + activity);
        try {
            activity.getClass().getMethod("enterPictureInPictureMode", new Class[0]).invoke(activity, new Object[0]);
        } catch (Throwable t) {
            Log.w(TAG, t);
            Toast.makeText(activity, "Failed to start picture-in-picture mode.", 1).show();
        }
    }
}
