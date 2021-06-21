package com.google.android.apps.analytics;

final class Z {
    private final int Code;
    private final String I;
    private final int J;
    private final String Z;

    public Z(int i, String str, String str2, int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("Invalid Scope:" + i2);
        } else if (i <= 0 || i > 5) {
            throw new IllegalArgumentException("Index must be between 1 and 5 inclusive.");
        } else if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for name:  Cannot be empty");
        } else if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for value:  Cannot be empty");
        } else {
            int length = I.Code(str + str2, "UTF-8").length();
            if (length > 64) {
                throw new IllegalArgumentException("Encoded form of name and value must not exceed 64 characters combined.  Character length: " + length);
            }
            this.J = i;
            this.Code = i2;
            this.I = str;
            this.Z = str2;
        }
    }

    public final int Code() {
        return this.Code;
    }

    public final String I() {
        return this.I;
    }

    public final int J() {
        return this.J;
    }

    public final String Z() {
        return this.Z;
    }
}
