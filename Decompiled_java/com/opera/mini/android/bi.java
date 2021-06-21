package com.opera.mini.android;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

/* compiled from: Source */
final class bi extends PhoneStateListener {
    private final TelephonyManager Code;

    bi(Context context) {
        this.Code = (TelephonyManager) context.getSystemService("phone");
        this.Code.listen(this, 256);
    }

    public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
        int unused = bf.Code = bf.I(signalStrength);
        this.Code.listen(this, 0);
    }
}
