package com.opera.mini.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: Source */
final class q extends ResultReceiver {
    q(Handler handler) {
        super(handler);
    }

    /* access modifiers changed from: protected */
    public final void onReceiveResult(int i, Bundle bundle) {
        switch (i) {
            case 0:
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                Browser.I.Code(false);
                return;
            case 1:
            case 3:
                Browser.I.Code(true);
                return;
            default:
                return;
        }
    }
}
