package com.begal.appclone.classes;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class AutoPressButtons extends OnAppExitListener {
    /* access modifiers changed from: private */
    public static final String TAG = AutoPressButtons.class.getSimpleName();
    /* access modifiers changed from: private */
    public Map<String, Pair<String, AtomicBoolean>> mAutoPressButtons = new HashMap();
    private Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public boolean mReady;

    public AutoPressButtons(CloneSettings cloneSettings) {
        List<CloneSettings> autoPressButtons = cloneSettings.forObjectArray("autoPressButtons");
        String str = TAG;
        Log.i(str, "AutoPressButtons; autoPressButtons: " + autoPressButtons);
        if (autoPressButtons != null) {
            for (CloneSettings autoPressButton : autoPressButtons) {
                AtomicBoolean atomicBoolean = null;
                String buttonLabel = autoPressButton.getString("buttonLabel", (String) null);
                if (!TextUtils.isEmpty(buttonLabel)) {
                    String buttonLabel2 = buttonLabel.toLowerCase(Locale.ENGLISH);
                    String screenText = autoPressButton.getString("screenText", (String) null);
                    this.mAutoPressButtons.put(buttonLabel2, new Pair(screenText != null ? screenText.toLowerCase(Locale.ENGLISH) : screenText, autoPressButton.getBoolean("pressOnceOnly", false).booleanValue() ? new AtomicBoolean(true) : atomicBoolean));
                }
            }
        }
        String str2 = TAG;
        Log.i(str2, "AutoPressButtons; mAutoPressButtons: " + this.mAutoPressButtons);
    }

    /* access modifiers changed from: package-private */
    public void init(Context context) {
        if (!this.mAutoPressButtons.isEmpty()) {
            onCreate();
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(final Activity activity) {
        super.onActivityCreated(activity);
        if (Build.VERSION.SDK_INT >= 18) {
            this.mHandler.postDelayed(new Runnable() {
                @TargetApi(18)
                public void run() {
                    View rootView = activity.findViewById(16908290);
                    String access$000 = AutoPressButtons.TAG;
                    Log.i(access$000, "run; rootView: " + rootView);
                    if (rootView != null) {
                        rootView.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() {
                            public void onWindowFocusChanged(boolean hasFocus) {
                                Log.i(AutoPressButtons.TAG, "onWindowFocusChanged; ");
                                AutoPressButtons.this.checkForButtons();
                            }
                        });
                        boolean unused = AutoPressButtons.this.mReady = true;
                        Log.i(AutoPressButtons.TAG, "run; now ready");
                    }
                }
            }, 1000);
        }
    }

    /* access modifiers changed from: protected */
    public int getActivityTimerDelayMillis() {
        return 500;
    }

    /* access modifiers changed from: protected */
    public void onActivityTimer(Activity activity) {
        checkForButtons();
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        Log.i(TAG, "onAppExit; ");
        try {
            this.mReady = false;
            for (Pair<String, AtomicBoolean> p : this.mAutoPressButtons.values()) {
                if (p.second != null) {
                    ((AtomicBoolean) p.second).set(true);
                }
            }
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void checkForButtons() {
        if (!this.mReady) {
            Log.i(TAG, "checkForButtons; not ready");
            return;
        }
        try {
            for (ViewParent viewRoot : Utils.getViewRoots()) {
                try {
                    Field f = viewRoot.getClass().getDeclaredField("mView");
                    f.setAccessible(true);
                    View button = new ButtonViewFinder((View) f.get(viewRoot)).findView();
                    if (button != null) {
                        if (button.callOnClick()) {
                            Log.i(TAG, "checkForButtons; button clicked");
                        } else {
                            Log.w(TAG, "checkForButtons; button not clicked");
                        }
                    }
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        return;
    }

    abstract class ViewFinder {
        View mRootView;

        /* access modifiers changed from: package-private */
        public abstract boolean matchesView(View view);

        ViewFinder(View rootView) {
            this.mRootView = rootView;
        }

        /* access modifiers changed from: package-private */
        public View findView() {
            return findView(this.mRootView);
        }

        /* access modifiers changed from: package-private */
        public View findView(View v) {
            try {
                if (matchesView(v)) {
                    return v;
                }
            } catch (Exception e) {
                Log.w(AutoPressButtons.TAG, e);
            }
            if (!(v instanceof ViewGroup)) {
                return null;
            }
            ViewGroup viewGroup = (ViewGroup) v;
            int count = viewGroup.getChildCount();
            for (int i = 0; i < count; i++) {
                View view = findView(viewGroup.getChildAt(i));
                if (view != null) {
                    return view;
                }
            }
            return null;
        }
    }

    class ButtonViewFinder extends ViewFinder {
        ButtonViewFinder(View rootView) {
            super(rootView);
        }

        /* access modifiers changed from: package-private */
        public boolean matchesView(View v) {
            CharSequence text;
            if (v instanceof TextView) {
                TextView textView = (TextView) v;
                if (textView.isClickable() && (text = textView.getText()) != null) {
                    String s = text.toString().toLowerCase(Locale.ENGLISH);
                    for (String buttonLabel : AutoPressButtons.this.mAutoPressButtons.keySet()) {
                        if (buttonLabel.equals(s)) {
                            Pair<String, AtomicBoolean> p = (Pair) AutoPressButtons.this.mAutoPressButtons.get(buttonLabel);
                            String screenText = (String) p.first;
                            AtomicBoolean enabled = (AtomicBoolean) p.second;
                            if ((enabled != null && !enabled.get()) || (!TextUtils.isEmpty(screenText) && new TextViewFinder(this.mRootView, screenText).findView() == null)) {
                                return false;
                            }
                            if (enabled == null) {
                                return true;
                            }
                            enabled.set(false);
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }

    private class TextViewFinder extends ViewFinder {
        String mScreenText;

        TextViewFinder(View rootView, String screenText) {
            super(rootView);
            this.mScreenText = screenText;
        }

        /* access modifiers changed from: package-private */
        public boolean matchesView(View v) {
            CharSequence text;
            if (!(v instanceof TextView) || (text = ((TextView) v).getText()) == null || !text.toString().toLowerCase(Locale.ENGLISH).contains(this.mScreenText)) {
                return false;
            }
            return true;
        }
    }
}
