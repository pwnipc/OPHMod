package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Environmenu;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

/* compiled from: Source */
public final class p {
    private final TreeSet Code = new TreeSet();

    public p(Context context, Collection collection) {
        Code(context, collection);
    }

    private void Code(Context context, Collection collection) {
        this.Code.clear();
        HashSet<String> hashSet = new HashSet<>();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            try {
                String packageName = context.getApplicationContext().getPackageName();
                this.Code.add(packageName);
                ActivityInfo[] activityInfoArr = context.getApplicationContext().getPackageManager().getPackageInfo(packageName, 15).activities;
                if (activityInfoArr != null) {
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        hashSet.add(activityInfo.packageName);
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                af.Z("No package found");
            }
        }
        for (String str : hashSet) {
            Iterator it = this.Code.iterator();
            boolean z = true;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str2 = (String) it.next();
                if (str.startsWith(str2)) {
                    z = false;
                } else if (str2.startsWith(str)) {
                    this.Code.remove(str2);
                }
            }
            if (z) {
                this.Code.add(str);
            }
        }
    }

    private static Throwable Code(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public final String Code(String str, Throwable th) {
        StackTraceElement stackTraceElement;
        Throwable Code2 = Code(th);
        StackTraceElement[] stackTrace = Code(th).getStackTrace();
        if (stackTrace != null && stackTrace.length != 0) {
            int length = stackTrace.length;
            int i = 0;
            loop0:
            while (true) {
                if (i >= length) {
                    stackTraceElement = stackTrace[0];
                    break;
                }
                StackTraceElement stackTraceElement2 = stackTrace[i];
                String className = stackTraceElement2.getClassName();
                Iterator it = this.Code.iterator();
                while (it.hasNext()) {
                    if (className.startsWith((String) it.next())) {
                        stackTraceElement = stackTraceElement2;
                        break loop0;
                    }
                }
                i++;
            }
        } else {
            stackTraceElement = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Code2.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            String str2 = Environmenu.MEDIA_UNKNOWN;
            if (split != null && split.length > 0) {
                str2 = split[split.length - 1];
            }
            sb.append(String.format(" (@%s:%s:%s)", new Object[]{str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())}));
        }
        if (str != null) {
            sb.append(String.format(" {%s}", new Object[]{str}));
        }
        return sb.toString();
    }
}
