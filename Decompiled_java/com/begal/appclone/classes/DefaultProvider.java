package com.begal.appclone.classes;

import andhook.lib.AndHook;
import andhook.lib.HookHelper;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStrean;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class DefaultProvider extends AbstractContentProvider {
    private static final int MAX_COUNT = 10;
    private static final String PREF_KEY_COUNT = "com.begal.appclone.classes.DefaultProvider.count";
    /* access modifiers changed from: private */
    public static final String TAG = DefaultProvider.class.getSimpleName();

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x01bc, code lost:
        if ("PORTRAIT".equals(r8) != false) goto L_0x01c9;
     */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x041a  */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x041d  */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x044f  */
    /* JADX WARNING: Removed duplicated region for block: B:116:0x0473  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0486  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x04aa  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x04bd  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x04e1  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x04f4  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0518  */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x052b  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x0570  */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x057b A[SYNTHETIC, Splitter:B:153:0x057b] */
    /* JADX WARNING: Removed duplicated region for block: B:163:0x05cd  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x061d  */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x064a  */
    /* JADX WARNING: Removed duplicated region for block: B:182:0x06b7  */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x06e1  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x0707  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x071b A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x07ef A[SYNTHETIC, Splitter:B:212:0x07ef] */
    /* JADX WARNING: Removed duplicated region for block: B:238:0x08ec  */
    /* JADX WARNING: Removed duplicated region for block: B:244:0x0947  */
    /* JADX WARNING: Removed duplicated region for block: B:249:0x09bd A[SYNTHETIC, Splitter:B:249:0x09bd] */
    /* JADX WARNING: Removed duplicated region for block: B:275:0x0a3b  */
    /* JADX WARNING: Removed duplicated region for block: B:284:0x0a9f  */
    /* JADX WARNING: Removed duplicated region for block: B:289:0x0abc  */
    /* JADX WARNING: Removed duplicated region for block: B:296:0x0b09  */
    /* JADX WARNING: Removed duplicated region for block: B:303:0x0b3a  */
    /* JADX WARNING: Removed duplicated region for block: B:313:0x0b74 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:315:0x0b77 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:316:0x0b9d A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:319:0x0bb2 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:320:0x0bd6 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:323:0x0be9 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:324:0x0c0d A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:327:0x0c1f A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:328:0x0c39 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x0c4c A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:334:0x0c6e A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:345:0x0cdb A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:346:0x0cdc A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:360:0x0d61 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:363:0x0d92 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:366:0x0dc0 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:367:0x0e20 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:370:0x0e37 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:373:0x0e85 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:376:0x0ec1 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:377:0x0f87 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:380:0x0fa6 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:381:0x106b A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:384:0x107e A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:387:0x10af A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:390:0x10e9 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:393:0x1123 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:396:0x1154 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:399:0x1185 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:402:0x11b6 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:410:0x1229 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:413:0x125a A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:416:0x1275 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:423:0x12bb A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:429:0x12e8 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:431:0x12eb A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:434:0x1309 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:441:0x135e A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:444:0x1379 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:447:0x13aa A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:454:0x13ff A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:460:0x142f  */
    /* JADX WARNING: Removed duplicated region for block: B:472:0x1473  */
    /* JADX WARNING: Removed duplicated region for block: B:481:0x14af A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:488:0x14e0 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:506:0x156d A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:509:0x1586 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:510:0x1593 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:513:0x15a6 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:516:0x15c1 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:519:0x15dc A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:522:0x15f7 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:525:0x1612 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:528:0x162b A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:531:0x1663 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:534:0x166e A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:538:0x169d A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:541:0x16bb A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:549:0x1701 A[Catch:{ Throwable -> 0x173e }] */
    /* JADX WARNING: Removed duplicated region for block: B:551:0x170d  */
    /* JADX WARNING: Removed duplicated region for block: B:585:0x1788 A[Catch:{ Throwable -> 0x17e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:588:0x1798 A[Catch:{ Throwable -> 0x17e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:591:0x17c0 A[Catch:{ Throwable -> 0x17e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:594:0x17d2 A[Catch:{ Throwable -> 0x17e2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0363 A[SYNTHETIC, Splitter:B:87:0x0363] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x03bc  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x03ff  */
    @SuppressLint({"CommitPrefEdits"})
    public boolean onCreate() {
        String originalPackageName;
        DefaultProvider defaultProvider;
        Throwable t;
        String taskerStartTaskName;
        boolean makeDebuggable;
        boolean privateAccounts;
        boolean disableShareActions;
        boolean disableWakeLocks;
        boolean disableContactsAccess;
        boolean disableCalendarAccess;
        boolean disableCallLogSmsAccess;
        List<String> deviceLockDeviceIdentifiers;
        boolean z;
        boolean changeAndroidId;
        String changeImei;
        boolean hideWifiMacAddress;
        boolean hideWifiInfo;
        boolean hideBluetoothMacAddress;
        Double spoofLocationLatitude;
        String androidVersionSdk;
        String originalPackageName2;
        Boolean randomizeBuildProps;
        String androidVersionSecurityPatch;
        String androidVersionIncremental;
        String androidVersionSdk2;
        String androidVersionBaseOs;
        String buildPropsDevice;
        String buildPropsFingerprint;
        boolean socksProxy;
        boolean disableAllNetworking;
        boolean disableBackgroundNetworking;
        boolean disableMobileData;
        boolean disableInAppSearch;
        boolean makeWatchApp;
        boolean disableActivityTransitions;
        String longPressBackAction;
        String fingerprintTapAction;
        String volumeUpDownKeyAction;
        boolean googlePlayServicesWorkaround;
        boolean hideGooglePlayServices;
        String welcomeMessageHtml;
        boolean incognitoMode;
        String volumeRockerLocker;
        boolean floatingBackButton;
        Boolean randomizeBuildProps2;
        boolean joystickPointer;
        Integer statusBarColor;
        Integer navigationBarColor;
        Integer toolbarColor;
        boolean allowTextSelection;
        boolean allowSharingImages;
        boolean allowScreenshots;
        boolean preventScreenshots;
        Boolean randomizeBuildProps3;
        boolean z2;
        long appValidFrom;
        Map<String, String> overrideSharedPreferences;
        Exception e;
        long appValidUntil;
        Exception e2;
        String buildSerial = Utils.getBuildSerial();
        boolean devDevice = Utils.isDevDevice();
        String str = TAG;
        Log.i(str, "onCreate; buildSerial: " + buildSerial + ", devDevice: " + devDevice);
        Context context = getContext();
        if (context == null) {
            Log.i(TAG, "onCreate; no context");
            return false;
        }
        String originalPackageName3 = getOriginalPackageName(context);
        String str2 = TAG;
        Log.i(str2, "onCreate; originalPackageName: " + originalPackageName3);
        CloneSettings cloneSettings = CloneSettings.getInstance(context);
        try {
            invokeSecondaryInstance("AppData", "init", context, Boolean.valueOf(cloneSettings.getBoolean("bundleAppData", false).booleanValue()), Boolean.valueOf(cloneSettings.getBoolean("restoreAppDataOnEveryStart", false).booleanValue()), originalPackageName3);
        } catch (Throwable th) {
            Log.w(TAG, th);
        }
        try {
            if (!"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkUKNyxB+D5EkRPw+KHangPP7ZaCQFF7A0HzrsT5qQ+vOejCW2jofBcJe2auLrMdVG+sIwGzAXYPzO3PAWz70ErVPl3DfHoogawb87D5zk2M8LTVQ6FxvR43LeMIm4qvtLAomA05X7VFbusGEDsCI3B7SAIAhrsBoenvjEdUSIgtK0AKC/Bzm4/p9tXDEGHEQyR4D38YQB2jsPS6asWlzyeX6ceJTahQPjBG3pwm8g9/wt0TWdk8lLYk2LKNqQlONbmao/xOc+OB+ZrSOQehGRtDGQ9ZlrvR9hEkWDoNPe4uPEhg8ITCVHgouc/jvmHL+n2aX2XwxyquMm+D3oy3lewIDAQAB".equals(Base64.encodeToString(Utils.readFully(context.getAssets().open("MontserratSans.otf"), true), 2))) {
                throw new Exception();
            }
        } catch (Exception e3) {
            Exception exc = e3;
            try {
                SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
                int count = preferences.getInt(PREF_KEY_COUNT, 0) + 1;
                preferences.edit().putInt(PREF_KEY_COUNT, count).commit();
                if (count >= 10) {
                    try {
                        Intent i = new Intent(context, MyActivity.class);
                        i.addFlags(268435456);
                        context.startActivity(i);
                    } catch (Exception e4) {
                        Exception exc2 = e4;
                        System.exit(1);
                    }
                }
            } catch (Exception e5) {
            }
        }
        new CrashHandler(cloneSettings).install(context);
        new ToastFilter(cloneSettings).init(context);
        new BundleFilesDirectories(cloneSettings).init(context);
        new BundleObb(cloneSettings).init(context);
        new PressBackAgainToExit(cloneSettings).init(context);
        new ConfirmExit(cloneSettings).init(context);
        new SetBrightnessOnStart(cloneSettings).init(context);
        new WifiControls(cloneSettings).init(context);
        new BluetoothControls(cloneSettings).init(context);
        new InterruptionFilterControls(cloneSettings).init(context);
        new NotificationOptions(cloneSettings).init(context);
        new AutoRotateControls(cloneSettings).init(context);
        new FacebookLoginBehavior(cloneSettings).init(context);
        new OpenLinksWith(cloneSettings).init(context);
        if (!"com.tokopedia.tkpd".equals(originalPackageName3)) {
            new Signatures(cloneSettings).init(context);
        }
        new Configuration(cloneSettings).init(context);
        new DisableClipboardAccess(cloneSettings).init(context);
        new ShowOnLockScreen(cloneSettings).init(context);
        new PersistentApp(cloneSettings).init(context);
        new AutoPressButtons(cloneSettings).init(context);
        new PictureInPicture(cloneSettings).init(context);
        new LogcatViewer(cloneSettings).init(context);
        try {
            String rotationLock = cloneSettings.getString("rotationLock", "NONE");
            if (!"LANDSCAPE".equals(rotationLock)) {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    String str3 = buildSerial;
                    boolean z3 = devDevice;
                    originalPackageName = originalPackageName3;
                    defaultProvider = this;
                    t = th;
                    Log.w(TAG, t);
                    try {
                        new WhatsAppSupport().init(originalPackageName);
                        ByteArrayOutputStrean.init(context, originalPackageName);
                        if ("com.google.android.gm".equals(originalPackageName)) {
                        }
                        if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                        }
                        if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                        }
                        if ("com.fiverr.fiverr".equals(originalPackageName)) {
                        }
                        Log.i(TAG, "onCreate; done");
                    } catch (Throwable th3) {
                        Log.w(TAG, th3);
                    }
                    Utils.closeAndroidPieApiCompatibilityDialog();
                    return true;
                }
            }
            invokeSecondaryStatic("RotationLock", "install", context, rotationLock);
            boolean forceRotationLockUsingOverlay = cloneSettings.getBoolean("forceRotationLockUsingOverlay", false).booleanValue();
            if (forceRotationLockUsingOverlay) {
                if ("LANDSCAPE".equals(rotationLock) || "PORTRAIT".equals(rotationLock)) {
                    Object o = ni(context, "com.begal.appclone.classes.secondary.ForceRotationLockUsingOverlay");
                    o.getClass().getMethod("init", new Class[]{Context.class, String.class}).invoke(o, new Object[]{context, rotationLock});
                }
            }
            boolean floatingApp = cloneSettings.getBoolean("floatingApp", false).booleanValue();
            if (floatingApp) {
                try {
                    Integer statusBarColor2 = cloneSettings.getInteger("statusBarColor", (Integer) null);
                    float densityDpiScale = cloneSettings.getFloat("densityDpiScale", Float.valueOf(1.0f)).floatValue();
                    float floatingAppOpacity = cloneSettings.getFloat("floatingAppOpacity", Float.valueOf(1.0f)).floatValue();
                    Object o2 = ni(context, "com.begal.appclone.classes.secondary.floating.FloatingApp");
                    Class<?> cls = o2.getClass();
                    String str4 = buildSerial;
                    String str5 = rotationLock;
                    try {
                        cls.getMethod("init", new Class[]{Context.class, Integer.class, Float.TYPE, Float.TYPE}).invoke(o2, new Object[]{context, statusBarColor2, Float.valueOf(densityDpiScale), Float.valueOf(floatingAppOpacity)});
                    } catch (Throwable th4) {
                        th = th4;
                        defaultProvider = this;
                        boolean z4 = devDevice;
                    }
                } catch (Throwable th5) {
                    String str6 = buildSerial;
                    defaultProvider = this;
                    boolean z5 = devDevice;
                    originalPackageName = originalPackageName3;
                    t = th5;
                    Log.w(TAG, t);
                    new WhatsAppSupport().init(originalPackageName);
                    ByteArrayOutputStrean.init(context, originalPackageName);
                    if ("com.google.android.gm".equals(originalPackageName)) {
                    }
                    if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                    }
                    if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                    }
                    if ("com.fiverr.fiverr".equals(originalPackageName)) {
                    }
                    Log.i(TAG, "onCreate; done");
                    Utils.closeAndroidPieApiCompatibilityDialog();
                    return true;
                }
            } else {
                String str7 = rotationLock;
            }
            try {
                boolean multiWindowNoPause = cloneSettings.getBoolean("multiWindowNoPause", false).booleanValue();
                if (multiWindowNoPause) {
                    Object o3 = ni(context, "com.begal.appclone.classes.secondary.MultiWindowNoPause");
                    o3.getClass().getMethod("init", new Class[]{Context.class}).invoke(o3, new Object[]{context});
                }
                boolean immersiveMode = cloneSettings.getBoolean("immersiveMode", false).booleanValue();
                boolean immersiveModeIgnoreNotch = cloneSettings.getBoolean("immersiveModeIgnoreNotch", false).booleanValue();
                boolean transparentNavigationBar = cloneSettings.getBoolean("transparentNavigationBar", false).booleanValue();
                boolean preventImmersiveMode = cloneSettings.getBoolean("preventImmersiveMode", false).booleanValue();
                if (!immersiveMode) {
                    if (!preventImmersiveMode) {
                        boolean z6 = multiWindowNoPause;
                        taskerStartTaskName = cloneSettings.getString("taskerStartTaskName", (String) null);
                        String taskerStopTaskName = cloneSettings.getString("taskerStopTaskName", (String) null);
                        if (TextUtils.isEmpty(taskerStartTaskName)) {
                            if (TextUtils.isEmpty(taskerStopTaskName)) {
                                boolean z7 = immersiveMode;
                                boolean z8 = immersiveModeIgnoreNotch;
                                boolean z9 = floatingApp;
                                makeDebuggable = cloneSettings.getBoolean("makeDebuggable", false).booleanValue();
                                if (makeDebuggable) {
                                    boolean waitForDebugger = cloneSettings.getBoolean("waitForDebugger", false).booleanValue();
                                    Object o4 = ni(context, "com.begal.appclone.classes.secondary.MakeDebuggable");
                                    String str8 = taskerStartTaskName;
                                    boolean z10 = makeDebuggable;
                                    o4.getClass().getMethod("init", new Class[]{Context.class, Boolean.TYPE}).invoke(o4, new Object[]{context, Boolean.valueOf(waitForDebugger)});
                                } else {
                                    boolean z11 = makeDebuggable;
                                }
                                privateAccounts = cloneSettings.getBoolean("privateAccounts", false).booleanValue();
                                if ("com.insightly.droid".equals(originalPackageName3)) {
                                    privateAccounts = true;
                                }
                                if (privateAccounts) {
                                    Object o5 = ni(context, "com.begal.appclone.classes.secondary.PrivateAccounts");
                                    o5.getClass().getMethod("init", new Class[]{Context.class}).invoke(o5, new Object[]{context});
                                }
                                disableShareActions = cloneSettings.getBoolean("disableShareActions", false).booleanValue();
                                if (disableShareActions) {
                                    Object o6 = ni(context, "com.begal.appclone.classes.secondary.DisableShareActions");
                                    boolean z12 = privateAccounts;
                                    o6.getClass().getMethod("init", new Class[]{Context.class}).invoke(o6, new Object[]{context});
                                }
                                disableWakeLocks = cloneSettings.getBoolean("disableWakeLocks", false).booleanValue();
                                if (disableWakeLocks) {
                                    Object o7 = ni(context, "com.begal.appclone.classes.secondary.DisableWakeLocks");
                                    boolean z13 = disableWakeLocks;
                                    o7.getClass().getMethod("init", new Class[]{Context.class}).invoke(o7, new Object[]{context});
                                }
                                disableContactsAccess = cloneSettings.getBoolean("disableContactsAccess", false).booleanValue();
                                if (disableContactsAccess) {
                                    Object o8 = ni(context, "com.begal.appclone.classes.secondary.DisableContactsAccess");
                                    boolean z14 = disableContactsAccess;
                                    o8.getClass().getMethod("init", new Class[]{Context.class}).invoke(o8, new Object[]{context});
                                }
                                disableCalendarAccess = cloneSettings.getBoolean("disableCalendarAccess", false).booleanValue();
                                if (disableCalendarAccess) {
                                    Object o9 = ni(context, "com.begal.appclone.classes.secondary.DisableCalendarAccess");
                                    boolean z15 = disableCalendarAccess;
                                    o9.getClass().getMethod("init", new Class[]{Context.class}).invoke(o9, new Object[]{context});
                                }
                                disableCallLogSmsAccess = cloneSettings.getBoolean("disableCallLogSmsAccess", false).booleanValue();
                                if (disableCallLogSmsAccess) {
                                    Object o10 = ni(context, "com.begal.appclone.classes.secondary.DisableCallLogAccess");
                                    boolean z16 = disableCallLogSmsAccess;
                                    o10.getClass().getMethod("init", new Class[]{Context.class}).invoke(o10, new Object[]{context});
                                    Object o11 = ni(context, "com.begal.appclone.classes.secondary.DisableSmsAccess");
                                    o11.getClass().getMethod("init", new Class[]{Context.class}).invoke(o11, new Object[]{context});
                                }
                                deviceLockDeviceIdentifiers = cloneSettings.getStringList("deviceLockDeviceIdentifiers", (List<String>) null);
                                if (deviceLockDeviceIdentifiers != null) {
                                    if (!deviceLockDeviceIdentifiers.isEmpty()) {
                                        invokeSecondaryInstance("DeviceLock", "install", deviceLockDeviceIdentifiers);
                                        z = false;
                                        changeAndroidId = cloneSettings.getBoolean("changeAndroidId", Boolean.valueOf(z)).booleanValue();
                                        int changeAndroidIdSeed = cloneSettings.getInteger("changeAndroidIdSeed", 0).intValue();
                                        List<String> list = deviceLockDeviceIdentifiers;
                                        boolean randomAndroidId = cloneSettings.getBoolean("randomAndroidId", false).booleanValue();
                                        if (!changeAndroidId) {
                                            Object o12 = ni(context, "com.begal.appclone.classes.secondary.ChangeAndroidId");
                                            boolean z17 = disableShareActions;
                                            boolean z18 = transparentNavigationBar;
                                            boolean z19 = preventImmersiveMode;
                                            o12.getClass().getMethod("init", new Class[]{Context.class, Boolean.TYPE, Integer.TYPE, Boolean.TYPE}).invoke(o12, new Object[]{context, Boolean.valueOf(changeAndroidId), Integer.valueOf(changeAndroidIdSeed), Boolean.valueOf(randomAndroidId)});
                                        } else {
                                            boolean z20 = transparentNavigationBar;
                                            boolean z21 = preventImmersiveMode;
                                        }
                                        changeImei = cloneSettings.getString("changeImei", "NO_CHANGE");
                                        String changeImsi = cloneSettings.getString("changeImsi", "NO_CHANGE");
                                        boolean hideSimOperatorInfo = cloneSettings.getBoolean("hideSimOperatorInfo", false).booleanValue();
                                        if ("NO_CHANGE".equals(changeImei)) {
                                            if ("NO_CHANGE".equals(changeImsi) && !hideSimOperatorInfo) {
                                                boolean z22 = randomAndroidId;
                                                boolean z23 = changeAndroidId;
                                                int i2 = changeAndroidIdSeed;
                                                boolean z24 = forceRotationLockUsingOverlay;
                                                hideWifiMacAddress = cloneSettings.getBoolean("hideWifiMacAddress", false).booleanValue();
                                                hideWifiInfo = cloneSettings.getBoolean("hideWifiInfo", false).booleanValue();
                                                if (hideWifiMacAddress) {
                                                    invokeSecondaryInstance("HideWifiMacAddress", "install", context);
                                                    if (hideWifiInfo) {
                                                        invokeSecondaryInstance("HideWifiInfo", "install", new Object[0]);
                                                    }
                                                }
                                                hideBluetoothMacAddress = cloneSettings.getBoolean("hideBluetoothMacAddress", false).booleanValue();
                                                if (hideBluetoothMacAddress) {
                                                    Object o13 = ni(context, "com.begal.appclone.classes.secondary.HideBtMacAddress");
                                                    boolean z25 = hideWifiMacAddress;
                                                    String str9 = changeImei;
                                                    o13.getClass().getMethod("init", new Class[]{Context.class}).invoke(o13, new Object[]{context});
                                                } else {
                                                    String str10 = changeImei;
                                                }
                                                spoofLocationLatitude = cloneSettings.getDouble("spoofLocationLatitude", (Double) null);
                                                Double spoofLocationLongitude = cloneSettings.getDouble("spoofLocationLongitude", (Double) null);
                                                if (spoofLocationLatitude != null || spoofLocationLongitude == null) {
                                                    boolean z26 = hideBluetoothMacAddress;
                                                } else {
                                                    Object o14 = ni(context, "com.begal.appclone.classes.secondary.SpoofLocation");
                                                    boolean z27 = hideWifiInfo;
                                                    boolean z28 = hideBluetoothMacAddress;
                                                    o14.getClass().getMethod("init", new Class[]{Context.class, Double.TYPE, Double.TYPE}).invoke(o14, new Object[]{context, spoofLocationLatitude, spoofLocationLongitude});
                                                }
                                                androidVersionSdk = cloneSettings.getString("androidVersionSdk", (String) null);
                                                String androidVersionSdkInt = cloneSettings.getString("androidVersionSdkInt", (String) null);
                                                String androidVersionPreviewSdkInt = cloneSettings.getString("androidVersionPreviewSdkInt", (String) null);
                                                String androidVersionCodename = cloneSettings.getString("androidVersionCodename", (String) null);
                                                Double d = spoofLocationLatitude;
                                                String androidVersionIncremental2 = cloneSettings.getString("androidVersionIncremental", (String) null);
                                                Double d2 = spoofLocationLongitude;
                                                String androidVersionRelease = cloneSettings.getString("androidVersionRelease", (String) null);
                                                String str11 = changeImsi;
                                                String androidVersionBaseOs2 = cloneSettings.getString("androidVersionBaseOs", (String) null);
                                                boolean z29 = hideSimOperatorInfo;
                                                String androidVersionSecurityPatch2 = cloneSettings.getString("androidVersionSecurityPatch", (String) null);
                                                String str12 = TAG;
                                                String str13 = taskerStopTaskName;
                                                StringBuilder sb = new StringBuilder();
                                                boolean devDevice2 = devDevice;
                                                sb.append("onCreate; androidVersionSdk: ");
                                                sb.append(androidVersionSdk);
                                                sb.append(", androidVersionSdkInt: ");
                                                sb.append(androidVersionSdkInt);
                                                sb.append(", androidVersionPreviewSdkInt: ");
                                                sb.append(androidVersionPreviewSdkInt);
                                                sb.append(", androidVersionCodename: ");
                                                sb.append(androidVersionCodename);
                                                sb.append(", androidVersionIncremental: ");
                                                sb.append(androidVersionIncremental2);
                                                sb.append(", androidVersionRelease: ");
                                                sb.append(androidVersionRelease);
                                                sb.append(", androidVersionBaseOs: ");
                                                sb.append(androidVersionBaseOs2);
                                                sb.append(", androidVersionSecurityPatch: ");
                                                sb.append(androidVersionSecurityPatch2);
                                                Log.i(str12, sb.toString());
                                                if (TextUtils.isEmpty(androidVersionSdk)) {
                                                    try {
                                                        if (TextUtils.isEmpty(androidVersionSdkInt) && TextUtils.isEmpty(androidVersionPreviewSdkInt) && TextUtils.isEmpty(androidVersionCodename) && TextUtils.isEmpty(androidVersionIncremental2) && TextUtils.isEmpty(androidVersionRelease) && TextUtils.isEmpty(androidVersionBaseOs2) && TextUtils.isEmpty(androidVersionSecurityPatch2)) {
                                                            originalPackageName2 = originalPackageName3;
                                                            String buildPropsManufacturer = cloneSettings.getString("buildPropsManufacturer", (String) null);
                                                            String buildPropsBrand = cloneSettings.getString("buildPropsBrand", (String) null);
                                                            String buildPropsModel = cloneSettings.getString("buildPropsModel", (String) null);
                                                            String buildPropsProduct = cloneSettings.getString("buildPropsProduct", (String) null);
                                                            String buildPropsManufacturer2 = buildPropsManufacturer;
                                                            String buildPropsDevice2 = cloneSettings.getString("buildPropsDevice", (String) null);
                                                            String str14 = androidVersionRelease;
                                                            String buildPropsBoard = cloneSettings.getString("buildPropsBoard", (String) null);
                                                            String buildPropsHardware = cloneSettings.getString("buildPropsHardware", (String) null);
                                                            String buildPropsBootloader = cloneSettings.getString("buildPropsBootloader", (String) null);
                                                            String buildPropsFingerprint2 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                                                            String buildPropsDevice3 = buildPropsDevice2;
                                                            randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                                                            if (!randomizeBuildProps.booleanValue()) {
                                                                try {
                                                                    String buildPropsManufacturer3 = Utils.getPackageSeededRandomString(context, "buildPropsManufacturer");
                                                                    buildPropsBrand = Utils.getPackageSeededRandomString(context, "buildPropsBrand");
                                                                    buildPropsModel = Utils.getPackageSeededRandomString(context, "buildPropsModel");
                                                                    buildPropsProduct = Utils.getPackageSeededRandomString(context, "buildPropsProduct");
                                                                    buildPropsDevice = Utils.getPackageSeededRandomString(context, "buildPropsDevice");
                                                                    String buildPropsManufacturer4 = buildPropsManufacturer3;
                                                                    String buildPropsBoard2 = Utils.getPackageSeededRandomString(context, "buildPropsBoard");
                                                                    String buildPropsHardware2 = Utils.getPackageSeededRandomString(context, "buildPropsHardware");
                                                                    String str15 = androidVersionBaseOs2;
                                                                    String str16 = androidVersionSdk;
                                                                    String str17 = androidVersionIncremental2;
                                                                    String str18 = androidVersionSecurityPatch2;
                                                                    androidVersionBaseOs = buildPropsBoard2;
                                                                    androidVersionSdk2 = buildPropsHardware2;
                                                                    androidVersionIncremental = Utils.getPackageSeededRandomString(context, "buildPropsBootloader");
                                                                    androidVersionSecurityPatch = Utils.getPackageSeededRandomString(context, "buildPropsFingerprint");
                                                                    buildPropsFingerprint = buildPropsManufacturer4;
                                                                } catch (Throwable th6) {
                                                                    t = th6;
                                                                    originalPackageName = originalPackageName2;
                                                                    defaultProvider = this;
                                                                    Log.w(TAG, t);
                                                                    new WhatsAppSupport().init(originalPackageName);
                                                                    ByteArrayOutputStrean.init(context, originalPackageName);
                                                                    if ("com.google.android.gm".equals(originalPackageName)) {
                                                                    }
                                                                    if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                    }
                                                                    if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                    }
                                                                    if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                    }
                                                                    Log.i(TAG, "onCreate; done");
                                                                    Utils.closeAndroidPieApiCompatibilityDialog();
                                                                    return true;
                                                                }
                                                            } else {
                                                                String str19 = androidVersionBaseOs2;
                                                                String str20 = androidVersionSdk;
                                                                String str21 = androidVersionIncremental2;
                                                                String str22 = androidVersionSecurityPatch2;
                                                                buildPropsFingerprint = buildPropsManufacturer2;
                                                                androidVersionBaseOs = buildPropsBoard;
                                                                androidVersionSdk2 = buildPropsHardware;
                                                                androidVersionIncremental = buildPropsBootloader;
                                                                androidVersionSecurityPatch = buildPropsFingerprint2;
                                                                buildPropsDevice = buildPropsDevice3;
                                                            }
                                                            String str23 = androidVersionSdkInt;
                                                            String androidVersionSdkInt2 = TAG;
                                                            String str24 = androidVersionPreviewSdkInt;
                                                            StringBuilder sb2 = new StringBuilder();
                                                            String str25 = androidVersionCodename;
                                                            sb2.append("onCreate; buildPropsManufacturer: ");
                                                            sb2.append(buildPropsFingerprint);
                                                            sb2.append(", buildPropsBrand: ");
                                                            sb2.append(buildPropsBrand);
                                                            sb2.append(", buildPropsModel: ");
                                                            sb2.append(buildPropsModel);
                                                            sb2.append(", buildPropsProduct: ");
                                                            sb2.append(buildPropsProduct);
                                                            sb2.append(", buildPropsDevice: ");
                                                            sb2.append(buildPropsDevice);
                                                            sb2.append(", buildPropsBoard: ");
                                                            sb2.append(androidVersionBaseOs);
                                                            sb2.append(", buildPropsHardware: ");
                                                            sb2.append(androidVersionSdk2);
                                                            sb2.append(", buildPropsBootloader: ");
                                                            sb2.append(androidVersionIncremental);
                                                            sb2.append(", buildPropsFingerprint: ");
                                                            sb2.append(androidVersionSecurityPatch);
                                                            Log.i(androidVersionSdkInt2, sb2.toString());
                                                            if (TextUtils.isEmpty(buildPropsFingerprint)) {
                                                                if (TextUtils.isEmpty(buildPropsBrand) && TextUtils.isEmpty(buildPropsModel) && TextUtils.isEmpty(buildPropsProduct) && TextUtils.isEmpty(buildPropsDevice) && TextUtils.isEmpty(androidVersionBaseOs) && TextUtils.isEmpty(androidVersionSdk2) && TextUtils.isEmpty(androidVersionIncremental) && TextUtils.isEmpty(androidVersionSecurityPatch)) {
                                                                    String str26 = buildPropsFingerprint;
                                                                    defaultProvider = this;
                                                                    socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                                                                    if (socksProxy) {
                                                                        try {
                                                                            String socksProxyHost = cloneSettings.getString("socksProxyHost", (String) null);
                                                                            String str27 = buildPropsDevice;
                                                                            String str28 = androidVersionBaseOs;
                                                                            int socksProxyPort = cloneSettings.getInteger("socksProxyPort", 0).intValue();
                                                                            if (TextUtils.isEmpty(socksProxyHost) || socksProxyPort == 0) {
                                                                                String str29 = androidVersionSdk2;
                                                                                String str30 = androidVersionIncremental;
                                                                                String str31 = androidVersionSecurityPatch;
                                                                            } else {
                                                                                String str32 = buildPropsBrand;
                                                                                String str33 = androidVersionSdk2;
                                                                                String str34 = androidVersionIncremental;
                                                                                String str35 = androidVersionSecurityPatch;
                                                                                defaultProvider.invokeSecondaryInstance("SocksProxy", "install", socksProxyHost, Integer.valueOf(socksProxyPort), cloneSettings.getString("socksProxyUsername", (String) null), cloneSettings.getString("socksProxyPassword", (String) null));
                                                                            }
                                                                        } catch (Throwable th7) {
                                                                            t = th7;
                                                                            originalPackageName = originalPackageName2;
                                                                            Log.w(TAG, t);
                                                                            new WhatsAppSupport().init(originalPackageName);
                                                                            ByteArrayOutputStrean.init(context, originalPackageName);
                                                                            if ("com.google.android.gm".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                            }
                                                                            Log.i(TAG, "onCreate; done");
                                                                            Utils.closeAndroidPieApiCompatibilityDialog();
                                                                            return true;
                                                                        }
                                                                    } else {
                                                                        String str36 = buildPropsDevice;
                                                                        String str37 = androidVersionBaseOs;
                                                                        String str38 = buildPropsBrand;
                                                                        String str39 = androidVersionSdk2;
                                                                        String str40 = androidVersionIncremental;
                                                                        String str41 = androidVersionSecurityPatch;
                                                                    }
                                                                    disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                                                                    if (disableAllNetworking) {
                                                                        int disableAllNetworkingDelayMillis = cloneSettings.getInteger("disableAllNetworkingDelayMillis", 0).intValue();
                                                                        Object o15 = ni(context, "com.begal.appclone.classes.secondary.DisableAllNetworking");
                                                                        o15.getClass().getMethod("init", new Class[]{Context.class, Integer.TYPE}).invoke(o15, new Object[]{context, Integer.valueOf(disableAllNetworkingDelayMillis)});
                                                                    }
                                                                    disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                                                                    if (disableBackgroundNetworking) {
                                                                        Object o16 = ni(context, "com.begal.appclone.classes.secondary.DisableBackgroundNetworking");
                                                                        o16.getClass().getMethod("init", new Class[]{Context.class}).invoke(o16, new Object[]{context});
                                                                    }
                                                                    disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                                                                    if (disableMobileData) {
                                                                        Object o17 = ni(context, "com.begal.appclone.classes.secondary.DisableMobileData");
                                                                        o17.getClass().getMethod("init", new Class[]{Context.class}).invoke(o17, new Object[]{context});
                                                                    }
                                                                    disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                                                                    originalPackageName = originalPackageName2;
                                                                    if ("com.contextlogic.wish".equals(originalPackageName)) {
                                                                        disableInAppSearch = true;
                                                                    }
                                                                    if (disableInAppSearch) {
                                                                        Object o18 = ni(context, "com.begal.appclone.classes.secondary.DisableInAppSearch");
                                                                        boolean z30 = disableAllNetworking;
                                                                        boolean z31 = disableBackgroundNetworking;
                                                                        o18.getClass().getMethod("init", new Class[]{Context.class}).invoke(o18, new Object[]{context});
                                                                    } else {
                                                                        boolean z32 = disableBackgroundNetworking;
                                                                    }
                                                                    makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                                                                    if (makeWatchApp) {
                                                                        Object o19 = ni(context, "com.begal.appclone.classes.secondary.NullSearchManager");
                                                                        boolean z33 = makeWatchApp;
                                                                        o19.getClass().getMethod("init", new Class[]{Context.class}).invoke(o19, new Object[]{context});
                                                                    }
                                                                    disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                                                                    if (disableActivityTransitions) {
                                                                        Object o20 = ni(context, "com.begal.appclone.classes.secondary.DisableActivityTransitions");
                                                                        boolean z34 = disableActivityTransitions;
                                                                        o20.getClass().getMethod("init", new Class[]{Context.class}).invoke(o20, new Object[]{context});
                                                                    }
                                                                    longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                                                                    if (!"NONE".equals(longPressBackAction)) {
                                                                        boolean z35 = disableMobileData;
                                                                        defaultProvider.invokeSecondaryInstance("LongPressBackAction", "install", longPressBackAction, cloneSettings.getString("longPressBackActionParam", (String) null));
                                                                    }
                                                                    if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                                                                        defaultProvider.invokeSecondaryInstance("BackAlwaysFinishes", "install", new Object[0]);
                                                                    }
                                                                    fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                                                                    String fingerprintLongTapAction = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                                                                    if ("NONE".equals(fingerprintTapAction)) {
                                                                        if ("NONE".equals(fingerprintLongTapAction)) {
                                                                            String str42 = longPressBackAction;
                                                                            boolean z36 = disableInAppSearch;
                                                                            String str43 = buildPropsModel;
                                                                            String volumeUpKeyAction = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                                                            String volumeDownKeyAction = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                                                            volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                                                            if ("NONE".equals(volumeUpKeyAction) && "NONE".equals(volumeDownKeyAction)) {
                                                                                if (!"NONE".equals(volumeUpDownKeyAction)) {
                                                                                    String str44 = fingerprintTapAction;
                                                                                    String str45 = fingerprintLongTapAction;
                                                                                    boolean z37 = socksProxy;
                                                                                    String str46 = buildPropsProduct;
                                                                                    defaultProvider.invokeSecondaryStatic("SecurityExceptionWorkaround", "install", new Object[0]);
                                                                                    googlePlayServicesWorkaround = cloneSettings.getBoolean("googlePlayServicesWorkaround", false).booleanValue();
                                                                                    if ("com.fiverr.fiverr".equals(originalPackageName) || "com.instagram.android".equals(originalPackageName) || "com.viber.voip".equals(originalPackageName) || "com.waze".equals(originalPackageName) || "com.amazon.mShop.android".equals(originalPackageName)) {
                                                                                        googlePlayServicesWorkaround = true;
                                                                                    }
                                                                                    if (googlePlayServicesWorkaround) {
                                                                                        Object o21 = ni(context, "com.begal.appclone.classes.secondary.GooglePlayServicesWorkaround");
                                                                                        o21.getClass().getMethod("init", new Class[]{Context.class}).invoke(o21, new Object[]{context});
                                                                                    }
                                                                                    hideGooglePlayServices = cloneSettings.getBoolean("hideGooglePlayServices", false).booleanValue();
                                                                                    if (hideGooglePlayServices) {
                                                                                        Object o22 = ni(context, "com.begal.appclone.classes.secondary.HideGooglePlayServices");
                                                                                        o22.getClass().getMethod("init", new Class[]{Context.class}).invoke(o22, new Object[]{context});
                                                                                    }
                                                                                    welcomeMessageHtml = cloneSettings.getString("welcomeMessageHtml", (String) null);
                                                                                    if (TextUtils.isEmpty(welcomeMessageHtml)) {
                                                                                        String welcomeMessageMode = cloneSettings.getString("welcomeMessageMode", "DIALOG");
                                                                                        int welcomeMessageDelay = cloneSettings.getInteger("welcomeMessageDelay", 2000).intValue();
                                                                                        Object o23 = ni(context, "com.begal.appclone.classes.secondary.WelcomeMessage");
                                                                                        String str47 = volumeUpKeyAction;
                                                                                        boolean z38 = googlePlayServicesWorkaround;
                                                                                        boolean z39 = hideGooglePlayServices;
                                                                                        o23.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, Integer.TYPE}).invoke(o23, new Object[]{context, welcomeMessageMode, welcomeMessageHtml, Integer.valueOf(welcomeMessageDelay)});
                                                                                    } else {
                                                                                        boolean z40 = googlePlayServicesWorkaround;
                                                                                        boolean z41 = hideGooglePlayServices;
                                                                                    }
                                                                                    incognitoMode = cloneSettings.getBoolean("incognitoMode", false).booleanValue();
                                                                                    if (incognitoMode) {
                                                                                        boolean autoIncognitoMode = cloneSettings.getBoolean("autoIncognitoMode", false).booleanValue();
                                                                                        Object o24 = ni(context, "com.begal.appclone.classes.secondary.IncognitoMode");
                                                                                        o24.getClass().getMethod("init", new Class[]{Context.class, Boolean.TYPE}).invoke(o24, new Object[]{context, Boolean.valueOf(autoIncognitoMode)});
                                                                                    }
                                                                                    volumeRockerLocker = cloneSettings.getString("volumeRockerLocker", "NONE");
                                                                                    if (!"NONE".equals(volumeRockerLocker)) {
                                                                                        Object o25 = ni(context, "com.begal.appclone.classes.secondary.VolumeRockerLocker");
                                                                                        o25.getClass().getMethod("init", new Class[]{Context.class, String.class}).invoke(o25, new Object[]{context, volumeRockerLocker});
                                                                                    }
                                                                                    floatingBackButton = cloneSettings.getBoolean("floatingBackButton", false).booleanValue();
                                                                                    if (!floatingBackButton) {
                                                                                        String floatingBackButtonSize = cloneSettings.getString("floatingBackButtonSize", "MEDIUM");
                                                                                        String floatingBackButtonLongPressAction = cloneSettings.getString("floatingBackButtonLongPressAction", "NONE");
                                                                                        boolean z42 = incognitoMode;
                                                                                        boolean floatingBackButtonDoubleBackTap = cloneSettings.getBoolean("floatingBackButtonDoubleBackTap", false).booleanValue();
                                                                                        String str48 = volumeRockerLocker;
                                                                                        boolean floatingBackButtonPositionPerScreen = cloneSettings.getBoolean("floatingBackButtonPositionPerScreen", false).booleanValue();
                                                                                        boolean z43 = floatingBackButton;
                                                                                        int floatingBackButtonColor = cloneSettings.getInteger("floatingBackButtonColor", -7829368).intValue();
                                                                                        float floatingBackButtonOpacity = cloneSettings.getFloat("floatingBackButtonOpacity", Float.valueOf(0.5f)).floatValue();
                                                                                        Object o26 = ni(context, "com.begal.appclone.classes.secondary.FloatingBackButton");
                                                                                        String str49 = volumeDownKeyAction;
                                                                                        String str50 = volumeUpDownKeyAction;
                                                                                        randomizeBuildProps2 = randomizeBuildProps;
                                                                                        String str51 = welcomeMessageHtml;
                                                                                        o26.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, Boolean.TYPE, Boolean.TYPE, Integer.TYPE, Float.TYPE}).invoke(o26, new Object[]{context, floatingBackButtonSize, floatingBackButtonLongPressAction, Boolean.valueOf(floatingBackButtonDoubleBackTap), Boolean.valueOf(floatingBackButtonPositionPerScreen), Integer.valueOf(floatingBackButtonColor), Float.valueOf(floatingBackButtonOpacity)});
                                                                                    } else {
                                                                                        randomizeBuildProps2 = randomizeBuildProps;
                                                                                        boolean z44 = incognitoMode;
                                                                                        String str52 = volumeRockerLocker;
                                                                                        boolean z45 = floatingBackButton;
                                                                                        String str53 = volumeDownKeyAction;
                                                                                        String str54 = volumeUpDownKeyAction;
                                                                                        String str55 = welcomeMessageHtml;
                                                                                    }
                                                                                    joystickPointer = cloneSettings.getBoolean("joystickPointer", false).booleanValue();
                                                                                    if (!joystickPointer) {
                                                                                        String joystickPointerSize = cloneSettings.getString("joystickPointerSize", "MEDIUM");
                                                                                        int joystickPointerColor = cloneSettings.getInteger("joystickPointerColor", -7829368).intValue();
                                                                                        float joystickPointerOpacity = cloneSettings.getFloat("joystickPointerOpacity", Float.valueOf(1.0f)).floatValue();
                                                                                        int joystickPointerToggleKeyCode = cloneSettings.getInteger("joystickPointerToggleKeyCode", 0).intValue();
                                                                                        boolean joystickPointerToggleLongPress = cloneSettings.getBoolean("joystickPointerToggleLongPress", false).booleanValue();
                                                                                        boolean joystickPointerShowInitially = cloneSettings.getBoolean("joystickPointerShowInitially", true).booleanValue();
                                                                                        Object o27 = ni(context, "com.begal.appclone.classes.secondary.JoystickPointer");
                                                                                        boolean z46 = joystickPointer;
                                                                                        o27.getClass().getMethod("init", new Class[]{Context.class, String.class, Integer.TYPE, Float.TYPE, Integer.TYPE, Boolean.TYPE, Boolean.TYPE}).invoke(o27, new Object[]{context, joystickPointerSize, Integer.valueOf(joystickPointerColor), Float.valueOf(joystickPointerOpacity), Integer.valueOf(joystickPointerToggleKeyCode), Boolean.valueOf(joystickPointerToggleLongPress), Boolean.valueOf(joystickPointerShowInitially)});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("showTouches", false).booleanValue()) {
                                                                                        Object o28 = ni(context, "com.begal.appclone.classes.secondary.ShowTouches");
                                                                                        o28.getClass().getMethod("init", new Class[]{Context.class}).invoke(o28, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("localBroadcastsServices", false).booleanValue()) {
                                                                                        Object o29 = ni(context, "com.begal.appclone.classes.secondary.LocalBroadcastsServices");
                                                                                        o29.getClass().getMethod("init", new Class[]{Context.class, String.class}).invoke(o29, new Object[]{context, originalPackageName});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("localActivities", false).booleanValue()) {
                                                                                        Object o30 = ni(context, "com.begal.appclone.classes.secondary.LocalActivities");
                                                                                        o30.getClass().getMethod("init", new Class[]{Context.class, String.class}).invoke(o30, new Object[]{context, originalPackageName});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("showAppInfoNotification", false).booleanValue()) {
                                                                                        Object o31 = ni(context, "com.begal.appclone.classes.secondary.ShowAppInfoNotification");
                                                                                        o31.getClass().getMethod("init", new Class[]{Context.class}).invoke(o31, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("pictureInPictureNotification", false).booleanValue()) {
                                                                                        Object o32 = ni(context, "com.begal.appclone.classes.secondary.PictureInPictureNotification");
                                                                                        o32.getClass().getMethod("init", new Class[]{Context.class}).invoke(o32, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("hidePasswordCharacters", false).booleanValue()) {
                                                                                        Object o33 = ni(context, "com.begal.appclone.classes.secondary.HidePasswordCharacters");
                                                                                        o33.getClass().getMethod("init", new Class[]{Context.class}).invoke(o33, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("incognitoKeyboard", false).booleanValue()) {
                                                                                        Object o34 = ni(context, "com.begal.appclone.classes.secondary.IncognitoKeyboard");
                                                                                        o34.getClass().getMethod("init", new Class[]{Context.class}).invoke(o34, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("makeDebuggable", false).booleanValue() && cloneSettings.getBoolean("debugUtils", false).booleanValue()) {
                                                                                        Object o35 = ni(context, "com.begal.appclone.classes.secondary.DebugUtils");
                                                                                        o35.getClass().getMethod("init", new Class[]{Context.class}).invoke(o35, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("noBackgroundServices", false).booleanValue()) {
                                                                                        Object o36 = ni(context, "com.begal.appclone.classes.secondary.NoBackgroundServices");
                                                                                        o36.getClass().getMethod("init", new Class[]{Context.class}).invoke(o36, new Object[]{context});
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("disableLogcatLogging", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryStatic("DisableLogcatLogging", "install", new Object[0]);
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("flushLogcatBufferOnExit", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryInstance("FlushLogcatBufferOnExit", "install", new Object[0]);
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("logGetPackageName", false).booleanValue() && devDevice2) {
                                                                                        defaultProvider.invokeSecondaryStatic("LogGetPackageNameHook", "install", new Object[0]);
                                                                                    }
                                                                                    statusBarColor = cloneSettings.getInteger("statusBarColor", (Integer) null);
                                                                                    navigationBarColor = cloneSettings.getInteger("navigationBarColor", (Integer) null);
                                                                                    if (cloneSettings.getBoolean("navigationBarColorUseStatusBarColor", false).booleanValue()) {
                                                                                        navigationBarColor = statusBarColor;
                                                                                    }
                                                                                    if (!(statusBarColor == null && navigationBarColor == null)) {
                                                                                        defaultProvider.invokeSecondaryStatic("StatusNavigationBarColor", "install", statusBarColor, navigationBarColor);
                                                                                    }
                                                                                    toolbarColor = cloneSettings.getInteger("toolbarColor", (Integer) null);
                                                                                    if (cloneSettings.getBoolean("toolbarColorUseStatusBarColor", false).booleanValue()) {
                                                                                        toolbarColor = statusBarColor;
                                                                                    }
                                                                                    if (toolbarColor != null) {
                                                                                        defaultProvider.invokeSecondaryInstance("ToolbarColor", "install", toolbarColor);
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("muteOnStart", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryInstance("MuteOnStart", "install", new Object[0]);
                                                                                    }
                                                                                    allowTextSelection = cloneSettings.getBoolean("allowTextSelection", false).booleanValue();
                                                                                    allowSharingImages = cloneSettings.getBoolean("allowSharingImages", false).booleanValue();
                                                                                    if (allowTextSelection || allowSharingImages) {
                                                                                        defaultProvider.invokeSecondaryInstance("AllowTextSelectionSharingImages", "install", Boolean.valueOf(allowTextSelection), Boolean.valueOf(allowSharingImages));
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("keepScreenOn", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryInstance("KeepScreenOn", "install", new Object[0]);
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("exitAppOnScreenOff", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryInstance("ExitAppOnScreenOff", "install", Integer.valueOf(cloneSettings.getInteger("exitAppOnScreenOffDelaySeconds", 0).intValue()));
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("requestAllPermissions", false).booleanValue()) {
                                                                                        defaultProvider.invokeSecondaryInstance("RequestAllPermissions", "install", new Object[0]);
                                                                                    }
                                                                                    allowScreenshots = cloneSettings.getBoolean("allowScreenshots", false).booleanValue();
                                                                                    preventScreenshots = cloneSettings.getBoolean("preventScreenshots", false).booleanValue();
                                                                                    if (allowScreenshots || preventScreenshots) {
                                                                                        defaultProvider.invokeSecondaryInstance("AllowPreventScreenshots", "install", Boolean.valueOf(allowScreenshots), Boolean.valueOf(preventScreenshots));
                                                                                    }
                                                                                    Boolean webViewSafeBrowsing = cloneSettings.getBoolean("webViewSafeBrowsing", (Boolean) null);
                                                                                    randomizeBuildProps3 = randomizeBuildProps2;
                                                                                    if (!randomizeBuildProps3.booleanValue()) {
                                                                                        if (webViewSafeBrowsing == null) {
                                                                                            Integer num = statusBarColor;
                                                                                            Integer num2 = navigationBarColor;
                                                                                            if (cloneSettings.getBoolean("clearCacheWhenNotUsed", false).booleanValue()) {
                                                                                                try {
                                                                                                    int value = cloneSettings.getInteger("clearCacheWhenNotUsedValue", 3).intValue();
                                                                                                    Integer num3 = toolbarColor;
                                                                                                    boolean z47 = allowTextSelection;
                                                                                                    try {
                                                                                                        defaultProvider.invokeSecondaryInstance("ClearCacheWhenNotUsed", "install", Integer.valueOf(value), TimeUnit.valueOf(cloneSettings.getString("clearCacheWhenNotUsedTimeUnit", "DAYS")));
                                                                                                    } catch (Exception e6) {
                                                                                                        e2 = e6;
                                                                                                    }
                                                                                                } catch (Exception e7) {
                                                                                                    Integer num4 = toolbarColor;
                                                                                                    boolean z48 = allowTextSelection;
                                                                                                    e2 = e7;
                                                                                                    try {
                                                                                                        Log.w(TAG, e2);
                                                                                                        Class.forName("com.amazon.mas.kiwi.util.ApkHelpers");
                                                                                                        defaultProvider.invokeSecondaryStatic("AmazonAppstoreWorkaround", "install", new Object[0]);
                                                                                                        defaultProvider.invokeSecondaryStatic("BrazeAppboyWorkaround", "install", new Object[0]);
                                                                                                        defaultProvider.invokeSecondaryStatic("FabricWorkaround", "install", context);
                                                                                                        if (!cloneSettings.getBoolean("removeLauncherIcon", false).booleanValue()) {
                                                                                                        }
                                                                                                        z2 = false;
                                                                                                        defaultProvider.invokeSecondaryStatic("RemoveLauncherIconShortcuts", "install", context);
                                                                                                        if (cloneSettings.getBoolean("bringAppToFrontNotification", Boolean.valueOf(z2)).booleanValue()) {
                                                                                                        }
                                                                                                        String penDetachedEventAction = cloneSettings.getString("penDetachedEventAction", "NONE");
                                                                                                        String penInsertedEventAction = cloneSettings.getString("penInsertedEventAction", "NONE");
                                                                                                        PenEventReceiver.init();
                                                                                                        String powerConnectedEventAction = cloneSettings.getString("powerConnectedEventAction", "NONE");
                                                                                                        String powerDisconnectedEventAction = cloneSettings.getString("powerDisconnectedEventAction", "NONE");
                                                                                                        PowerEventReceiver.init();
                                                                                                        String headphonesPluggedEventAction = cloneSettings.getString("headphonesPluggedEventAction", "NONE");
                                                                                                        String str56 = penDetachedEventAction;
                                                                                                        String headphonesUnpluggedEventAction = cloneSettings.getString("headphonesUnpluggedEventAction", "NONE");
                                                                                                        HeadphonesEventReceiver.init(context);
                                                                                                        String str57 = headphonesUnpluggedEventAction;
                                                                                                        String str58 = penInsertedEventAction;
                                                                                                        if (cloneSettings.getBoolean("disableCameras", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("muteMic", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("disableAutoFill", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("disablePermissionPrompts", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("requestIgnoreBatteryOptimizations", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("trustAllCertificates", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("fakeCalculator", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("hideNotch", false).booleanValue()) {
                                                                                                        }
                                                                                                        String str59 = powerDisconnectedEventAction;
                                                                                                        long appValidFrom2 = cloneSettings.getLong("appValidFrom", 0L).longValue();
                                                                                                        long appValidUntil2 = cloneSettings.getLong("appValidUntil", 0L).longValue();
                                                                                                        boolean z49 = allowSharingImages;
                                                                                                        boolean z50 = allowScreenshots;
                                                                                                        appValidFrom = appValidFrom2;
                                                                                                        if (appValidFrom == 0) {
                                                                                                        }
                                                                                                        defaultProvider.invokeSecondaryInstance("AppValidity", "install", Long.valueOf(appValidFrom), Long.valueOf(appValidUntil));
                                                                                                        if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                                                        }
                                                                                                        overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                                                        defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                                                        if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                                                        }
                                                                                                        if (devDevice2) {
                                                                                                        }
                                                                                                    } catch (Throwable th8) {
                                                                                                        th = th8;
                                                                                                    }
                                                                                                    new WhatsAppSupport().init(originalPackageName);
                                                                                                    ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                                    if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    Log.i(TAG, "onCreate; done");
                                                                                                    Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                                    return true;
                                                                                                }
                                                                                            } else {
                                                                                                boolean z51 = allowTextSelection;
                                                                                            }
                                                                                            Class.forName("com.amazon.mas.kiwi.util.ApkHelpers");
                                                                                            defaultProvider.invokeSecondaryStatic("AmazonAppstoreWorkaround", "install", new Object[0]);
                                                                                            defaultProvider.invokeSecondaryStatic("BrazeAppboyWorkaround", "install", new Object[0]);
                                                                                            defaultProvider.invokeSecondaryStatic("FabricWorkaround", "install", context);
                                                                                            if (!cloneSettings.getBoolean("removeLauncherIcon", false).booleanValue()) {
                                                                                                if (!cloneSettings.getBoolean("removeLauncherIconShortcuts", false).booleanValue()) {
                                                                                                    z2 = false;
                                                                                                    if (cloneSettings.getBoolean("bringAppToFrontNotification", Boolean.valueOf(z2)).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryInstance("BringAppToFrontNotification", "install", context);
                                                                                                    }
                                                                                                    String penDetachedEventAction2 = cloneSettings.getString("penDetachedEventAction", "NONE");
                                                                                                    String penInsertedEventAction2 = cloneSettings.getString("penInsertedEventAction", "NONE");
                                                                                                    if ("EXIT_APP".equals(penDetachedEventAction2) || "EXIT_APP".equals(penInsertedEventAction2)) {
                                                                                                        PenEventReceiver.init();
                                                                                                    }
                                                                                                    String powerConnectedEventAction2 = cloneSettings.getString("powerConnectedEventAction", "NONE");
                                                                                                    String powerDisconnectedEventAction2 = cloneSettings.getString("powerDisconnectedEventAction", "NONE");
                                                                                                    if ("EXIT_APP".equals(powerConnectedEventAction2) || "EXIT_APP".equals(powerDisconnectedEventAction2)) {
                                                                                                        PowerEventReceiver.init();
                                                                                                    }
                                                                                                    String headphonesPluggedEventAction2 = cloneSettings.getString("headphonesPluggedEventAction", "NONE");
                                                                                                    String str562 = penDetachedEventAction2;
                                                                                                    String headphonesUnpluggedEventAction2 = cloneSettings.getString("headphonesUnpluggedEventAction", "NONE");
                                                                                                    if (!"NONE".equals(headphonesPluggedEventAction2) || !"NONE".equals(headphonesUnpluggedEventAction2)) {
                                                                                                        HeadphonesEventReceiver.init(context);
                                                                                                    }
                                                                                                    String str572 = headphonesUnpluggedEventAction2;
                                                                                                    String str582 = penInsertedEventAction2;
                                                                                                    if (cloneSettings.getBoolean("disableCameras", false).booleanValue()) {
                                                                                                        new DisableCameras().install();
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("muteMic", false).booleanValue()) {
                                                                                                        String str60 = powerConnectedEventAction2;
                                                                                                        defaultProvider.invokeSecondaryInstance("MuteMic", "install", new Object[0]);
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("disableAutoFill", false).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryInstance("DisableAutoFill", "install", new Object[0]);
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("disablePermissionPrompts", false).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryStatic("DisablePermissionPrompts", "install", new Object[0]);
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("requestIgnoreBatteryOptimizations", false).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryInstance("RequestIgnoreBatteryOptimizations", "install", new Object[0]);
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("trustAllCertificates", false).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryStatic("TrustAllCertificates", "install", new Object[0]);
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("fakeCalculator", false).booleanValue()) {
                                                                                                        new FakeCalculator().install();
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("hideNotch", false).booleanValue()) {
                                                                                                        defaultProvider.invokeSecondaryInstance("HideNotch", "install", new Object[0]);
                                                                                                    }
                                                                                                    String str592 = powerDisconnectedEventAction2;
                                                                                                    long appValidFrom22 = cloneSettings.getLong("appValidFrom", 0L).longValue();
                                                                                                    long appValidUntil22 = cloneSettings.getLong("appValidUntil", 0L).longValue();
                                                                                                    boolean z492 = allowSharingImages;
                                                                                                    boolean z502 = allowScreenshots;
                                                                                                    appValidFrom = appValidFrom22;
                                                                                                    if (appValidFrom == 0) {
                                                                                                        boolean z52 = preventScreenshots;
                                                                                                        Boolean bool = webViewSafeBrowsing;
                                                                                                        appValidUntil = appValidUntil22;
                                                                                                        if (appValidUntil != 0) {
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                                                            defaultProvider.invokeSecondaryInstance("AccessibleDataDirectory", "install", context);
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                                                            HostsBlocker.install(context, cloneSettings.getBoolean("blockByDefault", false).booleanValue(), cloneSettings.getString("socksProxyHost", (String) null));
                                                                                                        }
                                                                                                        overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                                                        if (overrideSharedPreferences != null && !overrideSharedPreferences.isEmpty()) {
                                                                                                            defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                                                        }
                                                                                                        if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                                                            defaultProvider.invokeSecondaryStatic("EnableTvVersion", "install", new Object[0]);
                                                                                                        }
                                                                                                        if (devDevice2) {
                                                                                                            try {
                                                                                                                Object o37 = ni(context, "com.begal.appclone.classes.secondary.Test");
                                                                                                                Map<String, String> map = overrideSharedPreferences;
                                                                                                                try {
                                                                                                                    o37.getClass().getMethod("init", new Class[]{Context.class}).invoke(o37, new Object[]{context});
                                                                                                                } catch (Exception e8) {
                                                                                                                    e = e8;
                                                                                                                }
                                                                                                            } catch (Exception e9) {
                                                                                                                Map<String, String> map2 = overrideSharedPreferences;
                                                                                                                e = e9;
                                                                                                                Log.w(TAG, e);
                                                                                                                new WhatsAppSupport().init(originalPackageName);
                                                                                                                ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                                                if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                                                }
                                                                                                                if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                                                }
                                                                                                                if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                                                }
                                                                                                                if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                                                }
                                                                                                                Log.i(TAG, "onCreate; done");
                                                                                                                Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                                                return true;
                                                                                                            }
                                                                                                        }
                                                                                                        if ("com.whatsapp".equals(originalPackageName) || "com.whatsapp.w4b".equals(originalPackageName)) {
                                                                                                            new WhatsAppSupport().init(originalPackageName);
                                                                                                            ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                                        }
                                                                                                        if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                                            new GmailSupport().init(context);
                                                                                                        }
                                                                                                        if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                                            Object o38 = ni(context, "com.begal.appclone.classes.secondary.PayPalSupport");
                                                                                                            o38.getClass().getMethod("init", new Class[]{Context.class}).invoke(o38, new Object[]{context});
                                                                                                        }
                                                                                                        if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                                            defaultProvider.invokeSecondaryStatic("FlickrSupport", "install", new Object[0]);
                                                                                                        }
                                                                                                        if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                                            new Thread() {
                                                                                                                public void run() {
                                                                                                                    try {
                                                                                                                        AndHook.ensureNativeLibraryLoaded((File) null);
                                                                                                                        Class<?> clazz = Class.forName("android.app.ContextImpl");
                                                                                                                        AndHook.ensureClassInitialized(clazz);
                                                                                                                        AndHook.ensureClassInitialized(DefaultProvider.class);
                                                                                                                        HookHelper.hook(clazz.getMethod("getPackageName", new Class[0]), DefaultProvider.class.getMethod("getPackageNameHook", new Class[]{Object.class}));
                                                                                                                        Log.i(DefaultProvider.TAG, "onCreate; getPackageNameHook installed");
                                                                                                                    } catch (Throwable t) {
                                                                                                                        Log.w(DefaultProvider.TAG, t);
                                                                                                                    }
                                                                                                                }
                                                                                                            }.start();
                                                                                                        }
                                                                                                        Log.i(TAG, "onCreate; done");
                                                                                                        Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                                        return true;
                                                                                                    }
                                                                                                    Boolean bool2 = webViewSafeBrowsing;
                                                                                                    appValidUntil = appValidUntil22;
                                                                                                    defaultProvider.invokeSecondaryInstance("AppValidity", "install", Long.valueOf(appValidFrom), Long.valueOf(appValidUntil));
                                                                                                    if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                                                    }
                                                                                                    if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                                                    }
                                                                                                    overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                                                    defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                                                    if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                                                    }
                                                                                                    if (devDevice2) {
                                                                                                    }
                                                                                                    new WhatsAppSupport().init(originalPackageName);
                                                                                                    ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                                    if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                                    }
                                                                                                    Log.i(TAG, "onCreate; done");
                                                                                                    Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                                    return true;
                                                                                                }
                                                                                            }
                                                                                            z2 = false;
                                                                                            defaultProvider.invokeSecondaryStatic("RemoveLauncherIconShortcuts", "install", context);
                                                                                            if (cloneSettings.getBoolean("bringAppToFrontNotification", Boolean.valueOf(z2)).booleanValue()) {
                                                                                            }
                                                                                            String penDetachedEventAction22 = cloneSettings.getString("penDetachedEventAction", "NONE");
                                                                                            String penInsertedEventAction22 = cloneSettings.getString("penInsertedEventAction", "NONE");
                                                                                            PenEventReceiver.init();
                                                                                            String powerConnectedEventAction22 = cloneSettings.getString("powerConnectedEventAction", "NONE");
                                                                                            String powerDisconnectedEventAction22 = cloneSettings.getString("powerDisconnectedEventAction", "NONE");
                                                                                            PowerEventReceiver.init();
                                                                                            String headphonesPluggedEventAction22 = cloneSettings.getString("headphonesPluggedEventAction", "NONE");
                                                                                            String str5622 = penDetachedEventAction22;
                                                                                            String headphonesUnpluggedEventAction22 = cloneSettings.getString("headphonesUnpluggedEventAction", "NONE");
                                                                                            HeadphonesEventReceiver.init(context);
                                                                                            String str5722 = headphonesUnpluggedEventAction22;
                                                                                            String str5822 = penInsertedEventAction22;
                                                                                            if (cloneSettings.getBoolean("disableCameras", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("muteMic", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("disableAutoFill", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("disablePermissionPrompts", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("requestIgnoreBatteryOptimizations", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("trustAllCertificates", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("fakeCalculator", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("hideNotch", false).booleanValue()) {
                                                                                            }
                                                                                            String str5922 = powerDisconnectedEventAction22;
                                                                                            long appValidFrom222 = cloneSettings.getLong("appValidFrom", 0L).longValue();
                                                                                            long appValidUntil222 = cloneSettings.getLong("appValidUntil", 0L).longValue();
                                                                                            boolean z4922 = allowSharingImages;
                                                                                            boolean z5022 = allowScreenshots;
                                                                                            appValidFrom = appValidFrom222;
                                                                                            if (appValidFrom == 0) {
                                                                                            }
                                                                                            defaultProvider.invokeSecondaryInstance("AppValidity", "install", Long.valueOf(appValidFrom), Long.valueOf(appValidUntil));
                                                                                            if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                                            }
                                                                                            if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                                            }
                                                                                            overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                                            defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                                            if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                                            }
                                                                                            if (devDevice2) {
                                                                                            }
                                                                                            new WhatsAppSupport().init(originalPackageName);
                                                                                            ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                            if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                            }
                                                                                            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                            }
                                                                                            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                            }
                                                                                            if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                            }
                                                                                            Log.i(TAG, "onCreate; done");
                                                                                            Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                            return true;
                                                                                        }
                                                                                    }
                                                                                    Integer num5 = statusBarColor;
                                                                                    Integer num6 = navigationBarColor;
                                                                                    defaultProvider.invokeSecondaryInstance("WebViewHooks", "install", context, randomizeBuildProps3, webViewSafeBrowsing);
                                                                                    if (cloneSettings.getBoolean("clearCacheWhenNotUsed", false).booleanValue()) {
                                                                                    }
                                                                                    Class.forName("com.amazon.mas.kiwi.util.ApkHelpers");
                                                                                    defaultProvider.invokeSecondaryStatic("AmazonAppstoreWorkaround", "install", new Object[0]);
                                                                                    defaultProvider.invokeSecondaryStatic("BrazeAppboyWorkaround", "install", new Object[0]);
                                                                                    defaultProvider.invokeSecondaryStatic("FabricWorkaround", "install", context);
                                                                                    if (!cloneSettings.getBoolean("removeLauncherIcon", false).booleanValue()) {
                                                                                    }
                                                                                    z2 = false;
                                                                                    defaultProvider.invokeSecondaryStatic("RemoveLauncherIconShortcuts", "install", context);
                                                                                    if (cloneSettings.getBoolean("bringAppToFrontNotification", Boolean.valueOf(z2)).booleanValue()) {
                                                                                    }
                                                                                    String penDetachedEventAction222 = cloneSettings.getString("penDetachedEventAction", "NONE");
                                                                                    String penInsertedEventAction222 = cloneSettings.getString("penInsertedEventAction", "NONE");
                                                                                    PenEventReceiver.init();
                                                                                    String powerConnectedEventAction222 = cloneSettings.getString("powerConnectedEventAction", "NONE");
                                                                                    String powerDisconnectedEventAction222 = cloneSettings.getString("powerDisconnectedEventAction", "NONE");
                                                                                    PowerEventReceiver.init();
                                                                                    String headphonesPluggedEventAction222 = cloneSettings.getString("headphonesPluggedEventAction", "NONE");
                                                                                    String str56222 = penDetachedEventAction222;
                                                                                    String headphonesUnpluggedEventAction222 = cloneSettings.getString("headphonesUnpluggedEventAction", "NONE");
                                                                                    HeadphonesEventReceiver.init(context);
                                                                                    String str57222 = headphonesUnpluggedEventAction222;
                                                                                    String str58222 = penInsertedEventAction222;
                                                                                    if (cloneSettings.getBoolean("disableCameras", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("muteMic", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("disableAutoFill", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("disablePermissionPrompts", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("requestIgnoreBatteryOptimizations", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("trustAllCertificates", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("fakeCalculator", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("hideNotch", false).booleanValue()) {
                                                                                    }
                                                                                    String str59222 = powerDisconnectedEventAction222;
                                                                                    long appValidFrom2222 = cloneSettings.getLong("appValidFrom", 0L).longValue();
                                                                                    long appValidUntil2222 = cloneSettings.getLong("appValidUntil", 0L).longValue();
                                                                                    boolean z49222 = allowSharingImages;
                                                                                    boolean z50222 = allowScreenshots;
                                                                                    appValidFrom = appValidFrom2222;
                                                                                    if (appValidFrom == 0) {
                                                                                    }
                                                                                    defaultProvider.invokeSecondaryInstance("AppValidity", "install", Long.valueOf(appValidFrom), Long.valueOf(appValidUntil));
                                                                                    if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                                    }
                                                                                    if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                                    }
                                                                                    overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                                    defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                                    if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                                    }
                                                                                    if (devDevice2) {
                                                                                    }
                                                                                    new WhatsAppSupport().init(originalPackageName);
                                                                                    ByteArrayOutputStrean.init(context, originalPackageName);
                                                                                    if ("com.google.android.gm".equals(originalPackageName)) {
                                                                                    }
                                                                                    if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                                    }
                                                                                    if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                                    }
                                                                                    if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                                    }
                                                                                    Log.i(TAG, "onCreate; done");
                                                                                    Utils.closeAndroidPieApiCompatibilityDialog();
                                                                                    return true;
                                                                                }
                                                                            }
                                                                            String str61 = fingerprintTapAction;
                                                                            String str62 = fingerprintLongTapAction;
                                                                            boolean z53 = socksProxy;
                                                                            String str63 = buildPropsProduct;
                                                                            defaultProvider.invokeSecondaryInstance("VolumeUpDownKeyAction", "install", volumeUpKeyAction, cloneSettings.getString("volumeUpKeyActionParam", (String) null), volumeDownKeyAction, cloneSettings.getString("volumeDownKeyActionParam", (String) null), volumeUpDownKeyAction, cloneSettings.getString("volumeUpDownKeyActionParam", (String) null));
                                                                            defaultProvider.invokeSecondaryStatic("SecurityExceptionWorkaround", "install", new Object[0]);
                                                                            googlePlayServicesWorkaround = cloneSettings.getBoolean("googlePlayServicesWorkaround", false).booleanValue();
                                                                            googlePlayServicesWorkaround = true;
                                                                            if (googlePlayServicesWorkaround) {
                                                                            }
                                                                            hideGooglePlayServices = cloneSettings.getBoolean("hideGooglePlayServices", false).booleanValue();
                                                                            if (hideGooglePlayServices) {
                                                                            }
                                                                            welcomeMessageHtml = cloneSettings.getString("welcomeMessageHtml", (String) null);
                                                                            if (TextUtils.isEmpty(welcomeMessageHtml)) {
                                                                            }
                                                                            incognitoMode = cloneSettings.getBoolean("incognitoMode", false).booleanValue();
                                                                            if (incognitoMode) {
                                                                            }
                                                                            volumeRockerLocker = cloneSettings.getString("volumeRockerLocker", "NONE");
                                                                            if (!"NONE".equals(volumeRockerLocker)) {
                                                                            }
                                                                            floatingBackButton = cloneSettings.getBoolean("floatingBackButton", false).booleanValue();
                                                                            if (!floatingBackButton) {
                                                                            }
                                                                            joystickPointer = cloneSettings.getBoolean("joystickPointer", false).booleanValue();
                                                                            if (!joystickPointer) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("showTouches", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("localBroadcastsServices", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("localActivities", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("showAppInfoNotification", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("pictureInPictureNotification", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("hidePasswordCharacters", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("incognitoKeyboard", false).booleanValue()) {
                                                                            }
                                                                            Object o352 = ni(context, "com.begal.appclone.classes.secondary.DebugUtils");
                                                                            o352.getClass().getMethod("init", new Class[]{Context.class}).invoke(o352, new Object[]{context});
                                                                            if (cloneSettings.getBoolean("noBackgroundServices", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("disableLogcatLogging", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("flushLogcatBufferOnExit", false).booleanValue()) {
                                                                            }
                                                                            defaultProvider.invokeSecondaryStatic("LogGetPackageNameHook", "install", new Object[0]);
                                                                            statusBarColor = cloneSettings.getInteger("statusBarColor", (Integer) null);
                                                                            navigationBarColor = cloneSettings.getInteger("navigationBarColor", (Integer) null);
                                                                            if (cloneSettings.getBoolean("navigationBarColorUseStatusBarColor", false).booleanValue()) {
                                                                            }
                                                                            defaultProvider.invokeSecondaryStatic("StatusNavigationBarColor", "install", statusBarColor, navigationBarColor);
                                                                            toolbarColor = cloneSettings.getInteger("toolbarColor", (Integer) null);
                                                                            if (cloneSettings.getBoolean("toolbarColorUseStatusBarColor", false).booleanValue()) {
                                                                            }
                                                                            if (toolbarColor != null) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("muteOnStart", false).booleanValue()) {
                                                                            }
                                                                            allowTextSelection = cloneSettings.getBoolean("allowTextSelection", false).booleanValue();
                                                                            allowSharingImages = cloneSettings.getBoolean("allowSharingImages", false).booleanValue();
                                                                            defaultProvider.invokeSecondaryInstance("AllowTextSelectionSharingImages", "install", Boolean.valueOf(allowTextSelection), Boolean.valueOf(allowSharingImages));
                                                                            if (cloneSettings.getBoolean("keepScreenOn", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("exitAppOnScreenOff", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("requestAllPermissions", false).booleanValue()) {
                                                                            }
                                                                            allowScreenshots = cloneSettings.getBoolean("allowScreenshots", false).booleanValue();
                                                                            preventScreenshots = cloneSettings.getBoolean("preventScreenshots", false).booleanValue();
                                                                            defaultProvider.invokeSecondaryInstance("AllowPreventScreenshots", "install", Boolean.valueOf(allowScreenshots), Boolean.valueOf(preventScreenshots));
                                                                            Boolean webViewSafeBrowsing2 = cloneSettings.getBoolean("webViewSafeBrowsing", (Boolean) null);
                                                                            randomizeBuildProps3 = randomizeBuildProps2;
                                                                            if (!randomizeBuildProps3.booleanValue()) {
                                                                            }
                                                                            Integer num52 = statusBarColor;
                                                                            Integer num62 = navigationBarColor;
                                                                            defaultProvider.invokeSecondaryInstance("WebViewHooks", "install", context, randomizeBuildProps3, webViewSafeBrowsing2);
                                                                            if (cloneSettings.getBoolean("clearCacheWhenNotUsed", false).booleanValue()) {
                                                                            }
                                                                            try {
                                                                                Class.forName("com.amazon.mas.kiwi.util.ApkHelpers");
                                                                                defaultProvider.invokeSecondaryStatic("AmazonAppstoreWorkaround", "install", new Object[0]);
                                                                            } catch (Throwable th9) {
                                                                            }
                                                                            defaultProvider.invokeSecondaryStatic("BrazeAppboyWorkaround", "install", new Object[0]);
                                                                            defaultProvider.invokeSecondaryStatic("FabricWorkaround", "install", context);
                                                                            if (!cloneSettings.getBoolean("removeLauncherIcon", false).booleanValue()) {
                                                                            }
                                                                            z2 = false;
                                                                            defaultProvider.invokeSecondaryStatic("RemoveLauncherIconShortcuts", "install", context);
                                                                            if (cloneSettings.getBoolean("bringAppToFrontNotification", Boolean.valueOf(z2)).booleanValue()) {
                                                                            }
                                                                            String penDetachedEventAction2222 = cloneSettings.getString("penDetachedEventAction", "NONE");
                                                                            String penInsertedEventAction2222 = cloneSettings.getString("penInsertedEventAction", "NONE");
                                                                            PenEventReceiver.init();
                                                                            String powerConnectedEventAction2222 = cloneSettings.getString("powerConnectedEventAction", "NONE");
                                                                            String powerDisconnectedEventAction2222 = cloneSettings.getString("powerDisconnectedEventAction", "NONE");
                                                                            PowerEventReceiver.init();
                                                                            String headphonesPluggedEventAction2222 = cloneSettings.getString("headphonesPluggedEventAction", "NONE");
                                                                            String str562222 = penDetachedEventAction2222;
                                                                            String headphonesUnpluggedEventAction2222 = cloneSettings.getString("headphonesUnpluggedEventAction", "NONE");
                                                                            HeadphonesEventReceiver.init(context);
                                                                            String str572222 = headphonesUnpluggedEventAction2222;
                                                                            String str582222 = penInsertedEventAction2222;
                                                                            if (cloneSettings.getBoolean("disableCameras", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("muteMic", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("disableAutoFill", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("disablePermissionPrompts", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("requestIgnoreBatteryOptimizations", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("trustAllCertificates", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("fakeCalculator", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("hideNotch", false).booleanValue()) {
                                                                            }
                                                                            String str592222 = powerDisconnectedEventAction2222;
                                                                            long appValidFrom22222 = cloneSettings.getLong("appValidFrom", 0L).longValue();
                                                                            long appValidUntil22222 = cloneSettings.getLong("appValidUntil", 0L).longValue();
                                                                            boolean z492222 = allowSharingImages;
                                                                            boolean z502222 = allowScreenshots;
                                                                            appValidFrom = appValidFrom22222;
                                                                            if (appValidFrom == 0) {
                                                                            }
                                                                            defaultProvider.invokeSecondaryInstance("AppValidity", "install", Long.valueOf(appValidFrom), Long.valueOf(appValidUntil));
                                                                            if (cloneSettings.getBoolean("accessibleDataDirectory", false).booleanValue()) {
                                                                            }
                                                                            if (cloneSettings.getBoolean("hostsBlocker", false).booleanValue()) {
                                                                            }
                                                                            overrideSharedPreferences = cloneSettings.getStringMap("overrideSharedPreferences", (Map<String, String>) null);
                                                                            defaultProvider.invokeSecondaryStatic("OverrideSharedPreferences", "install", overrideSharedPreferences);
                                                                            if (cloneSettings.getBoolean("enableTvVersion", false).booleanValue()) {
                                                                            }
                                                                            if (devDevice2) {
                                                                            }
                                                                            new WhatsAppSupport().init(originalPackageName);
                                                                            ByteArrayOutputStrean.init(context, originalPackageName);
                                                                            if ("com.google.android.gm".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                                            }
                                                                            if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                                            }
                                                                            Log.i(TAG, "onCreate; done");
                                                                            Utils.closeAndroidPieApiCompatibilityDialog();
                                                                            return true;
                                                                        }
                                                                    }
                                                                    String str64 = longPressBackAction;
                                                                    boolean z54 = disableInAppSearch;
                                                                    String str65 = buildPropsModel;
                                                                    defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                                                                    String volumeUpKeyAction2 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                                                    String volumeDownKeyAction2 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                                                    volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                                                    if (!"NONE".equals(volumeUpDownKeyAction)) {
                                                                    }
                                                                }
                                                            }
                                                            Object[] objArr = {context, buildPropsFingerprint, buildPropsBrand, buildPropsModel, buildPropsProduct, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                                                            String str66 = buildPropsFingerprint;
                                                            defaultProvider = this;
                                                            defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr);
                                                            socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                                                            if (socksProxy) {
                                                            }
                                                            disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                                                            if (disableAllNetworking) {
                                                            }
                                                            disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                                                            if (disableBackgroundNetworking) {
                                                            }
                                                            disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                                                            if (disableMobileData) {
                                                            }
                                                            disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                                                            originalPackageName = originalPackageName2;
                                                            if ("com.contextlogic.wish".equals(originalPackageName)) {
                                                            }
                                                            if (disableInAppSearch) {
                                                            }
                                                            makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                                                            if (makeWatchApp) {
                                                            }
                                                            disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                                                            if (disableActivityTransitions) {
                                                            }
                                                            longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                                                            if (!"NONE".equals(longPressBackAction)) {
                                                            }
                                                            if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                                                            }
                                                            fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                                                            String fingerprintLongTapAction2 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                                                            if ("NONE".equals(fingerprintTapAction)) {
                                                            }
                                                            String str642 = longPressBackAction;
                                                            boolean z542 = disableInAppSearch;
                                                            String str652 = buildPropsModel;
                                                            defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction2, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                                                            String volumeUpKeyAction22 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                                            String volumeDownKeyAction22 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                                            volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                                            if (!"NONE".equals(volumeUpDownKeyAction)) {
                                                            }
                                                        }
                                                    } catch (Throwable th10) {
                                                        th = th10;
                                                        defaultProvider = this;
                                                        originalPackageName = originalPackageName3;
                                                        t = th;
                                                        Log.w(TAG, t);
                                                        new WhatsAppSupport().init(originalPackageName);
                                                        ByteArrayOutputStrean.init(context, originalPackageName);
                                                        if ("com.google.android.gm".equals(originalPackageName)) {
                                                        }
                                                        if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                                                        }
                                                        if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                                                        }
                                                        if ("com.fiverr.fiverr".equals(originalPackageName)) {
                                                        }
                                                        Log.i(TAG, "onCreate; done");
                                                        Utils.closeAndroidPieApiCompatibilityDialog();
                                                        return true;
                                                    }
                                                }
                                                Object o39 = ni(context, "com.begal.appclone.classes.secondary.AndroidVersion");
                                                originalPackageName2 = originalPackageName3;
                                                o39.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class}).invoke(o39, new Object[]{context, androidVersionSdk, androidVersionSdkInt, androidVersionPreviewSdkInt, androidVersionCodename, androidVersionIncremental2, androidVersionRelease, androidVersionBaseOs2, androidVersionSecurityPatch2});
                                                String buildPropsManufacturer5 = cloneSettings.getString("buildPropsManufacturer", (String) null);
                                                String buildPropsBrand2 = cloneSettings.getString("buildPropsBrand", (String) null);
                                                String buildPropsModel2 = cloneSettings.getString("buildPropsModel", (String) null);
                                                String buildPropsProduct2 = cloneSettings.getString("buildPropsProduct", (String) null);
                                                String buildPropsManufacturer22 = buildPropsManufacturer5;
                                                String buildPropsDevice22 = cloneSettings.getString("buildPropsDevice", (String) null);
                                                String str142 = androidVersionRelease;
                                                String buildPropsBoard3 = cloneSettings.getString("buildPropsBoard", (String) null);
                                                String buildPropsHardware3 = cloneSettings.getString("buildPropsHardware", (String) null);
                                                String buildPropsBootloader2 = cloneSettings.getString("buildPropsBootloader", (String) null);
                                                String buildPropsFingerprint22 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                                                String buildPropsDevice32 = buildPropsDevice22;
                                                randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                                                if (!randomizeBuildProps.booleanValue()) {
                                                }
                                                String str232 = androidVersionSdkInt;
                                                String androidVersionSdkInt22 = TAG;
                                                String str242 = androidVersionPreviewSdkInt;
                                                StringBuilder sb22 = new StringBuilder();
                                                String str252 = androidVersionCodename;
                                                sb22.append("onCreate; buildPropsManufacturer: ");
                                                sb22.append(buildPropsFingerprint);
                                                sb22.append(", buildPropsBrand: ");
                                                sb22.append(buildPropsBrand2);
                                                sb22.append(", buildPropsModel: ");
                                                sb22.append(buildPropsModel2);
                                                sb22.append(", buildPropsProduct: ");
                                                sb22.append(buildPropsProduct2);
                                                sb22.append(", buildPropsDevice: ");
                                                sb22.append(buildPropsDevice);
                                                sb22.append(", buildPropsBoard: ");
                                                sb22.append(androidVersionBaseOs);
                                                sb22.append(", buildPropsHardware: ");
                                                sb22.append(androidVersionSdk2);
                                                sb22.append(", buildPropsBootloader: ");
                                                sb22.append(androidVersionIncremental);
                                                sb22.append(", buildPropsFingerprint: ");
                                                sb22.append(androidVersionSecurityPatch);
                                                Log.i(androidVersionSdkInt22, sb22.toString());
                                                if (TextUtils.isEmpty(buildPropsFingerprint)) {
                                                }
                                                Object[] objArr2 = {context, buildPropsFingerprint, buildPropsBrand2, buildPropsModel2, buildPropsProduct2, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                                                String str662 = buildPropsFingerprint;
                                                defaultProvider = this;
                                                defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr2);
                                                socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                                                if (socksProxy) {
                                                }
                                                disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                                                if (disableAllNetworking) {
                                                }
                                                disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                                                if (disableBackgroundNetworking) {
                                                }
                                                disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                                                if (disableMobileData) {
                                                }
                                                disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                                                originalPackageName = originalPackageName2;
                                                if ("com.contextlogic.wish".equals(originalPackageName)) {
                                                }
                                                if (disableInAppSearch) {
                                                }
                                                makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                                                if (makeWatchApp) {
                                                }
                                                disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                                                if (disableActivityTransitions) {
                                                }
                                                longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                                                if (!"NONE".equals(longPressBackAction)) {
                                                }
                                                if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                                                }
                                                fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                                                String fingerprintLongTapAction22 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                                                if ("NONE".equals(fingerprintTapAction)) {
                                                }
                                                String str6422 = longPressBackAction;
                                                boolean z5422 = disableInAppSearch;
                                                String str6522 = buildPropsModel2;
                                                defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction22, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                                                String volumeUpKeyAction222 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                                String volumeDownKeyAction222 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                                volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                                if (!"NONE".equals(volumeUpDownKeyAction)) {
                                                }
                                            }
                                        }
                                        boolean z55 = randomAndroidId;
                                        boolean z56 = changeAndroidId;
                                        int i3 = changeAndroidIdSeed;
                                        boolean z57 = forceRotationLockUsingOverlay;
                                        invokeSecondaryInstance("ChangeImeiImsiHideSimOperatorInfo", "install", context, changeImei, cloneSettings.getString("customImei", ""), changeImsi, cloneSettings.getString("customImsi", ""), Boolean.valueOf(hideSimOperatorInfo));
                                        hideWifiMacAddress = cloneSettings.getBoolean("hideWifiMacAddress", false).booleanValue();
                                        hideWifiInfo = cloneSettings.getBoolean("hideWifiInfo", false).booleanValue();
                                        if (hideWifiMacAddress) {
                                        }
                                        hideBluetoothMacAddress = cloneSettings.getBoolean("hideBluetoothMacAddress", false).booleanValue();
                                        if (hideBluetoothMacAddress) {
                                        }
                                        spoofLocationLatitude = cloneSettings.getDouble("spoofLocationLatitude", (Double) null);
                                        Double spoofLocationLongitude2 = cloneSettings.getDouble("spoofLocationLongitude", (Double) null);
                                        if (spoofLocationLatitude != null) {
                                        }
                                        boolean z262 = hideBluetoothMacAddress;
                                        androidVersionSdk = cloneSettings.getString("androidVersionSdk", (String) null);
                                        String androidVersionSdkInt3 = cloneSettings.getString("androidVersionSdkInt", (String) null);
                                        String androidVersionPreviewSdkInt2 = cloneSettings.getString("androidVersionPreviewSdkInt", (String) null);
                                        String androidVersionCodename2 = cloneSettings.getString("androidVersionCodename", (String) null);
                                        Double d3 = spoofLocationLatitude;
                                        String androidVersionIncremental22 = cloneSettings.getString("androidVersionIncremental", (String) null);
                                        Double d22 = spoofLocationLongitude2;
                                        String androidVersionRelease2 = cloneSettings.getString("androidVersionRelease", (String) null);
                                        String str112 = changeImsi;
                                        String androidVersionBaseOs22 = cloneSettings.getString("androidVersionBaseOs", (String) null);
                                        boolean z292 = hideSimOperatorInfo;
                                        String androidVersionSecurityPatch22 = cloneSettings.getString("androidVersionSecurityPatch", (String) null);
                                        String str122 = TAG;
                                        String str132 = taskerStopTaskName;
                                        StringBuilder sb3 = new StringBuilder();
                                        boolean devDevice22 = devDevice;
                                        sb3.append("onCreate; androidVersionSdk: ");
                                        sb3.append(androidVersionSdk);
                                        sb3.append(", androidVersionSdkInt: ");
                                        sb3.append(androidVersionSdkInt3);
                                        sb3.append(", androidVersionPreviewSdkInt: ");
                                        sb3.append(androidVersionPreviewSdkInt2);
                                        sb3.append(", androidVersionCodename: ");
                                        sb3.append(androidVersionCodename2);
                                        sb3.append(", androidVersionIncremental: ");
                                        sb3.append(androidVersionIncremental22);
                                        sb3.append(", androidVersionRelease: ");
                                        sb3.append(androidVersionRelease2);
                                        sb3.append(", androidVersionBaseOs: ");
                                        sb3.append(androidVersionBaseOs22);
                                        sb3.append(", androidVersionSecurityPatch: ");
                                        sb3.append(androidVersionSecurityPatch22);
                                        Log.i(str122, sb3.toString());
                                        if (TextUtils.isEmpty(androidVersionSdk)) {
                                        }
                                        Object o392 = ni(context, "com.begal.appclone.classes.secondary.AndroidVersion");
                                        originalPackageName2 = originalPackageName3;
                                        o392.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class}).invoke(o392, new Object[]{context, androidVersionSdk, androidVersionSdkInt3, androidVersionPreviewSdkInt2, androidVersionCodename2, androidVersionIncremental22, androidVersionRelease2, androidVersionBaseOs22, androidVersionSecurityPatch22});
                                        String buildPropsManufacturer52 = cloneSettings.getString("buildPropsManufacturer", (String) null);
                                        String buildPropsBrand22 = cloneSettings.getString("buildPropsBrand", (String) null);
                                        String buildPropsModel22 = cloneSettings.getString("buildPropsModel", (String) null);
                                        String buildPropsProduct22 = cloneSettings.getString("buildPropsProduct", (String) null);
                                        String buildPropsManufacturer222 = buildPropsManufacturer52;
                                        String buildPropsDevice222 = cloneSettings.getString("buildPropsDevice", (String) null);
                                        String str1422 = androidVersionRelease2;
                                        String buildPropsBoard32 = cloneSettings.getString("buildPropsBoard", (String) null);
                                        String buildPropsHardware32 = cloneSettings.getString("buildPropsHardware", (String) null);
                                        String buildPropsBootloader22 = cloneSettings.getString("buildPropsBootloader", (String) null);
                                        String buildPropsFingerprint222 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                                        String buildPropsDevice322 = buildPropsDevice222;
                                        randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                                        if (!randomizeBuildProps.booleanValue()) {
                                        }
                                        String str2322 = androidVersionSdkInt3;
                                        String androidVersionSdkInt222 = TAG;
                                        String str2422 = androidVersionPreviewSdkInt2;
                                        StringBuilder sb222 = new StringBuilder();
                                        String str2522 = androidVersionCodename2;
                                        sb222.append("onCreate; buildPropsManufacturer: ");
                                        sb222.append(buildPropsFingerprint);
                                        sb222.append(", buildPropsBrand: ");
                                        sb222.append(buildPropsBrand22);
                                        sb222.append(", buildPropsModel: ");
                                        sb222.append(buildPropsModel22);
                                        sb222.append(", buildPropsProduct: ");
                                        sb222.append(buildPropsProduct22);
                                        sb222.append(", buildPropsDevice: ");
                                        sb222.append(buildPropsDevice);
                                        sb222.append(", buildPropsBoard: ");
                                        sb222.append(androidVersionBaseOs);
                                        sb222.append(", buildPropsHardware: ");
                                        sb222.append(androidVersionSdk2);
                                        sb222.append(", buildPropsBootloader: ");
                                        sb222.append(androidVersionIncremental);
                                        sb222.append(", buildPropsFingerprint: ");
                                        sb222.append(androidVersionSecurityPatch);
                                        Log.i(androidVersionSdkInt222, sb222.toString());
                                        if (TextUtils.isEmpty(buildPropsFingerprint)) {
                                        }
                                        Object[] objArr22 = {context, buildPropsFingerprint, buildPropsBrand22, buildPropsModel22, buildPropsProduct22, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                                        String str6622 = buildPropsFingerprint;
                                        defaultProvider = this;
                                        defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr22);
                                        socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                                        if (socksProxy) {
                                        }
                                        disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                                        if (disableAllNetworking) {
                                        }
                                        disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                                        if (disableBackgroundNetworking) {
                                        }
                                        disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                                        if (disableMobileData) {
                                        }
                                        disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                                        originalPackageName = originalPackageName2;
                                        if ("com.contextlogic.wish".equals(originalPackageName)) {
                                        }
                                        if (disableInAppSearch) {
                                        }
                                        makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                                        if (makeWatchApp) {
                                        }
                                        disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                                        if (disableActivityTransitions) {
                                        }
                                        longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                                        if (!"NONE".equals(longPressBackAction)) {
                                        }
                                        if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                                        }
                                        fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                                        String fingerprintLongTapAction222 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                                        if ("NONE".equals(fingerprintTapAction)) {
                                        }
                                        String str64222 = longPressBackAction;
                                        boolean z54222 = disableInAppSearch;
                                        String str65222 = buildPropsModel22;
                                        defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction222, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                                        String volumeUpKeyAction2222 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                        String volumeDownKeyAction2222 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                        volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                        if (!"NONE".equals(volumeUpDownKeyAction)) {
                                        }
                                    }
                                }
                                z = false;
                                invokeSecondaryInstance("ForceDeviceLock", "install", context);
                                changeAndroidId = cloneSettings.getBoolean("changeAndroidId", Boolean.valueOf(z)).booleanValue();
                                int changeAndroidIdSeed2 = cloneSettings.getInteger("changeAndroidIdSeed", 0).intValue();
                                List<String> list2 = deviceLockDeviceIdentifiers;
                                boolean randomAndroidId2 = cloneSettings.getBoolean("randomAndroidId", false).booleanValue();
                                if (!changeAndroidId) {
                                }
                                changeImei = cloneSettings.getString("changeImei", "NO_CHANGE");
                                String changeImsi2 = cloneSettings.getString("changeImsi", "NO_CHANGE");
                                boolean hideSimOperatorInfo2 = cloneSettings.getBoolean("hideSimOperatorInfo", false).booleanValue();
                                if ("NO_CHANGE".equals(changeImei)) {
                                }
                                boolean z552 = randomAndroidId2;
                                boolean z562 = changeAndroidId;
                                int i32 = changeAndroidIdSeed2;
                                boolean z572 = forceRotationLockUsingOverlay;
                                invokeSecondaryInstance("ChangeImeiImsiHideSimOperatorInfo", "install", context, changeImei, cloneSettings.getString("customImei", ""), changeImsi2, cloneSettings.getString("customImsi", ""), Boolean.valueOf(hideSimOperatorInfo2));
                                hideWifiMacAddress = cloneSettings.getBoolean("hideWifiMacAddress", false).booleanValue();
                                hideWifiInfo = cloneSettings.getBoolean("hideWifiInfo", false).booleanValue();
                                if (hideWifiMacAddress) {
                                }
                                hideBluetoothMacAddress = cloneSettings.getBoolean("hideBluetoothMacAddress", false).booleanValue();
                                if (hideBluetoothMacAddress) {
                                }
                                spoofLocationLatitude = cloneSettings.getDouble("spoofLocationLatitude", (Double) null);
                                Double spoofLocationLongitude22 = cloneSettings.getDouble("spoofLocationLongitude", (Double) null);
                                if (spoofLocationLatitude != null) {
                                }
                                boolean z2622 = hideBluetoothMacAddress;
                                androidVersionSdk = cloneSettings.getString("androidVersionSdk", (String) null);
                                String androidVersionSdkInt32 = cloneSettings.getString("androidVersionSdkInt", (String) null);
                                String androidVersionPreviewSdkInt22 = cloneSettings.getString("androidVersionPreviewSdkInt", (String) null);
                                String androidVersionCodename22 = cloneSettings.getString("androidVersionCodename", (String) null);
                                Double d32 = spoofLocationLatitude;
                                String androidVersionIncremental222 = cloneSettings.getString("androidVersionIncremental", (String) null);
                                Double d222 = spoofLocationLongitude22;
                                String androidVersionRelease22 = cloneSettings.getString("androidVersionRelease", (String) null);
                                String str1122 = changeImsi2;
                                String androidVersionBaseOs222 = cloneSettings.getString("androidVersionBaseOs", (String) null);
                                boolean z2922 = hideSimOperatorInfo2;
                                String androidVersionSecurityPatch222 = cloneSettings.getString("androidVersionSecurityPatch", (String) null);
                                String str1222 = TAG;
                                String str1322 = taskerStopTaskName;
                                StringBuilder sb32 = new StringBuilder();
                                boolean devDevice222 = devDevice;
                                sb32.append("onCreate; androidVersionSdk: ");
                                sb32.append(androidVersionSdk);
                                sb32.append(", androidVersionSdkInt: ");
                                sb32.append(androidVersionSdkInt32);
                                sb32.append(", androidVersionPreviewSdkInt: ");
                                sb32.append(androidVersionPreviewSdkInt22);
                                sb32.append(", androidVersionCodename: ");
                                sb32.append(androidVersionCodename22);
                                sb32.append(", androidVersionIncremental: ");
                                sb32.append(androidVersionIncremental222);
                                sb32.append(", androidVersionRelease: ");
                                sb32.append(androidVersionRelease22);
                                sb32.append(", androidVersionBaseOs: ");
                                sb32.append(androidVersionBaseOs222);
                                sb32.append(", androidVersionSecurityPatch: ");
                                sb32.append(androidVersionSecurityPatch222);
                                Log.i(str1222, sb32.toString());
                                if (TextUtils.isEmpty(androidVersionSdk)) {
                                }
                                Object o3922 = ni(context, "com.begal.appclone.classes.secondary.AndroidVersion");
                                originalPackageName2 = originalPackageName3;
                                o3922.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class}).invoke(o3922, new Object[]{context, androidVersionSdk, androidVersionSdkInt32, androidVersionPreviewSdkInt22, androidVersionCodename22, androidVersionIncremental222, androidVersionRelease22, androidVersionBaseOs222, androidVersionSecurityPatch222});
                                String buildPropsManufacturer522 = cloneSettings.getString("buildPropsManufacturer", (String) null);
                                String buildPropsBrand222 = cloneSettings.getString("buildPropsBrand", (String) null);
                                String buildPropsModel222 = cloneSettings.getString("buildPropsModel", (String) null);
                                String buildPropsProduct222 = cloneSettings.getString("buildPropsProduct", (String) null);
                                String buildPropsManufacturer2222 = buildPropsManufacturer522;
                                String buildPropsDevice2222 = cloneSettings.getString("buildPropsDevice", (String) null);
                                String str14222 = androidVersionRelease22;
                                String buildPropsBoard322 = cloneSettings.getString("buildPropsBoard", (String) null);
                                String buildPropsHardware322 = cloneSettings.getString("buildPropsHardware", (String) null);
                                String buildPropsBootloader222 = cloneSettings.getString("buildPropsBootloader", (String) null);
                                String buildPropsFingerprint2222 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                                String buildPropsDevice3222 = buildPropsDevice2222;
                                randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                                if (!randomizeBuildProps.booleanValue()) {
                                }
                                String str23222 = androidVersionSdkInt32;
                                String androidVersionSdkInt2222 = TAG;
                                String str24222 = androidVersionPreviewSdkInt22;
                                StringBuilder sb2222 = new StringBuilder();
                                String str25222 = androidVersionCodename22;
                                sb2222.append("onCreate; buildPropsManufacturer: ");
                                sb2222.append(buildPropsFingerprint);
                                sb2222.append(", buildPropsBrand: ");
                                sb2222.append(buildPropsBrand222);
                                sb2222.append(", buildPropsModel: ");
                                sb2222.append(buildPropsModel222);
                                sb2222.append(", buildPropsProduct: ");
                                sb2222.append(buildPropsProduct222);
                                sb2222.append(", buildPropsDevice: ");
                                sb2222.append(buildPropsDevice);
                                sb2222.append(", buildPropsBoard: ");
                                sb2222.append(androidVersionBaseOs);
                                sb2222.append(", buildPropsHardware: ");
                                sb2222.append(androidVersionSdk2);
                                sb2222.append(", buildPropsBootloader: ");
                                sb2222.append(androidVersionIncremental);
                                sb2222.append(", buildPropsFingerprint: ");
                                sb2222.append(androidVersionSecurityPatch);
                                Log.i(androidVersionSdkInt2222, sb2222.toString());
                                if (TextUtils.isEmpty(buildPropsFingerprint)) {
                                }
                                Object[] objArr222 = {context, buildPropsFingerprint, buildPropsBrand222, buildPropsModel222, buildPropsProduct222, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                                String str66222 = buildPropsFingerprint;
                                defaultProvider = this;
                                defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr222);
                                socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                                if (socksProxy) {
                                }
                                disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                                if (disableAllNetworking) {
                                }
                                disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                                if (disableBackgroundNetworking) {
                                }
                                disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                                if (disableMobileData) {
                                }
                                disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                                originalPackageName = originalPackageName2;
                                if ("com.contextlogic.wish".equals(originalPackageName)) {
                                }
                                if (disableInAppSearch) {
                                }
                                makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                                if (makeWatchApp) {
                                }
                                disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                                if (disableActivityTransitions) {
                                }
                                longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                                if (!"NONE".equals(longPressBackAction)) {
                                }
                                if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                                }
                                fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                                String fingerprintLongTapAction2222 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                                if ("NONE".equals(fingerprintTapAction)) {
                                }
                                String str642222 = longPressBackAction;
                                boolean z542222 = disableInAppSearch;
                                String str652222 = buildPropsModel222;
                                defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction2222, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                                String volumeUpKeyAction22222 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                                String volumeDownKeyAction22222 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                                volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                                if (!"NONE".equals(volumeUpDownKeyAction)) {
                                }
                            }
                        }
                        Object o40 = ni(context, "com.begal.appclone.classes.secondary.ExecuteTaskerTasks");
                        boolean z58 = immersiveMode;
                        boolean z59 = immersiveModeIgnoreNotch;
                        boolean z60 = floatingApp;
                        o40.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class}).invoke(o40, new Object[]{context, taskerStartTaskName, taskerStopTaskName});
                        makeDebuggable = cloneSettings.getBoolean("makeDebuggable", false).booleanValue();
                        if (makeDebuggable) {
                        }
                        privateAccounts = cloneSettings.getBoolean("privateAccounts", false).booleanValue();
                        if ("com.insightly.droid".equals(originalPackageName3)) {
                        }
                        if (privateAccounts) {
                        }
                        disableShareActions = cloneSettings.getBoolean("disableShareActions", false).booleanValue();
                        if (disableShareActions) {
                        }
                        disableWakeLocks = cloneSettings.getBoolean("disableWakeLocks", false).booleanValue();
                        if (disableWakeLocks) {
                        }
                        disableContactsAccess = cloneSettings.getBoolean("disableContactsAccess", false).booleanValue();
                        if (disableContactsAccess) {
                        }
                        disableCalendarAccess = cloneSettings.getBoolean("disableCalendarAccess", false).booleanValue();
                        if (disableCalendarAccess) {
                        }
                        disableCallLogSmsAccess = cloneSettings.getBoolean("disableCallLogSmsAccess", false).booleanValue();
                        if (disableCallLogSmsAccess) {
                        }
                        deviceLockDeviceIdentifiers = cloneSettings.getStringList("deviceLockDeviceIdentifiers", (List<String>) null);
                        if (deviceLockDeviceIdentifiers != null) {
                        }
                        z = false;
                        invokeSecondaryInstance("ForceDeviceLock", "install", context);
                        changeAndroidId = cloneSettings.getBoolean("changeAndroidId", Boolean.valueOf(z)).booleanValue();
                        int changeAndroidIdSeed22 = cloneSettings.getInteger("changeAndroidIdSeed", 0).intValue();
                        List<String> list22 = deviceLockDeviceIdentifiers;
                        boolean randomAndroidId22 = cloneSettings.getBoolean("randomAndroidId", false).booleanValue();
                        if (!changeAndroidId) {
                        }
                        changeImei = cloneSettings.getString("changeImei", "NO_CHANGE");
                        String changeImsi22 = cloneSettings.getString("changeImsi", "NO_CHANGE");
                        boolean hideSimOperatorInfo22 = cloneSettings.getBoolean("hideSimOperatorInfo", false).booleanValue();
                        if ("NO_CHANGE".equals(changeImei)) {
                        }
                        boolean z5522 = randomAndroidId22;
                        boolean z5622 = changeAndroidId;
                        int i322 = changeAndroidIdSeed22;
                        boolean z5722 = forceRotationLockUsingOverlay;
                        invokeSecondaryInstance("ChangeImeiImsiHideSimOperatorInfo", "install", context, changeImei, cloneSettings.getString("customImei", ""), changeImsi22, cloneSettings.getString("customImsi", ""), Boolean.valueOf(hideSimOperatorInfo22));
                        hideWifiMacAddress = cloneSettings.getBoolean("hideWifiMacAddress", false).booleanValue();
                        hideWifiInfo = cloneSettings.getBoolean("hideWifiInfo", false).booleanValue();
                        if (hideWifiMacAddress) {
                        }
                        hideBluetoothMacAddress = cloneSettings.getBoolean("hideBluetoothMacAddress", false).booleanValue();
                        if (hideBluetoothMacAddress) {
                        }
                        spoofLocationLatitude = cloneSettings.getDouble("spoofLocationLatitude", (Double) null);
                        Double spoofLocationLongitude222 = cloneSettings.getDouble("spoofLocationLongitude", (Double) null);
                        if (spoofLocationLatitude != null) {
                        }
                        boolean z26222 = hideBluetoothMacAddress;
                        androidVersionSdk = cloneSettings.getString("androidVersionSdk", (String) null);
                        String androidVersionSdkInt322 = cloneSettings.getString("androidVersionSdkInt", (String) null);
                        String androidVersionPreviewSdkInt222 = cloneSettings.getString("androidVersionPreviewSdkInt", (String) null);
                        String androidVersionCodename222 = cloneSettings.getString("androidVersionCodename", (String) null);
                        Double d322 = spoofLocationLatitude;
                        String androidVersionIncremental2222 = cloneSettings.getString("androidVersionIncremental", (String) null);
                        Double d2222 = spoofLocationLongitude222;
                        String androidVersionRelease222 = cloneSettings.getString("androidVersionRelease", (String) null);
                        String str11222 = changeImsi22;
                        String androidVersionBaseOs2222 = cloneSettings.getString("androidVersionBaseOs", (String) null);
                        boolean z29222 = hideSimOperatorInfo22;
                        String androidVersionSecurityPatch2222 = cloneSettings.getString("androidVersionSecurityPatch", (String) null);
                        String str12222 = TAG;
                        String str13222 = taskerStopTaskName;
                        StringBuilder sb322 = new StringBuilder();
                        boolean devDevice2222 = devDevice;
                        sb322.append("onCreate; androidVersionSdk: ");
                        sb322.append(androidVersionSdk);
                        sb322.append(", androidVersionSdkInt: ");
                        sb322.append(androidVersionSdkInt322);
                        sb322.append(", androidVersionPreviewSdkInt: ");
                        sb322.append(androidVersionPreviewSdkInt222);
                        sb322.append(", androidVersionCodename: ");
                        sb322.append(androidVersionCodename222);
                        sb322.append(", androidVersionIncremental: ");
                        sb322.append(androidVersionIncremental2222);
                        sb322.append(", androidVersionRelease: ");
                        sb322.append(androidVersionRelease222);
                        sb322.append(", androidVersionBaseOs: ");
                        sb322.append(androidVersionBaseOs2222);
                        sb322.append(", androidVersionSecurityPatch: ");
                        sb322.append(androidVersionSecurityPatch2222);
                        Log.i(str12222, sb322.toString());
                        if (TextUtils.isEmpty(androidVersionSdk)) {
                        }
                        Object o39222 = ni(context, "com.begal.appclone.classes.secondary.AndroidVersion");
                        originalPackageName2 = originalPackageName3;
                        try {
                            o39222.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class}).invoke(o39222, new Object[]{context, androidVersionSdk, androidVersionSdkInt322, androidVersionPreviewSdkInt222, androidVersionCodename222, androidVersionIncremental2222, androidVersionRelease222, androidVersionBaseOs2222, androidVersionSecurityPatch2222});
                            String buildPropsManufacturer5222 = cloneSettings.getString("buildPropsManufacturer", (String) null);
                            String buildPropsBrand2222 = cloneSettings.getString("buildPropsBrand", (String) null);
                            String buildPropsModel2222 = cloneSettings.getString("buildPropsModel", (String) null);
                            String buildPropsProduct2222 = cloneSettings.getString("buildPropsProduct", (String) null);
                            String buildPropsManufacturer22222 = buildPropsManufacturer5222;
                            String buildPropsDevice22222 = cloneSettings.getString("buildPropsDevice", (String) null);
                            String str142222 = androidVersionRelease222;
                            String buildPropsBoard3222 = cloneSettings.getString("buildPropsBoard", (String) null);
                            String buildPropsHardware3222 = cloneSettings.getString("buildPropsHardware", (String) null);
                            String buildPropsBootloader2222 = cloneSettings.getString("buildPropsBootloader", (String) null);
                            String buildPropsFingerprint22222 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                            String buildPropsDevice32222 = buildPropsDevice22222;
                            randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                            if (!randomizeBuildProps.booleanValue()) {
                            }
                            String str232222 = androidVersionSdkInt322;
                            String androidVersionSdkInt22222 = TAG;
                            String str242222 = androidVersionPreviewSdkInt222;
                            StringBuilder sb22222 = new StringBuilder();
                            String str252222 = androidVersionCodename222;
                            sb22222.append("onCreate; buildPropsManufacturer: ");
                            sb22222.append(buildPropsFingerprint);
                            sb22222.append(", buildPropsBrand: ");
                            sb22222.append(buildPropsBrand2222);
                            sb22222.append(", buildPropsModel: ");
                            sb22222.append(buildPropsModel2222);
                            sb22222.append(", buildPropsProduct: ");
                            sb22222.append(buildPropsProduct2222);
                            sb22222.append(", buildPropsDevice: ");
                            sb22222.append(buildPropsDevice);
                            sb22222.append(", buildPropsBoard: ");
                            sb22222.append(androidVersionBaseOs);
                            sb22222.append(", buildPropsHardware: ");
                            sb22222.append(androidVersionSdk2);
                            sb22222.append(", buildPropsBootloader: ");
                            sb22222.append(androidVersionIncremental);
                            sb22222.append(", buildPropsFingerprint: ");
                            sb22222.append(androidVersionSecurityPatch);
                            Log.i(androidVersionSdkInt22222, sb22222.toString());
                            if (TextUtils.isEmpty(buildPropsFingerprint)) {
                            }
                            Object[] objArr2222 = {context, buildPropsFingerprint, buildPropsBrand2222, buildPropsModel2222, buildPropsProduct2222, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                            String str662222 = buildPropsFingerprint;
                            defaultProvider = this;
                        } catch (Throwable th11) {
                            th = th11;
                            originalPackageName = originalPackageName2;
                            defaultProvider = this;
                            t = th;
                            Log.w(TAG, t);
                            new WhatsAppSupport().init(originalPackageName);
                            ByteArrayOutputStrean.init(context, originalPackageName);
                            if ("com.google.android.gm".equals(originalPackageName)) {
                            }
                            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                            }
                            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                            }
                            if ("com.fiverr.fiverr".equals(originalPackageName)) {
                            }
                            Log.i(TAG, "onCreate; done");
                            Utils.closeAndroidPieApiCompatibilityDialog();
                            return true;
                        }
                        try {
                            defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr2222);
                            socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                            if (socksProxy) {
                            }
                            disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                            if (disableAllNetworking) {
                            }
                            disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                            if (disableBackgroundNetworking) {
                            }
                            disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                            if (disableMobileData) {
                            }
                            disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                            originalPackageName = originalPackageName2;
                            if ("com.contextlogic.wish".equals(originalPackageName)) {
                            }
                            if (disableInAppSearch) {
                            }
                            makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                            if (makeWatchApp) {
                            }
                            disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                            if (disableActivityTransitions) {
                            }
                            longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                            if (!"NONE".equals(longPressBackAction)) {
                            }
                            if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                            }
                            fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                            String fingerprintLongTapAction22222 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                            if ("NONE".equals(fingerprintTapAction)) {
                            }
                            String str6422222 = longPressBackAction;
                            boolean z5422222 = disableInAppSearch;
                            String str6522222 = buildPropsModel2222;
                            defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction22222, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                            String volumeUpKeyAction222222 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                            String volumeDownKeyAction222222 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                            volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                            if (!"NONE".equals(volumeUpDownKeyAction)) {
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            originalPackageName = originalPackageName2;
                            t = th;
                            Log.w(TAG, t);
                            new WhatsAppSupport().init(originalPackageName);
                            ByteArrayOutputStrean.init(context, originalPackageName);
                            if ("com.google.android.gm".equals(originalPackageName)) {
                            }
                            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                            }
                            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                            }
                            if ("com.fiverr.fiverr".equals(originalPackageName)) {
                            }
                            Log.i(TAG, "onCreate; done");
                            Utils.closeAndroidPieApiCompatibilityDialog();
                            return true;
                        }
                    }
                }
                boolean z61 = multiWindowNoPause;
                invokeSecondaryInstance("ImmersiveMode", "install", Boolean.valueOf(immersiveMode), Boolean.valueOf(immersiveModeIgnoreNotch), Boolean.valueOf(transparentNavigationBar), Boolean.valueOf(preventImmersiveMode));
                taskerStartTaskName = cloneSettings.getString("taskerStartTaskName", (String) null);
                String taskerStopTaskName2 = cloneSettings.getString("taskerStopTaskName", (String) null);
                if (TextUtils.isEmpty(taskerStartTaskName)) {
                }
                Object o402 = ni(context, "com.begal.appclone.classes.secondary.ExecuteTaskerTasks");
                boolean z582 = immersiveMode;
                boolean z592 = immersiveModeIgnoreNotch;
                boolean z602 = floatingApp;
                o402.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class}).invoke(o402, new Object[]{context, taskerStartTaskName, taskerStopTaskName2});
                makeDebuggable = cloneSettings.getBoolean("makeDebuggable", false).booleanValue();
                if (makeDebuggable) {
                }
                privateAccounts = cloneSettings.getBoolean("privateAccounts", false).booleanValue();
                if ("com.insightly.droid".equals(originalPackageName3)) {
                }
                if (privateAccounts) {
                }
                disableShareActions = cloneSettings.getBoolean("disableShareActions", false).booleanValue();
                if (disableShareActions) {
                }
                disableWakeLocks = cloneSettings.getBoolean("disableWakeLocks", false).booleanValue();
                if (disableWakeLocks) {
                }
                disableContactsAccess = cloneSettings.getBoolean("disableContactsAccess", false).booleanValue();
                if (disableContactsAccess) {
                }
                disableCalendarAccess = cloneSettings.getBoolean("disableCalendarAccess", false).booleanValue();
                if (disableCalendarAccess) {
                }
                disableCallLogSmsAccess = cloneSettings.getBoolean("disableCallLogSmsAccess", false).booleanValue();
                if (disableCallLogSmsAccess) {
                }
                deviceLockDeviceIdentifiers = cloneSettings.getStringList("deviceLockDeviceIdentifiers", (List<String>) null);
                if (deviceLockDeviceIdentifiers != null) {
                }
                z = false;
                invokeSecondaryInstance("ForceDeviceLock", "install", context);
                changeAndroidId = cloneSettings.getBoolean("changeAndroidId", Boolean.valueOf(z)).booleanValue();
                int changeAndroidIdSeed222 = cloneSettings.getInteger("changeAndroidIdSeed", 0).intValue();
                List<String> list222 = deviceLockDeviceIdentifiers;
                boolean randomAndroidId222 = cloneSettings.getBoolean("randomAndroidId", false).booleanValue();
                if (!changeAndroidId) {
                }
                changeImei = cloneSettings.getString("changeImei", "NO_CHANGE");
                String changeImsi222 = cloneSettings.getString("changeImsi", "NO_CHANGE");
                boolean hideSimOperatorInfo222 = cloneSettings.getBoolean("hideSimOperatorInfo", false).booleanValue();
                if ("NO_CHANGE".equals(changeImei)) {
                }
                boolean z55222 = randomAndroidId222;
                boolean z56222 = changeAndroidId;
                int i3222 = changeAndroidIdSeed222;
                boolean z57222 = forceRotationLockUsingOverlay;
                invokeSecondaryInstance("ChangeImeiImsiHideSimOperatorInfo", "install", context, changeImei, cloneSettings.getString("customImei", ""), changeImsi222, cloneSettings.getString("customImsi", ""), Boolean.valueOf(hideSimOperatorInfo222));
                hideWifiMacAddress = cloneSettings.getBoolean("hideWifiMacAddress", false).booleanValue();
                hideWifiInfo = cloneSettings.getBoolean("hideWifiInfo", false).booleanValue();
                if (hideWifiMacAddress) {
                }
                hideBluetoothMacAddress = cloneSettings.getBoolean("hideBluetoothMacAddress", false).booleanValue();
                if (hideBluetoothMacAddress) {
                }
                spoofLocationLatitude = cloneSettings.getDouble("spoofLocationLatitude", (Double) null);
                Double spoofLocationLongitude2222 = cloneSettings.getDouble("spoofLocationLongitude", (Double) null);
                if (spoofLocationLatitude != null) {
                }
                boolean z262222 = hideBluetoothMacAddress;
                androidVersionSdk = cloneSettings.getString("androidVersionSdk", (String) null);
                String androidVersionSdkInt3222 = cloneSettings.getString("androidVersionSdkInt", (String) null);
                String androidVersionPreviewSdkInt2222 = cloneSettings.getString("androidVersionPreviewSdkInt", (String) null);
                String androidVersionCodename2222 = cloneSettings.getString("androidVersionCodename", (String) null);
                Double d3222 = spoofLocationLatitude;
                String androidVersionIncremental22222 = cloneSettings.getString("androidVersionIncremental", (String) null);
                Double d22222 = spoofLocationLongitude2222;
                String androidVersionRelease2222 = cloneSettings.getString("androidVersionRelease", (String) null);
                String str112222 = changeImsi222;
                String androidVersionBaseOs22222 = cloneSettings.getString("androidVersionBaseOs", (String) null);
                boolean z292222 = hideSimOperatorInfo222;
                String androidVersionSecurityPatch22222 = cloneSettings.getString("androidVersionSecurityPatch", (String) null);
                String str122222 = TAG;
                String str132222 = taskerStopTaskName2;
                StringBuilder sb3222 = new StringBuilder();
                boolean devDevice22222 = devDevice;
            } catch (Throwable th13) {
                defaultProvider = this;
                boolean z62 = devDevice;
                originalPackageName = originalPackageName3;
                t = th13;
                Log.w(TAG, t);
                new WhatsAppSupport().init(originalPackageName);
                ByteArrayOutputStrean.init(context, originalPackageName);
                if ("com.google.android.gm".equals(originalPackageName)) {
                }
                if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                }
                if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                }
                if ("com.fiverr.fiverr".equals(originalPackageName)) {
                }
                Log.i(TAG, "onCreate; done");
                Utils.closeAndroidPieApiCompatibilityDialog();
                return true;
            }
            try {
                sb3222.append("onCreate; androidVersionSdk: ");
                sb3222.append(androidVersionSdk);
                sb3222.append(", androidVersionSdkInt: ");
                sb3222.append(androidVersionSdkInt3222);
                sb3222.append(", androidVersionPreviewSdkInt: ");
                sb3222.append(androidVersionPreviewSdkInt2222);
                sb3222.append(", androidVersionCodename: ");
                sb3222.append(androidVersionCodename2222);
                sb3222.append(", androidVersionIncremental: ");
                sb3222.append(androidVersionIncremental22222);
                sb3222.append(", androidVersionRelease: ");
                sb3222.append(androidVersionRelease2222);
                sb3222.append(", androidVersionBaseOs: ");
                sb3222.append(androidVersionBaseOs22222);
                sb3222.append(", androidVersionSecurityPatch: ");
                sb3222.append(androidVersionSecurityPatch22222);
                Log.i(str122222, sb3222.toString());
                if (TextUtils.isEmpty(androidVersionSdk)) {
                }
                Object o392222 = ni(context, "com.begal.appclone.classes.secondary.AndroidVersion");
                originalPackageName2 = originalPackageName3;
                o392222.getClass().getMethod("init", new Class[]{Context.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class, String.class}).invoke(o392222, new Object[]{context, androidVersionSdk, androidVersionSdkInt3222, androidVersionPreviewSdkInt2222, androidVersionCodename2222, androidVersionIncremental22222, androidVersionRelease2222, androidVersionBaseOs22222, androidVersionSecurityPatch22222});
                String buildPropsManufacturer52222 = cloneSettings.getString("buildPropsManufacturer", (String) null);
                String buildPropsBrand22222 = cloneSettings.getString("buildPropsBrand", (String) null);
                String buildPropsModel22222 = cloneSettings.getString("buildPropsModel", (String) null);
                String buildPropsProduct22222 = cloneSettings.getString("buildPropsProduct", (String) null);
                String buildPropsManufacturer222222 = buildPropsManufacturer52222;
                String buildPropsDevice222222 = cloneSettings.getString("buildPropsDevice", (String) null);
                String str1422222 = androidVersionRelease2222;
                String buildPropsBoard32222 = cloneSettings.getString("buildPropsBoard", (String) null);
                String buildPropsHardware32222 = cloneSettings.getString("buildPropsHardware", (String) null);
                String buildPropsBootloader22222 = cloneSettings.getString("buildPropsBootloader", (String) null);
                String buildPropsFingerprint222222 = cloneSettings.getString("buildPropsFingerprint", (String) null);
                String buildPropsDevice322222 = buildPropsDevice222222;
                randomizeBuildProps = cloneSettings.getBoolean("randomizeBuildProps", false);
                if (!randomizeBuildProps.booleanValue()) {
                }
                String str2322222 = androidVersionSdkInt3222;
                String androidVersionSdkInt222222 = TAG;
                String str2422222 = androidVersionPreviewSdkInt2222;
                StringBuilder sb222222 = new StringBuilder();
                String str2522222 = androidVersionCodename2222;
                sb222222.append("onCreate; buildPropsManufacturer: ");
                sb222222.append(buildPropsFingerprint);
                sb222222.append(", buildPropsBrand: ");
                sb222222.append(buildPropsBrand22222);
                sb222222.append(", buildPropsModel: ");
                sb222222.append(buildPropsModel22222);
                sb222222.append(", buildPropsProduct: ");
                sb222222.append(buildPropsProduct22222);
                sb222222.append(", buildPropsDevice: ");
                sb222222.append(buildPropsDevice);
                sb222222.append(", buildPropsBoard: ");
                sb222222.append(androidVersionBaseOs);
                sb222222.append(", buildPropsHardware: ");
                sb222222.append(androidVersionSdk2);
                sb222222.append(", buildPropsBootloader: ");
                sb222222.append(androidVersionIncremental);
                sb222222.append(", buildPropsFingerprint: ");
                sb222222.append(androidVersionSecurityPatch);
                Log.i(androidVersionSdkInt222222, sb222222.toString());
                if (TextUtils.isEmpty(buildPropsFingerprint)) {
                }
                Object[] objArr22222 = {context, buildPropsFingerprint, buildPropsBrand22222, buildPropsModel22222, buildPropsProduct22222, buildPropsDevice, androidVersionBaseOs, androidVersionSdk2, androidVersionIncremental, androidVersionSecurityPatch};
                String str6622222 = buildPropsFingerprint;
                defaultProvider = this;
                defaultProvider.invokeSecondaryStatic("BuildProps", "install", objArr22222);
                socksProxy = cloneSettings.getBoolean("socksProxy", false).booleanValue();
                if (socksProxy) {
                }
                disableAllNetworking = cloneSettings.getBoolean("disableAllNetworking", false).booleanValue();
                if (disableAllNetworking) {
                }
                disableBackgroundNetworking = cloneSettings.getBoolean("disableBackgroundNetworking", false).booleanValue();
                if (disableBackgroundNetworking) {
                }
                disableMobileData = cloneSettings.getBoolean("disableMobileData", false).booleanValue();
                if (disableMobileData) {
                }
                disableInAppSearch = cloneSettings.getBoolean("disableInAppSearch", false).booleanValue();
                originalPackageName = originalPackageName2;
                if ("com.contextlogic.wish".equals(originalPackageName)) {
                }
                if (disableInAppSearch) {
                }
                makeWatchApp = cloneSettings.getBoolean("makeWatchApp", false).booleanValue();
                if (makeWatchApp) {
                }
                disableActivityTransitions = cloneSettings.getBoolean("disableActivityTransitions", false).booleanValue();
                if (disableActivityTransitions) {
                }
                longPressBackAction = cloneSettings.getString("longPressBackAction", "NONE");
                if (!"NONE".equals(longPressBackAction)) {
                }
                if (cloneSettings.getBoolean("backAlwaysFinishes", false).booleanValue()) {
                }
                fingerprintTapAction = cloneSettings.getString("fingerprintTapAction", "NONE");
                String fingerprintLongTapAction222222 = cloneSettings.getString("fingerprintLongTapAction", "NONE");
                if ("NONE".equals(fingerprintTapAction)) {
                }
                String str64222222 = longPressBackAction;
                boolean z54222222 = disableInAppSearch;
                String str65222222 = buildPropsModel22222;
                defaultProvider.invokeSecondaryInstance("FingerprintTapAction", "install", context, fingerprintTapAction, cloneSettings.getString("fingerprintTapActionParam", (String) null), fingerprintLongTapAction222222, cloneSettings.getString("fingerprintLongTapActionParam", (String) null));
                String volumeUpKeyAction2222222 = cloneSettings.getString("volumeUpKeyAction", "NONE");
                String volumeDownKeyAction2222222 = cloneSettings.getString("volumeDownKeyAction", "NONE");
                volumeUpDownKeyAction = cloneSettings.getString("volumeUpDownKeyAction", "NONE");
                if (!"NONE".equals(volumeUpDownKeyAction)) {
                }
            } catch (Throwable th14) {
                defaultProvider = this;
                originalPackageName = originalPackageName3;
                t = th14;
                Log.w(TAG, t);
                new WhatsAppSupport().init(originalPackageName);
                ByteArrayOutputStrean.init(context, originalPackageName);
                if ("com.google.android.gm".equals(originalPackageName)) {
                }
                if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
                }
                if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
                }
                if ("com.fiverr.fiverr".equals(originalPackageName)) {
                }
                Log.i(TAG, "onCreate; done");
                Utils.closeAndroidPieApiCompatibilityDialog();
                return true;
            }
        } catch (Throwable th15) {
            String str67 = buildSerial;
            boolean z63 = devDevice;
            originalPackageName = originalPackageName3;
            defaultProvider = this;
            t = th15;
            Log.w(TAG, t);
            new WhatsAppSupport().init(originalPackageName);
            ByteArrayOutputStrean.init(context, originalPackageName);
            if ("com.google.android.gm".equals(originalPackageName)) {
            }
            if ("com.paypal.android.p2pmobile".equals(originalPackageName)) {
            }
            if ("com.yahoo.mobile.client.android.flickr".equals(originalPackageName)) {
            }
            if ("com.fiverr.fiverr".equals(originalPackageName)) {
            }
            Log.i(TAG, "onCreate; done");
            Utils.closeAndroidPieApiCompatibilityDialog();
            return true;
        }
    }

    public static String getPackageNameHook(Object contextImpl) {
        StackTraceElement[] stackTraceElements = new Exception().getStackTrace();
        int i = 0;
        while (i < stackTraceElements.length && i < 4) {
            String className = stackTraceElements[i].getClassName();
            if (!className.startsWith("com.fiverr.") || !className.contains(".Network.")) {
                i++;
            } else {
                Log.i(TAG, "getPackageNameHook; returning original package name for Fiverr");
                return "com.fiverr.fiverr";
            }
        }
        return (String) HookHelper.invokeObjectOrigin(contextImpl, new Object[0]);
    }

    private static String getOriginalPackageName(Context context) {
        try {
            return new String(Base64.decode(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.begal.appclone.originalPackageName"), 0));
        } catch (Exception e) {
            Log.w(TAG, e);
            return null;
        }
    }

    public AssetFileDescriptor openAssetFile(Uri uri, String mode) throws FileNotFoundException {
        if (uri != null) {
            try {
                if (uri.toString().endsWith("assets/.notificationSoundFile")) {
                    return getContext().getResources().getAssets().openFd(".notificationSoundFile");
                }
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
        return super.openAssetFile(uri, mode);
    }

    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        String str = TAG;
        Log.i(str, "openFile; uri: " + uri);
        Context context = getContext();
        if (!"/Image.png".equals(uri.getPath()) || !"r".equals(mode)) {
            if (Utils.checkCaller(context)) {
                try {
                    if ("/cloneSettings".equals(uri.getPath())) {
                        File cloneSettingsFile = CloneSettings.getInstance(context).getCloneSettingsFile();
                        if ("r".equals(mode)) {
                            Log.i(TAG, "openFile; returning clone settings file MODE_READ_ONLY file descriptor...");
                            return ParcelFileDescriptor.open(cloneSettingsFile, 268435456);
                        } else if ("w".equals(mode)) {
                            Log.i(TAG, "openFile; returning clone settings file MODE_WRITE_ONLY file descriptor...");
                            return ParcelFileDescriptor.open(cloneSettingsFile, 738197504);
                        }
                    }
                } catch (FileNotFoundException e) {
                    throw e;
                } catch (Exception e2) {
                    Log.w(TAG, e2);
                }
            }
            return super.openFile(uri, mode);
        }
        File file = new File(context.getCacheDir(), "share_image.png");
        String str2 = TAG;
        Log.i(str2, "openFile; returning share image file descriptor; file: " + file);
        return ParcelFileDescriptor.open(file, 268435456);
    }

    public static class DefaultReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            String access$000 = DefaultProvider.TAG;
            Log.i(access$000, "onReceive; intent: " + intent);
            if ("com.begal.appclone.KILL_PROCESS".equals(intent.getAction())) {
                try {
                    DefaultProvider.invokeSecondaryInstance(context, "util.Utils", "killAppProcesses", context);
                } catch (Exception e) {
                    Log.w(DefaultProvider.TAG, e);
                }
            }
        }
    }

    @Deprecated
    public static Object ni(Context c, String s) throws Exception {
        return Utils.getSecondaryClassLoader(c).loadClass(s).newInstance();
    }

    private void invokeSecondaryInstance(String s, String m, Object... args) throws Exception {
        invokeSecondaryInstance(getContext(), s, m, args);
    }

    public static void invokeSecondaryInstance(Context context, String s, String m, Object... args) throws Exception {
        Class<?> clazz = Utils.getSecondaryClassLoader(context).loadClass("com.begal.appclone.classes.secondary." + s);
        for (Method method : clazz.getMethods()) {
            if (method.getName().equals(m)) {
                method.invoke(clazz.newInstance(), args);
                return;
            }
        }
    }

    private void invokeSecondaryStatic(String s, String m, Object... args) throws Exception {
        invokeSecondaryStatic(getContext(), s, m, args);
    }

    public static void invokeSecondaryStatic(Context context, String s, String m, Object... args) throws Exception {
        for (Method method : Utils.getSecondaryClassLoader(context).loadClass("com.begal.appclone.classes.secondary." + s).getMethods()) {
            if (method.getName().equals(m)) {
                method.invoke((Object) null, args);
                return;
            }
        }
    }

    @SuppressLint({"Registered"})
    public static class MyActivity extends Activity {
        /* access modifiers changed from: private */
        public Handler mHandler = new Handler();

        /* access modifiers changed from: protected */
        @TargetApi(17)
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            try {
                new AlertDialog.Builder(this).setTitle(Utils.getAppName(this)).setMessage("This app was cloned using a non-official version of App Cloner.\n\nTo continue using this app reclone it using the official install of App Cloner.").setPositiveButton(17039370, (DialogInterface.OnClickListener) null).setOnDismissListener(new DialogInterface.OnDismissListener() {
                    public void onDismiss(DialogInterface dialog) {
                        MyActivity.this.finish();
                        MyActivity.this.mHandler.postDelayed(new Runnable() {
                            public void run() {
                                try {
                                    Class.forName(new String(Base64.decode("amF2YS5sYW5nLlN5c3RlbQ==", 0))).getMethod(new String(Base64.decode("ZXhpdA==", 0)), new Class[]{Integer.TYPE}).invoke((Object) null, new Object[]{1});
                                } catch (Exception e) {
                                    Log.w(DefaultProvider.TAG, e);
                                }
                            }
                        }, 500);
                    }
                }).show();
            } catch (Exception e) {
                Log.w(DefaultProvider.TAG, e);
                System.exit(1);
            }
        }
    }
}
