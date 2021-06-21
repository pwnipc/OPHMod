package com.google.analytics.tracking.android;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Source */
final class ar {
    static {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public static Map Code(String str) {
        HashMap hashMap = new HashMap();
        for (String split : str.split("&")) {
            String[] split2 = split.split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            } else if (split2.length == 1 && split2[0].length() != 0) {
                hashMap.put(split2[0], (Object) null);
            }
        }
        return hashMap;
    }

    public static double I(String str) {
        if (str == null) {
            return 0.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            return 0.0d;
        }
    }

    public static boolean Z(String str) {
        return Boolean.parseBoolean(str);
    }

    public static String J(String str) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.contains("?")) {
            str = str.split("[\\?]")[1];
        }
        if (str.contains("%3D")) {
            try {
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        } else if (!str.contains("=")) {
            return null;
        }
        Map Code = Code(str);
        String[] strArr = {"dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t"};
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return sb.toString();
            }
            if (!TextUtils.isEmpty((CharSequence) Code.get(strArr[i2]))) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(strArr[i2]).append("=").append((String) Code.get(strArr[i2]));
            }
            i = i2 + 1;
        }
    }

    static String Code(Locale locale) {
        if (locale == null || TextUtils.isEmpty(locale.getLanguage())) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage().toLowerCase());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-").append(locale.getCountry().toLowerCase());
        }
        return sb.toString();
    }

    private static int Code(char c) {
        int i = c - '0';
        if (i > 9) {
            return i - 7;
        }
        return i;
    }

    static byte[] B(String str) {
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((Code(str.charAt(i * 2)) << 4) | Code(str.charAt((i * 2) + 1)));
        }
        return bArr;
    }

    static String Code(String str, int i) {
        return str + "*" + i;
    }
}
