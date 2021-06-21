package com.opera.mini.android.notifications;

import android.content.SharedPreferences;
import android.net.Uri;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import com.opera.mini.h4lflif4.R;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

/* compiled from: Source */
public final class Z extends k {
    SimpleDateFormat Code = new SimpleDateFormat("yyyyMMdd", Locale.US);

    static /* synthetic */ void Code(Z z) {
        if (z.J.Z() && z.b() && !z.f() && z.g() && B.Code(z.J.I())) {
            if (System.currentTimeMillis() - z.Z.getLong("MobileStore:last_checked_utc", 0) > z.Z.getLong("MobileStore:check_interval", Long.MAX_VALUE)) {
                s.Code(z.Z.edit().putLong("MobileStore:last_checked_utc", System.currentTimeMillis()));
                new Thread() {
                    public final void run() {
                        boolean z = true;
                        try {
                            Document Code2 = B.Code("http://apps.opera.com/api/counts.php?ua=" + Uri.encode(db.i) + "&date=" + Uri.encode(Z.this.Code.format(new Date(Z.this.J()))) + "&ip=" + Uri.encode(B.I()));
                            if (Code2 != null) {
                                NodeList elementsByTagName = Code2.getElementsByTagName("free");
                                if (elementsByTagName.getLength() <= 0 || !elementsByTagName.item(0).hasChildNodes()) {
                                    throw new Exception("MobileStoreNotification: error parsing 'free'");
                                }
                                if (Integer.parseInt(elementsByTagName.item(0).getFirstChild().getNodeValue()) <= 0) {
                                    z = false;
                                }
                                if (z) {
                                    Z.this.I(true);
                                }
                            }
                        } catch (Exception e) {
                            new StringBuilder("MobileStoreNotification.tryCheckForNewApps exception ").append(e.getMessage());
                        }
                    }
                }.start();
            }
        }
    }

    public Z(g gVar, SharedPreferences sharedPreferences) {
        super(gVar, sharedPreferences, "MobileStore", R.string.STR_MOBILE_STORE_NOTIFICATION, "http://mobilestore.opera.com", (byte) 2);
        EventDispatcher.Z(new J(this, (byte) 0));
    }

    /* access modifiers changed from: protected */
    public final long Code() {
        if (!f() || !g()) {
            return Long.MAX_VALUE;
        }
        return super.Code();
    }

    /* access modifiers changed from: protected */
    public final void I() {
        super.I();
        I(false);
    }

    /* access modifiers changed from: private */
    public void I(boolean z) {
        s.Code(this.Z.edit().putBoolean("MobileStore:have_new_apps", z));
    }

    private boolean f() {
        return this.Z.getBoolean("MobileStore:have_new_apps", true);
    }

    private boolean g() {
        return this.Z.getBoolean("MobileStore:oms_visited", false);
    }
}
