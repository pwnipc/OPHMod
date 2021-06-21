package com.google.analytics.tracking.android;

import java.text.DecimalFormat;

/* compiled from: Source */
final class aj {
    private static final ah Code = new ah() {
        public final String Code(String str) {
            return ar.Z(str) ? "1" : "0";
        }
    };
    private static final ah I = new ah() {
        private final DecimalFormat Code = new DecimalFormat("0.##");

        public final String Code(String str) {
            return this.Code.format(ar.I(str));
        }
    };

    public static void Code(ag agVar) {
        agVar.Code("apiVersion", "v", (String) null, (ah) null);
        agVar.Code("libraryVersion", "_v", (String) null, (ah) null);
        agVar.Code("anonymizeIp", "aip", "0", Code);
        agVar.Code("trackingId", "tid", (String) null, (ah) null);
        agVar.Code("hitType", "t", (String) null, (ah) null);
        agVar.Code("sessionControl", "sc", (String) null, (ah) null);
        agVar.Code("adSenseAdMobHitId", "a", (String) null, (ah) null);
        agVar.Code("usage", "_u", (String) null, (ah) null);
        agVar.Code("title", "dt", (String) null, (ah) null);
        agVar.Code("referrer", "dr", (String) null, (ah) null);
        agVar.Code("language", "ul", (String) null, (ah) null);
        agVar.Code("encoding", "de", (String) null, (ah) null);
        agVar.Code("page", "dp", (String) null, (ah) null);
        agVar.Code("screenColors", "sd", (String) null, (ah) null);
        agVar.Code("screenResolution", "sr", (String) null, (ah) null);
        agVar.Code("viewportSize", "vp", (String) null, (ah) null);
        agVar.Code("javaEnabled", "je", "1", Code);
        agVar.Code("flashVersion", "fl", (String) null, (ah) null);
        agVar.Code("clientId", "cid", (String) null, (ah) null);
        agVar.Code("campaignName", "cn", (String) null, (ah) null);
        agVar.Code("campaignSource", "cs", (String) null, (ah) null);
        agVar.Code("campaignMedium", "cm", (String) null, (ah) null);
        agVar.Code("campaignKeyword", "ck", (String) null, (ah) null);
        agVar.Code("campaignContent", "cc", (String) null, (ah) null);
        agVar.Code("campaignId", "ci", (String) null, (ah) null);
        agVar.Code("gclid", "gclid", (String) null, (ah) null);
        agVar.Code("dclid", "dclid", (String) null, (ah) null);
        agVar.Code("gmob_t", "gmob_t", (String) null, (ah) null);
        agVar.Code("eventCategory", "ec", (String) null, (ah) null);
        agVar.Code("eventAction", "ea", (String) null, (ah) null);
        agVar.Code("eventLabel", "el", (String) null, (ah) null);
        agVar.Code("eventValue", "ev", (String) null, (ah) null);
        agVar.Code("nonInteraction", "ni", "0", Code);
        agVar.Code("socialNetwork", "sn", (String) null, (ah) null);
        agVar.Code("socialAction", "sa", (String) null, (ah) null);
        agVar.Code("socialTarget", "st", (String) null, (ah) null);
        agVar.Code("appName", "an", (String) null, (ah) null);
        agVar.Code("appVersion", "av", (String) null, (ah) null);
        agVar.Code("description", "cd", (String) null, (ah) null);
        agVar.Code("appId", "aid", (String) null, (ah) null);
        agVar.Code("appInstallerId", "aiid", (String) null, (ah) null);
        agVar.Code("transactionId", "ti", (String) null, (ah) null);
        agVar.Code("transactionAffiliation", "ta", (String) null, (ah) null);
        agVar.Code("transactionShipping", "ts", (String) null, (ah) null);
        agVar.Code("transactionTotal", "tr", (String) null, (ah) null);
        agVar.Code("transactionTax", "tt", (String) null, (ah) null);
        agVar.Code("currencyCode", "cu", (String) null, (ah) null);
        agVar.Code("itemPrice", "ip", (String) null, (ah) null);
        agVar.Code("itemCode", "ic", (String) null, (ah) null);
        agVar.Code("itemName", "in", (String) null, (ah) null);
        agVar.Code("itemCategory", "iv", (String) null, (ah) null);
        agVar.Code("itemQuantity", "iq", (String) null, (ah) null);
        agVar.Code("exDescription", "exd", (String) null, (ah) null);
        agVar.Code("exFatal", "exf", "1", Code);
        agVar.Code("timingVar", "utv", (String) null, (ah) null);
        agVar.Code("timingValue", "utt", (String) null, (ah) null);
        agVar.Code("timingCategory", "utc", (String) null, (ah) null);
        agVar.Code("timingLabel", "utl", (String) null, (ah) null);
        agVar.Code("sampleRate", "sf", "100", I);
        agVar.Code("hitTime", "ht", (String) null, (ah) null);
        agVar.Code("customDimension", "cd", (String) null, (ah) null);
        agVar.Code("customMetric", "cm", (String) null, (ah) null);
        agVar.Code("contentGrouping", "cg", (String) null, (ah) null);
    }
}
