package com.google.android.apps.analytics;

final class J {
    private Z[] Code = new Z[5];

    private static void J(int i) {
        if (i <= 0 || i > 5) {
            throw new IllegalArgumentException("Index must be between 1 and 5 inclusive.");
        }
    }

    public final void Code(Z z) {
        J(z.J());
        this.Code[z.J() - 1] = z;
    }

    public final boolean Code(int i) {
        J(i);
        return this.Code[i + -1] == null;
    }

    public final Z[] Code() {
        return (Z[]) this.Code.clone();
    }

    public final Z I(int i) {
        J(i);
        return this.Code[i - 1];
    }

    public final boolean I() {
        for (Z z : this.Code) {
            if (z != null) {
                return true;
            }
        }
        return false;
    }

    public final void Z(int i) {
        J(i);
        this.Code[i - 1] = null;
    }
}
