package com.google.analytics.tracking.android;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: Source */
final class ak {
    private final Context Code;

    public ak(Context context) {
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        this.Code = context.getApplicationContext();
    }

    private int Code(String str, String str2) {
        if (this.Code == null) {
            return 0;
        }
        return this.Code.getResources().getIdentifier(str, str2, this.Code.getPackageName());
    }

    public final String Code(String str) {
        int Code2 = Code(str, "string");
        if (Code2 == 0) {
            return null;
        }
        return this.Code.getString(Code2);
    }

    public final boolean Z(String str) {
        int Code2 = Code(str, "bool");
        if (Code2 == 0) {
            return false;
        }
        return "true".equalsIgnoreCase(this.Code.getString(Code2));
    }

    public final int Code(String str, int i) {
        int Code2 = Code(str, "integer");
        if (Code2 == 0) {
            return i;
        }
        try {
            return Integer.parseInt(this.Code.getString(Code2));
        } catch (NumberFormatException e) {
            af.C("NumberFormatException parsing " + this.Code.getString(Code2));
            return i;
        }
    }

    public final Double I(String str) {
        String Code2 = Code(str);
        if (TextUtils.isEmpty(Code2)) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(Code2));
        } catch (NumberFormatException e) {
            af.C("NumberFormatException parsing " + Code2);
            return null;
        }
    }
}
