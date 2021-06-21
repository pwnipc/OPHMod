package com.opera.mini.android;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: Source */
public class URLEditView extends EditView {
    private static long C;
    private boolean B = false;
    private boolean J = false;
    /* access modifiers changed from: private */
    public boolean Z;
    private Timer a;

    public URLEditView(Context context) {
        super(context);
        I();
    }

    public URLEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        I();
    }

    public URLEditView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        I();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.Z) {
            this.Z = false;
            return;
        }
        Code();
        if (i3 == 4 && i > 0 && charSequence.charAt(i - 1) == '.' && charSequence.charAt(i) == '.') {
            setTextKeepState(new StringBuffer(charSequence.subSequence(0, i - 1)).append(charSequence.subSequence(i, i + i3)));
        } else {
            super.onTextChanged(charSequence, i, i2, i3);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (getLineCount() == 1 && (i == 19 || i == 20 || i == 23)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (getLineCount() == 1 && ((i == 21 || i == 22) && !hasSelection() && (this.Code == null || !this.Code.equals(Code((CharSequence) getText()))))) {
            Code(Code((CharSequence) getText()), false);
        }
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onTextContextMenuItem(int i) {
        switch (i) {
            case 16908328:
                this.J = true;
                break;
            case 16908329:
                if (this.J) {
                    this.J = false;
                    break;
                } else {
                    return false;
                }
        }
        return super.onTextContextMenuItem(i);
    }

    public final void Code(final String str, final int i, final boolean z) {
        if (C > 0) {
            Code();
            this.a = new Timer();
            this.a.schedule(new TimerTask() {
                public final void run() {
                    URLEditView.this.post(new bq(URLEditView.this, str, i, z));
                }
            }, C);
            return;
        }
        post(new bq(this, str, i, z));
    }

    private void Code() {
        if (this.a != null) {
            this.a.cancel();
            this.a.purge();
            this.a = null;
        }
    }

    private static void I() {
        if (Build.DEVICE.indexOf("GT-I9000") >= 0) {
            C = 500;
        } else {
            C = 0;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.B = true;
        return super.onTouchEvent(motionEvent);
    }

    /* access modifiers changed from: protected */
    public void onSelectionChanged(int i, int i2) {
        if (i == i2 && i == getText().length() && this.B) {
            Code(Code((CharSequence) getText()), true);
        }
        super.onSelectionChanged(i, i2);
        this.B = false;
    }
}
