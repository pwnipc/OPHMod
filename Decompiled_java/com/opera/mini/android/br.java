package com.opera.mini.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;

/* compiled from: Source */
public final class br {
    /* access modifiers changed from: private */
    public static AlertDialog Code;
    private static Activity I;
    private static boolean J = false;
    private static boolean Z = false;

    public static void Code(Activity activity) {
        I = activity;
    }

    public static int Code() {
        return 140627;
    }

    public static boolean I() {
        if (!a()) {
            return false;
        }
        Z = false;
        MiniView.Code.performHapticFeedback(0);
        return true;
    }

    public static void Code(boolean z) {
        Z = z;
    }

    public static boolean Z() {
        return Z;
    }

    public static void J() {
        J = true;
    }

    private static boolean a() {
        if (!J) {
            return false;
        }
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        try {
            I.startActivityForResult(intent, 140627);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    public static void B() {
        I.finishActivity(140627);
        if (Code != null) {
            Code.dismiss();
            Code = null;
        }
    }

    /* access modifiers changed from: private */
    public static void I(String str) {
        ar.I.h();
        ar.Z.b(ar.Z.Code(str));
        ar.I.Z(36);
    }

    public static void Code(Intent intent) {
        final String[] strArr = (String[]) intent.getStringArrayListExtra("android.speech.extra.RESULTS").toArray(new String[1]);
        if (strArr != null && strArr.length > 0) {
            if (strArr.length == 1) {
                I(strArr[0]);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(I);
            builder.setItems(strArr, new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    br.I(strArr[i]);
                }
            });
            Code = builder.create();
            Code.setOnDismissListener(new DialogInterface.OnDismissListener() {
                public final void onDismiss(DialogInterface dialogInterface) {
                    AlertDialog unused = br.Code = null;
                }
            });
            Code.show();
        }
    }
}
