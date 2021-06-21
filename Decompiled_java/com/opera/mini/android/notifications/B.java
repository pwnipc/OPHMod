package com.opera.mini.android.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.PhoneStateListener;
import com.opera.mini.android.events.EventDispatcher;
import com.opera.mini.android.s;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilderFactory;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.w3c.dom.Document;

/* compiled from: Source */
public final class B {
    private static ConnectivityManager B;
    /* access modifiers changed from: private */
    public static a Code;
    /* access modifiers changed from: private */
    public static PhoneStateListener I = new d((byte) 0);
    /* access modifiers changed from: private */
    public static IntentFilter J;
    /* access modifiers changed from: private */
    public static BroadcastReceiver Z = new NetUtils$1();

    static /* synthetic */ ConnectivityManager J(Context context) {
        if (B == null) {
            B = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return B;
    }

    static {
        if (s.al >= 7) {
        }
        IntentFilter intentFilter = new IntentFilter();
        J = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public static void Code() {
        EventDispatcher.Z(new C());
    }

    public static Document Code(String str) {
        new StringBuilder("NetUtils.httpGet uri=").append(str);
        HttpResponse execute = new DefaultHttpClient().execute(new HttpGet(str));
        if (execute.getStatusLine().getStatusCode() == 200) {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(execute.getEntity().getContent());
        }
        new StringBuilder("NetUtils.httpGet status ").append(execute.getStatusLine());
        return null;
    }

    public static String I() {
        Iterator<T> it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        while (it.hasNext()) {
            Iterator<T> it2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses()).iterator();
            while (true) {
                if (it2.hasNext()) {
                    InetAddress inetAddress = (InetAddress) it2.next();
                    if (!inetAddress.isLoopbackAddress()) {
                        String hostAddress = inetAddress.getHostAddress();
                        return InetAddressUtils.isIPv4Address(hostAddress) ? hostAddress : hostAddress.split("%")[0];
                    }
                }
            }
        }
        throw new IOException("Error getting IP number.");
    }

    public static boolean Code(Context context) {
        boolean z;
        NetworkInfo Z2 = Z(context);
        if (Z2 == null || !Z2.isAvailable() || !Z2.isConnected()) {
            z = false;
        } else {
            z = true;
        }
        if (!z || Z2.getType() != 1) {
            return false;
        }
        return true;
    }

    public static a Z() {
        return Code;
    }

    public static boolean I(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        for (NetworkInfo networkInfo : ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo()) {
            if (networkInfo != null && networkInfo.isAvailable()) {
                return true;
            }
        }
        return false;
    }

    public static NetworkInfo Z(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }
}
