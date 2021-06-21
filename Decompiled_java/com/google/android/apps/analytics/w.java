package com.google.android.apps.analytics;

import android.net.Uri;
import android.util.Log;

final class w {
    static String Code(String str, long j) {
        String queryParameter = Uri.parse(str).getQueryParameter("utmht");
        if (queryParameter == null) {
            return str;
        }
        try {
            return str + "&utmqt=" + (j - Long.valueOf(Long.parseLong(queryParameter)).longValue());
        } catch (NumberFormatException e) {
            Log.e("GoogleAnalyticsTracker", "Error parsing utmht parameter: " + e.toString());
            return str;
        }
    }
}
