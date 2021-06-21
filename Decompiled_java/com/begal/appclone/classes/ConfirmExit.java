package com.begal.appclone.classes;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;

public class ConfirmExit extends BackKeyHandler {
    private static final String TAG = ConfirmExit.class.getSimpleName();
    private boolean mConfirmExit;

    public ConfirmExit(CloneSettings cloneSettings) {
        this.mConfirmExit = cloneSettings.getBoolean("confirmExit", false).booleanValue();
        String str = TAG;
        Log.i(str, "ConfirmExit; confirmExit: " + this.mConfirmExit);
    }

    public void init(Context context) {
        if (this.mConfirmExit) {
            onCreate();
        }
    }

    /* access modifiers changed from: protected */
    public boolean handleBackPressed(final Activity activity, Object token) {
        if (activity == null) {
            return true;
        }
        String appName = Utils.getAppName(activity);
        AlertDialog.Builder dialogBuilder = Utils.getDialogBuilder(activity);
        dialogBuilder.setMessage("Are you sure you want to exit " + appName + "?").setPositiveButton(17039370, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                activity.finish();
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).show();
        return false;
    }
}
