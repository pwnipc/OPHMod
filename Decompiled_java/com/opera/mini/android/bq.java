package com.opera.mini.android;

import android.text.Editable;
import android.view.inputmethod.BaseInputConnection;

/* compiled from: Source */
final class bq implements Runnable {
    private final String Code;
    private final boolean I;
    private /* synthetic */ URLEditView J;
    private final int Z;

    bq(URLEditView uRLEditView, String str, int i, boolean z) {
        this.J = uRLEditView;
        this.Code = str;
        this.Z = i;
        this.I = z;
    }

    public final void run() {
        this.J.beginBatchEdit();
        Editable text = this.J.getText();
        if (!(BaseInputConnection.getComposingSpanEnd(text) - BaseInputConnection.getComposingSpanStart(text) > 0) || this.I) {
            BaseInputConnection.removeComposingSpans(text);
            if (this.I || this.Code.startsWith(this.J.Code((CharSequence) text))) {
                boolean unused = this.J.Z = true;
                this.J.setText(this.Code);
                this.J.setSelection(this.Z, this.Code.length());
            }
            this.J.endBatchEdit();
            return;
        }
        this.J.endBatchEdit();
    }
}
