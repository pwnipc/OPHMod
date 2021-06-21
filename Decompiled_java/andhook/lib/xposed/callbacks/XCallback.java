package andhook.lib.xposed.callbacks;

import android.os.Bundle;
import java.io.Serializable;

public abstract class XCallback implements Comparable<XCallback> {
    public static final int PRIORITY_DEFAULT = 50;
    public static final int PRIORITY_HIGHEST = 10000;
    public static final int PRIORITY_LOWEST = -10000;
    public final int priority;

    public XCallback() {
        this.priority = 50;
    }

    public XCallback(int priority2) {
        this.priority = priority2;
    }

    public static abstract class Param {
        public final Object[] callbacks = null;
        private Bundle extra;

        protected Param() {
        }

        public synchronized Bundle getExtra() {
            if (this.extra == null) {
                this.extra = new Bundle();
            }
            return this.extra;
        }

        public Object getObjectExtra(String key) {
            Serializable o = getExtra().getSerializable(key);
            if (o instanceof SerializeWrapper) {
                return ((SerializeWrapper) o).object;
            }
            return null;
        }

        public void setObjectExtra(String key, Object o) {
            getExtra().putSerializable(key, new SerializeWrapper(o));
        }

        private static class SerializeWrapper implements Serializable {
            private static final long serialVersionUID = 1;
            /* access modifiers changed from: private */
            public final Object object;

            public SerializeWrapper(Object o) {
                this.object = o;
            }
        }
    }

    public static void callAll(Param param) {
        if (param.callbacks == null) {
            throw new IllegalStateException("This object was not created for use with callAll");
        }
        for (int i = 0; i < param.callbacks.length; i++) {
            try {
                ((XCallback) param.callbacks[i]).call(param);
            } catch (Throwable th) {
            }
        }
    }

    /* access modifiers changed from: protected */
    public void call(Param param) throws Throwable {
    }

    public int compareTo(XCallback other) {
        if (this == other) {
            return 0;
        }
        if (other.priority != this.priority) {
            return other.priority - this.priority;
        }
        if (System.identityHashCode(this) < System.identityHashCode(other)) {
            return -1;
        }
        return 1;
    }
}
