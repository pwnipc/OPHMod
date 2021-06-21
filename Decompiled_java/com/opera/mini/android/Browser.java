package com.opera.mini.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowManager;
import com.google.android.gms.common.ConnectionResult;
import com.opera.mini.android.events.ActivityPausedEvent;
import com.opera.mini.android.events.ActivityResumeEvent;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.notifications.g;
import com.opera.mini.android.notifications.o;
import com.opera.mini.android.notifications.q;
import com.opera.mini.h4lflif4.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: Source */
public class Browser extends TrackedActivity {
    static Code Code;
    public static Browser I;
    private static boolean h = false;
    private Intent B;
    private int C = -1;
    private Configuration J;
    protected boolean Z = false;
    private int a = -1;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e = false;
    private boolean f;
    private boolean g = false;

    private native void d();

    public native void Code();

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        if (!this.f) {
            this.Z = true;
            Code.A();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0164, code lost:
        r4 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0165, code lost:
        if (r4 == false) goto L_0x0177;
     */
    public void onCreate(Bundle bundle) {
        boolean z = true;
        super.onCreate(bundle);
        System.setProperty("http.keepAlive", "false");
        if (I != null) {
            finish();
            return;
        }
        I = this;
        try {
            this.a = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            this.C = getPreferences(0).getInt("previousVersion", -1);
        } catch (PackageManager.NameNotFoundException e2) {
        }
        long a2 = I.a(getFilesDir().getAbsolutePath());
        if (!b() || a2 >= 1024000) {
            if (bundle != null && bundle.getBoolean("com.opera.mini.android.IGNORE_ALREADY_HANDLED_START_INTENT", false)) {
                this.b = true;
            }
            s.Code(this);
            Context applicationContext = getApplicationContext();
            if (!h && I != null) {
                File file = new File(s.Z(applicationContext), System.mapLibraryName("om"));
                File file2 = new File(I.getFilesDir(), System.mapLibraryName("om"));
                try {
                    if (!file.exists() && !file2.exists()) {
                        Browser browser = I;
                        switch (AnonymousClass6.Code[s.Code(s.I(I).sourceDir, "lib/" + "armeabi" + "/" + System.mapLibraryName("om"), file2).ordinal()]) {
                            case 1:
                                if (s.al >= 9) {
                                    ae.Code(file2, true, false);
                                    ae.I(file2, true, false);
                                    ae.Z(file2, true, true);
                                }
                                boolean z2 = true;
                                break;
                            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                                browser.f = true;
                                browser.e();
                                break;
                        }
                    }
                    if (!file.exists()) {
                        file = file2;
                    }
                    System.load(file.getPath());
                    h = true;
                } catch (Throwable th) {
                }
                if (!h) {
                    System.loadLibrary("om");
                }
                h = true;
            }
            d();
            br.Code((Activity) this);
            this.J = new Configuration(getResources().getConfiguration());
            Code(this.J);
            I(this.J);
            setContentView(R.layout.main);
            Code(true);
            Code = new Code(new o(this, getAssets()));
            ar.Code.Q();
            db.A = !new HashSet() {
                {
                    add("LogicPD Zoom2");
                }
            }.contains(Build.MODEL) && (!Code.k() || s.al <= 10 || s.al >= 16);
            if (!Code.k() && getResources().getConfiguration().touchscreen == 1) {
                z = false;
            }
            db.I = z;
            db.Code = z;
            if (s.al >= 14 && I != null) {
                aa.Code(I);
            }
            this.B = getIntent();
            if (s.t()) {
                an.Code(getApplicationContext());
            }
            al.I();
            return;
        }
        this.f = true;
        e();
    }

    private void e() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(R.string.STR_MORE_STORAGE_SPACE_NEEDED);
        builder.setCancelable(false);
        builder.setNeutralButton(17039370, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                System.exit(0);
            }
        });
        builder.create().show();
    }

    public final void I() {
        if (this.a != this.C) {
            SharedPreferences.Editor edit = getPreferences(0).edit();
            edit.putInt("previousVersion", this.a);
            edit.commit();
        }
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        this.b = false;
        this.B = intent;
    }

    public void onWindowFocusChanged(boolean z) {
        if (!this.f && !ar.Code.p()) {
            ar.I.I(z);
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final void Code(boolean z) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        int i = attributes.flags;
        if (o.as() && z) {
            attributes.flags |= 1024;
        } else {
            attributes.flags &= -1025;
        }
        if (i != attributes.flags) {
            getWindow().setAttributes(attributes);
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        if (!this.f) {
            MiniView.Code.Z();
            this.g = true;
            if (!Z()) {
                cs.I();
            }
            EventDispatcher.Code(new ActivityPausedEvent(this));
        }
    }

    public final boolean Z() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        if (!this.g || connectivityManager.getBackgroundDataSetting()) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0072, code lost:
        if (r0 == false) goto L_0x0074;
     */
    public void onResume() {
        ArrayList<String> stringArrayListExtra;
        String Code2;
        boolean z = true;
        super.onResume();
        if (!this.f) {
            MiniView.Code.J();
            this.g = false;
            if (this.B != null) {
                Intent intent = this.B;
                if ((intent.getFlags() & 1048576) == 0 && !this.b) {
                    if (!(s.al >= 9 && af.Code(intent.getAction()))) {
                        if (s.am) {
                            if (!q.Code(intent)) {
                                String action = intent.getAction();
                                if (action == null || !action.startsWith("com.opera.mini.android.ACTION_NOTIFICATION:")) {
                                    z = false;
                                } else {
                                    o Code3 = g.Code((Context) this).Code(action.split(":")[1]);
                                    if (Code3 == null) {
                                        z = false;
                                    } else {
                                        Code3.a();
                                    }
                                }
                            }
                        }
                        if (!"android.speech.action.VOICE_SEARCH_RESULTS".equals(intent.getAction()) || (stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extras.VOICE_SEARCH_RESULT_URLS")) == null || stringArrayListExtra.get(0) == null) {
                            String dataString = intent.getDataString();
                            if (dataString != null) {
                                if (dataString.startsWith("operamini:")) {
                                    dataString = dataString.substring(10);
                                }
                                if (dataString.length() > 0) {
                                    I(dataString);
                                }
                            }
                        } else {
                            I(stringArrayListExtra.get(0));
                        }
                    } else if (!(s.al < 9 || I == null || (Code2 = af.Code(intent)) == null)) {
                        I.I(Code2);
                    }
                }
                this.B = null;
            }
            EventDispatcher.Code(new ActivityResumeEvent(this));
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean J() {
        return this.e;
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.opera.mini.android.IGNORE_ALREADY_HANDLED_START_INTENT", true);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.e = true;
        if (ar.I != null && !ar.Code.p()) {
            ar.I.h();
            ar.I.Z(59);
        }
        MiniView.Code.C();
        ((am) cn.Code).Code();
        ar.Code.R();
        System.exit(0);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        if (!this.f) {
            try {
                if (Code.C && db.E && !ar.Code.p()) {
                    Code.h();
                    Code.Code(false);
                    Code.Z(1);
                }
            } catch (Throwable th) {
            }
            br.B();
            MiniView.Code.B();
            this.Z = false;
        }
    }

    /* access modifiers changed from: protected */
    public void onRestart() {
        super.onRestart();
        if (!this.f && Code.C) {
            ar.I.h();
            ar.I.Z(2);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        int i = 0;
        super.onConfigurationChanged(configuration);
        if (!this.f) {
            this.J = new Configuration(configuration);
            if (I(this.J) && Code.C) {
                ar.I.h();
                ar.Z.c(this.d ? 1 : 0);
                ar.I.Z(54);
            }
            if (Code(this.J) && Code.C) {
                ar.I.h();
                an anVar = ar.Z;
                if (this.c) {
                    i = 1;
                }
                anVar.c(i);
                ar.I.Z(66);
            }
            if (MiniView.Code.f() && o.Code != null) {
                o.Code.requestFocus();
                o.B(true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == br.Code() && i2 == -1) {
            br.Code(intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    public final boolean B() {
        return this.c;
    }

    private boolean Code(Configuration configuration) {
        boolean z = false;
        boolean z2 = true;
        switch (configuration.orientation) {
            case 1:
                if (!this.c) {
                    z2 = false;
                }
                this.c = false;
                return z2;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                if (!this.c) {
                    z = true;
                }
                this.c = true;
                return z;
            default:
                return false;
        }
    }

    private boolean I(Configuration configuration) {
        boolean z = false;
        boolean z2 = true;
        switch (configuration.hardKeyboardHidden) {
            case 1:
                if (!this.d) {
                    z = true;
                }
                this.d = true;
                return z;
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
                if (!this.d) {
                    z2 = false;
                }
                this.d = false;
                return z2;
            default:
                return false;
        }
    }

    public final boolean C() {
        if (this.J == null) {
            return false;
        }
        if (this.J.keyboard == 2 || this.J.keyboard == 3) {
            return true;
        }
        return false;
    }

    public final boolean a() {
        return this.d;
    }

    private void Code(final Runnable runnable) {
        new Thread() {
            public final void run() {
                while (true) {
                    if (!Browser.Code.C || !Browser.this.Z || !MiniView.Code.b()) {
                        db.Code();
                    } else {
                        runnable.run();
                        return;
                    }
                }
            }
        }.start();
    }

    private void I(final String str) {
        if (str != null) {
            Code((Runnable) new Runnable() {
                public final void run() {
                    ar.I.h();
                    ar.Z.b(ar.Z.Code(str));
                    ar.I.Z(35);
                }
            });
        }
    }

    public final void Code(final String str) {
        if (str != null) {
            Code((Runnable) new Runnable() {
                public final void run() {
                    ar.I.h();
                    ar.Z.b(ar.Z.Code(str));
                    ar.Z.c(0);
                    ar.Z.c(0);
                    ar.I.Z(34);
                }
            });
        }
    }

    /* renamed from: com.opera.mini.android.Browser$6  reason: invalid class name */
    /* compiled from: Source */
    final /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] Code = new int[t.values().length];

        static {
            try {
                Code[t.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                Code[t.NO_AVAILABLE_DISK_SPACE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public final boolean b() {
        if (!getPreferences(0).getBoolean("isFirstRun", true) || this.C != -1) {
            return false;
        }
        return true;
    }

    public final boolean c() {
        return this.a != this.C;
    }
}
