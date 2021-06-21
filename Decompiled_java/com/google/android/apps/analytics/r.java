package com.google.android.apps.analytics;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import org.apache.http.Header;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.DefaultHttpClientConnection;
import org.apache.http.params.BasicHttpParams;

final class r {
    private HttpHost B;
    private SocketFactory C;
    s Code;
    private DefaultHttpClientConnection I;
    private boolean J;
    private int Z;

    public r(HttpHost httpHost) {
        this(httpHost, new PlainSocketFactory());
    }

    private r(HttpHost httpHost, SocketFactory socketFactory) {
        this.I = new DefaultHttpClientConnection();
        this.J = true;
        this.B = httpHost;
        this.C = socketFactory;
    }

    private void Z() {
        if (this.I != null && this.I.isOpen()) {
            try {
                this.I.close();
            } catch (IOException e) {
            }
        }
    }

    public final void Code() {
        this.I.flush();
        HttpConnectionMetrics metrics = this.I.getMetrics();
        while (metrics.getResponseCount() < metrics.getRequestCount()) {
            HttpResponse receiveResponseHeader = this.I.receiveResponseHeader();
            if (!receiveResponseHeader.getStatusLine().getProtocolVersion().greaterEquals(HttpVersion.HTTP_1_1)) {
                this.Code.Code();
                this.J = false;
            }
            Header[] headers = receiveResponseHeader.getHeaders("Connection");
            if (headers != null) {
                for (Header value : headers) {
                    if ("close".equalsIgnoreCase(value.getValue())) {
                        this.Code.Code();
                        this.J = false;
                    }
                }
            }
            this.Z = receiveResponseHeader.getStatusLine().getStatusCode();
            if (this.Z != 200) {
                int unused = this.Code.Code.J = this.Z;
                Z();
                return;
            }
            this.I.receiveResponseEntity(receiveResponseHeader);
            receiveResponseHeader.getEntity().consumeContent();
            this.Code.I();
            d.Code();
            d.B();
            if (!this.J) {
                Z();
                return;
            }
        }
    }

    public final void Code(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        if (this.I == null || !this.I.isOpen()) {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            Socket connectSocket = this.C.connectSocket(this.C.createSocket(), this.B.getHostName(), this.B.getPort(), (InetAddress) null, 0, basicHttpParams);
            connectSocket.setReceiveBufferSize(8192);
            this.I.bind(connectSocket, basicHttpParams);
        }
        this.I.sendRequestHeader(httpEntityEnclosingRequest);
        this.I.sendRequestEntity(httpEntityEnclosingRequest);
    }

    public final void I() {
        Z();
    }
}
