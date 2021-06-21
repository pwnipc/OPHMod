package com.opera.mini.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: Source */
public final class bf {
    /* access modifiers changed from: private */
    public static int Code = 99;
    /* access modifiers changed from: private */
    public static String I;
    /* access modifiers changed from: private */
    public static Context Z;

    static /* synthetic */ long I() {
        return System.nanoTime() / 1000000;
    }

    static /* synthetic */ String I(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "UNKNOWN";
        }
        if (activeNetworkInfo.getType() == 0) {
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                    return "GPRS";
                case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                    return "EDGE";
                case 3:
                    return "UMTS";
                case ConnectionResult.SIGN_IN_REQUIRED:
                    return "CDMA";
                case ConnectionResult.INVALID_ACCOUNT:
                    return "EVDO_0";
                case ConnectionResult.RESOLUTION_REQUIRED:
                    return "EVDO_A";
                case ConnectionResult.NETWORK_ERROR:
                    return "1xRTT";
                case ConnectionResult.INTERNAL_ERROR:
                    return "HSDPA";
                case ConnectionResult.SERVICE_INVALID:
                    return "HSUPA";
                case ConnectionResult.DEVELOPER_ERROR:
                    return "HSPA";
                case ConnectionResult.LICENSE_CHECK_FAILED:
                    return "iDen";
                case ConnectionResult.DATE_INVALID:
                    return "EVDO_B";
                case 13:
                    return "LTE";
                case 14:
                    return "eHRPD";
                case 15:
                    return "HSPA+";
            }
        }
        return activeNetworkInfo.getTypeName();
    }

    public static void Code(Context context) {
        Z = context;
        if (!ar.Code.p()) {
            ar.I.h();
            ar.Z.b(ar.Z.Code(64, 1, (Object) new bg(context, (byte) 0)));
            ar.I.Z(39);
        }
    }

    /* access modifiers changed from: private */
    public static int I(SignalStrength signalStrength) {
        if (s.al >= 14) {
            try {
                return ((Integer) bn.Code((Object) signalStrength, "getAsuLevel", new Object[0])).intValue();
            } catch (Exception e) {
            }
        }
        return signalStrength.getGsmSignalStrength();
    }
}
