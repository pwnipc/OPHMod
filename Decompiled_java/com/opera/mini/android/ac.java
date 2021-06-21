package com.opera.mini.android;

/* compiled from: Source */
public class ac {
    private static int Code = 0;

    @DontOptimize
    static int Code() {
        return s.ah.densityDpi;
    }

    @DontOptimize
    static int I() {
        if (Code == 0) {
            Code = Browser.I.getResources().getConfiguration().screenLayout & 15;
        }
        return Code;
    }
}
