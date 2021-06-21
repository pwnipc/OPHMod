package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Source */
final class ap {
    private Map Code;
    private Map I;

    private ap() {
        this.Code = new HashMap();
        this.I = new HashMap();
    }

    /* synthetic */ ap(byte b) {
        this();
    }

    public final synchronized void Code(String str, String str2) {
        this.Code.put(str, str2);
    }

    public final synchronized void I(String str, String str2) {
        this.I.put(str, str2);
    }

    public final synchronized void Code() {
        this.Code.clear();
    }

    public final synchronized void Code(Map map, Boolean bool) {
        if (bool.booleanValue()) {
            this.Code.putAll(map);
        } else {
            this.I.putAll(map);
        }
    }

    public final synchronized Map I() {
        HashMap hashMap;
        hashMap = new HashMap(this.I);
        hashMap.putAll(this.Code);
        return hashMap;
    }
}
