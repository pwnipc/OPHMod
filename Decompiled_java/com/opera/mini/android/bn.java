package com.opera.mini.android;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: Source */
public final class bn {
    public static Object Code(Object obj, String str, Object... objArr) {
        Class[] clsArr;
        if (obj == null) {
            return null;
        }
        if (objArr != null) {
            Class[] clsArr2 = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                clsArr2[i] = objArr[i] == null ? null : objArr[i].getClass();
            }
            clsArr = clsArr2;
        } else {
            clsArr = null;
        }
        Method Code = Code(obj, str, clsArr);
        if (Code == null) {
            return null;
        }
        Code.setAccessible(true);
        try {
            return obj instanceof Class ? Code.invoke((Object) null, objArr) : Code.invoke(obj, objArr);
        } catch (ExceptionInInitializerError | IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
            return null;
        } catch (ClassCastException e2) {
            throw e2;
        }
    }

    private static Method Code(Object obj, String str, Class[] clsArr) {
        Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
        while (cls != Object.class) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException | SecurityException e) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }
}
