package defpackage;

/* renamed from: ay  reason: default package */
/* compiled from: Source */
public final class ay {
    private static String Code;
    private static String I;

    public static void Code(String str) {
        Code = str;
    }

    public static String Code() {
        if (Code == null) {
            Code = ar.Z("locale");
        }
        return Code;
    }

    public static void I(String str) {
        I = str;
    }

    public static String I() {
        if (I != null) {
            return I;
        }
        if (Code == null || Code.length() < 2) {
            return "";
        }
        return Code.substring(0, 2);
    }

    public static String Z() {
        if (Code == null || Code.indexOf("-") < 0) {
            return "";
        }
        return Code.substring(Code.indexOf("-") + 1);
    }
}
