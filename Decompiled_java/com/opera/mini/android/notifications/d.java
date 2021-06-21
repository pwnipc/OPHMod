package com.opera.mini.android.notifications;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;

/* compiled from: Source */
final class d extends PhoneStateListener {
    private d() {
    }

    /* synthetic */ d(byte b) {
        this();
    }

    public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
        byte b;
        byte b2 = 99;
        if (B.Code == null) {
            a unused = B.Code = new a();
        }
        int gsmSignalStrength = signalStrength.getGsmSignalStrength();
        a J = B.Code;
        if (gsmSignalStrength < 0 || gsmSignalStrength > 99) {
            b = 99;
        } else {
            b = (byte) gsmSignalStrength;
        }
        J.Code = b;
        int gsmBitErrorRate = signalStrength.getGsmBitErrorRate();
        a J2 = B.Code;
        if (gsmBitErrorRate >= 0 && gsmBitErrorRate <= 99) {
            b2 = (byte) gsmBitErrorRate;
        }
        J2.I = b2;
    }
}
