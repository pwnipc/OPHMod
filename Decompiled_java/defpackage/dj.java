package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: dj  reason: default package */
/* compiled from: Source */
final class dj {
    final Object Code;
    private final Method I;
    private boolean J = true;
    private final int Z;

    dj(Object obj, Method method) {
        if (obj == null) {
            throw new NullPointerException("EventProducer target cannot be null.");
        } else if (method == null) {
            throw new NullPointerException("EventProducer method cannot be null.");
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

    public final Object I() {
        if (!this.J) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
        }
        try {
            return this.I.invoke(this.Code, new Object[0]);
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
        return "[EventProducer " + this.I + "]";
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
        dj djVar = (dj) obj;
        if (!this.I.equals(djVar.I) || this.Code != djVar.Code) {
            return false;
        }
        return true;
    }
}
