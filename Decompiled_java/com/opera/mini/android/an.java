package com.opera.mini.android;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import com.google.analytics.tracking.android.e;
import com.google.analytics.tracking.android.g;
import com.google.analytics.tracking.android.m;
import com.opera.mini.android.events.EventDispatcher;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Random;

/* compiled from: Source */
public final class an {
    /* access modifiers changed from: private */
    public static Context Code;
    /* access modifiers changed from: private */
    public static boolean I;
    private static SimpleDateFormat J = new SimpleDateFormat("yyyyMMdd", Locale.US);
    /* access modifiers changed from: private */
    public static LinkedList Z = new LinkedList();

    static /* synthetic */ void J() {
        long Code2 = bl.Code();
        int J2 = bl.J();
        ap.RECEIVED_MB.Code(String.valueOf(Math.floor((Math.pow(1.5d, Math.floor(Math.log((double) Code2) / Math.log(1.5d))) / 1048576.0d) * 10.0d) / 10.0d));
        ap.SAVED_PERCENT.Code(String.valueOf(J2));
    }

    public static void Code(Context context) {
        Code = context;
        m.Code().Code(context);
        EventDispatcher.Z(new ar());
    }

    public static void Code(boolean z) {
        g.Code(Code).I(z);
    }

    public static void Code() {
        ap.BRANDING.Code(s.Code(Code));
        ap.UNIQUE_DEVICE_ID.Code(ar.Code.ac());
        boolean b = Browser.I.b();
        final boolean c = Browser.I.c();
        if (c) {
            ap.DISTRIBUTION_SOURCE.Code(s.s());
            if (s.al >= 9) {
                ap.INSTALLATION_DATE.Code(J.format(ao.Code()));
            }
        }
        if (b) {
            ap.FIRST_START_DATE.Code(J.format(Calendar.getInstance().getTime()));
            I("start", "version_change", "OperaMiniInstalled", (Long) null);
        } else if (c) {
            I("start", "version_change", "OperaMiniUpdated", (Long) null);
        }
        Random random = new Random();
        if (c || random.nextInt(10) == 0) {
            I("start", OperaApplication.Code(), b ? "first_start" : c ? "version_update" : "launch", "");
        }
        ai.Code(new AsyncTask() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object doInBackground(Object[] objArr) {
                ar.I.h();
                ar.I.Z(0);
                an.J();
                return null;
            }

            /* access modifiers changed from: protected */
            public final /* synthetic */ void onPostExecute(Object obj) {
                boolean unused = an.I = true;
                Iterator it = an.Z.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                an.Z.clear();
                if (c) {
                    e.Code().Z();
                }
            }
        }, new Void[0]);
    }

    public static void I() {
        I("font", (System.nanoTime() - B.e().longValue()) / 1000000, "font_calculation", "");
    }

    /* access modifiers changed from: private */
    public static void I(final String str, final String str2, final String str3, final Long l) {
        if (!I) {
            Z.add(new Runnable() {
                public final void run() {
                    an.I(str, str2, str3, l);
                }
            });
            return;
        }
        ap.Code();
        aq.Code();
        m.I().Code(str, str2, str3, l);
    }

    /* access modifiers changed from: private */
    public static void I(String str, long j, String str2, String str3) {
        if (!I) {
            final String str4 = str;
            final long j2 = j;
            final String str5 = str2;
            final String str6 = str3;
            Z.add(new Runnable() {
                public final void run() {
                    an.I(str4, j2, str5, str6);
                }
            });
            return;
        }
        ap.Code();
        aq.Code();
        m.I().Code(str, j, str2, str3);
    }

    public static void Code(final String str) {
        if (!I) {
            Z.add(new Runnable() {
                public final void run() {
                    an.Code(str);
                }
            });
            return;
        }
        ap.Code();
        aq.Code();
        m.I().Z(str);
    }

    public static void Code(final Activity activity) {
        if (!I) {
            Z.add(new Runnable() {
                public final void run() {
                    an.Code(activity);
                }
            });
            return;
        }
        ap.Code();
        aq.Code();
        m.Code().Code(activity);
    }

    public static void I(final Activity activity) {
        if (!I) {
            Z.add(new Runnable() {
                public final void run() {
                    an.I(activity);
                }
            });
        } else {
            m.Code().I(activity);
        }
    }

    public static void Code(String str, long j) {
        try {
            aq.valueOf(str).Code(Long.valueOf(j));
        } catch (IllegalArgumentException e) {
        }
    }

    public static void Code(String str, String str2) {
        try {
            ap.valueOf(str).Code(str2);
        } catch (IllegalArgumentException e) {
        }
    }
}
