package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Source */
final class ag {
    private Map Code = new HashMap();

    ag() {
    }

    /* access modifiers changed from: package-private */
    public final ai Code(String str) {
        if (str.startsWith("&")) {
            return new ai(str.substring(1), (String) null, (ah) null);
        }
        if (str.contains("*")) {
            str = str.substring(0, str.indexOf("*"));
        }
        return (ai) this.Code.get(str);
    }

    public final void Code(String str, String str2, String str3, ah ahVar) {
        this.Code.put(str, new ai(str2, str3, ahVar));
    }
}
