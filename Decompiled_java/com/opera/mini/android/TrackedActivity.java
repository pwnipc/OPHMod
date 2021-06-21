package com.opera.mini.android;

import android.app.Activity;

/* compiled from: Source */
public class TrackedActivity extends Activity {
    private static int Code = 0;

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (s.t()) {
            an.Code((Activity) this);
            Code++;
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (s.t()) {
            an.I(this);
            int i = Code - 1;
            Code = i;
            if (i == 0) {
                an.Code("[background]");
            }
        }
    }
}
