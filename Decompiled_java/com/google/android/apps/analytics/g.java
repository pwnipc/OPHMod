package com.google.android.apps.analytics;

import com.google.android.gms.common.ConnectionResult;
import java.util.Locale;

final class g {
    private static String Code(a aVar) {
        StringBuilder sb = new StringBuilder();
        J j = aVar.b;
        if (j == null || !j.I()) {
            return "";
        }
        Z[] Code = j.Code();
        Code(Code, sb, 8);
        Code(Code, sb, 9);
        Code(Code, sb, 11);
        return sb.toString();
    }

    public static String Code(a aVar, t tVar) {
        StringBuilder sb = new StringBuilder();
        if ("__##GOOGLEPAGEVIEW##__".equals(aVar.I)) {
            String str = "";
            if (aVar.Z != null) {
                str = aVar.Z;
            }
            if (!str.startsWith("/")) {
                str = "/" + str;
            }
            String Code = I.Code(str, "UTF-8");
            String Code2 = Code(aVar);
            Locale locale = Locale.getDefault();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("/__utm.gif");
            sb2.append("?utmwv=4.8.1ma");
            sb2.append("&utmn=").append(aVar.Code());
            if (Code2.length() > 0) {
                sb2.append("&utme=").append(Code2);
            }
            sb2.append("&utmcs=UTF-8");
            sb2.append(String.format("&utmsr=%dx%d", new Object[]{Integer.valueOf(aVar.C), Integer.valueOf(aVar.a)}));
            sb2.append(String.format("&utmul=%s-%s", new Object[]{locale.getLanguage(), locale.getCountry()}));
            sb2.append("&utmp=").append(Code);
            sb2.append("&utmac=").append(aVar.Code);
            sb2.append("&utmcc=").append(I(aVar, tVar));
            if (aVar.I() != 0) {
                sb2.append("&utmhid=").append(aVar.I());
            }
            sb.append(sb2.toString());
        } else if ("__##GOOGLEITEM##__".equals(aVar.I)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("/__utm.gif");
            sb3.append("?utmwv=4.8.1ma");
            sb3.append("&utmn=").append(aVar.Code());
            sb3.append("&utmt=item");
            k f = aVar.f();
            if (f != null) {
                Code(sb3, "&utmtid", f.Code());
                Code(sb3, "&utmipc", f.I());
                Code(sb3, "&utmipn", f.Z());
                Code(sb3, "&utmiva", f.J());
                Code(sb3, "&utmipr", f.B());
                sb3.append("&utmiqt=");
                if (f.C() != 0) {
                    sb3.append(f.C());
                }
            }
            sb3.append("&utmac=").append(aVar.Code);
            sb3.append("&utmcc=").append(I(aVar, tVar));
            sb.append(sb3.toString());
        } else if ("__##GOOGLETRANSACTION##__".equals(aVar.I)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("/__utm.gif");
            sb4.append("?utmwv=4.8.1ma");
            sb4.append("&utmn=").append(aVar.Code());
            sb4.append("&utmt=tran");
            u e = aVar.e();
            if (e != null) {
                Code(sb4, "&utmtid", e.Code());
                Code(sb4, "&utmtst", e.I());
                Code(sb4, "&utmtto", e.Z());
                Code(sb4, "&utmttx", e.J());
                Code(sb4, "&utmtsp", e.B());
                Code(sb4, "&utmtci", "");
                Code(sb4, "&utmtrg", "");
                Code(sb4, "&utmtco", "");
            }
            sb4.append("&utmac=").append(aVar.Code);
            sb4.append("&utmcc=").append(I(aVar, tVar));
            sb.append(sb4.toString());
        } else {
            Locale locale2 = Locale.getDefault();
            StringBuilder sb5 = new StringBuilder();
            StringBuilder sb6 = new StringBuilder();
            sb6.append(String.format("5(%s*%s", new Object[]{I.Code(aVar.I, "UTF-8"), I.Code(aVar.Z, "UTF-8")}));
            if (aVar.J != null) {
                sb6.append("*").append(I.Code(aVar.J, "UTF-8"));
            }
            sb6.append(")");
            if (aVar.B >= 0) {
                sb6.append(String.format("(%d)", new Object[]{Integer.valueOf(aVar.B)}));
            }
            sb6.append(Code(aVar));
            sb5.append("/__utm.gif");
            sb5.append("?utmwv=4.8.1ma");
            sb5.append("&utmn=").append(aVar.Code());
            sb5.append("&utmt=event");
            sb5.append("&utme=").append(sb6.toString());
            sb5.append("&utmcs=UTF-8");
            sb5.append(String.format("&utmsr=%dx%d", new Object[]{Integer.valueOf(aVar.C), Integer.valueOf(aVar.a)}));
            sb5.append(String.format("&utmul=%s-%s", new Object[]{locale2.getLanguage(), locale2.getCountry()}));
            sb5.append("&utmac=").append(aVar.Code);
            sb5.append("&utmcc=").append(I(aVar, tVar));
            if (aVar.I() != 0) {
                sb5.append("&utmhid=").append(aVar.I());
            }
            sb.append(sb5.toString());
        }
        if (aVar.c()) {
            sb.append("&aip=1");
        }
        if (!aVar.d()) {
            sb.append("&utmht=" + System.currentTimeMillis());
        }
        return sb.toString();
    }

    private static String Code(String str) {
        return str.replace("'", "'0").replace(")", "'1").replace("*", "'2").replace("!", "'3");
    }

    private static void Code(StringBuilder sb, String str, double d) {
        sb.append(str).append("=");
        double floor = Math.floor((d * 1000000.0d) + 0.5d) / 1000000.0d;
        if (floor != 0.0d) {
            sb.append(Double.toString(floor));
        }
    }

    private static void Code(StringBuilder sb, String str, String str2) {
        sb.append(str).append("=");
        if (str2 != null && str2.trim().length() > 0) {
            sb.append(I.Code(str2, "UTF-8"));
        }
    }

    private static void Code(Z[] zArr, StringBuilder sb, int i) {
        sb.append(i).append("(");
        boolean z = true;
        for (int i2 = 0; i2 < zArr.length; i2++) {
            if (zArr[i2] != null) {
                Z z2 = zArr[i2];
                if (!z) {
                    sb.append("*");
                } else {
                    z = false;
                }
                sb.append(z2.J()).append("!");
                switch (i) {
                    case ConnectionResult.INTERNAL_ERROR /*8*/:
                        sb.append(Code(I.Code(z2.I(), "UTF-8")));
                        break;
                    case ConnectionResult.SERVICE_INVALID /*9*/:
                        sb.append(Code(I.Code(z2.Z(), "UTF-8")));
                        break;
                    case ConnectionResult.LICENSE_CHECK_FAILED /*11*/:
                        sb.append(z2.Code());
                        break;
                }
            }
        }
        sb.append(")");
    }

    private static String I(a aVar, t tVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("__utma=");
        sb.append("1.");
        sb.append(aVar.a()).append(".");
        sb.append(aVar.Z()).append(".");
        sb.append(aVar.J()).append(".");
        sb.append(aVar.B()).append(".");
        sb.append(aVar.C()).append(";");
        if (tVar != null) {
            sb.append("+__utmz=");
            sb.append("1.");
            sb.append(tVar.I()).append(".");
            sb.append(Integer.valueOf(tVar.Z()).toString()).append(".");
            sb.append(Integer.valueOf(tVar.J()).toString()).append(".");
            sb.append(tVar.Code()).append(";");
        }
        return I.Code(sb.toString(), "UTF-8");
    }
}
