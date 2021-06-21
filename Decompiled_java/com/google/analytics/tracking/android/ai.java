package com.google.analytics.tracking.android;

/* compiled from: Source */
public final class ai {
    private final String Code;
    private final String I;
    private final ah Z;

    public ai(String str, String str2, ah ahVar) {
        this.Code = str;
        this.I = str2;
        this.Z = ahVar;
    }

    public final String Code(String str) {
        if (!str.contains("*")) {
            return this.Code;
        }
        String str2 = this.Code;
        String[] split = str.split("\\*");
        if (split.length <= 1) {
            return null;
        }
        try {
            return str2 + Integer.parseInt(split[1]);
        } catch (NumberFormatException e) {
            af.C("Unable to parse slot for url parameter " + str2);
            return null;
        }
    }

    public final String Code() {
        return this.I;
    }

    public final ah I() {
        return this.Z;
    }
}
