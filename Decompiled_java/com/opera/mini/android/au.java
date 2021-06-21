package com.opera.mini.android;

import android.net.Uri;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

/* compiled from: Source */
public final class au implements bc {
    private Socket Code;

    public au(String str) {
        Uri parse = Uri.parse(str);
        this.Code = new Socket(parse.getHost(), parse.getPort());
        this.Code.setSoLinger(true, 0);
        this.Code.setSoTimeout(0);
        this.Code.setReceiveBufferSize(65536);
        this.Code.setKeepAlive(true);
    }

    public final DataOutputStream I() {
        return new DataOutputStream(this.Code.getOutputStream());
    }

    public final DataInputStream Z() {
        return new DataInputStream(this.Code.getInputStream());
    }

    public final void Code() {
        this.Code.close();
    }
}
