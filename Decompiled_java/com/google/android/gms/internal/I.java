package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

public final class I implements DialogInterface.OnClickListener {
    private final Activity Code;
    private final Intent I;
    private final int Z;

    public I(Activity activity, Intent intent, int i) {
        this.Code = activity;
        this.I = intent;
        this.Z = i;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            if (this.I != null) {
                this.Code.startActivityForResult(this.I, this.Z);
            }
            dialogInterface.dismiss();
        } catch (ActivityNotFoundException e) {
            Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
        }
    }
}
