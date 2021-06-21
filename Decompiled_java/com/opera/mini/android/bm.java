package com.opera.mini.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import org.apache.http.HttpHost;

/* compiled from: Source */
public final class bm {
    private static Proxy I(Context context, URI uri) {
        Proxy proxy = Proxy.NO_PROXY;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 0 || Build.VERSION.SDK_INT >= 11) {
            try {
                return ProxySelector.getDefault().select(uri).get(0);
            } catch (IllegalArgumentException e) {
            }
        } else {
            String host = android.net.Proxy.getHost(context);
            int port = android.net.Proxy.getPort(context);
            if (port == -1) {
                port = 80;
            }
            if (!TextUtils.isEmpty(host)) {
                return new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(host, port));
            }
            return proxy;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0032 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    public static HttpHost Code(Context context, URI uri) {
        String str;
        int i;
        try {
            Proxy I = I(context, uri);
            if (I == null || I.type() != Proxy.Type.HTTP || !(I.address() instanceof InetSocketAddress)) {
                i = -1;
                str = null;
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                if (i == -1 || i == 0) {
                    i = 80;
                }
                return new HttpHost(str, i);
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) I.address();
            if (inetSocketAddress.isUnresolved()) {
                str = inetSocketAddress.getHostName();
            } else {
                str = inetSocketAddress.getAddress().getHostAddress();
            }
            try {
                i = inetSocketAddress.getPort();
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(str)) {
            }
        } catch (Exception e2) {
            str = null;
        }
        i = -1;
        if (TextUtils.isEmpty(str)) {
        }
    }
}
