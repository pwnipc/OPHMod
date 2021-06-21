package com.opera.mini.android;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* compiled from: Source */
public class bo extends be implements ScaleGestureDetector.OnScaleGestureListener {
    ScaleGestureDetector I;
    Context Z;

    public bo(Context context) {
        this.Z = context;
        this.I = new ScaleGestureDetector(context, this);
    }

    private void Code(int i, ScaleGestureDetector scaleGestureDetector) {
        Code(i, (int) scaleGestureDetector.getFocusX(), (int) scaleGestureDetector.getFocusY(), (int) (scaleGestureDetector.getCurrentSpan() * 16.0f));
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        Code(75, scaleGestureDetector);
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        Code(73, scaleGestureDetector);
        return true;
    }

    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        Code(74, scaleGestureDetector);
        return true;
    }

    public boolean Code(MotionEvent motionEvent) {
        this.Code = (int) motionEvent.getEventTime();
        int pointerCount = motionEvent.getPointerCount();
        this.I.onTouchEvent(motionEvent);
        if (this.I.isInProgress() && pointerCount == 1) {
            onScaleEnd(this.I);
            this.I = new ScaleGestureDetector(this.Z, this);
        }
        if (pointerCount > 1) {
            return true;
        }
        return false;
    }
}
