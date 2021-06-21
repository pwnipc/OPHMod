package com.opera.mini.android;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: Source */
public class EditView extends EditText {
    private RelativeLayout.LayoutParams B;
    private int C;
    protected String Code;
    protected boolean I;
    private boolean J;
    private TextPaint Z;
    private boolean a = false;
    private int b = 0;

    public EditView(Context context) {
        super(context);
        Code();
    }

    public EditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Code();
    }

    public EditView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Code();
    }

    private void Code() {
        setSelection(0, 0);
        this.Z = new TextPaint(1);
        this.Z.setColor(-16777216);
        this.Z.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
        TextPaint textPaint = this.Z;
        C.Code();
        textPaint.setTextSize((float) C.I());
        setTypeface(this.Z.getTypeface());
        setTextSize(this.Z.getTextSize());
        setBackgroundDrawable((Drawable) null);
        setPadding(0, 0, 0, 0);
        setBackgroundColor(0);
        setHighlightColor(-5189377);
        setGravity(48);
        this.C = 1;
    }

    /* access modifiers changed from: package-private */
    public final void Code(boolean z) {
        this.J = z;
    }

    /* access modifiers changed from: package-private */
    public final void Code(int i, int i2, int i3, int i4) {
        if (this.B == null) {
            this.B = (RelativeLayout.LayoutParams) getLayoutParams();
        }
        this.B.width = i3;
        this.B.height = i4;
        this.B.leftMargin = i;
        this.B.topMargin = i2;
        requestLayout();
    }

    private static void Z(int i) {
        ar.I.h();
        ar.Z.b(ar.B(ar.I.a));
        ar.Z.c(i);
        ar.I.Z(56);
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return false;
        }
        if (!this.I) {
            o.B(false);
            setVisibility(8);
            ar.I.h();
            ar.Z.b(ar.B(ar.I.a));
            ar.Z.c(0);
            ar.Z.c(0);
            ar.I.Z(55);
            ar.C(ar.I.a);
            ar.I.a = 0;
            setText("");
        }
        this.I = false;
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        int i2;
        if (getLineCount() == 1) {
            if (i == 66) {
                Z(this.C);
                return true;
            } else if (i == 19 || i == 20 || i == 23) {
                cancelLongPress();
                if (i == 20) {
                    i2 = 6;
                } else if (i == 23) {
                    i2 = 8;
                } else {
                    i2 = 1;
                }
                ar.I.h();
                ar.Z.c(i2);
                ar.Z.c(0);
                ar.Z.c(0);
                ar.Z.c(i);
                ar.Z.b(0);
                ar.Z.b(0);
                ar.Z.c((int) keyEvent.getEventTime());
                ar.Z.c(0);
                try {
                    ar.Z.C(67);
                } catch (Throwable th) {
                }
                ar.Z.c(i2);
                ar.Z.c(i);
                ar.Z.c(((int) keyEvent.getEventTime()) + 1);
                ar.I.Z(68);
                return true;
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (84 == i) {
            return br.I();
        }
        return false;
    }

    public final void Code(int i) {
        this.C = i;
    }

    public void onEditorAction(int i) {
        int i2;
        switch (i) {
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                i2 = 3;
                break;
            case 3:
                i2 = 4;
                break;
            case ConnectionResult.INVALID_ACCOUNT:
                i2 = 5;
                break;
            default:
                i2 = 1;
                break;
        }
        Z(i2);
    }

    /* access modifiers changed from: package-private */
    public final void I(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = 131072;
        switch (i & 4095) {
            case 3:
                i2 = 0;
                i3 = 2;
                break;
            case ConnectionResult.SIGN_IN_REQUIRED:
                i2 = 32;
                i3 = 1;
                break;
            case ConnectionResult.INVALID_ACCOUNT:
                i2 = 0;
                i3 = 3;
                break;
            case ConnectionResult.RESOLUTION_REQUIRED:
                i2 = 16;
                i3 = 1;
                break;
            default:
                i2 = 0;
                i3 = 1;
                break;
        }
        if ((i & 8192) != 0) {
            setEnabled(false);
        }
        if ((65536 & i) != 0) {
            i4 = 8192;
        } else {
            i4 = 0;
        }
        if ((i & 4096) != 0) {
            i2 = 128;
        }
        if ((131072 & i) != 0) {
            i4 = 16384;
        }
        if ((262144 & i) != 0) {
            setVerticalScrollBarEnabled(true);
        } else {
            setIncludeFontPadding(false);
            setVerticalScrollBarEnabled(false);
            i5 = i4;
        }
        setInputType(i5 | i3 | i2);
    }

    /* access modifiers changed from: protected */
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Code(Code(charSequence), !hasSelection() && i3 != -1);
    }

    /* access modifiers changed from: protected */
    public final void Code(String str, boolean z) {
        int i;
        int i2 = 1;
        if (this.J && Browser.Code != null && Browser.Code.C && ar.I != null && ar.I.a != 0) {
            this.Code = str;
            ar.I.h();
            ar.Z.b(ar.B(ar.I.a));
            ar.Z.b(ar.Z.Code(str));
            an anVar = ar.Z;
            if (getSelectionStart() == str.length()) {
                i = 1;
            } else {
                i = 0;
            }
            anVar.c(i);
            an anVar2 = ar.Z;
            if (!z) {
                i2 = 0;
            }
            anVar2.c(i2);
            ar.I.Z(57);
        }
    }

    /* access modifiers changed from: protected */
    public final String Code(CharSequence charSequence) {
        return charSequence.subSequence(0, hasSelection() ? Math.min(getSelectionStart(), getSelectionEnd()) : charSequence.length()).toString();
    }

    /* access modifiers changed from: protected */
    public void onCreateContextMenu(ContextMenu contextMenu) {
        this.I = true;
        super.onCreateContextMenu(contextMenu);
    }

    public boolean onTextContextMenuItem(int i) {
        this.I = false;
        return super.onTextContextMenuItem(i);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() != 1) {
            z = false;
        }
        this.a = z;
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        this.a = false;
        return onTouchEvent;
    }

    /* access modifiers changed from: protected */
    public void onSelectionChanged(int i, int i2) {
        if (i2 < i) {
            setSelection(i2, i);
        } else {
            int i3 = i2;
            i2 = i;
            i = i3;
        }
        super.onSelectionChanged(i2, i);
        if (!this.a) {
            return;
        }
        if (i2 == i) {
            this.b = i2;
            return;
        }
        this.a = false;
        setSelection(this.b);
    }
}
