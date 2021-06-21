package com.opera.mini.android;

import android.content.Context;
import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.view.View;

/* compiled from: Source */
public class av extends GLSurfaceView implements bd {
    protected boolean Code = false;
    private MiniView I;
    private ax Z;

    public av(Context context, MiniView miniView) {
        super(context);
        this.I = miniView;
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        this.Z = new ax(rect.width(), rect.height(), this.I);
        setRenderer(this.Z);
        setRenderMode(0);
        setFocusableInTouchMode(true);
        if (s.al >= 11) {
            x.Code(this, true);
        }
    }

    public View Code() {
        return this;
    }

    public bd I() {
        return this;
    }

    public void onPause() {
        if (s.al < 7) {
            this.Code = false;
            queueEvent(new Runnable() {
                public final void run() {
                    synchronized (av.this) {
                        av.this.d();
                        av.this.Code = true;
                        av.this.notify();
                    }
                }
            });
            requestRender();
            synchronized (this) {
                if (!this.Code) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        } else {
            super.onPause();
        }
        this.Z.Code();
    }

    public void onResume() {
        super.onResume();
    }

    public void Z() {
        if (this.Z != null) {
            this.Z.I();
        }
    }

    public void J() {
        if (this.Z != null) {
            this.Z.Z();
        }
    }

    /* access modifiers changed from: package-private */
    public final void B() {
        if (s.al < 5) {
            onDetachedFromWindow();
        }
    }

    public void C() {
        requestRender();
    }

    public void Code(int i, int i2, int i3, int i4) {
        requestRender();
    }

    public void a() {
        if (s.al > 4) {
            queueEvent(new aw(this, this));
        } else {
            requestRender();
        }
    }

    public boolean b() {
        return this.Z.B();
    }

    public final void c() {
        this.Z.J();
    }

    public final void d() {
        super.onPause();
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.Z.Code(i, i2);
        this.I.I(i, i2, i3, i4);
        requestRender();
    }
}
