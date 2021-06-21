package com.opera.mini.android;

import com.google.analytics.tracking.android.m;

/* compiled from: Source */
enum aq {
    PAGE_LOADS(1),
    PAGE_LOADS_HISTORY(2),
    PAGE_LOADS_SPEEDDIAL(3),
    PAGE_LOADS_SMART_PAGE(4),
    PAGE_LOADS_LINK(5),
    PAGE_LOADS_ENTERED_ADDRESS(6),
    PAGE_LOADS_SEARCH(7),
    PAGE_LOADS_BOOKMARK(8),
    PAGE_LOADS_EXTERNAL(9),
    DOWNLOADS_FINISHED(10),
    DOWNLOADS_ABORTED(11),
    SHARE(12),
    PAGE_LOADS_SAVED_PAGE(13),
    RATE_DIALOG_SHOWN(14),
    RATE_DIALOG_RATED(15);
    
    private final int j;
    private long k;

    private aq(int i) {
        this.j = i;
    }

    public final void Code(Long l2) {
        this.k += l2.longValue();
    }

    public static void Code() {
        for (aq aqVar : values()) {
            if (aqVar.k > 0) {
                m.I().Code(aqVar.j, Long.valueOf(aqVar.k));
                aqVar.k = 0;
            }
        }
    }
}
