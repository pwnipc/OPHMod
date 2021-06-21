package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: df  reason: default package */
/* compiled from: Source */
public final class df {
    private final dk B;
    private final ThreadLocal C;
    private final ConcurrentMap Code;
    private final ConcurrentMap I;
    private final dn J;
    private final String Z;
    private final ThreadLocal a;
    private final Map b;

    public df() {
        this("default");
    }

    private df(String str) {
        this(dn.Code, str);
    }

    public df(dn dnVar, String str) {
        this(dnVar, str, dk.Code);
    }

    private df(dn dnVar, String str, dk dkVar) {
        this.Code = new ConcurrentHashMap();
        this.I = new ConcurrentHashMap();
        this.C = new ThreadLocal() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object initialValue() {
                return new ConcurrentLinkedQueue();
            }
        };
        this.a = new ThreadLocal() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object initialValue() {
                return false;
            }
        };
        this.b = new HashMap();
        this.J = dnVar;
        this.Z = str;
        this.B = dkVar;
    }

    public final String toString() {
        return "[Bus \"" + this.Z + "\"]";
    }

    public final void Code(Object obj) {
        this.J.Code(this);
        Map Code2 = this.B.Code(obj);
        for (Class cls : Code2.keySet()) {
            dj djVar = (dj) Code2.get(cls);
            dj djVar2 = (dj) this.I.putIfAbsent(cls, djVar);
            if (djVar2 != null) {
                throw new IllegalArgumentException("Producer method for type " + cls + " found on type " + djVar.Code.getClass() + ", but already registered by type " + djVar2.Code.getClass() + ".");
            }
            Set<di> set = (Set) this.Code.get(cls);
            if (set != null && !set.isEmpty()) {
                for (di Code3 : set) {
                    Code(Code3, djVar);
                }
            }
        }
        Map I2 = this.B.I(obj);
        for (Class cls2 : I2.keySet()) {
            Set set2 = (Set) this.Code.get(cls2);
            if (set2 == null) {
                CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
                set2 = (Set) this.Code.putIfAbsent(cls2, copyOnWriteArraySet);
                if (set2 == null) {
                    set2 = copyOnWriteArraySet;
                }
            }
            set2.addAll((Set) I2.get(cls2));
        }
        for (Map.Entry entry : I2.entrySet()) {
            dj djVar3 = (dj) this.I.get((Class) entry.getKey());
            if (djVar3 != null && djVar3.Code()) {
                for (di diVar : (Set) entry.getValue()) {
                    if (!djVar3.Code()) {
                        break;
                    } else if (diVar.Code()) {
                        Code(diVar, djVar3);
                    }
                }
            }
        }
    }

    private static void Code(di diVar, dj djVar) {
        Object obj = null;
        try {
            obj = djVar.I();
        } catch (InvocationTargetException e) {
            Code("Producer " + djVar + " threw an exception.", e);
        }
        if (obj != null) {
            Code(obj, diVar);
        }
    }

    public final void I(Object obj) {
        boolean z;
        this.J.Code(this);
        Class<?> cls = obj.getClass();
        Set<Class> set = (Set) this.b.get(cls);
        if (set == null) {
            LinkedList linkedList = new LinkedList();
            HashSet hashSet = new HashSet();
            linkedList.add(cls);
            while (!linkedList.isEmpty()) {
                Class cls2 = (Class) linkedList.remove(0);
                hashSet.add(cls2);
                Class superclass = cls2.getSuperclass();
                if (superclass != null) {
                    linkedList.add(superclass);
                }
            }
            this.b.put(cls, hashSet);
            set = hashSet;
        }
        boolean z2 = false;
        for (Class cls3 : set) {
            Set<di> set2 = (Set) this.Code.get(cls3);
            if (set2 == null || set2.isEmpty()) {
                z = z2;
            } else {
                for (di dgVar : set2) {
                    ((ConcurrentLinkedQueue) this.C.get()).offer(new dg(obj, dgVar));
                }
                z = true;
            }
            z2 = z;
        }
        if (!z2 && !(obj instanceof dh)) {
            I(new dh());
        }
        Code();
    }

    private void Code() {
        if (!((Boolean) this.a.get()).booleanValue()) {
            this.a.set(true);
            while (true) {
                try {
                    dg dgVar = (dg) ((ConcurrentLinkedQueue) this.C.get()).poll();
                    if (dgVar == null) {
                        return;
                    }
                    if (dgVar.I.Code()) {
                        Code(dgVar.Code, dgVar.I);
                    }
                } finally {
                    this.a.set(false);
                }
            }
        }
    }

    private static void Code(Object obj, di diVar) {
        try {
            diVar.Code(obj);
        } catch (InvocationTargetException e) {
            Code("Could not dispatch event: " + obj.getClass() + " to handler " + diVar, e);
        }
    }

    private static void Code(String str, InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause != null) {
            throw new RuntimeException(str, cause);
        }
        throw new RuntimeException(str);
    }
}
