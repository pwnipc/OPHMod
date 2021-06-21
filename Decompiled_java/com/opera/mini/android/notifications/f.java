package com.opera.mini.android.notifications;

import android.content.Context;
import com.google.analytics.tracking.android.ao;
import com.google.analytics.tracking.android.e;
import com.google.analytics.tracking.android.g;
import com.google.analytics.tracking.android.m;

/* compiled from: Source */
public final class f {
    private Context Code;

    public f(Context context) {
        m.Code().Code(context);
        this.Code = context;
    }

    public final void Code(String str, String str2) {
        ao Code2 = Code(str2);
        if (Code2 != null) {
            Code2.Code("notifications", "show", str, (Long) null);
            e.Code().Z();
        }
    }

    public final void I(String str, String str2) {
        if (Code(str2) != null) {
            Code(str2).Code("notifications", "click", str, (Long) null);
            e.Code().Z();
        }
    }

    private ao Code(String str) {
        if (str == null) {
            return m.I();
        }
        return g.Code(this.Code).Code(str);
    }
}
