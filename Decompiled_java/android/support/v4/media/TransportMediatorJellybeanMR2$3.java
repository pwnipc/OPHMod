package android.support.v4.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* compiled from: Source */
class TransportMediatorJellybeanMR2$3 extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        try {
            intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        } catch (ClassCastException e) {
            Log.w("TransportController", e);
        }
    }
}
