package defpackage;

import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: I  reason: default package */
/* compiled from: Source */
public final class I {
    /* access modifiers changed from: private */
    public static final J Code;

    static /* synthetic */ void Code() {
    }

    static /* synthetic */ void Code(Code code, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            code.Code((l) it.next());
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 20) {
            Code = new B();
        } else if (Build.VERSION.SDK_INT >= 19) {
            Code = new f();
        } else if (Build.VERSION.SDK_INT >= 16) {
            Code = new e();
        } else if (Build.VERSION.SDK_INT >= 14) {
            Code = new d();
        } else if (Build.VERSION.SDK_INT >= 11) {
            Code = new a();
        } else if (Build.VERSION.SDK_INT >= 9) {
            Code = new C();
        } else {
            Code = new J();
        }
    }
}
