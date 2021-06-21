package com.google.analytics.tracking.android;

/* compiled from: Source */
final class Code {
    private boolean Code;

    Code() {
        boolean z;
        try {
            if (Class.forName("v") != null) {
                z = true;
            } else {
                z = false;
            }
            this.Code = z;
        } catch (ClassNotFoundException e) {
            this.Code = false;
        }
    }

    /* access modifiers changed from: package-private */
    public final int Code() {
        if (!this.Code) {
            return 0;
        }
        return I.Code().I();
    }
}
