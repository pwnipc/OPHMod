package defpackage;

import android.text.ClipboardManager;

/* renamed from: bb  reason: default package */
/* compiled from: Source */
public final class bb {
    private ClipboardManager Code;

    public bb(ClipboardManager clipboardManager) {
        this.Code = clipboardManager;
    }

    public final void Code(String str) {
        this.Code.setText(str);
    }

    public final String Code() {
        return this.Code.getText().toString();
    }

    public final boolean I() {
        return this.Code.hasText();
    }
}
