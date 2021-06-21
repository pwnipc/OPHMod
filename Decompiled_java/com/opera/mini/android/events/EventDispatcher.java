package com.opera.mini.android.events;

import android.os.Handler;
import android.os.Looper;
import java.util.EnumMap;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Source */
public class EventDispatcher {
    private static Handler B = new Handler(Looper.getMainLooper());
    private static final EventDispatcher J = new EventDispatcher();
    private final df Code = new df(dn.Code, "main-bus");
    private final List I = new LinkedList();
    private int Z;

    /* compiled from: Source */
    public interface DisposableEvent {
        void Code();
    }

    /* compiled from: Source */
    public enum Group {
        ;

        private Group(String str) {
        }
    }

    private EventDispatcher() {
        new EnumMap(Group.class);
    }

    public static void Code(Object obj) {
        EventDispatcher eventDispatcher = J;
        eventDispatcher.Z++;
        if (obj instanceof DisposableEvent) {
            eventDispatcher.I.add((DisposableEvent) obj);
        }
        eventDispatcher.Code.I(obj);
        int i = eventDispatcher.Z - 1;
        eventDispatcher.Z = i;
        if (i == 0) {
            for (DisposableEvent Code2 : eventDispatcher.I) {
                Code2.Code();
            }
            eventDispatcher.I.clear();
        }
    }

    public static void I(final Object obj) {
        B.post(new Runnable() {
            public final void run() {
                EventDispatcher.Code(obj);
            }
        });
    }

    public static void Z(Object obj) {
        J.Code.Code(obj);
    }
}
