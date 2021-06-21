package defpackage;

import java.io.DataInputStream;

/* renamed from: cm  reason: default package */
/* compiled from: Source */
abstract class cm extends cf {
    /* access modifiers changed from: protected */
    public abstract boolean Code(String str, String str2);

    cm(String str) {
        super(str, 0, (String) null, (String) null, true, 0, 0, 1);
    }

    /* access modifiers changed from: protected */
    public final void I(DataInputStream dataInputStream) {
        boolean z = true;
        if (dataInputStream.readByte() != 1) {
            Code(0, "Unknown version");
            return;
        }
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        dataInputStream.readUTF();
        String readUTF = dataInputStream.readUTF();
        if (readUnsignedShort != 200) {
            Code(readUnsignedShort, readUTF);
            z = false;
        }
        if (z) {
            int readUnsignedShort2 = dataInputStream.readUnsignedShort();
            while (true) {
                int i = readUnsignedShort2 - 1;
                if (readUnsignedShort2 <= 0) {
                    break;
                }
                Code(dataInputStream.readUTF(), dataInputStream.readUTF());
                readUnsignedShort2 = i;
            }
            byte readByte = dataInputStream.readByte();
            if (readByte == 0) {
                Code(dataInputStream);
            } else if (readByte == 6) {
                Code(0, dataInputStream.readUTF());
            } else {
                Code(0, "Bad data");
            }
        }
    }
}
