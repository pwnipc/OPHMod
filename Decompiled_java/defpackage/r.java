package defpackage;

import android.app.RemoteInput;

/* renamed from: r  reason: default package */
/* compiled from: Source */
final class r {
    static RemoteInput[] Code(t[] tVarArr) {
        if (tVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[tVarArr.length];
        for (int i = 0; i < tVarArr.length; i++) {
            t tVar = tVarArr[i];
            remoteInputArr[i] = new RemoteInput.Builder(tVar.Code()).setLabel(tVar.I()).setChoices(tVar.Z()).setAllowFreeFormInput(tVar.J()).addExtras(tVar.B()).build();
        }
        return remoteInputArr;
    }
}
