package com.opera.mini.android;

import com.google.analytics.tracking.android.m;

/* compiled from: Source */
enum ap {
    BOOKMARKS_COUNT((String) 1, (int) as.USER),
    SAVED_PAGES_COUNT((String) 2, (int) as.USER),
    SPEED_DIALS_COUNT((String) 3, (int) as.USER),
    LOAD_IMAGES((String) 4, (int) as.HIT),
    TEXT_WRAP((String) 5, (int) as.HIT),
    FONT_SIZE((String) 6, (int) as.HIT),
    SINGLE_COLUMN_VIEW((String) 7, (int) as.HIT),
    UNIQUE_DEVICE_ID((String) 8, (int) as.USER),
    NAVIGATION_BAR((String) 9, (int) as.HIT),
    OPERA_LINK((String) 10, (int) as.USER),
    EXIT_BUTTON((String) 11, (int) as.USER),
    HOME_PAGE((String) 12, (int) as.USER),
    INSTALLATION_DATE((String) 13, (int) as.USER),
    RECEIVED_MB((String) 14, (int) as.USER),
    SAVED_PERCENT((String) 15, (int) as.USER),
    CONNECTIVITY((String) 16, (int) as.HIT),
    DISTRIBUTION_SOURCE((String) 17, (int) as.USER),
    BRANDING((String) 18, (int) as.USER),
    FIRST_START_DATE((String) 19, (int) as.USER),
    IMAGE_QUALITY((String) 20, (int) as.HIT);
    
    private final boolean o;
    private final int p;
    private String q;

    private ap(int i, boolean z) {
        this.p = i;
        this.o = z;
    }

    private ap(int i, as asVar) {
        this(r2, r3, i, as.USER.equals(asVar));
    }

    public final void Code(String str) {
        this.q = str;
    }

    public static void Code() {
        for (ap apVar : values()) {
            if (apVar.q != null) {
                m.I().Code(apVar.p, apVar.q);
                if (apVar.o) {
                    apVar.q = null;
                }
            }
        }
    }
}
