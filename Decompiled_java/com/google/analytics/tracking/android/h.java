package com.google.analytics.tracking.android;

import android.app.IntentService;
import android.content.Intent;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: Source */
public final class h extends IntentService {
    public h() {
        super("CampaignIntentService");
    }

    /* access modifiers changed from: protected */
    public final void onHandleIntent(Intent intent) {
        String stringExtra = intent.getStringExtra("referrer");
        try {
            FileOutputStream openFileOutput = openFileOutput("gaInstallData", 0);
            openFileOutput.write(stringExtra.getBytes());
            openFileOutput.close();
        } catch (IOException e) {
            af.I("Error storing install campaign.");
        }
    }
}
