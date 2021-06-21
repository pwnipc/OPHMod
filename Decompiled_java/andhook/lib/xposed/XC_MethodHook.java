package andhook.lib.xposed;

import andhook.lib.xposed.callbacks.XCallback;
import java.lang.reflect.Member;

public class XC_MethodHook extends XCallback {
    protected XC_MethodHook() {
    }

    XC_MethodHook(int priority) {
        super(priority);
    }

    /* access modifiers changed from: protected */
    public void beforeHookedMethod(MethodHookParam param) throws Throwable {
    }

    /* access modifiers changed from: protected */
    public void afterHookedMethod(MethodHookParam param) throws Throwable {
    }

    public static final class MethodHookParam extends XCallback.Param {
        public Object[] args;
        public Member method;
        private Object result = null;
        boolean returnEarly = false;
        public int slot;
        public Object thisObject;
        private Throwable throwable = null;

        public Object getResult() {
            return this.result;
        }

        public void setResult(Object result2) {
            this.result = result2;
            this.throwable = null;
            this.returnEarly = true;
        }

        public Throwable getThrowable() {
            return this.throwable;
        }

        public boolean hasThrowable() {
            return this.throwable != null;
        }

        public void setThrowable(Throwable throwable2) {
            this.throwable = throwable2;
            this.result = null;
            this.returnEarly = true;
        }

        public Object getResultOrThrowable() throws Throwable {
            if (this.throwable == null) {
                return this.result;
            }
            throw this.throwable;
        }
    }

    public final class Unhook {
        private final Member hookMethod;
        private final int slot;

        Unhook(Member hookMethod2, int slot2) {
            this.hookMethod = hookMethod2;
            this.slot = slot2;
        }

        public Member getHookedMethod() {
            return this.hookMethod;
        }

        public XC_MethodHook getCallback() {
            return XC_MethodHook.this;
        }

        public void unhook() {
            XposedBridge.unhookMethod(this.hookMethod, XC_MethodHook.this);
        }

        public boolean restore() {
            return XposedBridge.unhookMethod(this.hookMethod, this.slot);
        }
    }
}
