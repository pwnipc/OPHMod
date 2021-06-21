package com.opera.mini.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.MotionEvent;
import java.lang.reflect.Method;

/* compiled from: Source */
public abstract class be {
    private static boolean B;
    private static final Integer[] C = {new Integer(1)};
    private static Method I;
    private static Method J;
    private static Method Z;
    protected int Code;

    public abstract boolean Code(MotionEvent motionEvent);

    public static boolean Code(Context context) {
        try {
            if ("HTC Legend".equals(Build.MODEL)) {
                return true;
            }
            if ("ZTE_GV821".equals(Build.MODEL)) {
                return false;
            }
            if (!((Boolean) PackageManager.class.getDeclaredMethod("hasSystemFeature", new Class[]{String.class}).invoke(context.getPackageManager(), new String[]{"android.hardware.touchscreen.multitouch"})).booleanValue()) {
                return false;
            }
            return I(context) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static be I(Context context) {
        try {
            Method declaredMethod = MotionEvent.class.getDeclaredMethod("getPointerCount", (Class[]) null);
            J = declaredMethod;
            if (declaredMethod != null) {
                B = true;
                I = MotionEvent.class.getDeclaredMethod("getX", new Class[]{Integer.TYPE});
                Z = MotionEvent.class.getDeclaredMethod("getY", new Class[]{Integer.TYPE});
            }
            try {
                return Z(context);
            } catch (Exception e) {
                return null;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    private static be Z(Context context) {
        return (be) Class.forName("com.opera.mini.android.bo").getConstructor(new Class[]{Context.class}).newInstance(new Object[]{context});
    }

    /* access modifiers changed from: protected */
    public void Code(int i, int i2, int i3, int i4) {
        ar.I.h();
        ar.Z.c(i2);
        ar.Z.c(i3);
        ar.Z.c(i4);
        ar.Z.c(this.Code);
        ar.I.Z(i);
    }
}
