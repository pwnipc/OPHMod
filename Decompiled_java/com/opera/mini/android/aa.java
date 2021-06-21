package com.opera.mini.android;

import android.app.Activity;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.NfcEvent;

/* compiled from: Source */
public class aa {
    @DontOptimize
    public static void Code(Activity activity) {
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(activity);
        if (defaultAdapter != null) {
            defaultAdapter.setNdefPushMessageCallback(new NfcAdapter.CreateNdefMessageCallback() {
                public final NdefMessage createNdefMessage(NfcEvent nfcEvent) {
                    String p = s.p();
                    if (p == null || p == "") {
                        return null;
                    }
                    return new NdefMessage(new NdefRecord[]{NdefRecord.createUri(p)});
                }
            }, activity, new Activity[0]);
        }
    }
}
