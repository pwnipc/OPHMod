package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

/* renamed from: ag  reason: default package */
/* compiled from: Source */
public final class ag {
    private Vector Code = new Vector();

    public final Vector Code() {
        return this.Code;
    }

    private void Code(ah ahVar) {
        int size = this.Code.size();
        while (size > 0) {
            int Code2 = ahVar.Code((ah) this.Code.elementAt(size - 1));
            if (Code2 == 0) {
                this.Code.insertElementAt(ahVar, size);
                return;
            } else if (Code2 > 0) {
                this.Code.insertElementAt(ahVar, size);
                return;
            } else {
                size--;
            }
        }
        this.Code.insertElementAt(ahVar, 0);
    }

    public final void Code(InputStream inputStream) {
        ah akVar;
        boolean z;
        this.Code.removeAllElements();
        af afVar = new af(inputStream);
        if (afVar.readByte() == 69 && afVar.readByte() == 80) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                try {
                    switch (afVar.readByte()) {
                        case 0:
                            if (!z2) {
                                akVar = new al();
                                break;
                            } else {
                                throw new IOException();
                            }
                        case 1:
                            akVar = new ai();
                            break;
                        case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                            akVar = new aj();
                            break;
                        case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                            akVar = new ak();
                            break;
                        default:
                            throw new IOException();
                    }
                    int Code2 = akVar.Code(afVar, i);
                    if (akVar instanceof ak) {
                        ak akVar2 = (ak) akVar;
                        for (int ajVar : akVar2.Code) {
                            byte b = akVar2.I;
                            boolean z3 = akVar2.J;
                            byte b2 = akVar2.Z;
                            boolean z4 = akVar2.B;
                            Code((ah) new aj(ajVar, b, z3, b2, akVar2.C));
                        }
                        i = Code2;
                    } else {
                        if (akVar instanceof al) {
                            z = true;
                        } else {
                            z = z2;
                        }
                        Code(akVar);
                        z2 = z;
                        i = Code2;
                    }
                } catch (EOFException e) {
                    if (!z2) {
                        throw new IOException();
                    }
                    return;
                }
            }
        } else {
            throw new IOException();
        }
    }
}
