package com.google.analytics.tracking.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.google.analytics.tracking.android.ae;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

/* compiled from: Source */
final class l {
    private final String Code;
    private final ae.Code I;
    private final Context Z;

    l(ae.Code code, Context context) {
        this(code, context, (byte) 0);
    }

    private l(ae.Code code, Context context, byte b) {
        this.Z = context.getApplicationContext();
        this.Code = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{"GoogleAnalytics", "2.0", Build.VERSION.RELEASE, ar.Code(Locale.getDefault()), Build.MODEL, Build.ID});
        this.I = code;
    }

    public final boolean Code() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.Z.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        af.B("...no network connectivity");
        return false;
    }

    public final int Code(List list) {
        String sb;
        int min = Math.min(list.size(), 40);
        int i = 0;
        int i2 = 0;
        while (i < min) {
            ae.Code code = this.I;
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            ac acVar = (ac) list.get(i);
            URL Code2 = Code(acVar);
            if (Code2 != null) {
                HttpHost httpHost = new HttpHost(Code2.getHost(), Code2.getPort(), Code2.getProtocol());
                String path = Code2.getPath();
                if (TextUtils.isEmpty(acVar.Code())) {
                    sb = "";
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(acVar.Code());
                    if (acVar.Z() > 0) {
                        long Z2 = currentTimeMillis - acVar.Z();
                        if (Z2 >= 0) {
                            sb2.append("&qt=").append(Z2);
                        }
                    }
                    sb2.append("&z=").append(acVar.I());
                    sb = sb2.toString();
                }
                HttpEntityEnclosingRequest Code3 = Code(sb, path);
                if (Code3 == null) {
                    continue;
                } else {
                    Code3.addHeader("Host", httpHost.toHostString());
                    Code(af.Code(), Code3);
                    if (sb.length() > 8192) {
                        af.C("Hit too long (> 8192 bytes)--not sent");
                    } else {
                        try {
                            HttpResponse execute = defaultHttpClient.execute(httpHost, Code3);
                            if (execute.getStatusLine().getStatusCode() != 200) {
                                af.C("Bad response: " + execute.getStatusLine().getStatusCode());
                                return i2;
                            }
                        } catch (ClientProtocolException e) {
                            af.C("ClientProtocolException sending hit; discarding hit...");
                        } catch (IOException e2) {
                            af.C("Exception sending hit: " + e2.getClass().getSimpleName());
                            af.C(e2.getMessage());
                            return i2;
                        }
                    }
                }
            } else if (af.Code()) {
                af.C("No destination: discarding hit: " + acVar.Code());
            } else {
                af.C("No destination: discarding hit.");
            }
            i++;
            i2++;
        }
        return i2;
    }

    private HttpEntityEnclosingRequest Code(String str, String str2) {
        BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
        if (TextUtils.isEmpty(str)) {
            af.C("Empty hit, discarding.");
            return null;
        }
        String str3 = str2 + "?" + str;
        if (str3.length() < 2036) {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", str3);
        } else {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", str2);
            try {
                basicHttpEntityEnclosingRequest.setEntity(new StringEntity(str));
            } catch (UnsupportedEncodingException e) {
                af.C("Encoding error, discarding hit");
                return null;
            }
        }
        basicHttpEntityEnclosingRequest.addHeader("User-Agent", this.Code);
        return basicHttpEntityEnclosingRequest;
    }

    private static void Code(boolean z, HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        int available;
        if (z) {
            StringBuffer stringBuffer = new StringBuffer();
            for (Header obj : httpEntityEnclosingRequest.getAllHeaders()) {
                stringBuffer.append(obj.toString()).append("\n");
            }
            stringBuffer.append(httpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
            if (httpEntityEnclosingRequest.getEntity() != null) {
                try {
                    InputStream content = httpEntityEnclosingRequest.getEntity().getContent();
                    if (content != null && (available = content.available()) > 0) {
                        byte[] bArr = new byte[available];
                        content.read(bArr);
                        stringBuffer.append("POST:\n");
                        stringBuffer.append(new String(bArr)).append("\n");
                    }
                } catch (IOException e) {
                    af.C("Error Writing hit to log...");
                }
            }
            af.Z(stringBuffer.toString());
        }
    }

    private static URL Code(ac acVar) {
        if (TextUtils.isEmpty(acVar.J())) {
            return null;
        }
        try {
            return new URL(acVar.J());
        } catch (MalformedURLException e) {
            try {
                return new URL("http://www.google-analytics.com/collect");
            } catch (MalformedURLException e2) {
                return null;
            }
        }
    }
}
