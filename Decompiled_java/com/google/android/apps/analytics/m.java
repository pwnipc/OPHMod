package com.google.android.apps.analytics;

import android.os.Build;
import java.util.Locale;
import org.apache.http.HttpHost;

final class m implements B {
    private final String Code;
    /* access modifiers changed from: private */
    public final HttpHost I;
    private n Z;

    public m() {
        this("GoogleAnalytics", "1.4.2");
    }

    public m(String str, String str2) {
        this(str, str2, "www.google-analytics.com");
    }

    private m(String str, String str2, String str3) {
        this.I = new HttpHost(str3, 80);
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[7];
        objArr[0] = str;
        objArr[1] = str2;
        objArr[2] = Build.VERSION.RELEASE;
        objArr[3] = locale.getLanguage() != null ? locale.getLanguage().toLowerCase() : "en";
        objArr[4] = locale.getCountry() != null ? locale.getCountry().toLowerCase() : "";
        objArr[5] = Build.MODEL;
        objArr[6] = Build.ID;
        this.Code = String.format("%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)", objArr);
    }

    public final void Code() {
        if (this.Z != null && this.Z.getLooper() != null) {
            this.Z.getLooper().quit();
            this.Z = null;
        }
    }

    public final void Code(C c) {
        Code();
        this.Z = new n(c, this.Code, this, (byte) 0);
        this.Z.start();
    }

    public final void Code(f[] fVarArr) {
        if (this.Z != null) {
            this.Z.Code(fVarArr);
        }
    }
}
