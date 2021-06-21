package com.begal.appclone.classes;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;

public class PasswordProvider extends AbstractActivityContentProvider {
    private static final String TAG = PasswordProvider.class.getSimpleName();

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.i(str, "onActivityCreated; activity: " + activity);
        if (activity instanceof PasswordActivity) {
            Log.i(TAG, "onActivityCreated; ignoring");
        } else if (!PasswordActivity.sUnlocked) {
            Intent i = new Intent(activity, PasswordActivity.class);
            i.addFlags(65536);
            activity.startActivity(i);
            Log.i(TAG, "onActivityCreated; started PasswordActivity");
        } else {
            Log.i(TAG, "onActivityCreated; already unlocked");
        }
    }
}
