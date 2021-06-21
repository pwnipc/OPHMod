package andhook.lib.xposed;

import andhook.lib.AndHook;
import andhook.lib.xposed.XC_MethodHook;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;

public final class XposedBridge {
    public static final ClassLoader BOOTCLASSLOADER = ClassLoader.getSystemClassLoader();
    /* access modifiers changed from: private */
    public static final Object[] EMPTY_ARRAY = new Object[0];
    public static final String TAG = "AndHook";
    private static final ConcurrentHashMap<Member, AdditionalHookInfo> sHookedMethodInfos = new ConcurrentHashMap<>();

    static {
        AndHook.ensureNativeLibraryLoaded((File) null);
    }

    public static void log(String text) {
        Log.i("AndHook", text);
    }

    public static void log(Throwable t) {
        Log.e("AndHook", Log.getStackTraceString(t));
    }

    public static XC_MethodHook.Unhook hookMethod(Member hookMethod, XC_MethodHook callback) {
        if (!(hookMethod instanceof Method) && !(hookMethod instanceof Constructor)) {
            throw new IllegalArgumentException("Only methods and constructors can be hooked: " + hookMethod.toString());
        } else if (Modifier.isAbstract(hookMethod.getModifiers())) {
            throw new IllegalArgumentException("Cannot hook abstract methods: " + hookMethod.toString());
        } else {
            AdditionalHookInfo additionalInfo = sHookedMethodInfos.get(hookMethod);
            if (additionalInfo == null) {
                if (Modifier.isStatic(hookMethod.getModifiers())) {
                    AndHook.ensureClassInitialized(hookMethod.getDeclaringClass());
                }
                additionalInfo = new AdditionalHookInfo(hookMethod, AndHook.backup(hookMethod));
                if (additionalInfo.slot == -1) {
                    throw new RuntimeException("Failed to backup methods: " + hookMethod.toString());
                }
                additionalInfo.callbacks.add(callback);
                if (!AndHook.hook(hookMethod, additionalInfo, additionalInfo.slot)) {
                    throw new RuntimeException("Failed to hook methods: " + hookMethod.toString());
                }
                sHookedMethodInfos.put(hookMethod, additionalInfo);
            } else if (!additionalInfo.method.getDeclaringClass().getClassLoader().equals(hookMethod.getDeclaringClass().getClassLoader())) {
                throw new RuntimeException("Unexpected same methods within difference CL: " + hookMethod.toString());
            } else {
                additionalInfo.callbacks.add(callback);
            }
            callback.getClass();
            return new XC_MethodHook.Unhook(additionalInfo.method, additionalInfo.slot);
        }
    }

    public static void unhookMethod(Member hookMethod, XC_MethodHook callback) {
        AdditionalHookInfo additionalInfo = sHookedMethodInfos.get(hookMethod);
        if (additionalInfo != null) {
            additionalInfo.callbacks.remove(callback);
        }
    }

    public static boolean unhookMethod(Member hookMethod, int slot) {
        boolean r = AndHook.restore(slot, hookMethod);
        if (r) {
            sHookedMethodInfos.remove(hookMethod);
        }
        return r;
    }

    public static HashSet<XC_MethodHook.Unhook> hookAllMethods(Class<?> hookClass, XC_MethodHook callback) {
        HashSet<XC_MethodHook.Unhook> unhooks = new HashSet<>();
        for (Member method : hookClass.getDeclaredMethods()) {
            unhooks.add(hookMethod(method, callback));
        }
        return unhooks;
    }

    public static HashSet<XC_MethodHook.Unhook> hookAllMethods(Class<?> hookClass, String methodName, XC_MethodHook callback) {
        HashSet<XC_MethodHook.Unhook> unhooks = new HashSet<>();
        for (Member method : hookClass.getDeclaredMethods()) {
            if (method.getName().equals(methodName)) {
                unhooks.add(hookMethod(method, callback));
            }
        }
        return unhooks;
    }

    public static HashSet<XC_MethodHook.Unhook> hookAllConstructors(Class<?> hookClass, XC_MethodHook callback) {
        HashSet<XC_MethodHook.Unhook> unhooks = new HashSet<>();
        for (Member constructor : hookClass.getDeclaredConstructors()) {
            unhooks.add(hookMethod(constructor, callback));
        }
        return unhooks;
    }

    private static Object handleHookedMethod(Object additionalInfoObj, Object thisObject, Object[] args) throws Throwable {
        AdditionalHookInfo additionalInfo = (AdditionalHookInfo) additionalInfoObj;
        Object[] callbacksSnapshot = additionalInfo.callbacks.getSnapshot();
        int callbacksLength = callbacksSnapshot.length;
        if (callbacksLength == 0) {
            return invokeOriginalMethod(additionalInfo.slot, thisObject, args);
        }
        XC_MethodHook.MethodHookParam param = new XC_MethodHook.MethodHookParam();
        param.slot = additionalInfo.slot;
        param.method = additionalInfo.method;
        param.thisObject = thisObject;
        param.args = args;
        int beforeIdx = 0;
        while (true) {
            try {
                ((XC_MethodHook) callbacksSnapshot[beforeIdx]).beforeHookedMethod(param);
                if (param.returnEarly) {
                    beforeIdx++;
                    break;
                }
            } catch (Throwable t) {
                log(t);
                param.setResult((Object) null);
                param.returnEarly = false;
            }
            beforeIdx++;
            if (beforeIdx >= callbacksLength) {
                break;
            }
        }
        int beforeIdx2 = beforeIdx;
        if (!param.returnEarly) {
            try {
                param.setResult(invokeOriginalMethod(additionalInfo.slot, param.thisObject, param.args));
            } catch (Throwable t2) {
                param.setThrowable(t2);
            }
        }
        int afterIdx = beforeIdx2 - 1;
        do {
            Object lastResult = param.getResult();
            Throwable lastThrowable = param.getThrowable();
            try {
                ((XC_MethodHook) callbacksSnapshot[afterIdx]).afterHookedMethod(param);
            } catch (Throwable t3) {
                log(t3);
                if (lastThrowable == null) {
                    param.setResult(lastResult);
                } else {
                    param.setThrowable(lastThrowable);
                }
            }
            afterIdx--;
        } while (afterIdx >= 0);
        if (!param.hasThrowable()) {
            return param.getResult();
        }
        throw param.getThrowable();
    }

    public static int getBackupSlot(Member method) {
        AdditionalHookInfo additionalInfo = sHookedMethodInfos.get(method);
        if (additionalInfo != null) {
            return additionalInfo.slot;
        }
        return -1;
    }

    public static Object invokeOriginalMethod(Member method, Object thisObject, Object[] args) {
        int slot = getBackupSlot(method);
        if (slot != -1) {
            return invokeOriginalMethod(slot, thisObject, args);
        }
        return null;
    }

    public static Object invokeOriginalMethod(int slot, Object thisObject, Object[] args) {
        return AndHook.invoke(slot, thisObject, args);
    }

    public static final class CopyOnWriteSortedSet<E> {
        private volatile transient Object[] elements = XposedBridge.EMPTY_ARRAY;

        public synchronized boolean add(E e) {
            if (indexOf(e) >= 0) {
                return false;
            }
            Object[] newElements = new Object[(this.elements.length + 1)];
            System.arraycopy(this.elements, 0, newElements, 0, this.elements.length);
            newElements[this.elements.length] = e;
            Arrays.sort(newElements);
            this.elements = newElements;
            return true;
        }

        public synchronized boolean remove(E e) {
            int index = indexOf(e);
            if (index == -1) {
                return false;
            }
            Object[] newElements = new Object[(this.elements.length - 1)];
            System.arraycopy(this.elements, 0, newElements, 0, index);
            System.arraycopy(this.elements, index + 1, newElements, index, (this.elements.length - index) - 1);
            this.elements = newElements;
            return true;
        }

        private int indexOf(Object o) {
            for (int i = 0; i < this.elements.length; i++) {
                if (o.equals(this.elements[i])) {
                    return i;
                }
            }
            return -1;
        }

        public Object[] getSnapshot() {
            return this.elements;
        }
    }

    private static final class AdditionalHookInfo {
        final CopyOnWriteSortedSet<XC_MethodHook> callbacks;
        final Member method;
        final int slot;

        private AdditionalHookInfo(Member method2, int slot2) {
            this.callbacks = new CopyOnWriteSortedSet<>();
            this.method = method2;
            this.slot = slot2;
        }
    }
}
