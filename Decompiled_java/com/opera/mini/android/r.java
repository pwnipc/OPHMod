package com.opera.mini.android;

/* compiled from: Source */
final class r implements Runnable {
    private EditView Code;
    private String I;

    r(EditView editView, String str) {
        this.Code = editView;
        this.I = str;
    }

    public final void run() {
        this.Code.Code(false);
        this.Code.setText(this.I);
        this.Code.setSelection(this.I.length());
        this.Code.Code(true);
    }
}
