package andhook.lib.xposed;

import andhook.lib.xposed.XC_MethodHook;

public abstract class XC_MethodReplacement extends XC_MethodHook {
    public static final XC_MethodReplacement DO_NOTHING = new XC_MethodReplacement(20000) {
        /* access modifiers changed from: protected */
        public Object replaceHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
            return null;
        }
    };

    /* access modifiers changed from: protected */
    public abstract Object replaceHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable;

    public XC_MethodReplacement() {
    }

    public XC_MethodReplacement(int priority) {
        super(priority);
    }

    /* access modifiers changed from: protected */
    public final void beforeHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
        try {
            param.setResult(replaceHookedMethod(param));
        } catch (Throwable t) {
            param.setThrowable(t);
        }
    }

    /* access modifiers changed from: protected */
    public final void afterHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
    }

    public static XC_MethodReplacement returnConstant(Object result) {
        return returnConstant(50, result);
    }

    public static XC_MethodReplacement returnConstant(int priority, final Object result) {
        return new XC_MethodReplacement(priority) {
            /* access modifiers changed from: protected */
            public Object replaceHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
                return result;
            }
        };
    }
}
