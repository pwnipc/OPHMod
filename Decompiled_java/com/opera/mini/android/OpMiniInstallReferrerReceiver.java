package com.opera.mini.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.analytics.tracking.android.CampaignTrackingReceiver;
import com.google.analytics.tracking.android.g;
import com.google.android.apps.analytics.d;

/* compiled from: Source */
public class OpMiniInstallReferrerReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Code(context, intent.getStringExtra("referrer"));
        if (s.t()) {
            g.Code(context);
            g.Code(false);
            new CampaignTrackingReceiver().onReceive(context, intent);
        }
    }

    private static void Code(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("analytics", 0).edit();
        edit.putString("referrer", str);
        edit.commit();
    }

    public static String Code(Context context) {
        String string = context.getSharedPreferences("analytics", 0).getString("referrer", "");
        if (TextUtils.isEmpty(string)) {
            string = I(context);
            if (!TextUtils.isEmpty(string)) {
                Code(context, string);
            }
        }
        return string;
    }

    /* JADX INFO: finally extract failed */
    private static String I(Context context) {
        d Code = d.Code();
        if (Code == null) {
            return null;
        }
        try {
            Code.Code(context);
            Object Code2 = bn.Code((Object) Code, "getHitStore", new Object[0]);
            if (Code2 == null) {
                Code.J();
                return null;
            }
            Object Code3 = bn.Code(Code2, "getReferrer", new Object[0]);
            if (Code3 == null) {
                Code.J();
                return null;
            }
            String str = (String) bn.Code(Code3, "getReferrerString", new Object[0]);
            Code.J();
            return str;
        } catch (Exception e) {
            Code.J();
            return null;
        } catch (Throwable th) {
            Code.J();
            throw th;
        }
    }
}
