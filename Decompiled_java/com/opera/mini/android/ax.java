package com.opera.mini.android;

import android.graphics.Rect;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.SystemClock;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashSet;
import java.util.Scanner;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: Source */
public class ax implements GLSurfaceView.Renderer {
    private static final HashSet d = new HashSet() {
        {
            add(new ay("Nexus One"));
            add(new ay("HTC Desire"));
            add(new ay("GT-S5830"));
            add(new ay("U20i"));
            add(new ay("HTC Gratia A6380"));
            add(new ay("Garmin-Asus A10"));
            add(new ay("U8230"));
            add(new ay("hp_h_sb1"));
            add(new ay("HTC Hero"));
            add(new ay("HTC Legend"));
            add(new ay("HTC Magic"));
            add(new ay("Hero", "HTC", (String) null, (String) null));
            add(new ay("Magic", "HTC", (String) null, (String) null));
            add(new ay("Liquid", "Acer", "4", (String) null));
            add(new ay((String) null, (String) null, (String) null, "sapphire"));
        }
    };
    private EGLContext B = null;
    private int C;
    private boolean Code = false;
    /* access modifiers changed from: private */
    public MiniView I;
    private a J = null;
    private boolean Z = false;
    private int a;
    private int b;
    private int c;
    private long e = 0;

    public ax(int i, int i2, MiniView miniView) {
        this.C = i;
        this.a = i2;
        this.b = i2;
        this.c = i;
        this.I = miniView;
    }

    public final void Code() {
        this.Code = true;
    }

    public final synchronized void I() {
        if (this.J != null) {
            this.Z = false;
            this.J.f();
        }
    }

    public final synchronized void Z() {
        if (this.J != null) {
            this.J.g();
            this.J = null;
        }
    }

    public final synchronized void J() {
        if (this.J != null) {
            if (this.B.equals(a())) {
                this.J.c();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean B() {
        return this.Z;
    }

    static boolean C() {
        return d.contains(new ay(Build.MODEL)) || d.contains(new ay(Build.MODEL, Build.MANUFACTURER, Build.VERSION.SDK, (String) null)) || d.contains(new ay(Build.MODEL, Build.MANUFACTURER, (String) null, (String) null)) || d.contains(new ay(Build.MODEL, (String) null, Build.VERSION.SDK, (String) null)) || d.contains(new ay((String) null, (String) null, (String) null, Build.BOARD));
    }

    private static String Code(GL10 gl10) {
        BufferedReader bufferedReader;
        int indexOf;
        if (gl10.glGetString(7937).indexOf("PowerVR") < 0) {
            return null;
        }
        try {
            String glGetString = gl10.glGetString(7938);
            int indexOf2 = glGetString.indexOf(" build");
            if (indexOf2 > 0) {
                return glGetString.substring(indexOf2 + 6);
            }
        } catch (Throwable th) {
        }
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/pvr/version"));
            String readLine = bufferedReader.readLine();
            if (readLine == null || (indexOf = readLine.indexOf(" ")) <= 0) {
                bufferedReader.close();
                return "";
            }
            String substring = readLine.substring(indexOf + 1);
            int indexOf3 = substring.indexOf(" ");
            if (indexOf3 > 0) {
                substring = substring.substring(0, indexOf3);
            }
            bufferedReader.close();
            return substring;
        } catch (Throwable th2) {
        }
    }

    private static boolean I(GL10 gl10) {
        String Code2;
        if (s.al >= 11 || (Code2 = Code(gl10)) == null) {
            return false;
        }
        try {
            int[] iArr = {1, 5, 15, 3196};
            Scanner useDelimiter = new Scanner(Code2).useDelimiter("[^0-9]");
            for (int i = 0; i < 4; i++) {
                if (!useDelimiter.hasNextInt()) {
                    return true;
                }
                int nextInt = useDelimiter.nextInt();
                if (nextInt > iArr[i]) {
                    return false;
                }
                if (nextInt < iArr[i]) {
                    return true;
                }
            }
        } catch (Throwable th) {
        }
        return true;
    }

    private static EGLContext a() {
        return ((EGL10) EGLContext.getEGL()).eglGetCurrentContext();
    }

    public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        boolean z = true;
        synchronized (this) {
            if (gl10.glGetString(7937).indexOf("PixelFlinger") < 0) {
                if (!I(gl10)) {
                    String glGetString = gl10.glGetString(7937);
                    if (!(glGetString != null && glGetString.indexOf("FIMG") >= 0)) {
                        z = false;
                    }
                }
            }
            if (z) {
                Browser.I.runOnUiThread(new az(this));
            } else {
                this.J = a.I(this.C, this.a);
                this.J.e();
                this.J.Code(false);
                this.B = a();
                if (this.Code) {
                    if (Browser.Code.C) {
                        Code code = Browser.Code;
                        Code.I.h();
                        Code code2 = Browser.Code;
                        Code.I.y();
                    }
                    this.Code = false;
                }
            }
        }
    }

    public final void Code(int i, int i2) {
        this.b = i2;
        this.c = i;
    }

    public synchronized void onSurfaceChanged(GL10 gl10, int i, int i2) {
        if (this.J != null) {
            this.J.J(i, i2);
            this.I.I();
        }
    }

    public synchronized void onDrawFrame(GL10 gl10) {
        if (this.J != null) {
            if (this.a != this.b) {
                EGLContext eGLContext = this.B;
                EGL10 egl10 = (EGL10) EGLContext.getEGL();
                EGLDisplay eglGetCurrentDisplay = egl10.eglGetCurrentDisplay();
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                EGLSurface eglGetCurrentSurface = egl10.eglGetCurrentSurface(12378);
                if (eglGetCurrentDisplay == null || eglGetCurrentSurface == null) {
                    iArr[0] = this.b;
                    iArr2[0] = this.c;
                } else {
                    egl10.eglQuerySurface(eglGetCurrentDisplay, eglGetCurrentSurface, 12374, iArr);
                    egl10.eglQuerySurface(eglGetCurrentDisplay, eglGetCurrentSurface, 12375, iArr2);
                }
                Rect rect = new Rect(0, 0, iArr2[0], iArr[0]);
                if (this.a != rect.bottom) {
                    this.J.J(rect.right, rect.bottom);
                    this.a = rect.bottom;
                    this.C = rect.right;
                } else {
                    this.I.a();
                }
            }
            this.Z = true;
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.e != 0) {
                long j = uptimeMillis - this.e;
                if (j < 16 && j >= 0) {
                    SystemClock.sleep(16 - j);
                    uptimeMillis = SystemClock.uptimeMillis();
                }
            }
            this.e = uptimeMillis;
            if (this.J.a()) {
                Browser.Code.Code((br) this.J);
                this.J.b();
            }
        }
    }
}
