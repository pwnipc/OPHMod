package com.opera.mini.android;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* compiled from: Source */
public final class at implements bc {
    private HttpURLConnection Code;

    public at(String str, String str2, Proxy proxy) {
        if (s.al < 8) {
            System.setProperty("http.keepAlive", "false");
        }
        this.Code = (HttpURLConnection) new URL(str).openConnection(proxy);
        this.Code.setRequestMethod(str2);
        this.Code.setDoInput(true);
        this.Code.setInstanceFollowRedirects(false);
        if (!str2.equals("GET")) {
            this.Code.setDoOutput(true);
        }
        this.Code.setConnectTimeout(30000);
    }

    public final void Code() {
        this.Code.disconnect();
    }

    public final void Code(String str, String str2) {
        try {
            this.Code.setRequestProperty(str, str2);
        } catch (IllegalStateException e) {
            throw new IOException();
        }
    }

    public final DataOutputStream I() {
        return new DataOutputStream(this.Code.getOutputStream());
    }

    public final DataInputStream Z() {
        if (this.Code.getResponseCode() >= 400) {
            return new DataInputStream(this.Code.getErrorStream());
        }
        return new DataInputStream(this.Code.getInputStream());
    }

    public final int J() {
        return this.Code.getResponseCode();
    }

    public final String Code(String str) {
        return this.Code.getHeaderField(str);
    }

    public final long B() {
        return (long) this.Code.getContentLength();
    }
}
