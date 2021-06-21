package com.google.analytics.tracking.android;

import android.content.Context;
import java.lang.Thread;
import java.util.ArrayList;

/* compiled from: Source */
public final class q implements Thread.UncaughtExceptionHandler {
    private final Thread.UncaughtExceptionHandler Code;
    private final ao I;
    private p J;
    private final am Z;

    public q(ao aoVar, am amVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (aoVar == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (amVar == null) {
            throw new NullPointerException("serviceManager cannot be null");
        } else {
            this.Code = uncaughtExceptionHandler;
            this.I = aoVar;
            this.Z = amVar;
            this.J = new p(context, new ArrayList());
            af.J("ExceptionReporter created, original handler is " + (uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName()));
        }
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        String str = "UncaughtException";
        if (this.J != null) {
            str = this.J.Code(thread != null ? thread.getName() : null, th);
        }
        af.J("Tracking Exception: " + str);
        this.I.J(str);
        this.Z.Z();
        if (this.Code != null) {
            af.J("Passing exception to original handler.");
            this.Code.uncaughtException(thread, th);
        }
    }
}
