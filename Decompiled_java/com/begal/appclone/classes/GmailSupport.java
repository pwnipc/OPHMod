package com.begal.appclone.classes;

import andhook.lib.AndHook;
import andhook.lib.HookHelper;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.widget.TextView;
import com.begal.appclone.classes.util.IPackageManagerHook;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class GmailSupport extends AbstractActivityContentProvider {
    /* access modifiers changed from: private */
    public static final String TAG = GmailSupport.class.getSimpleName();
    private String mAppName;
    private String mErrorMessage;
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler();

    /* access modifiers changed from: package-private */
    public void init(Context context) {
        try {
            onCreate();
            installPackageManagerHook(context);
            installMailIntentReceiverHook(context);
            this.mAppName = Utils.getAppName(context);
            String str = TAG;
            Log.i(str, "init; mAppName: " + this.mAppName);
            this.mErrorMessage = context.getString(context.getResources().getIdentifier("common_google_play_services_unknown_issue", "string", context.getPackageName()), new Object[]{this.mAppName});
            this.mErrorMessage = this.mErrorMessage.trim();
            String str2 = TAG;
            Log.i(str2, "init; mErrorMessage: " + this.mErrorMessage);
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        Window window = activity.getWindow();
        window.setCallback(new WindowCallbackWrapper(window.getCallback()) {
            public void onContentChanged() {
                Log.i(GmailSupport.TAG, "onContentChanged; ");
                super.onContentChanged();
                GmailSupport.this.checkForDialog();
                GmailSupport.this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        GmailSupport.this.checkForDialog();
                    }
                }, 300);
                GmailSupport.this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        GmailSupport.this.checkForDialog();
                    }
                }, 500);
                GmailSupport.this.mHandler.postDelayed(new Runnable() {
                    public void run() {
                        GmailSupport.this.checkForDialog();
                    }
                }, 750);
            }
        });
        installContextHook(activity);
    }

    /* access modifiers changed from: protected */
    public int getActivityTimerDelayMillis() {
        return 500;
    }

    /* access modifiers changed from: protected */
    public void onActivityTimer(Activity activity) {
        checkForDialog();
    }

    /* access modifiers changed from: private */
    public synchronized void checkForDialog() {
        TextView messageView;
        CharSequence text;
        try {
            for (ViewParent viewRoot : Utils.getViewRoots()) {
                try {
                    Field f = viewRoot.getClass().getDeclaredField("mView");
                    f.setAccessible(true);
                    View view = (View) f.get(viewRoot);
                    if (!(view.getVisibility() == 8 || (messageView = (TextView) view.findViewById(16908299)) == null || (text = messageView.getText()) == null)) {
                        String s = text.toString();
                        if (!TextUtils.isEmpty(s) && (s.contains(this.mErrorMessage) || (s.contains(this.mAppName) && s.contains("Google Play")))) {
                            view.setVisibility(8);
                            String str = TAG;
                            Log.i(str, "checkForDialog; view hidden; viewRoot: " + viewRoot + ", view: " + view);
                        }
                    }
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        return;
    }

    private void installPackageManagerHook(final Context context) {
        String str = TAG;
        Log.i(str, "installPackageManagerHook; context: " + context);
        try {
            new IPackageManagerHook() {
                /* access modifiers changed from: protected */
                public InvocationHandler getInvocationHandler(final Object originalPackageManager) {
                    return new InvocationHandler() {
                        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                            try {
                                String name = method.getName();
                                if ("getPackageInfo".equals(name)) {
                                    if ((context.getPackageName() + "s").equals(args[0])) {
                                        String access$000 = GmailSupport.TAG;
                                        Log.i(access$000, "invoke; getPackageInfo; fixing args[0]: " + args[0]);
                                        args[0] = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE;
                                    }
                                } else if ("getApplicationInfo".equals(name)) {
                                    if ((context.getPackageName() + "s").equals(args[0])) {
                                        String access$0002 = GmailSupport.TAG;
                                        Log.i(access$0002, "invoke; getApplicationInfo; fixing args[0]: " + args[0]);
                                        args[0] = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE;
                                    }
                                }
                            } catch (Exception e) {
                                Log.w(GmailSupport.TAG, e);
                            }
                            return method.invoke(originalPackageManager, args);
                        }
                    };
                }
            }.install(context);
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }

    private void installContextHook(Context oldContext) {
        Exception e;
        String str = TAG;
        Log.i(str, "installContextHook; context: " + oldContext);
        try {
            Field baseField = ContextWrapper.class.getDeclaredField("mBase");
            baseField.setAccessible(true);
            Context context = oldContext;
            while (context instanceof ContextWrapper) {
                try {
                    oldContext = context;
                    context = (Context) baseField.get(context);
                } catch (Exception e2) {
                    e = e2;
                    Log.w(TAG, e);
                }
            }
            final String myPackageName = context.getPackageName();
            baseField.set(oldContext, new ContextWrapper(context) {
                public Context createPackageContext(String packageName, int flags) throws PackageManager.NameNotFoundException {
                    String access$000 = GmailSupport.TAG;
                    Log.i(access$000, "createPackageContext; packageName: " + packageName);
                    if (!(myPackageName + "s").equals(packageName)) {
                        return super.createPackageContext(packageName, flags);
                    }
                    String access$0002 = GmailSupport.TAG;
                    Log.i(access$0002, "createPackageContext; replacing remote context; packageName: " + packageName);
                    return new ContextWrapper(super.createPackageContext(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, flags)) {
                        private ClassLoader mClassLoader;

                        public ClassLoader getClassLoader() {
                            if (this.mClassLoader == null) {
                                this.mClassLoader = new ClassLoader(super.getClassLoader()) {
                                    /* access modifiers changed from: protected */
                                    public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
                                        String access$000 = GmailSupport.TAG;
                                        Log.i(access$000, "loadClass; name: " + name + ", resolve: " + resolve);
                                        if ((myPackageName + "s.common.security.ProviderInstallerImpl").equals(name)) {
                                            String access$0002 = GmailSupport.TAG;
                                            Log.i(access$0002, "loadClass; replacing class name: " + name);
                                            name = "com.google.android.gms.common.security.ProviderInstallerImpl";
                                        }
                                        return super.loadClass(name, resolve);
                                    }
                                };
                            }
                            return this.mClassLoader;
                        }
                    };
                }
            });
            Log.i(TAG, "installed; installed context wrapper");
        } catch (Exception e3) {
            Context context2 = oldContext;
            e = e3;
            Log.w(TAG, e);
        }
    }

    private void installMailIntentReceiverHook(Context context) {
        Log.i(TAG, "installMailIntentReceiverHook; ");
        try {
            AndHook.ensureNativeLibraryLoaded((File) null);
            Class<?> clazz = Class.forName(context.getPackageName() + ".MailIntentReceiver");
            AndHook.ensureClassInitialized(clazz);
            AndHook.ensureClassInitialized(GmailSupport.class);
            HookHelper.hook(clazz.getMethod("onReceive", new Class[]{Context.class, Intent.class}), GmailSupport.class.getMethod("onReceiveHook", new Class[]{Object.class, Context.class, Intent.class}));
            Log.i(TAG, "installMailIntentReceiverHook; onReceiveHook installed");
        } catch (Throwable t) {
            Log.w(TAG, t);
        }
    }

    public static void onReceiveHook(Object instance, Context context, Intent intent) {
        Log.i(TAG, "onReceiveHook; ");
    }
}
