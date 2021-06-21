package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: di  reason: default package */
/* compiled from: Source */
final class di {
    private final Object Code;
    private final Method I;
    private boolean J = true;
    private final int Z;

    di(Object obj, Method method) {
        if (obj == null) {
            throw new NullPointerException("EventHandler target cannot be null.");
        } else if (method == null) {
            throw new NullPointerException("EventHandler method cannot be null.");
        } else {
            this.Code = obj;
            this.I = method;
            method.setAccessible(true);
            this.Z = ((method.hashCode() + 31) * 31) + obj.hashCode();
        }
    }

    public final boolean Code() {
        return this.J;
    }

    public final void Code(Object obj) {
        if (!this.J) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events.");
        }
        try {
            this.I.invoke(this.Code, new Object[]{obj});
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof Error) {
                throw ((Error) e2.getCause());
            }
            throw e2;
        }
    }

    public final String toString() {
        return "[EventHandler " + this.I + "]";
    }

    public final int hashCode() {
        return this.Z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        di diVar = (di) obj;
        if (!this.I.equals(diVar.I) || this.Code != diVar.Code) {
            return false;
        }
        return true;
    }
}
