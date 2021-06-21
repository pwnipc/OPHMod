package andhook.lib;

import android.util.Log;
import android.util.Pair;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.concurrent.ConcurrentHashMap;

public final class HookHelper {
    public static final String constructorName = "<init>";
    private static final ConcurrentHashMap<Pair<String, String>, Integer> sBackups = new ConcurrentHashMap<>();

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Hook {
        Class<?> clazz() default Hook.class;

        String name() default "";

        boolean need_origin() default true;

        String value() default "";
    }

    private static void warnKnownIssue(Method replace) {
        if (!Modifier.isStatic(replace.getModifiers()) || replace.getParameterTypes().length < 1 || replace.getParameterTypes()[0].isPrimitive()) {
            Log.e("AndHook", "method " + replace.getDeclaringClass().getName() + "@" + replace.getName() + " must be static and its first argument must be Class<?> or Object!");
        }
    }

    public static void hook(Member origin, Method replace) {
        if (uniqueKey(replace) != null) {
            warnKnownIssue(replace);
            int slot = AndHook.backup(origin);
            if (slot != -1 && saveBackupSlot(Integer.valueOf(slot), replace)) {
                AndHook.hook(origin, replace, slot);
            }
        }
    }

    public static void hook(Class<?> clazz, String name, String signature, Method replace) {
        if (uniqueKey(replace) != null) {
            warnKnownIssue(replace);
            int slot = AndHook.backup(clazz, name, signature);
            if (slot != -1 && saveBackupSlot(Integer.valueOf(slot), replace)) {
                AndHook.hook(clazz, name, signature, replace, slot);
            }
        }
    }

    private static Pair<String, String> uniqueKey(Method md) {
        String name = md.getDeclaringClass().getName();
        StringBuilder sb = new StringBuilder();
        sb.append(md.getName());
        sb.append(md.getParameterTypes().length - 1);
        Pair<String, String> key = Pair.create(name, sb.toString());
        if (!sBackups.containsKey(key)) {
            return key;
        }
        Log.e("AndHook", "duplicate key error! already hooked?");
        return null;
    }

    private static boolean saveBackupSlot(Integer slot, Method md) {
        Pair<String, String> key = uniqueKey(md);
        if (key == null) {
            return false;
        }
        sBackups.put(key, slot);
        Log.i("AndHook", "saved backup for " + ((String) key.first) + "@" + ((String) key.second) + ", slot = " + slot);
        return true;
    }

    private static int getBackupSlot(int identifier) {
        StackTraceElement stack = Thread.currentThread().getStackTrace()[4];
        ConcurrentHashMap<Pair<String, String>, Integer> concurrentHashMap = sBackups;
        String className = stack.getClassName();
        Integer slot = concurrentHashMap.get(Pair.create(className, stack.getMethodName() + identifier));
        if (slot != null) {
            return slot.intValue();
        }
        Log.e("AndHook", "no backup found for " + stack.getClassName() + "@" + stack.getMethodName() + "@" + identifier);
        return -1;
    }

    public static void invokeVoidOrigin(Object receiver, Object... params) {
        AndHook.invokeVoidMethod(getBackupSlot(params.length), receiver, params);
    }

    public static boolean invokeBooleanOrigin(Object receiver, Object... params) {
        return AndHook.invokeBooleanMethod(getBackupSlot(params.length), receiver, params);
    }

    public static byte invokeByteOrigin(Object receiver, Object... params) {
        return AndHook.invokeByteMethod(getBackupSlot(params.length), receiver, params);
    }

    public static short invokeShortOrigin(Object receiver, Object... params) {
        return AndHook.invokeShortMethod(getBackupSlot(params.length), receiver, params);
    }

    public static char invokeCharOrigin(Object receiver, Object... params) {
        return AndHook.invokeCharMethod(getBackupSlot(params.length), receiver, params);
    }

    public static int invokeIntOrigin(Object receiver, Object... params) {
        return AndHook.invokeIntMethod(getBackupSlot(params.length), receiver, params);
    }

    public static long invokeLongOrigin(Object receiver, Object... params) {
        return AndHook.invokeLongMethod(getBackupSlot(params.length), receiver, params);
    }

    public static float invokeFloatOrigin(Object receiver, Object... params) {
        return AndHook.invokeFloatMethod(getBackupSlot(params.length), receiver, params);
    }

    public static double invokeDoubleOrigin(Object receiver, Object... params) {
        return AndHook.invokeDoubleMethod(getBackupSlot(params.length), receiver, params);
    }

    public static <T> T invokeObjectOrigin(Object receiver, Object... params) {
        return AndHook.invoke(getBackupSlot(params.length), receiver, params);
    }

    public static void setObjectField(Object obj, String name, Object value) {
        Field f = findFieldHierarchically(obj.getClass(), name);
        if (f != null) {
            try {
                f.set(obj, value);
            } catch (Exception e) {
                Log.e("AndHook", "failed to set instance field " + name, e);
            }
        }
    }

    public static void setStaticObjectField(Class<?> clazz, String name, Object value) {
        Field f = findFieldHierarchically(clazz, name);
        if (f != null) {
            try {
                f.set((Object) null, value);
            } catch (Exception e) {
                Log.e("AndHook", "failed to set static field " + name + " for class " + clazz.getName(), e);
            }
        }
    }

    public static Class<?> findClass(String classname) {
        return findClass(classname, AndHook.class.getClassLoader());
    }

    public static Class<?> findClass(String classname, ClassLoader loader) {
        try {
            return loader.loadClass(classname);
        } catch (Exception e) {
            Log.e("AndHook", "failed to find class " + classname + " on ClassLoader " + loader, e);
            return null;
        }
    }

    public static Field findFieldHierarchically(Class<?> clazz, String name) {
        Field f = null;
        Class cls = clazz;
        do {
            try {
                f = cls.getDeclaredField(name);
                continue;
            } catch (NoSuchFieldException e) {
                cls = cls.getSuperclass();
                if (cls == null) {
                    break;
                }
            }
        } while (f == null);
        if (f != null) {
            f.setAccessible(true);
        } else {
            Log.e("AndHook", "failed to find field " + name + " of class " + clazz.getName());
        }
        return f;
    }

    public static Constructor<?> findConstructorHierarchically(Class<?> clazz, Class<?>... parameterTypes) {
        Constructor<?> m = null;
        Class cls = clazz;
        do {
            try {
                m = cls.getDeclaredConstructor(parameterTypes);
                continue;
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
                if (cls == null) {
                    break;
                }
            }
        } while (m == null);
        if (m != null) {
            m.setAccessible(true);
        } else {
            Log.e("AndHook", "failed to find constructor of class " + clazz.getName());
        }
        return m;
    }

    public static Method findMethodHierarchically(Class<?> clazz, String name, Class<?>... parameterTypes) {
        Method m = null;
        Class cls = clazz;
        do {
            try {
                m = cls.getDeclaredMethod(name, parameterTypes);
                continue;
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
                if (cls == null) {
                    break;
                }
            }
        } while (m == null);
        if (m != null) {
            m.setAccessible(true);
        } else {
            Log.e("AndHook", "failed to find method " + name + " of class " + clazz.getName());
        }
        return m;
    }

    private static boolean isConstructor(Class<?> clazz, String methodname) {
        String clsname = clazz.getName();
        if (!methodname.equals(constructorName)) {
            if (!clsname.endsWith("." + methodname)) {
                StringBuilder sb = new StringBuilder();
                sb.append("$");
                sb.append(methodname);
                return clsname.endsWith(sb.toString());
            }
        }
    }

    public static void applyHooks(Class<?> holdClass) {
        applyHooks(holdClass, holdClass.getClassLoader());
    }

    public static void applyHooks(Class<?> holdClass, ClassLoader loader) {
        Member origin;
        for (Method hookMethod : holdClass.getDeclaredMethods()) {
            Hook hookInfo = (Hook) hookMethod.getAnnotation(Hook.class);
            if (hookInfo != null) {
                String name = hookInfo.name();
                if (name.isEmpty()) {
                    name = hookMethod.getName();
                }
                Class<?> clazz = hookInfo.clazz();
                if (clazz == Hook.class) {
                    try {
                        clazz = loader.loadClass(hookInfo.value());
                    } catch (Exception e) {
                        Log.e("AndHook", e.getMessage(), e);
                    }
                }
                Class<?>[] _parameterTypes = hookMethod.getParameterTypes();
                if (_parameterTypes.length < 1) {
                    Log.e("AndHook", "unexpected args number!");
                } else {
                    Class<?>[] parameterTypes = new Class[(_parameterTypes.length - 1)];
                    System.arraycopy(_parameterTypes, 1, parameterTypes, 0, parameterTypes.length);
                    if (isConstructor(clazz, name)) {
                        origin = findConstructorHierarchically(clazz, parameterTypes);
                    } else {
                        origin = findMethodHierarchically(clazz, name, parameterTypes);
                    }
                    if (origin != null) {
                        if (Modifier.isStatic(origin.getModifiers())) {
                            AndHook.ensureClassInitialized(clazz);
                        }
                        if (hookInfo.need_origin()) {
                            hook(origin, hookMethod);
                        } else {
                            AndHook.hookNoBackup(origin, hookMethod);
                        }
                    }
                }
            }
        }
    }
}
