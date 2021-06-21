package com.opera.mini.android;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import org.apache.http.HttpHost;

/* compiled from: Source */
final class bh extends bj {
    private URI C;
    private String a;
    private String b;

    bh(String str) {
        this(str, "GET");
    }

    bh(String str, String str2) {
        super(str);
        this.C = new URI(this.Code[2]);
        this.a = this.Code[4].length() > 0 ? this.Code[4] : null;
        this.b = str2;
    }

    /* access modifiers changed from: protected */
    public final int Code() {
        HttpHost Code = bm.Code(bf.Z, this.C);
        String host = this.C.getHost();
        int port = this.C.getPort();
        if (Code != null) {
            host = Code.getHostName();
            port = Code.getPort();
        }
        Socket socket = new Socket();
        try {
            if (port <= 0) {
                port = 80;
            }
            socket.connect(new InetSocketAddress(host, port), 3000);
            socket.setSoTimeout(3000);
            return Code(socket, Code != null);
        } finally {
            if (!socket.isClosed()) {
                socket.close();
            }
        }
    }

    private int Code(Socket socket, boolean z) {
        String path;
        long I = bf.I();
        PrintStream printStream = new PrintStream(socket.getOutputStream());
        if (z) {
            path = this.C.toString();
        } else {
            path = this.C.getPath();
        }
        printStream.print(this.b + " " + (path + "?" + (System.nanoTime() % 65537)) + " HTTP/1.0\r\nHost: " + this.C.getHost() + "\r\nCache-Control: no-cache\r\nConnection: close\r\n\r\n");
        if (printStream.checkError()) {
            throw new IOException();
        }
        boolean z2 = !this.b.equals("HEAD");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        String str = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                if (str == null) {
                    if (readLine.length() == 0) {
                        if (!z2) {
                            str = "";
                            break;
                        }
                        str = bufferedReader.readLine();
                    }
                } else {
                    this.Z = "Unexpectedly got more than one line of response";
                    break;
                }
            } else {
                break;
            }
        }
        long I2 = bf.I();
        if (str == null) {
            this.Z = "No response from server";
        } else if (z2 && this.Z == null && this.a != null && !this.a.equals(str)) {
            this.Z = "Response \"" + str.substring(0, Math.min(str.length(), this.a.length() * 2)) + "\" didn't match \"" + this.a + "\"";
        }
        return (int) (I2 - I);
    }
}
