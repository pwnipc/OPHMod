package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.util.Log;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

@SuppressLint({"TrustAllX509TrustManager"})
public class TrustAllCertificatesProvider extends AbstractContentProvider {
    private static final String TAG = TrustAllCertificatesProvider.class.getSimpleName();

    public boolean onCreate() {
        TrustManager[] trustAllCerts = {new X509TrustManager() {
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }

            public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
            }

            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
            }
        }};
        try {
            SSLContext sc = SSLContext.getInstance("TLS");
            sc.init((KeyManager[]) null, trustAllCerts, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
            Log.i(TAG, "onCreate; now trusting all certificates...");
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        return true;
    }
}
