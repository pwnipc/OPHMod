package com.begal.appclone.classes;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.begal.appclone.classes.util.IPackageManagerHook;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.security.cert.X509Certificate;

class Signatures {
    /* access modifiers changed from: private */
    public static final String TAG = Signatures.class.getSimpleName();
    /* access modifiers changed from: private */
    public final boolean mDisableShareActions;
    /* access modifiers changed from: private */
    public final String mFacebookLoginBehavior;
    /* access modifiers changed from: private */
    public final String mTwitterLoginBehavior;

    Signatures(CloneSettings cloneSettings) {
        this.mFacebookLoginBehavior = cloneSettings.getString("facebookLoginBehavior", (String) null);
        this.mTwitterLoginBehavior = cloneSettings.getString("twitterLoginBehavior", (String) null);
        this.mDisableShareActions = cloneSettings.getBoolean("disableShareActions", false).booleanValue();
        String str = TAG;
        Log.i(str, "Signatures; mFacebookLoginBehavior: " + this.mFacebookLoginBehavior + ", mTwitterLoginBehavior: " + this.mTwitterLoginBehavior + ", mDisableShareActions: " + this.mDisableShareActions);
    }

    /* access modifiers changed from: package-private */
    public void init(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 128);
            Integer uid = Integer.valueOf(applicationInfo.uid);
            Bundle metaData = applicationInfo.metaData;
            int i = 0;
            String originalPackageName = new String(Base64.decode(metaData.getString("com.begal.appclone.originalPackageName"), 0));
            ApplicationInfo originalApplicationInfo = null;
            try {
                originalApplicationInfo = packageManager.getApplicationInfo(originalPackageName, 0);
            } catch (Exception e) {
            }
            ApplicationInfo originalApplicationInfo2 = originalApplicationInfo;
            if (originalApplicationInfo2 != null) {
                i = originalApplicationInfo2.uid;
            }
            int originalUid = i;
            String signaturesString = metaData.getString("com.begal.appclone.originalSignatures");
            String str = TAG;
            Log.i(str, "init; signaturesString: " + signaturesString);
            Signature[] originalSignatures = unmarshallSignatures(signaturesString);
            if (originalSignatures != null) {
                String str2 = TAG;
                Log.i(str2, "init; packageName: " + packageName + ", uid: " + uid + ", originalPackageName: " + originalPackageName + ", originalUid: " + originalUid + ", originalSignatures:\n" + signaturesToString(originalSignatures));
                final String str3 = packageName;
                final String str4 = originalPackageName;
                PackageManager packageManager2 = packageManager;
                AnonymousClass1 r1 = r3;
                final Integer num = uid;
                Signature[] originalSignatures2 = originalSignatures;
                final int i2 = originalUid;
                String str5 = signaturesString;
                final Signature[] signatureArr = originalSignatures2;
                AnonymousClass1 r3 = new IPackageManagerHook() {
                    /* access modifiers changed from: protected */
                    public InvocationHandler getInvocationHandler(final Object originalPackageManager) {
                        return new InvocationHandler() {
                            public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                                ResolveInfo resolveInfo;
                                try {
                                    if ("checkSignatures".equals(method.getName())) {
                                        if (str3.equals(args[0])) {
                                            args[0] = str4;
                                        } else if (num.equals(args[0])) {
                                            args[0] = Integer.valueOf(i2);
                                        }
                                        if (str3.equals(args[1])) {
                                            args[1] = str4;
                                        } else if (num.equals(args[1])) {
                                            args[1] = Integer.valueOf(i2);
                                        }
                                    }
                                } catch (Exception e) {
                                    Log.w(Signatures.TAG, e);
                                }
                                Object res = method.invoke(originalPackageManager, args);
                                try {
                                    String name = method.getName();
                                    if ("getPackageInfo".equals(name)) {
                                        if (res != null) {
                                            PackageInfo packageInfo = (PackageInfo) res;
                                            if ("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) && ("com.facebook.katana".equals(packageInfo.packageName) || "com.facebook.lite".equals(packageInfo.packageName) || "com.facebook.services".equals(packageInfo.packageName))) {
                                                Log.i(Signatures.TAG, "invoke; getPackageInfo; returning null for Facebook packages");
                                                return null;
                                            } else if ("WEB_ONLY".equals(Signatures.this.mTwitterLoginBehavior) && "com.twitter.android".equals(packageInfo.packageName)) {
                                                Log.i(Signatures.TAG, "invoke; getPackageInfo; returning null for Twitter package");
                                                return null;
                                            } else if (str3.equals(packageInfo.packageName) && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                                                packageInfo.signatures = signatureArr;
                                            }
                                        }
                                    } else if ("getApplicationInfo".equals(name)) {
                                        if (res != null) {
                                            ApplicationInfo applicationInfo = (ApplicationInfo) res;
                                            if ("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) && ("com.facebook.katana".equals(applicationInfo.packageName) || "com.facebook.lite".equals(applicationInfo.packageName) || "com.facebook.services".equals(applicationInfo.packageName))) {
                                                Log.i(Signatures.TAG, "invoke; getApplicationInfo; returning null for Facebook packages");
                                                return null;
                                            } else if (!"WEB_ONLY".equals(Signatures.this.mTwitterLoginBehavior) || !"com.twitter.android".equals(applicationInfo.packageName)) {
                                                applicationInfo.flags &= -3;
                                            } else {
                                                Log.i(Signatures.TAG, "invoke; getApplicationInfo; returning null for Twitter package");
                                                return null;
                                            }
                                        }
                                    } else if ("getInstallerPackageName".equals(name)) {
                                        return new String(Base64.decode("Y29tLmFuZHJvaWQudmVuZGluZw==", 0));
                                    } else {
                                        if ("queryIntentActivities".equals(name)) {
                                            try {
                                                if (Signatures.this.mDisableShareActions) {
                                                    getResolveInfos(res).clear();
                                                } else if ("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || "WEB_ONLY_ALT".equals(Signatures.this.mFacebookLoginBehavior)) {
                                                    Iterator<ResolveInfo> it = getResolveInfos(res).iterator();
                                                    while (it.hasNext()) {
                                                        ResolveInfo resolveInfo2 = it.next();
                                                        if (resolveInfo2 != null && resolveInfo2.toString().contains("com.facebook.katana/.ProxyAuth")) {
                                                            it.remove();
                                                        }
                                                    }
                                                }
                                            } catch (Throwable t) {
                                                Log.w(Signatures.TAG, t);
                                            }
                                        } else if ("resolveIntent".equals(name)) {
                                            try {
                                                if (("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || "WEB_ONLY_ALT".equals(Signatures.this.mFacebookLoginBehavior)) && (resolveInfo = (ResolveInfo) res) != null && resolveInfo.toString().contains("com.facebook.katana/.ProxyAuth")) {
                                                    Log.i(Signatures.TAG, "invoke; resolveIntent; returning no resolved intent for Facebook");
                                                    return null;
                                                }
                                            } catch (Throwable t2) {
                                                Log.w(Signatures.TAG, t2);
                                            }
                                        }
                                    }
                                } catch (Exception e2) {
                                    Log.w(Signatures.TAG, e2);
                                }
                                return res;
                            }

                            private List<ResolveInfo> getResolveInfos(Object res) {
                                try {
                                    if (!"android.content.pm.ParceledListSlice".equals(res.getClass().getName())) {
                                        return (List) res;
                                    }
                                    Field f = (Build.VERSION.SDK_INT >= 26 ? res.getClass().getSuperclass() : res.getClass()).getDeclaredField("mList");
                                    f.setAccessible(true);
                                    return (List) f.get(res);
                                } catch (Exception e) {
                                    Log.w(Signatures.TAG, e);
                                    return Collections.EMPTY_LIST;
                                }
                            }
                        };
                    }
                };
                try {
                    r1.install(context);
                } catch (Throwable th) {
                    th = th;
                }
            } else {
                Context context2 = context;
            }
        } catch (Throwable th2) {
            th = th2;
            Context context3 = context;
            Log.w(TAG, th);
        }
    }

    private static Signature[] unmarshallSignatures(String s) {
        Parcel parcel;
        try {
            byte[] bytes = Base64.decode(s, 2);
            parcel = Parcel.obtain();
            parcel.unmarshall(bytes, 0, bytes.length);
            parcel.setDataPosition(0);
            Parcelable[] parcelables = parcel.readParcelableArray(Signatures.class.getClassLoader());
            Signature[] signatures = new Signature[parcelables.length];
            System.arraycopy(parcelables, 0, signatures, 0, parcelables.length);
            parcel.recycle();
            return signatures;
        } catch (Exception e) {
            Log.w(TAG, e);
            return null;
        } catch (Throwable th) {
            parcel.recycle();
            throw th;
        }
    }

    private static String signaturesToString(Signature[] signatures) {
        List<String> list = new ArrayList<>();
        if (signatures != null) {
            for (Signature signature : signatures) {
                try {
                    X509Certificate certificate = X509Certificate.getInstance(signature.toByteArray());
                    list.add("  " + Base64.encodeToString(certificate.getEncoded(), 2));
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
        }
        return TextUtils.join("\n", list);
    }
}
