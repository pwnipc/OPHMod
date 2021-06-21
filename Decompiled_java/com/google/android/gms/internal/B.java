package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class B {
    private final List Code;
    private final Object I;

    private B(Object obj) {
        this.I = C.Code(obj);
        this.Code = new ArrayList();
    }

    /* synthetic */ B(Object obj, byte b) {
        this(obj);
    }

    public final B Code(String str, Object obj) {
        this.Code.add(((String) C.Code(str)) + "=" + String.valueOf(obj));
        return this;
    }

    public final String toString() {
        StringBuilder append = new StringBuilder(100).append(this.I.getClass().getSimpleName()).append('{');
        int size = this.Code.size();
        for (int i = 0; i < size; i++) {
            append.append((String) this.Code.get(i));
            if (i < size - 1) {
                append.append(", ");
            }
        }
        return append.append('}').toString();
    }
}
