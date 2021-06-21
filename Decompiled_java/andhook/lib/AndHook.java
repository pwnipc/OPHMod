package andhook.lib;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

public final class AndHook {
    private static final String LIB_NAME = "AK";
    public static final String LOG_TAG = "AndHook";
    public static final String VERSION = "3.6.2";

    public static native int backup(Class<?> cls, String str, String str2);

    public static native int backup(Member member);

    public static native void deoptimizeMethod(Member member);

    public static native void disableLogging(boolean z);

    private static native void dumpClassMethods(Class<?> cls, String str);

    public static native void enableFastDexLoad(boolean z);

    public static native String getVersionInfo();

    public static native boolean hook(Class<?> cls, String str, String str2, Object obj, int i);

    public static native boolean hook(Member member, Object obj, int i);

    private static native boolean initializeClass(Class<?> cls);

    public static native Object invoke(int i, Object obj, Object... objArr);

    public static native void jitCompile(Member member);

    public static native void optimizeMethod(Member member);

    public static native boolean restore(int i, Member member);

    public static native void resumeAll();

    public static native void startDaemons();

    public static native void stopDaemons();

    public static native boolean suspendAll();

    public static void ensureNativeLibraryLoaded(File lib_dir) {
        try {
            getVersionInfo();
        } catch (UnsatisfiedLinkError e) {
            File tmpdir = new File(System.getProperty("java.io.tmpdir", "/data/local/tmp/"));
            if (!tmpdir.canWrite() || !tmpdir.canExecute()) {
                Log.w("AndHook", "Missing cache directory " + tmpdir);
            }
            if (lib_dir == null) {
                try {
                    System.loadLibrary(LIB_NAME);
                } catch (UnsatisfiedLinkError e2) {
                    if (lib_dir == null) {
                        try {
                            System.loadLibrary("AKCompat");
                        } catch (UnsatisfiedLinkError e3) {
                            throw new RuntimeException("Incompatible platform " + Build.VERSION.SDK_INT, e2);
                        }
                    } else {
                        System.load(new File(lib_dir, "libAKCompat.so").getAbsolutePath());
                    }
                }
            } else {
                System.load(new File(lib_dir, "libAK.so").getAbsolutePath());
            }
        }
    }

    public static int hook(Member origin, Object extra) {
        int slot = backup(origin);
        if (slot == -1 || hook(origin, extra, slot)) {
            return slot;
        }
        return -1;
    }

    public static int hook(Class<?> clazz, String name, String signature, Object extra) {
        int slot = backup(clazz, name, signature);
        if (slot == -1 || hook(clazz, name, signature, extra, slot)) {
            return slot;
        }
        return -1;
    }

    public static void hookNoBackup(Member origin, Object extra) {
        hook(origin, extra, -1);
    }

    public static void hookNoBackup(Class<?> clazz, String name, String signature, Object extra) {
        hook(clazz, name, signature, extra, -1);
    }

    public static boolean ensureClassInitialized(Class<?> clazz) {
        if (!clazz.isInterface() && !Modifier.isAbstract(clazz.getModifiers())) {
            return initializeClass(clazz);
        }
        Log.w("AndHook", "interface or abstract class `" + clazz.getName() + "` cannot be initialized!");
        return false;
    }

    public static void dumpClassMethods(Class<?> clazz) {
        dumpClassMethods(clazz, (String) null);
    }

    public static void dumpClassMethods(String clsname) {
        dumpClassMethods((Class<?>) null, clsname);
    }

    public static void invokeVoidMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            Dalvik.invokeVoidMethod(slot, receiver, params);
        } else {
            invoke(slot, receiver, params);
        }
    }

    public static boolean invokeBooleanMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeBooleanMethod(slot, receiver, params);
        }
        return ((Boolean) invoke(slot, receiver, params)).booleanValue();
    }

    public static byte invokeByteMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeByteMethod(slot, receiver, params);
        }
        return ((Byte) invoke(slot, receiver, params)).byteValue();
    }

    public static short invokeShortMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeShortMethod(slot, receiver, params);
        }
        return ((Short) invoke(slot, receiver, params)).shortValue();
    }

    public static char invokeCharMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeCharMethod(slot, receiver, params);
        }
        return ((Character) invoke(slot, receiver, params)).charValue();
    }

    public static int invokeIntMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeIntMethod(slot, receiver, params);
        }
        return ((Integer) invoke(slot, receiver, params)).intValue();
    }

    public static long invokeLongMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeLongMethod(slot, receiver, params);
        }
        return ((Long) invoke(slot, receiver, params)).longValue();
    }

    public static float invokeFloatMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeFloatMethod(slot, receiver, params);
        }
        return ((Float) invoke(slot, receiver, params)).floatValue();
    }

    public static double invokeDoubleMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeDoubleMethod(slot, receiver, params);
        }
        return ((Double) invoke(slot, receiver, params)).doubleValue();
    }

    public static <T> T invokeObjectMethod(int slot, Object receiver, Object... params) {
        if (Build.VERSION.SDK_INT <= 20) {
            return Dalvik.invokeObjectMethod(slot, receiver, params);
        }
        return invoke(slot, receiver, params);
    }

    public static <T> T invokeMethod(int slot, Object receiver, Object... params) {
        return invoke(slot, receiver, params);
    }

    private static final class Dalvik {
        public static native boolean invokeBooleanMethod(int i, Object obj, Object... objArr);

        public static native byte invokeByteMethod(int i, Object obj, Object... objArr);

        public static native char invokeCharMethod(int i, Object obj, Object... objArr);

        public static native double invokeDoubleMethod(int i, Object obj, Object... objArr);

        public static native float invokeFloatMethod(int i, Object obj, Object... objArr);

        public static native int invokeIntMethod(int i, Object obj, Object... objArr);

        public static native long invokeLongMethod(int i, Object obj, Object... objArr);

        public static native Object invokeObjectMethod(int i, Object obj, Object... objArr);

        public static native short invokeShortMethod(int i, Object obj, Object... objArr);

        public static native void invokeVoidMethod(int i, Object obj, Object... objArr);

        private Dalvik() {
        }
    }
}
