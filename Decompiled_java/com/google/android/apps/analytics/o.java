package com.google.android.apps.analytics;

import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import org.apache.http.HttpException;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

final class o implements Runnable {
    private final LinkedList Code = new LinkedList();
    private /* synthetic */ n I;

    public o(n nVar, f[] fVarArr) {
        this.I = nVar;
        Collections.addAll(this.Code, fVarArr);
    }

    public final f Code() {
        return (f) this.Code.poll();
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x008f A[Catch:{ InterruptedException -> 0x0116, IOException -> 0x019e, HttpException -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b7 A[Catch:{ InterruptedException -> 0x0116, IOException -> 0x019e, HttpException -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00fa A[Catch:{ InterruptedException -> 0x0116, IOException -> 0x019e, HttpException -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x015e A[Catch:{ InterruptedException -> 0x0116, IOException -> 0x019e, HttpException -> 0x01b6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0193 A[Catch:{ InterruptedException -> 0x0116, IOException -> 0x019e, HttpException -> 0x01b6 }] */
    public final void run() {
        String substring;
        String substring2;
        String str;
        BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
        o unused = this.I.a = this;
        int i = 0;
        while (i < 5 && this.Code.size() > 0) {
            long j = 0;
            try {
                if (this.I.J == 500 || this.I.J == 503) {
                    j = (long) (Math.random() * ((double) this.I.C));
                    if (this.I.C < 256) {
                        n.Z(this.I);
                    }
                } else {
                    long unused2 = this.I.C = 2;
                }
                Thread.sleep(j * 1000);
                m unused3 = this.I.d;
                d.Code();
                d.B();
                int i2 = 0;
                while (i2 < this.Code.size() && i2 < this.I.B) {
                    String Code2 = w.Code(((f) this.Code.get(i2)).Code, System.currentTimeMillis());
                    int indexOf = Code2.indexOf(63);
                    if (indexOf < 0) {
                        substring = Code2;
                    } else {
                        substring = indexOf > 0 ? Code2.substring(0, indexOf) : "";
                        if (indexOf < Code2.length() - 2) {
                            substring2 = Code2.substring(indexOf + 1);
                            str = substring;
                            if (substring2.length() >= 2036) {
                                basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", Code2);
                            } else {
                                BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest2 = new BasicHttpEntityEnclosingRequest("POST", "/p" + str);
                                basicHttpEntityEnclosingRequest2.addHeader("Content-Length", Integer.toString(substring2.length()));
                                basicHttpEntityEnclosingRequest2.addHeader("Content-Type", "text/plain");
                                basicHttpEntityEnclosingRequest2.setEntity(new StringEntity(substring2));
                                basicHttpEntityEnclosingRequest = basicHttpEntityEnclosingRequest2;
                            }
                            String hostName = this.I.d.I.getHostName();
                            if (this.I.d.I.getPort() != 80) {
                                hostName = hostName + ":" + this.I.d.I.getPort();
                            }
                            basicHttpEntityEnclosingRequest.addHeader("Host", hostName);
                            basicHttpEntityEnclosingRequest.addHeader("User-Agent", this.I.Z);
                            d.Code();
                            d.B();
                            if (substring2.length() <= 8192) {
                                Log.w("GoogleAnalyticsTracker", "Hit too long (> 8192 bytes)--not sent");
                                this.I.c.I();
                            } else {
                                this.I.I.Code(basicHttpEntityEnclosingRequest);
                            }
                            i2++;
                        }
                    }
                    substring2 = "";
                    str = substring;
                    if (substring2.length() >= 2036) {
                    }
                    String hostName2 = this.I.d.I.getHostName();
                    if (this.I.d.I.getPort() != 80) {
                    }
                    basicHttpEntityEnclosingRequest.addHeader("Host", hostName2);
                    basicHttpEntityEnclosingRequest.addHeader("User-Agent", this.I.Z);
                    d.Code();
                    d.B();
                    if (substring2.length() <= 8192) {
                    }
                    i2++;
                }
                this.I.I.Code();
                i++;
            } catch (InterruptedException e) {
                Log.w("GoogleAnalyticsTracker", "Couldn't sleep.", e);
            } catch (IOException e2) {
                Log.w("GoogleAnalyticsTracker", "Problem with socket or streams.", e2);
            } catch (HttpException e3) {
                Log.w("GoogleAnalyticsTracker", "Problem with http streams.", e3);
            }
        }
        this.I.I.I();
        C a = this.I.b;
        a.Code.e.post(new e(a));
        o unused4 = this.I.a = null;
    }
}
