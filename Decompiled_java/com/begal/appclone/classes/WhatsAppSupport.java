package com.begal.appclone.classes;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.Field;

public class WhatsAppSupport extends AbstractActivityContentProvider {
    /* access modifiers changed from: private */
    public static final String TAG = WhatsAppSupport.class.getSimpleName();
    private Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public String mOriginalPackageName;
    /* access modifiers changed from: private */
    public String mVersionName;

    /* access modifiers changed from: package-private */
    public void init(String originalPackageName) {
        this.mOriginalPackageName = originalPackageName;
        onCreate();
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        install(activity);
    }

    private void install(Context oldContext) {
        Exception e;
        String str = TAG;
        Log.i(str, "install; context: " + oldContext);
        this.mVersionName = Utils.getVersionName(oldContext);
        if (this.mVersionName == null) {
            this.mVersionName = "";
        }
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
            final Context finalContext = context;
            baseField.set(oldContext, new ContextWrapper(finalContext) {
                public String getPackageCodePath() {
                    try {
                        PackageInfo packageInfo = getPackageManager().getPackageInfo(WhatsAppSupport.this.mOriginalPackageName, 0);
                        if (!WhatsAppSupport.this.mVersionName.equals(packageInfo.versionName)) {
                            WhatsAppSupport.this.showOriginalWhatsAppRequiredMessage(finalContext);
                        }
                        String publicSourceDir = packageInfo.applicationInfo.publicSourceDir;
                        String access$300 = WhatsAppSupport.TAG;
                        Log.i(access$300, "getPackageCodePath; publicSourceDir: " + publicSourceDir);
                        return publicSourceDir;
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.w(WhatsAppSupport.TAG, e);
                        WhatsAppSupport.this.showOriginalWhatsAppRequiredMessage(finalContext);
                        return super.getPackageCodePath();
                    } catch (Exception e2) {
                        Log.w(WhatsAppSupport.TAG, e2);
                        return super.getPackageCodePath();
                    }
                }
            });
            Log.i(TAG, "installed; installed context wrapper");
        } catch (Exception e3) {
            Context context2 = oldContext;
            e = e3;
            Log.w(TAG, e);
        }
    }

    /* access modifiers changed from: private */
    public void showOriginalWhatsAppRequiredMessage(final Context context) {
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                try {
                    Context context = context;
                    Utils.showDialog(context, "WhatsApp", "The original WhatsApp app " + WhatsAppSupport.this.mVersionName + " must be installed during the registration process.");
                } catch (Exception e) {
                    Log.w(WhatsAppSupport.TAG, e);
                }
            }
        }, 2000);
    }
}
