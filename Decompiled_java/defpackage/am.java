package defpackage;

import com.google.android.gms.common.ConnectionResult;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

/* renamed from: am  reason: default package */
/* compiled from: Source */
public final class am {
    private static final long Code(byte[] bArr, int i, boolean z) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (bArr[i2 + 0] & 255));
        }
        if (z) {
            return j;
        }
        switch (i) {
            case 1:
                return (long) ((byte) ((int) j));
            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                return (long) ((short) ((int) j));
            case 3:
                return -(((j ^ -1) + 1) & 16777215);
            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                return (long) ((int) j);
            case ConnectionResult.INTERNAL_ERROR /*8*/:
                return j;
            default:
                return -1;
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    public static void Code(InputStream inputStream, OutputStream outputStream, ag agVar) {
        al alVar;
        int i;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        int i2 = 0;
        al alVar2 = null;
        byte[] bArr = new byte[1024];
        ae aeVar = new ae();
        aeVar.Code();
        Vector Code = agVar.Code();
        int i3 = 0;
        while (i3 < Code.size()) {
            ah ahVar = (ah) Code.elementAt(i3);
            if (ahVar.Code() != 0) {
                while (i2 < ahVar.I()) {
                    int I = ahVar.I() - i2;
                    if (I > bArr.length) {
                        I = bArr.length;
                    }
                    dataInputStream.readFully(bArr, 0, I);
                    aeVar.Code(bArr, 0, I);
                    dataOutputStream.write(bArr, 0, I);
                    i2 += I;
                }
                switch (ahVar.Code()) {
                    case 1:
                        ai aiVar = (ai) ahVar;
                        int i4 = aiVar.Code;
                        int i5 = 0;
                        if (i4 > aiVar.I) {
                            i = aiVar.I;
                        } else {
                            i = i4;
                        }
                        while (i5 < i) {
                            int i6 = i - i5;
                            if (i6 > bArr.length) {
                                i6 = bArr.length;
                            }
                            dataInputStream.readFully(bArr, 0, i6);
                            aeVar.Code(bArr, 0, i6);
                            int i7 = i2 + i6;
                            int i8 = 0;
                            while (i8 < i6) {
                                bArr[i8] = (byte) (bArr[i8] ^ aiVar.Z[i5]);
                                i8++;
                                i5++;
                            }
                            dataOutputStream.write(bArr, 0, i6);
                            i2 = i7;
                        }
                        if (i5 < aiVar.I) {
                            dataOutputStream.write(aiVar.Z, i5, aiVar.I - i5);
                            alVar = alVar2;
                            break;
                        } else {
                            int i9 = i5;
                            while (i9 < aiVar.Code) {
                                int i10 = aiVar.Code - i9;
                                if (i10 > bArr.length) {
                                    i10 = bArr.length;
                                }
                                int i11 = i10;
                                dataInputStream.readFully(bArr, 0, i11);
                                aeVar.Code(bArr, 0, i11);
                                i9 += i11;
                                i2 += i11;
                            }
                        }
                    case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                        aj ajVar = (aj) ahVar;
                        dataInputStream.readFully(bArr, 0, ajVar.Code);
                        aeVar.Code(bArr, 0, ajVar.Code);
                        i2 += ajVar.Code;
                        long Code2 = Code(bArr, (int) ajVar.Code, ajVar.Z) + ((long) ajVar.J);
                        switch (ajVar.I) {
                            case 1:
                                dataOutputStream.writeByte((int) Code2);
                                alVar = alVar2;
                                continue;
                            case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                                dataOutputStream.writeShort((short) ((int) Code2));
                                alVar = alVar2;
                                continue;
                            case 3:
                                dataOutputStream.writeShort((int) (Code2 >> 8));
                                dataOutputStream.writeByte((int) (Code2 & 255));
                                alVar = alVar2;
                                continue;
                            case ConnectionResult.SIGN_IN_REQUIRED /*4*/:
                                dataOutputStream.writeInt((int) Code2);
                        }
                    default:
                        alVar = alVar2;
                        break;
                }
            } else {
                alVar = (al) ahVar;
            }
            i3++;
            i2 = i2;
            alVar2 = alVar;
        }
        while (true) {
            int read = dataInputStream.read(bArr);
            if (read >= 0) {
                aeVar.Code(bArr, 0, read);
                dataOutputStream.write(bArr, 0, read);
                i2 += read;
            } else {
                byte[] I2 = aeVar.I();
                if (alVar2.Code != i2) {
                    throw new IOException();
                } else if (alVar2.I.length != I2.length) {
                    throw new IOException();
                } else {
                    for (int i12 = 0; i12 < alVar2.I.length; i12++) {
                        if (alVar2.I[i12] != I2[i12]) {
                            throw new IOException();
                        }
                    }
                    return;
                }
            }
        }
    }
}
