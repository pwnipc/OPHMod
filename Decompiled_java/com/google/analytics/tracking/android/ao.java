package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Source */
public class ao {
    private long B;
    private long C;
    private final aq Code;
    private final ap I;
    private volatile boolean J;
    private volatile boolean Z;
    private boolean a;

    static {
        new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
    }

    ao() {
        this.Z = false;
        this.J = false;
        this.B = 120000;
        this.a = true;
        this.Code = null;
        this.I = null;
    }

    ao(String str, aq aqVar) {
        this.Z = false;
        this.J = false;
        this.B = 120000;
        this.a = true;
        if (str == null) {
            throw new IllegalArgumentException("trackingId cannot be null");
        }
        this.Code = aqVar;
        this.I = new ap((byte) 0);
        this.I.I("trackingId", str);
        this.I.I("sampleRate", "100");
        this.I.Code("sessionControl", "start");
        this.I.I("useSecure", Boolean.toString(true));
    }

    public void Code() {
        aa.Code().Code(ab.SET_START_SESSION);
        this.I.Code("sessionControl", "start");
    }

    public void Code(String str) {
        if (this.J) {
            af.a("Tracking already started, setAppName call ignored");
        } else if (TextUtils.isEmpty(str)) {
            af.a("setting appName to empty value not allowed, call ignored");
        } else {
            aa.Code().Code(ab.SET_APP_NAME);
            this.I.I("appName", str);
        }
    }

    public void I(String str) {
        if (this.J) {
            af.a("Tracking already started, setAppVersion call ignored");
            return;
        }
        aa.Code().Code(ab.SET_APP_VERSION);
        this.I.I("appVersion", str);
    }

    public void Z(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalStateException("trackView requires a appScreen to be set");
        }
        aa.Code().Code(ab.TRACK_VIEW_WITH_APPSCREEN);
        this.I.I("description", str);
        Code("appview", (Map) null);
    }

    public void Code(String str, String str2, String str3, Long l) {
        aa.Code().Code(ab.TRACK_EVENT);
        aa.Code().Code(true);
        Code("event", I(str, str2, str3, l));
        aa.Code().Code(false);
    }

    public void J(String str) {
        aa.Code().Code(ab.TRACK_EXCEPTION_WITH_DESCRIPTION);
        aa.Code().Code(true);
        Code("exception", B(str));
        aa.Code().Code(false);
    }

    public void Code(String str, long j, String str2, String str3) {
        aa.Code().Code(ab.TRACK_TIMING);
        aa.Code().Code(true);
        Code("timing", I(str, j, str2, str3));
        aa.Code().Code(false);
    }

    private void Code(String str, Map map) {
        this.J = true;
        if (map == null) {
            map = new HashMap();
        }
        map.put("hitType", str);
        this.I.Code(map, (Boolean) true);
        if (!I()) {
            af.a("Too many hits sent too quickly, throttling invoked.");
        } else {
            this.Code.Code(this.I.I());
        }
        this.I.Code();
    }

    public void Code(boolean z) {
        aa.Code().Code(ab.SET_ANONYMIZE_IP);
        this.I.I("anonymizeIp", Boolean.toString(z));
    }

    public void Code(double d) {
        aa.Code().Code(ab.SET_SAMPLE_RATE);
        this.I.I("sampleRate", Double.toString(d));
    }

    public void Code(int i, String str) {
        if (i <= 0) {
            af.C("index must be > 0, ignoring setCustomDimension call for " + i + ", " + str);
        } else {
            this.I.Code(ar.Code("customDimension", i), str);
        }
    }

    public void Code(int i, Long l) {
        if (i <= 0) {
            af.C("index must be > 0, ignoring setCustomMetric call for " + i + ", " + l);
            return;
        }
        String str = null;
        if (l != null) {
            str = Long.toString(l.longValue());
        }
        this.I.Code(ar.Code("customMetric", i), str);
    }

    public Map I(String str, String str2, String str3, Long l) {
        HashMap hashMap = new HashMap();
        hashMap.put("eventCategory", str);
        hashMap.put("eventAction", str2);
        hashMap.put("eventLabel", str3);
        if (l != null) {
            hashMap.put("eventValue", Long.toString(l.longValue()));
        }
        aa.Code().Code(ab.CONSTRUCT_EVENT);
        return hashMap;
    }

    public Map B(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("exDescription", str);
        hashMap.put("exFatal", Boolean.toString(true));
        aa.Code().Code(ab.CONSTRUCT_EXCEPTION);
        return hashMap;
    }

    public Map I(String str, long j, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("timingCategory", str);
        hashMap.put("timingValue", Long.toString(j));
        hashMap.put("timingVar", str2);
        hashMap.put("timingLabel", str3);
        aa.Code().Code(ab.CONSTRUCT_TIMING);
        return hashMap;
    }

    private synchronized boolean I() {
        boolean z = true;
        synchronized (this) {
            if (this.a) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.B < 120000) {
                    long j = currentTimeMillis - this.C;
                    if (j > 0) {
                        this.B = Math.min(120000, j + this.B);
                    }
                }
                this.C = currentTimeMillis;
                if (this.B >= 2000) {
                    this.B -= 2000;
                } else {
                    af.a("Excessive tracking detected.  Tracking call ignored.");
                    z = false;
                }
            }
        }
        return z;
    }
}
