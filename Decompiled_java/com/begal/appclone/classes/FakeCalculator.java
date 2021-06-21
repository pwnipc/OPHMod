package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

@SuppressLint({"Registered"})
public class FakeCalculator extends OnAppExitListener {
    private static final String TAG = FakeCalculator.class.getSimpleName();

    public void install() {
        Log.i(TAG, "install; ");
        onCreate();
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (activity instanceof CalculatorActivity) {
            Log.i(TAG, "onActivityCreated; ignoring");
        } else if (!CalculatorActivity.sUnlocked) {
            Intent i = new Intent(activity, CalculatorActivity.class);
            i.addFlags(65536);
            activity.startActivity(i);
            Log.i(TAG, "onActivityCreated; started CalculatorActivity");
        } else {
            Log.i(TAG, "onActivityCreated; already unlocked");
        }
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        CalculatorActivity.sUnlocked = false;
    }
}
