package defpackage;

import android.os.Bundle;

/* renamed from: u  reason: default package */
/* compiled from: Source */
final class u {
    static Bundle[] Code(t[] tVarArr) {
        if (tVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[tVarArr.length];
        for (int i = 0; i < tVarArr.length; i++) {
            t tVar = tVarArr[i];
            Bundle bundle = new Bundle();
            bundle.putString("resultKey", tVar.Code());
            bundle.putCharSequence("label", tVar.I());
            bundle.putCharSequenceArray("choices", tVar.Z());
            bundle.putBoolean("allowFreeFormInput", tVar.J());
            bundle.putBundle("extras", tVar.B());
            bundleArr[i] = bundle;
        }
        return bundleArr;
    }
}
