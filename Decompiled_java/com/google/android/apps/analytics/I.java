package com.google.android.apps.analytics;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public final class I {
    static String Code(String str, String str2) {
        try {
            return URLEncoder.encode(str, str2).replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError("URL encoding failed for: " + str);
        }
    }
}
