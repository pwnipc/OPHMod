package com.google.android.gms.common;

import android.content.Intent;

public class Code extends Exception {
    private final Intent mIntent;

    public Code(String str, Intent intent) {
        super(str);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return new Intent(this.mIntent);
    }
}
