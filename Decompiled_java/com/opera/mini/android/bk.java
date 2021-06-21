package com.opera.mini.android;

import android.os.AsyncTask;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: Source */
final class bk extends AsyncTask {
    private final String[] Code;
    private String I = "";
    private final String[] J;
    private final bj[] Z;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return Code();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        String sb;
        try {
            for (Integer intValue : (Integer[]) objArr) {
                int intValue2 = intValue.intValue();
                if (this.Z[intValue2] != null) {
                    bj bjVar = this.Z[intValue2];
                    int i = bjVar.B;
                    String str = bjVar.J;
                    boolean z = bjVar.Z != null;
                    if (bjVar.Z != null) {
                        sb = bjVar.Z;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        for (int i2 = 0; i2 < bjVar.I.length; i2++) {
                            if (i2 > 0) {
                                sb2.append(',');
                            }
                            sb2.append(bjVar.I[i2]);
                        }
                        sb = sb2.toString();
                    }
                    Code(i, str, z, sb);
                } else {
                    String str2 = this.Code[intValue2];
                    String str3 = this.J[intValue2];
                    if (!str2.startsWith("#")) {
                        try {
                            String[] split = str2.split(";");
                            Code(Integer.parseInt(split[3]), split[0], true, str3);
                        } catch (Exception e) {
                        }
                    }
                }
            }
        } catch (IllegalStateException e2) {
            cancel(true);
        }
    }

    public bk(String str) {
        this.Code = str.split("\n");
        int length = this.Code.length;
        this.Z = new bj[length];
        this.J = new String[length];
    }

    private Void Code() {
        bh bhVar;
        try {
            this.I = InetAddress.getByName("p" + (System.nanoTime() % 65537) + ".dnsecho.opera.com").getHostAddress();
        } catch (UnknownHostException e) {
        }
        for (int i = 0; i < this.Z.length; i++) {
            try {
                bj[] bjVarArr = this.Z;
                String str = this.Code[i];
                String[] split = str.split(";");
                int parseInt = Integer.parseInt(split[3]);
                if (parseInt == 0) {
                    bhVar = new bh(str);
                } else if (parseInt == 1) {
                    bhVar = new bh(str, "HEAD");
                } else {
                    throw new IllegalArgumentException("Unknown test type " + split[3]);
                }
                bjVarArr[i] = bhVar;
                this.Z[i].I();
            } catch (Exception e2) {
                this.J[i] = e2.getMessage();
            }
            publishProgress(new Integer[]{Integer.valueOf(i)});
            if (isCancelled()) {
                return null;
            }
        }
        return null;
    }

    private void Code(int i, String str, boolean z, String str2) {
        String str3 = "probe:/send_result/" + i + "/" + str;
        String[] strArr = new String[10];
        strArr[0] = "X-Connection-Type";
        strArr[1] = bf.I;
        strArr[2] = "X-Signal-Quality";
        strArr[3] = Integer.toString(bf.Code);
        strArr[4] = "X-DNS-Resolver-IP";
        strArr[5] = this.I;
        strArr[6] = "X-Test-Type";
        strArr[7] = Integer.toString(i);
        strArr[8] = "X-Probe-Failure";
        strArr[9] = z ? "1" : "0";
        if (ar.Code.p()) {
            throw new IllegalStateException();
        }
        ar.I.h();
        ar.Z.b(ar.Z.Code(str3));
        ar.Z.l(strArr.length);
        for (String Code2 : strArr) {
            ar.Z.m(ar.Z.Code(Code2));
        }
        ar.Z.b(ar.Z.n());
        ar.Z.b(ar.Z.Code(str2));
        ar.I.Z(40);
    }
}
