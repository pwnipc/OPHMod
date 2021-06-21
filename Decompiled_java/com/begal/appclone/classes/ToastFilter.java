package com.begal.appclone.classes;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public class ToastFilter {
    /* access modifiers changed from: private */
    public static final String TAG = ToastFilter.class.getSimpleName();
    /* access modifiers changed from: private */
    public final boolean mBlockAllToasts;
    private final String mToastFilter;

    public ToastFilter(CloneSettings cloneSettings) {
        this.mBlockAllToasts = cloneSettings.getBoolean("blockAllToasts", false).booleanValue();
        this.mToastFilter = cloneSettings.getString("toastFilter", (String) null);
        String str = TAG;
        Log.i(str, "ToastFilter; mBlockAllToasts: " + this.mBlockAllToasts + ", mToastFilter: " + this.mToastFilter);
    }

    public void init(Context context) {
        Log.i(TAG, "init; ");
        if (this.mBlockAllToasts || !TextUtils.isEmpty(this.mToastFilter)) {
            try {
                final Set<String> toastFilterSet = new HashSet<>();
                if (!TextUtils.isEmpty(this.mToastFilter)) {
                    for (String s : this.mToastFilter.trim().split(",")) {
                        String s2 = s.trim();
                        if (!TextUtils.isEmpty(s2)) {
                            toastFilterSet.add(s2.toLowerCase(Locale.ENGLISH));
                        }
                    }
                }
                new Toast(context).cancel();
                Method m = Toast.class.getDeclaredMethod("getService", new Class[0]);
                m.setAccessible(true);
                m.invoke((Object) null, new Object[0]);
                Field field = Toast.class.getDeclaredField("sService");
                field.setAccessible(true);
                final Object originalService = field.get((Object) null);
                Object proxy = Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{Class.forName("android.app.INotificationManager")}, new InvocationHandler() {
                    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                        if ("enqueueToast".equals(method.getName())) {
                            if (ToastFilter.this.mBlockAllToasts) {
                                Log.i(ToastFilter.TAG, "invoke; enqueueToast blocked");
                                return null;
                            }
                            String s = getToastText(args[1]).toLowerCase(Locale.ENGLISH);
                            for (String toastFilterString : toastFilterSet) {
                                if (s.contains(toastFilterString)) {
                                    Log.i(ToastFilter.TAG, "invoke; enqueueToast blocked");
                                    return null;
                                }
                            }
                        }
                        return method.invoke(originalService, args);
                    }

                    private String getToastText(Object arg1) {
                        TextView textView;
                        CharSequence text;
                        try {
                            Field field = arg1.getClass().getDeclaredField("mNextView");
                            field.setAccessible(true);
                            View view = (View) field.get(arg1);
                            if (view == null || (textView = (TextView) view.findViewById(16908299)) == null || (text = textView.getText()) == null) {
                                return "";
                            }
                            return text.toString();
                        } catch (Exception e) {
                            Log.w(ToastFilter.TAG, e);
                            return "";
                        }
                    }
                });
                field.set((Object) null, proxy);
                Log.i(TAG, "init; installed proxy; proxy: " + proxy);
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
    }
}
