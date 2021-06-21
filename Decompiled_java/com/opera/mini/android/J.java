package com.opera.mini.android;

import java.io.File;
import java.io.FilenameFilter;
import java.util.StringTokenizer;

/* compiled from: Source */
final class J implements FilenameFilter {
    private String[] Code;

    J(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "*");
        this.Code = new String[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            this.Code[i] = stringTokenizer.nextToken();
            i++;
        }
    }

    public final boolean accept(File file, String str) {
        boolean z;
        int i = -1;
        int i2 = 0;
        boolean z2 = true;
        while (z2 && i2 < this.Code.length) {
            int indexOf = str.indexOf(this.Code[i2]);
            if (indexOf > i) {
                z = true;
            } else {
                z = false;
            }
            i2++;
            int i3 = indexOf;
            z2 = z;
            i = i3;
        }
        return z2;
    }
}
