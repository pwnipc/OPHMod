package com.begal.appclone.classes;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class PasswordActivity extends Activity {
    public static final String PREF_KEY_PASSWORD_ENTERED = (PasswordActivity.class.getName() + "_passwordEntered");
    /* access modifiers changed from: private */
    public static final String TAG = PasswordActivity.class.getSimpleName();
    public static boolean sUnlocked;
    private List<Dialog> mDialogs = new ArrayList();
    private EditText mEditText;
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler();
    private boolean mHidePasswordCharacters;
    private String mOriginalActivityName;
    private String mPassword;
    private boolean mPasswordProtectApp;
    private SharedPreferences mPreferences;
    private boolean mStealthMode;
    /* access modifiers changed from: private */
    public boolean mStealthModeUseFingerprint;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            this.mPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            Bundle metaData = getPackageManager().getActivityInfo(getComponentName(), 129).metaData;
            if (metaData != null) {
                this.mOriginalActivityName = metaData.getString("com.begal.appclone.originalActivityName");
                if (this.mOriginalActivityName != null && this.mOriginalActivityName.startsWith(".")) {
                    this.mOriginalActivityName = getPackageName() + this.mOriginalActivityName;
                }
                CloneSettings cloneSettings = CloneSettings.getInstance(this);
                this.mPasswordProtectApp = cloneSettings.getBoolean("passwordProtectApp", false).booleanValue();
                this.mPassword = cloneSettings.getString("appPassword", (String) null);
                if (cloneSettings.has("stealthMode")) {
                    this.mStealthMode = cloneSettings.getBoolean("stealthMode", false).booleanValue();
                } else {
                    this.mStealthMode = cloneSettings.getBoolean("appPasswordStealthMode", false).booleanValue();
                }
                this.mStealthModeUseFingerprint = cloneSettings.getBoolean("stealthModeUseFingerprint", false).booleanValue();
                this.mHidePasswordCharacters = cloneSettings.getBoolean("hidePasswordCharacters", false).booleanValue();
                if (!TextUtils.isEmpty(this.mPassword) && cloneSettings.getBoolean("appPasswordAskOnlyOnce", false).booleanValue()) {
                    boolean passwordEntered = this.mPreferences.getBoolean(PREF_KEY_PASSWORD_ENTERED, false);
                    String str = TAG;
                    Log.i(str, "onCreate; passwordEntered: " + passwordEntered);
                    if (passwordEntered) {
                        startApp();
                        return;
                    }
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
            exit();
        }
        showDialog();
    }

    private void showDialog() {
        final Context context;
        FrameLayout frameLayout;
        String positiveLabel;
        AlertDialog.Builder builder;
        try {
            int i = 1;
            boolean material = Build.VERSION.SDK_INT >= 21;
            if (material) {
                context = new ContextThemeWrapper(this, 16974123);
            } else {
                context = new ContextThemeWrapper(this, 16974120);
            }
            int padding = Utils.dp2px(context, 24.0f);
            frameLayout = new FrameLayout(context);
            frameLayout.setPadding(padding, padding, padding, material ? 0 : padding);
            positiveLabel = getString(17039370);
            builder = new AlertDialog.Builder(context);
            if (this.mStealthMode) {
                TextView textView = new TextView(context);
                String message = "Unfortunately, " + Utils.getAppName(context) + " has stopped.";
                try {
                    message = getString(getResources().getIdentifier("aerr_application", "string", "android"), new Object[]{Utils.getAppName(context)});
                    int aerrCloseId = getResources().getIdentifier("aerr_close", "string", "android");
                    positiveLabel = getString(aerrCloseId);
                    if (Build.VERSION.SDK_INT >= 24) {
                        textView = new TextView(new ContextThemeWrapper(context, getResources().getIdentifier("aerr_list_item", "style", "android")));
                        builder.setTitle(message);
                        message = getString(getResources().getIdentifier("aerr_restart", "string", "android"));
                        positiveLabel = null;
                        int i2 = aerrCloseId;
                        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(getResources().getIdentifier("ic_refresh", "drawable", "android"), 0, 0, 0);
                        textView.setCompoundDrawablePadding(Utils.dp2px(context, 32.0f));
                        textView.setPadding(0, 0, 0, Utils.dp2px(context, 20.0f));
                        textView.setOnClickListener(new View.OnClickListener() {
                            public void onClick(View v) {
                                PasswordActivity.this.exit();
                            }
                        });
                        textView.setBackground((Drawable) null);
                    }
                } catch (Exception e) {
                    Log.w(TAG, e);
                } catch (Throwable th) {
                    Log.w(TAG, th);
                }
                textView.setText(message);
                if (material) {
                    textView.setTextSize(16.0f);
                    textView.setTextColor(-16777216);
                } else {
                    textView.setTextAppearance(context, 16973892);
                }
                frameLayout.addView(textView);
            } else {
                this.mEditText = new EditText(context);
                EditText editText = this.mEditText;
                if (TextUtils.isDigitsOnly(this.mPassword)) {
                    i = 2;
                }
                editText.setInputType(i | 524288 | 128);
                this.mEditText.setImeOptions(2);
                this.mEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                    public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                        PasswordActivity.this.onOk();
                        return false;
                    }
                });
                if (this.mHidePasswordCharacters) {
                    this.mEditText.setTransformationMethod((PasswordTransformationMethod) Utils.getSecondaryClassLoader(context).loadClass("com.begal.appclone.classes.secondary.util.NoEchoPasswordTransformationMethod").newInstance());
                }
                frameLayout.addView(this.mEditText);
                builder.setTitle("Enter password").setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        PasswordActivity.this.exit();
                    }
                });
            }
        } catch (Throwable th2) {
            Log.w(TAG, th2);
            exit();
            return;
        }
        if (!TextUtils.isEmpty(positiveLabel)) {
            builder.setPositiveButton(positiveLabel, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int which) {
                    PasswordActivity.this.onOk();
                }
            });
        }
        final AlertDialog dialog = builder.setView(frameLayout).setCancelable(false).create();
        this.mDialogs.add(dialog);
        if (this.mStealthMode) {
            dialog.setOnShowListener(new DialogInterface.OnShowListener() {
                public void onShow(DialogInterface dialogInterface) {
                    final Runnable longPressRunnable = PasswordActivity.this.getLongPressRunnable();
                    try {
                        Window window = dialog.getWindow();
                        window.setCallback(new WindowCallbackDelegate(window.getCallback()) {
                            GestureDetector gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() {
                                public void onLongPress(MotionEvent event) {
                                    try {
                                        longPressRunnable.run();
                                    } catch (Exception e) {
                                        Log.w(PasswordActivity.TAG, e);
                                    }
                                }
                            });

                            public boolean dispatchTouchEvent(MotionEvent event) {
                                this.gestureDetector.onTouchEvent(event);
                                return super.dispatchTouchEvent(event);
                            }
                        });
                        if (PasswordActivity.this.mStealthModeUseFingerprint && Build.VERSION.SDK_INT >= 23) {
                            PasswordActivity.this.listenFingerprints(PasswordActivity.this);
                        }
                    } catch (Exception e) {
                        Log.w(PasswordActivity.TAG, e);
                    }
                }
            });
        }
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            public void onDismiss(DialogInterface dialog) {
                if (!PasswordActivity.sUnlocked) {
                    PasswordActivity.this.exit();
                }
            }
        });
        try {
            dialog.getWindow().setDimAmount(1.0f);
            dialog.getWindow().setWindowAnimations(0);
            dialog.getWindow().setSoftInputMode(5);
            if (Utils.getTargetSdkVersion(context) < 23) {
                dialog.getWindow().setType(2003);
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        dialog.show();
        Utils.keepDialogOpenOnOrientationChange(dialog);
    }

    /* access modifiers changed from: private */
    @TargetApi(23)
    public void listenFingerprints(final Context context) {
        FingerprintManager fingerprintManager = (FingerprintManager) context.getSystemService("fingerprint");
        if (fingerprintManager != null && fingerprintManager.isHardwareDetected()) {
            fingerprintManager.authenticate((FingerprintManager.CryptoObject) null, (CancellationSignal) null, 0, new FingerprintManager.AuthenticationCallback() {
                public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult result) {
                    Log.i(PasswordActivity.TAG, "onAuthenticationSucceeded; ");
                    try {
                        PasswordActivity.this.onDoubleLongPress();
                    } catch (Exception e) {
                        Log.w(PasswordActivity.TAG, e);
                    }
                }

                public void onAuthenticationFailed() {
                    Log.i(PasswordActivity.TAG, "onAuthenticationFailed; ");
                }

                public void onAuthenticationError(int errorCode, CharSequence errString) {
                    String access$300 = PasswordActivity.TAG;
                    Log.i(access$300, "onAuthenticationError; errorCode: " + errorCode + ", errString: " + errString);
                    PasswordActivity.this.mHandler.postDelayed(new Runnable() {
                        public void run() {
                            PasswordActivity.this.listenFingerprints(context);
                        }
                    }, 1000);
                }
            }, (Handler) null);
        }
    }

    /* access modifiers changed from: private */
    public Runnable getLongPressRunnable() {
        return new Runnable() {
            /* access modifiers changed from: private */
            public int mCount;
            private Handler mHandler = new Handler();

            public void run() {
                this.mHandler.removeCallbacksAndMessages((Object) null);
                this.mCount++;
                if (this.mCount >= 2) {
                    PasswordActivity.this.onDoubleLongPress();
                } else {
                    this.mHandler.postDelayed(new Runnable() {
                        public void run() {
                            int unused = AnonymousClass8.this.mCount = 0;
                        }
                    }, 3000);
                }
            }
        };
    }

    /* access modifiers changed from: private */
    public void onDoubleLongPress() {
        if (!this.mPasswordProtectApp || TextUtils.isEmpty(this.mPassword)) {
            startApp();
            return;
        }
        this.mStealthMode = false;
        showDialog();
    }

    /* access modifiers changed from: private */
    public void onOk() {
        boolean z = false;
        boolean unlocked = false;
        try {
            if (this.mEditText != null && this.mPassword.equals(this.mEditText.getText().toString())) {
                z = true;
            }
            unlocked = z;
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        if (unlocked) {
            try {
                this.mPreferences.edit().putBoolean(PREF_KEY_PASSWORD_ENTERED, true).apply();
            } catch (Exception e2) {
                Log.w(TAG, e2);
            }
            startApp();
            return;
        }
        exit();
    }

    private void startApp() {
        sUnlocked = true;
        try {
            for (Dialog dialog : this.mDialogs) {
                dialog.dismiss();
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        try {
            Intent i = new Intent(this, Class.forName(this.mOriginalActivityName));
            i.addFlags(268435456);
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                i.putExtras(extras);
            }
            startActivity(i);
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        finish();
    }

    /* access modifiers changed from: private */
    public void exit() {
        if (Build.VERSION.SDK_INT >= 21) {
            finishAndRemoveTask();
        } else {
            finish();
        }
        new Thread() {
            public void run() {
                try {
                    Thread.sleep(250);
                } catch (InterruptedException e) {
                }
                System.exit(0);
            }
        }.start();
    }
}
