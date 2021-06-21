package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@SuppressLint({"UseSparseArrays", "Registered", "PrivateApi"})
public class NotificationOptions extends OnAppExitListener {
    private static final String ACTION_SNOOZE_NOTIFICATION = "com.begal.appclone.action.SNOOZE_NOTIFICATION";
    private static final String EXTRA_SNOOZE_ACTION = "snooze_action";
    /* access modifiers changed from: private */
    public static final String TAG = NotificationOptions.class.getSimpleName();
    /* access modifiers changed from: private */
    public static boolean mAllowNotificationsWhenRunning;
    /* access modifiers changed from: private */
    public static boolean mBlockAllNotifications;
    /* access modifiers changed from: private */
    public static Integer mNotificationColor;
    /* access modifiers changed from: private */
    public boolean mHeadsUpNotifications;
    /* access modifiers changed from: private */
    public Icon mIcon;
    /* access modifiers changed from: private */
    public boolean mLocalOnlyNotifications;
    /* access modifiers changed from: private */
    public boolean mNoOngoingNotifications;
    private List<Map<String, Object>> mNotificationCategories = new ArrayList();
    /* access modifiers changed from: private */
    public final Set<String> mNotificationFilterSet;
    /* access modifiers changed from: private */
    public String mNotificationLightsColor;
    /* access modifiers changed from: private */
    public String mNotificationLightsPattern;
    /* access modifiers changed from: private */
    public String mNotificationPriority;
    /* access modifiers changed from: private */
    public boolean mNotificationQuietTime;
    /* access modifiers changed from: private */
    public int mNotificationQuietTimeEndHour;
    /* access modifiers changed from: private */
    public int mNotificationQuietTimeEndMinute;
    /* access modifiers changed from: private */
    public int mNotificationQuietTimeStartHour;
    /* access modifiers changed from: private */
    public int mNotificationQuietTimeStartMinute;
    /* access modifiers changed from: private */
    public int mNotificationSnoozeTimeout;
    /* access modifiers changed from: private */
    public String mNotificationSound;
    /* access modifiers changed from: private */
    public List<Map<String, Object>> mNotificationTextReplacements = new ArrayList();
    /* access modifiers changed from: private */
    public int mNotificationTimeout;
    /* access modifiers changed from: private */
    public boolean mNotificationTintStatusBarIcon;
    /* access modifiers changed from: private */
    public String mNotificationVibration;
    /* access modifiers changed from: private */
    public String mNotificationVisibility;
    /* access modifiers changed from: private */
    public boolean mRemoveNotificationActions;
    /* access modifiers changed from: private */
    public boolean mRemoveNotificationIcon;
    /* access modifiers changed from: private */
    public boolean mRemoveNotificationPeople;
    private boolean mReplaceNotificationIcon;
    /* access modifiers changed from: private */
    public boolean mRunning;
    /* access modifiers changed from: private */
    public boolean mShowNotificationTime;
    /* access modifiers changed from: private */
    public boolean mSimpleNotifications;
    /* access modifiers changed from: private */
    public Map<Integer, Notification> mSnoozeNotifications = new HashMap();
    /* access modifiers changed from: private */
    public Handler mTimeoutHandler = new Handler();
    /* access modifiers changed from: private */
    public Map<Integer, Runnable> mTimeoutRunnables = new HashMap();

    public NotificationOptions(CloneSettings cloneSettings) {
        mBlockAllNotifications = cloneSettings.getBoolean("blockAllNotifications", false).booleanValue();
        mAllowNotificationsWhenRunning = cloneSettings.getBoolean("allowNotificationsWhenRunning", false).booleanValue();
        String notificationFilter = cloneSettings.getString("notificationFilter", (String) null);
        this.mNotificationFilterSet = new HashSet();
        if (!TextUtils.isEmpty(notificationFilter)) {
            for (String s : notificationFilter.trim().split(",")) {
                String s2 = s.trim();
                if (!TextUtils.isEmpty(s2)) {
                    this.mNotificationFilterSet.add(s2.toLowerCase(Locale.ENGLISH));
                }
            }
        }
        this.mNotificationQuietTime = cloneSettings.getBoolean("notificationQuietTime", false).booleanValue();
        try {
            String[] arr = cloneSettings.getString("notificationQuietTimeStart", "21:00").split(":");
            this.mNotificationQuietTimeStartHour = Integer.parseInt(arr[0]);
            this.mNotificationQuietTimeStartMinute = Integer.parseInt(arr[1]);
            String[] arr2 = cloneSettings.getString("notificationQuietTimeEnd", "07:00").split(":");
            this.mNotificationQuietTimeEndHour = Integer.parseInt(arr2[0]);
            this.mNotificationQuietTimeEndMinute = Integer.parseInt(arr2[1]);
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        if (cloneSettings.getBoolean("notificationColorUseStatusBarColor", false).booleanValue()) {
            mNotificationColor = cloneSettings.getInteger("statusBarColor", (Integer) null);
        } else {
            mNotificationColor = cloneSettings.getInteger("notificationColor", (Integer) null);
        }
        this.mNotificationTintStatusBarIcon = cloneSettings.getBoolean("notificationTintStatusBarIcon", false).booleanValue();
        this.mNotificationSound = cloneSettings.getString("notificationSound", "NO_CHANGE");
        this.mNotificationVibration = cloneSettings.getString("notificationVibration", "NO_CHANGE");
        this.mNotificationTimeout = cloneSettings.getInteger("notificationTimeout", 0).intValue();
        this.mNotificationSnoozeTimeout = cloneSettings.getInteger("notificationSnoozeTimeout", 0).intValue();
        this.mHeadsUpNotifications = cloneSettings.getBoolean("headsUpNotifications", false).booleanValue();
        this.mLocalOnlyNotifications = cloneSettings.getBoolean("localOnlyNotifications", false).booleanValue();
        this.mNoOngoingNotifications = cloneSettings.getBoolean("noOngoingNotifications", false).booleanValue();
        this.mShowNotificationTime = cloneSettings.getBoolean("showNotificationTime", false).booleanValue();
        this.mNotificationLightsPattern = cloneSettings.forObject("defaultNotificationLights").getString("notificationLightsPattern", "NO_CHANGE");
        this.mNotificationLightsColor = cloneSettings.forObject("defaultNotificationLights").getString("notificationLightsColor", "NO_CHANGE");
        this.mNotificationVisibility = cloneSettings.getString("notificationVisibility", "NO_CHANGE");
        this.mNotificationPriority = cloneSettings.getString("notificationPriority", "NO_CHANGE");
        this.mReplaceNotificationIcon = cloneSettings.getBoolean("replaceNotificationIcon", false).booleanValue();
        this.mRemoveNotificationIcon = cloneSettings.getBoolean("removeNotificationIcon", false).booleanValue();
        this.mRemoveNotificationActions = cloneSettings.getBoolean("removeNotificationActions", false).booleanValue();
        this.mRemoveNotificationPeople = cloneSettings.getBoolean("removeNotificationPeople", false).booleanValue();
        this.mSimpleNotifications = cloneSettings.getBoolean("simpleNotifications", false).booleanValue();
        List<CloneSettings> notificationCategories = cloneSettings.forObjectArray("notificationCategories");
        if (notificationCategories != null) {
            for (CloneSettings notificationCategory : notificationCategories) {
                Map<String, Object> map = new HashMap<>();
                map.put("name", notificationCategory.getString("name", ""));
                map.put("keywords", notificationCategory.getString("keywords", ""));
                map.put("ignoreCase", notificationCategory.getBoolean("ignoreCase", true));
                this.mNotificationCategories.add(map);
            }
        }
        List<CloneSettings> notificationTextReplacements = cloneSettings.forObjectArray("notificationTextReplacements");
        if (notificationTextReplacements != null) {
            for (CloneSettings notificationTextReplacement : notificationTextReplacements) {
                Map<String, Object> map2 = new HashMap<>();
                map2.put("replace", notificationTextReplacement.getString("replace", ""));
                map2.put("with", notificationTextReplacement.getString("with", ""));
                map2.put("ignoreCase", notificationTextReplacement.getBoolean("ignoreCase", true));
                map2.put("replaceInTitle", notificationTextReplacement.getBoolean("replaceInTitle", true));
                map2.put("replaceInContent", notificationTextReplacement.getBoolean("replaceInContent", true));
                map2.put("replaceInMessages", notificationTextReplacement.getBoolean("replaceInMessages", true));
                map2.put("replaceInActions", notificationTextReplacement.getBoolean("replaceInActions", true));
                this.mNotificationTextReplacements.add(map2);
            }
        }
        Log.i(TAG, "NotificationOptions; mBlockAllNotifications: " + mBlockAllNotifications);
        Log.i(TAG, "NotificationOptions; mAllowNotificationsWhenRunning: " + mAllowNotificationsWhenRunning);
        Log.i(TAG, "NotificationOptions; mNotificationFilterSet: " + this.mNotificationFilterSet);
        Log.i(TAG, "NotificationOptions; mNotificationQuietTime: " + this.mNotificationQuietTime);
        Log.i(TAG, "NotificationOptions; mNotificationQuietTimeStartHour: " + this.mNotificationQuietTimeStartHour);
        Log.i(TAG, "NotificationOptions; mNotificationQuietTimeStartMinute: " + this.mNotificationQuietTimeStartMinute);
        Log.i(TAG, "NotificationOptions; mNotificationQuietTimeEndHour: " + this.mNotificationQuietTimeEndHour);
        Log.i(TAG, "NotificationOptions; mNotificationQuietTimeEndMinute: " + this.mNotificationQuietTimeEndMinute);
        Log.i(TAG, "NotificationOptions; mNotificationColor: " + mNotificationColor);
        Log.i(TAG, "NotificationOptions; mNotificationTintStatusBarIcon: " + this.mNotificationTintStatusBarIcon);
        Log.i(TAG, "NotificationOptions; mNotificationSound: " + this.mNotificationSound);
        Log.i(TAG, "NotificationOptions; mNotificationVibration: " + this.mNotificationVibration);
        Log.i(TAG, "NotificationOptions; mNotificationTimeout: " + this.mNotificationTimeout);
        Log.i(TAG, "NotificationOptions; mNotificationSnoozeTimeout: " + this.mNotificationSnoozeTimeout);
        Log.i(TAG, "NotificationOptions; mHeadsUpNotifications: " + this.mHeadsUpNotifications);
        Log.i(TAG, "NotificationOptions; mLocalOnlyNotifications: " + this.mLocalOnlyNotifications);
        Log.i(TAG, "NotificationOptions; mNoOngoingNotifications: " + this.mNoOngoingNotifications);
        Log.i(TAG, "NotificationOptions; mShowNotificationTime: " + this.mShowNotificationTime);
        Log.i(TAG, "NotificationOptions; mNotificationLightsPattern: " + this.mNotificationLightsPattern);
        Log.i(TAG, "NotificationOptions; mNotificationLightsColor: " + this.mNotificationLightsColor);
        Log.i(TAG, "NotificationOptions; mNotificationVisibility: " + this.mNotificationVisibility);
        Log.i(TAG, "NotificationOptions; mNotificationPriority: " + this.mNotificationPriority);
        Log.i(TAG, "NotificationOptions; mReplaceNotificationIcon: " + this.mReplaceNotificationIcon);
        Log.i(TAG, "NotificationOptions; mRemoveNotificationIcon: " + this.mRemoveNotificationIcon);
        Log.i(TAG, "NotificationOptions; mRemoveNotificationActions: " + this.mRemoveNotificationActions);
        Log.i(TAG, "NotificationOptions; mRemoveNotificationPeople: " + this.mRemoveNotificationPeople);
        Log.i(TAG, "NotificationOptions; mSimpleNotifications: " + this.mSimpleNotifications);
        Log.i(TAG, "NotificationOptions; mNotificationCategories: " + this.mNotificationCategories);
        Log.i(TAG, "NotificationOptions; mNotificationTextReplacements: " + this.mNotificationTextReplacements);
    }

    public void init(Context context) {
        if (mNotificationColor != null || mBlockAllNotifications || !this.mNotificationFilterSet.isEmpty() || this.mNotificationQuietTime || !"NO_CHANGE".equals(this.mNotificationSound) || !"NO_CHANGE".equals(this.mNotificationVibration) || this.mNotificationTimeout != 0 || this.mNotificationSnoozeTimeout != 0 || this.mHeadsUpNotifications || this.mLocalOnlyNotifications || this.mNoOngoingNotifications || this.mShowNotificationTime || !"NO_CHANGE".equals(this.mNotificationLightsPattern) || !"NO_CHANGE".equals(this.mNotificationLightsColor) || !"NO_CHANGE".equals(this.mNotificationVisibility) || !"NO_CHANGE".equals(this.mNotificationPriority) || this.mReplaceNotificationIcon || this.mRemoveNotificationIcon || this.mRemoveNotificationActions || this.mRemoveNotificationPeople || this.mSimpleNotifications || !this.mNotificationCategories.isEmpty() || !this.mNotificationTextReplacements.isEmpty()) {
            onCreate();
            install(context);
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        this.mRunning = true;
    }

    /* access modifiers changed from: protected */
    public void onAppExit(Context context) {
        Log.i(TAG, "onAppExit; ");
        this.mRunning = false;
    }

    public void install(final Context context) {
        Log.i(TAG, "install; ");
        try {
            Field serviceField = NotificationManager.class.getDeclaredField("sService");
            serviceField.setAccessible(true);
            if (serviceField.get((Object) null) != null) {
                Log.i(TAG, "onCreate; sService already initialized!!!");
            } else {
                Log.i(TAG, "onCreate; sService == null");
            }
            NotificationManager.class.getMethod("getService", new Class[0]).invoke((Object) null, new Object[0]);
            final Object instance = serviceField.get((Object) null);
            Class<?> inf = Class.forName("android.app.INotificationManager");
            serviceField.set((Object) null, Proxy.newProxyInstance(NotificationOptions.class.getClassLoader(), new Class[]{inf}, new InvocationHandler() {
                /* JADX WARNING: Removed duplicated region for block: B:267:0x0984  */
                /* JADX WARNING: Removed duplicated region for block: B:282:0x09d1  */
                /* JADX WARNING: Removed duplicated region for block: B:294:0x0a00  */
                /* JADX WARNING: Removed duplicated region for block: B:334:0x0ab7 A[Catch:{ Exception -> 0x0b24 }] */
                @SuppressLint({"NewApi"})
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    int id;
                    Notification notification;
                    Object text;
                    boolean quietTime;
                    Exception e;
                    Parcelable[] parcelables;
                    Parcelable[] parcelables2;
                    Throwable t;
                    boolean quietTime2;
                    Method method2 = method;
                    Object[] objArr = args;
                    if ("enqueueNotificationWithTag".equals(method.getName()) && !NotificationOptions.this.isAppClonerClassesNotification()) {
                        Log.i(NotificationOptions.TAG, "invoke; method: " + method2);
                        try {
                            id = ((Integer) objArr[3]).intValue();
                        } catch (ClassCastException e2) {
                            ClassCastException classCastException = e2;
                            id = ((Integer) objArr[2]).intValue();
                        }
                        if (!(id == 1621363246 || id == 4534513)) {
                            boolean blockAllNotifications = NotificationOptions.mBlockAllNotifications;
                            if (NotificationOptions.mAllowNotificationsWhenRunning && NotificationOptions.this.mRunning) {
                                blockAllNotifications = false;
                            }
                            if (blockAllNotifications) {
                                Log.i(NotificationOptions.TAG, "invoke; blocked notification");
                                return null;
                            }
                            try {
                                notification = (Notification) objArr[4];
                            } catch (ClassCastException e3) {
                                ClassCastException classCastException2 = e3;
                                notification = (Notification) objArr[3];
                            }
                            if (NotificationOptions.mNotificationColor != null) {
                                try {
                                    notification.color = NotificationOptions.mNotificationColor.intValue();
                                    Log.i(NotificationOptions.TAG, "invoke; set notification color; notificationColor: " + NotificationOptions.mNotificationColor);
                                } catch (NoSuchFieldError e4) {
                                }
                            }
                            try {
                                Bundle extras = NotificationOptions.getExtras(notification);
                                Log.i(NotificationOptions.TAG, "invoke; extras: " + extras);
                                StringBuilder sb = new StringBuilder();
                                sb.append(extras.getString("android.title", ""));
                                sb.append(' ');
                                sb.append(extras.getString("android.title.big", ""));
                                sb.append(' ');
                                Object text2 = extras.get("android.text");
                                if (text2 != null) {
                                    sb.append(text2);
                                    sb.append(' ');
                                }
                                sb.append(extras.getString("android.bigText", ""));
                                sb.append(' ');
                                sb.append(extras.getString("android.infoText", ""));
                                sb.append(' ');
                                sb.append(notification.tickerText);
                                CharSequence[] textLines = extras.getCharSequenceArray("android.textLines");
                                if (textLines != null) {
                                    for (CharSequence textLine : textLines) {
                                        sb.append(textLine);
                                        sb.append(' ');
                                    }
                                }
                                String concatenatedText = sb.toString();
                                Log.i(NotificationOptions.TAG, "invoke; concatenatedText: " + concatenatedText);
                                if (!NotificationOptions.this.mNotificationFilterSet.isEmpty()) {
                                    String lowerCaseConcatenatedText = concatenatedText.toLowerCase(Locale.ENGLISH);
                                    for (String notificationFilterString : NotificationOptions.this.mNotificationFilterSet) {
                                        if (lowerCaseConcatenatedText.contains(notificationFilterString)) {
                                            String access$100 = NotificationOptions.TAG;
                                            StringBuilder sb2 = new StringBuilder();
                                            CharSequence[] charSequenceArr = textLines;
                                            sb2.append("invoke; blocked notification; notificationFilterString: ");
                                            sb2.append(notificationFilterString);
                                            Log.i(access$100, sb2.toString());
                                            return null;
                                        }
                                    }
                                }
                                if (Build.VERSION.SDK_INT >= 26) {
                                    try {
                                        String channelId = NotificationOptions.this.getNotificationChannelId(context, concatenatedText);
                                        Log.i(NotificationOptions.TAG, "invoke; channelId: " + channelId);
                                        if (!TextUtils.isEmpty(channelId)) {
                                            Field f = Notification.class.getDeclaredField("mChannelId");
                                            f.setAccessible(true);
                                            f.set(notification, channelId);
                                            extras.putString("channel_id", channelId);
                                        }
                                    } catch (Throwable th) {
                                        Log.w(NotificationOptions.TAG, th);
                                    }
                                }
                                if (NotificationOptions.this.mNotificationQuietTime) {
                                    Calendar start = Calendar.getInstance();
                                    start.set(11, NotificationOptions.this.mNotificationQuietTimeStartHour);
                                    start.set(12, NotificationOptions.this.mNotificationQuietTimeStartMinute);
                                    start.set(13, 0);
                                    start.set(14, 0);
                                    Calendar end = Calendar.getInstance();
                                    end.set(11, NotificationOptions.this.mNotificationQuietTimeEndHour);
                                    end.set(12, NotificationOptions.this.mNotificationQuietTimeEndMinute);
                                    end.set(13, 0);
                                    end.set(14, 0);
                                    if (end.before(start)) {
                                        end.add(5, 1);
                                    }
                                    Calendar c1 = Calendar.getInstance();
                                    Calendar c2 = Calendar.getInstance();
                                    String str = concatenatedText;
                                    c2.add(5, 1);
                                    if ((!start.before(c1) || !end.after(c1)) && (!start.before(c2) || !end.after(c2))) {
                                        quietTime2 = false;
                                    } else {
                                        quietTime2 = true;
                                    }
                                    String access$1002 = NotificationOptions.TAG;
                                    boolean z = blockAllNotifications;
                                    StringBuilder sb3 = new StringBuilder();
                                    text = text2;
                                    sb3.append("invoke; start: ");
                                    sb3.append(start.getTime());
                                    sb3.append(", end: ");
                                    sb3.append(end.getTime());
                                    Log.i(access$1002, sb3.toString());
                                    Log.i(NotificationOptions.TAG, "invoke; c1: " + c1.getTime() + ", c2: " + c2.getTime());
                                    String access$1003 = NotificationOptions.TAG;
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("invoke; quietTime: ");
                                    sb4.append(quietTime2);
                                    Log.i(access$1003, sb4.toString());
                                    quietTime = quietTime2;
                                } else {
                                    quietTime = false;
                                    String str2 = concatenatedText;
                                    boolean z2 = blockAllNotifications;
                                    text = text2;
                                }
                                if (quietTime) {
                                    notification.sound = null;
                                    notification.vibrate = null;
                                    notification.defaults &= -2;
                                    notification.defaults &= -3;
                                }
                                if (!quietTime) {
                                    if ("DEFAULT".equals(NotificationOptions.this.mNotificationSound)) {
                                        notification.sound = null;
                                        notification.defaults |= 1;
                                        Log.i(NotificationOptions.TAG, "invoke; sound: default");
                                    } else if ("SILENCE".equals(NotificationOptions.this.mNotificationSound)) {
                                        notification.sound = null;
                                        notification.defaults &= -2;
                                        Log.i(NotificationOptions.TAG, "invoke; sound: silence");
                                    } else if ("CUSTOM".equals(NotificationOptions.this.mNotificationSound)) {
                                        Uri uri = Uri.parse("content://" + context.getPackageName() + ".com.begal.appclone.classes.DefaultProvider/assets/.notificationSoundFile");
                                        notification.sound = uri;
                                        notification.defaults = notification.defaults & -2;
                                        Log.i(NotificationOptions.TAG, "invoke; sound: custom; uri: " + uri);
                                    }
                                    if ("DEFAULT".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = null;
                                        notification.defaults |= 2;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: default");
                                    } else if ("SILENCE".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = null;
                                        notification.defaults &= -3;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: silence");
                                    } else if ("VERY_SHORT".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = new long[]{0, 50};
                                        notification.defaults &= -3;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: very short");
                                    } else if ("SHORT".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = new long[]{0, 100};
                                        notification.defaults &= -3;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: short");
                                    } else if ("LONG".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = new long[]{0, 500};
                                        notification.defaults &= -3;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: long");
                                    } else if ("VERY_LONG".equals(NotificationOptions.this.mNotificationVibration)) {
                                        notification.vibrate = new long[]{0, 1000};
                                        notification.defaults &= -3;
                                        Log.i(NotificationOptions.TAG, "invoke; vibration: very long");
                                    }
                                }
                                if (NotificationOptions.this.mNotificationTimeout != 0) {
                                    Runnable runnable = (Runnable) NotificationOptions.this.mTimeoutRunnables.get(Integer.valueOf(id));
                                    if (runnable != null) {
                                        NotificationOptions.this.mTimeoutHandler.removeCallbacks(runnable);
                                    }
                                    final int finalId = id;
                                    Runnable runnable2 = new Runnable() {
                                        public void run() {
                                            try {
                                                String access$100 = NotificationOptions.TAG;
                                                Log.i(access$100, "run; cancelling notification; id: " + finalId);
                                                ((NotificationManager) context.getSystemService("notification")).cancel(finalId);
                                            } catch (Throwable t) {
                                                Log.w(NotificationOptions.TAG, t);
                                            }
                                        }
                                    };
                                    NotificationOptions.this.mTimeoutHandler.postDelayed(runnable2, (long) (NotificationOptions.this.mNotificationTimeout * 1000));
                                    NotificationOptions.this.mTimeoutRunnables.put(Integer.valueOf(id), runnable2);
                                    Log.i(NotificationOptions.TAG, "invoke; scheduled timeout; id: " + id + ", millis: " + (NotificationOptions.this.mNotificationTimeout * 1000));
                                }
                                if (NotificationOptions.this.mHeadsUpNotifications && Build.VERSION.SDK_INT >= 21) {
                                    extras.putInt("headsup", 2);
                                    notification.priority = 1;
                                    Log.i(NotificationOptions.TAG, "invoke; headsUpNotifications; notification: " + notification);
                                }
                                if (NotificationOptions.this.mLocalOnlyNotifications) {
                                    notification.flags |= 256;
                                    Log.i(NotificationOptions.TAG, "invoke; localOnlyNotifications; notification: " + notification);
                                }
                                if (NotificationOptions.this.mNoOngoingNotifications) {
                                    notification.flags &= -3;
                                    notification.flags &= -33;
                                    Log.i(NotificationOptions.TAG, "invoke; noOngoingNotifications; notification: " + notification);
                                }
                                if (NotificationOptions.this.mShowNotificationTime) {
                                    try {
                                        notification.when = System.currentTimeMillis();
                                        extras.putBoolean("android.showWhen", true);
                                        Log.i(NotificationOptions.TAG, "invoke; showNotificationTime; notification: " + notification);
                                    } catch (Exception e5) {
                                        Log.w(NotificationOptions.TAG, e5);
                                    }
                                }
                                if (Build.VERSION.SDK_INT >= 21) {
                                    if ("PUBLIC".equals(NotificationOptions.this.mNotificationVisibility)) {
                                        notification.visibility = 1;
                                        Log.i(NotificationOptions.TAG, "invoke; made notification public; notification: " + notification);
                                    } else if ("PRIVATE".equals(NotificationOptions.this.mNotificationVisibility)) {
                                        notification.visibility = -1;
                                        notification.publicVersion = null;
                                        Log.i(NotificationOptions.TAG, "invoke; made notification private; notification: " + notification);
                                    }
                                }
                                if ("MAX".equals(NotificationOptions.this.mNotificationPriority)) {
                                    notification.priority = 2;
                                    Log.i(NotificationOptions.TAG, "invoke; PRIORITY_MAX; notification: " + notification);
                                } else if ("HIGH".equals(NotificationOptions.this.mNotificationPriority)) {
                                    notification.priority = 1;
                                    Log.i(NotificationOptions.TAG, "invoke; PRIORITY_HIGH; notification: " + notification);
                                } else if ("DEFAULT".equals(NotificationOptions.this.mNotificationPriority)) {
                                    notification.priority = 0;
                                    Log.i(NotificationOptions.TAG, "invoke; PRIORITY_DEFAULT; notification: " + notification);
                                } else if ("LOW".equals(NotificationOptions.this.mNotificationPriority)) {
                                    notification.priority = -1;
                                    Log.i(NotificationOptions.TAG, "invoke; PRIORITY_LOW; notification: " + notification);
                                } else if ("MIN".equals(NotificationOptions.this.mNotificationPriority)) {
                                    notification.priority = -2;
                                    Log.i(NotificationOptions.TAG, "invoke; PRIORITY_MIN; notification: " + notification);
                                }
                                if (!"NO_CHANGE".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                    if (notification.ledARGB == 0) {
                                        notification.ledARGB = -1;
                                    }
                                    notification.defaults &= -5;
                                    notification.flags |= 1;
                                    notification.priority = 0;
                                    if ("ON".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 100000000;
                                        notification.ledOffMS = 1;
                                    } else if ("FLASH_SLOW".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 1000;
                                        notification.ledOffMS = 2000;
                                    } else if ("FLASH_MEDIUM".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 500;
                                        notification.ledOffMS = 1000;
                                    } else if ("FLASH_FAST".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 250;
                                        notification.ledOffMS = 250;
                                    } else if ("OFF".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 0;
                                        notification.ledOffMS = 0;
                                    }
                                }
                                if (!"NO_CHANGE".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                    if ((notification.defaults & 4) != 0 && !"NO_CHANGE".equals(NotificationOptions.this.mNotificationLightsPattern)) {
                                        notification.ledOnMS = 1000;
                                        notification.ledOffMS = 250;
                                    }
                                    notification.defaults &= -5;
                                    notification.flags |= 1;
                                    notification.priority = 0;
                                    if ("WHITE".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -1;
                                    } else if ("RED".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -65536;
                                    } else if ("YELLOW".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -256;
                                    } else if ("GREEN".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -16711936;
                                    } else if ("CYAN".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -16711681;
                                    } else if ("BLUE".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -16776961;
                                    } else if ("MAGENTA".equals(NotificationOptions.this.mNotificationLightsColor)) {
                                        notification.ledARGB = -65281;
                                    }
                                }
                                if (NotificationOptions.this.mNotificationSnoozeTimeout > 0 && Build.VERSION.SDK_INT >= 16) {
                                    Intent i = new Intent(NotificationOptions.ACTION_SNOOZE_NOTIFICATION);
                                    i.setPackage(context.getPackageName());
                                    i.putExtra("id", id);
                                    PendingIntent pendingIntent = PendingIntent.getBroadcast(context, id, i, 1073741824);
                                    NotificationOptions.this.mSnoozeNotifications.put(Integer.valueOf(id), notification);
                                    List<Notification.Action> actions = new ArrayList<>();
                                    if (notification.actions != null) {
                                        actions.addAll(Arrays.asList(notification.actions));
                                    }
                                    Iterator<Notification.Action> it = actions.iterator();
                                    while (it.hasNext()) {
                                        Notification.Action action = it.next();
                                        if (action.getExtras() != null && action.getExtras().getBoolean(NotificationOptions.EXTRA_SNOOZE_ACTION)) {
                                            it.remove();
                                        }
                                    }
                                    Notification.Action action2 = new Notification.Action(0, "Snooze", pendingIntent);
                                    action2.getExtras().putBoolean(NotificationOptions.EXTRA_SNOOZE_ACTION, true);
                                    actions.add(action2);
                                    while (actions.size() > 3) {
                                        actions.remove(0);
                                    }
                                    notification.actions = (Notification.Action[]) actions.toArray(new Notification.Action[0]);
                                }
                                if (NotificationOptions.this.mIcon != null) {
                                    Notification.class.getMethod("setSmallIcon", new Class[]{Icon.class}).invoke(notification, new Object[]{NotificationOptions.this.mIcon});
                                    Log.i(NotificationOptions.TAG, "invoke; replaced small icon");
                                    if (extras.containsKey("android.largeIcon")) {
                                        extras.putParcelable("android.largeIcon", NotificationOptions.this.mIcon);
                                        Log.i(NotificationOptions.TAG, "invoke; replaced large icon");
                                    }
                                }
                                if (NotificationOptions.mNotificationColor == null || !NotificationOptions.this.mNotificationTintStatusBarIcon || Build.VERSION.SDK_INT < 23) {
                                } else {
                                    try {
                                        Icon smallIcon = notification.getSmallIcon();
                                        if (smallIcon != null) {
                                            Drawable drawable = smallIcon.loadDrawable(context);
                                            int w = drawable.getIntrinsicWidth();
                                            int h = drawable.getIntrinsicHeight();
                                            Bitmap bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                                            Canvas canvas = new Canvas(bitmap);
                                            drawable.setColorFilter(NotificationOptions.mNotificationColor.intValue(), PorterDuff.Mode.SRC_ATOP);
                                            drawable.setBounds(0, 0, w, h);
                                            drawable.draw(canvas);
                                            Icon smallIcon2 = Icon.createWithBitmap(bitmap);
                                            Class<Notification> cls = Notification.class;
                                            Drawable drawable2 = drawable;
                                            int i2 = id;
                                            try {
                                                Class[] clsArr = new Class[1];
                                                try {
                                                    clsArr[0] = Icon.class;
                                                    cls.getMethod("setSmallIcon", clsArr).invoke(notification, new Object[]{smallIcon2});
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                t = th;
                                                Log.w(NotificationOptions.TAG, t);
                                                if (NotificationOptions.this.mRemoveNotificationIcon) {
                                                }
                                                if (NotificationOptions.this.mRemoveNotificationActions) {
                                                }
                                                if (NotificationOptions.this.mRemoveNotificationPeople) {
                                                }
                                                notification.extras.remove("android.picture");
                                                notification.extras.remove("android.largeIcon.big");
                                                notification.extras.remove("android.template");
                                                try {
                                                    while (r4.hasNext()) {
                                                    }
                                                    Bundle bundle = extras;
                                                    Object obj = text;
                                                } catch (Exception e6) {
                                                    StringBuilder sb5 = sb;
                                                    Bundle bundle2 = extras;
                                                    Object obj2 = text;
                                                    e = e6;
                                                    Log.w(NotificationOptions.TAG, e);
                                                    return method2.invoke(instance, objArr);
                                                }
                                                return method2.invoke(instance, objArr);
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        int i3 = id;
                                        t = th4;
                                        Log.w(NotificationOptions.TAG, t);
                                        if (NotificationOptions.this.mRemoveNotificationIcon) {
                                        }
                                        if (NotificationOptions.this.mRemoveNotificationActions) {
                                        }
                                        if (NotificationOptions.this.mRemoveNotificationPeople) {
                                        }
                                        notification.extras.remove("android.picture");
                                        notification.extras.remove("android.largeIcon.big");
                                        notification.extras.remove("android.template");
                                        while (r4.hasNext()) {
                                        }
                                        Bundle bundle3 = extras;
                                        Object obj3 = text;
                                        return method2.invoke(instance, objArr);
                                    }
                                }
                                if (NotificationOptions.this.mRemoveNotificationIcon) {
                                    try {
                                        notification.largeIcon = null;
                                        extras.remove("android.largeIcon");
                                        Bundle wearableExtensions = extras.getBundle("android.wearable.EXTENSIONS");
                                        if (wearableExtensions != null) {
                                            wearableExtensions.remove("background");
                                        }
                                        Bundle carExtensions = extras.getBundle("android.car.EXTENSIONS");
                                        if (carExtensions != null) {
                                            carExtensions.remove("large_icon");
                                        }
                                        Field f2 = Notification.class.getDeclaredField("mLargeIcon");
                                        f2.setAccessible(true);
                                        f2.set(notification, (Object) null);
                                        Log.i(NotificationOptions.TAG, "invoke; removed notification icon");
                                    } catch (Exception e7) {
                                        Log.w(NotificationOptions.TAG, e7);
                                    }
                                }
                                if (NotificationOptions.this.mRemoveNotificationActions) {
                                    try {
                                        notification.contentIntent = null;
                                        notification.deleteIntent = null;
                                        notification.actions = null;
                                        Bundle bundle4 = extras.getBundle("android.wearable.EXTENSIONS");
                                        if (bundle4 != null) {
                                            bundle4.remove("actions");
                                        }
                                        Log.i(NotificationOptions.TAG, "invoke; removed notification actions");
                                    } catch (Exception e8) {
                                        Log.w(NotificationOptions.TAG, e8);
                                    }
                                }
                                if (NotificationOptions.this.mRemoveNotificationPeople) {
                                    try {
                                        extras.remove("android.messagingUser");
                                        extras.remove("android.people.list");
                                        extras.remove("android.people");
                                        if (Build.VERSION.SDK_INT >= 24 && (parcelables2 = extras.getParcelableArray("android.messages")) != null) {
                                            for (Parcelable parcelable : parcelables2) {
                                                if (parcelable instanceof Bundle) {
                                                    Bundle bundle5 = (Bundle) parcelable;
                                                    bundle5.remove("sender");
                                                    bundle5.remove("sender_person");
                                                }
                                            }
                                        }
                                        if (Build.VERSION.SDK_INT >= 26 && (parcelables = extras.getParcelableArray("android.messages.historic")) != null) {
                                            for (Parcelable parcelable2 : parcelables) {
                                                if (parcelable2 instanceof Bundle) {
                                                    Bundle bundle6 = (Bundle) parcelable2;
                                                    bundle6.remove("sender");
                                                    bundle6.remove("sender_person");
                                                }
                                            }
                                        }
                                        Log.i(NotificationOptions.TAG, "invoke; removed notification people");
                                    } catch (Exception e9) {
                                        Log.w(NotificationOptions.TAG, e9);
                                    }
                                }
                                if (NotificationOptions.this.mSimpleNotifications && notification.extras != null) {
                                    notification.extras.remove("android.picture");
                                    notification.extras.remove("android.largeIcon.big");
                                    notification.extras.remove("android.template");
                                }
                                if (NotificationOptions.this.mNotificationTextReplacements != null && !NotificationOptions.this.mNotificationTextReplacements.isEmpty()) {
                                    for (Map<String, Object> replacement : NotificationOptions.this.mNotificationTextReplacements) {
                                        Object text3 = text;
                                        StringBuilder sb6 = sb;
                                        Bundle extras2 = extras;
                                        try {
                                            NotificationOptions.this.replaceNotificationText(notification, (String) replacement.get("replace"), (String) replacement.get("with"), ((Boolean) replacement.get("ignoreCase")).booleanValue(), ((Boolean) replacement.get("replaceInTitle")).booleanValue(), ((Boolean) replacement.get("replaceInContent")).booleanValue(), ((Boolean) replacement.get("replaceInMessages")).booleanValue(), ((Boolean) replacement.get("replaceInActions")).booleanValue());
                                            extras = extras2;
                                            text = text3;
                                            sb = sb6;
                                        } catch (Exception e10) {
                                            e = e10;
                                            Log.w(NotificationOptions.TAG, e);
                                            return method2.invoke(instance, objArr);
                                        }
                                    }
                                    Bundle bundle32 = extras;
                                    Object obj32 = text;
                                }
                            } catch (Exception e11) {
                                Log.w(NotificationOptions.TAG, e11);
                            }
                        }
                    }
                    return method2.invoke(instance, objArr);
                }
            }));
            if (this.mNotificationSnoozeTimeout > 0) {
                context.registerReceiver(new BroadcastReceiver() {
                    public void onReceive(Context context, Intent intent) {
                        try {
                            final int id = intent.getIntExtra("id", 0);
                            final Notification notification = (Notification) NotificationOptions.this.mSnoozeNotifications.remove(Integer.valueOf(id));
                            if (notification != null) {
                                final NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                                notificationManager.cancel(id);
                                Runnable runnable = (Runnable) NotificationOptions.this.mTimeoutRunnables.get(Integer.valueOf(id));
                                if (runnable != null) {
                                    NotificationOptions.this.mTimeoutHandler.removeCallbacks(runnable);
                                }
                                Runnable runnable2 = new Runnable() {
                                    public void run() {
                                        try {
                                            notificationManager.notify(id, notification);
                                        } catch (Throwable t) {
                                            Log.w(NotificationOptions.TAG, t);
                                        }
                                    }
                                };
                                NotificationOptions.this.mTimeoutHandler.postDelayed(runnable2, (long) (NotificationOptions.this.mNotificationSnoozeTimeout * 1000));
                                NotificationOptions.this.mTimeoutRunnables.put(Integer.valueOf(id), runnable2);
                            }
                        } catch (Throwable t) {
                            Log.w(NotificationOptions.TAG, t);
                        }
                    }
                }, new IntentFilter(ACTION_SNOOZE_NOTIFICATION));
            }
            if (this.mReplaceNotificationIcon && Build.VERSION.SDK_INT >= 23) {
                try {
                    byte[] bytes = Utils.readFully(context.getAssets().open(".notificationIconFile"), true);
                    this.mIcon = Icon.createWithData(bytes, 0, bytes.length);
                    String str = TAG;
                    Log.i(str, "install; mIcon: " + this.mIcon);
                } catch (Exception e) {
                    Log.w(TAG, e);
                }
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    /* access modifiers changed from: private */
    public boolean isAppClonerClassesNotification() {
        boolean notificationManager = false;
        for (StackTraceElement stackTraceElement : new Exception().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            if ("android.app.NotificationManager".equals(className)) {
                notificationManager = true;
            } else if (notificationManager) {
                return className.startsWith("com.begal.appclone.classes.");
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static Bundle getExtras(Notification notification) {
        Bundle extras = null;
        try {
            extras = notification.extras;
        } catch (Throwable th) {
            try {
                Field f = Notification.class.getDeclaredField("extras");
                f.setAccessible(true);
                extras = (Bundle) f.get(notification);
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
        if (extras == null) {
            return new Bundle();
        }
        return extras;
    }

    /* access modifiers changed from: private */
    @TargetApi(26)
    public String getNotificationChannelId(Context context, String text) {
        String channelName = getNotificationChannelName(text);
        if (channelName == null) {
            return null;
        }
        String channelId = "app_cloner_" + Math.abs(channelName.hashCode());
        Log.i(TAG, "getNotificationChannelId; channelId: " + channelId + ", channelName: " + channelName);
        ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(new NotificationChannel(channelId, channelName, 3));
        return channelId;
    }

    private String getNotificationChannelName(String text) {
        for (Map<String, Object> notificationCategory : this.mNotificationCategories) {
            String name = (String) notificationCategory.get("name");
            if (!TextUtils.isEmpty(name)) {
                String keywords = (String) notificationCategory.get("keywords");
                if (TextUtils.isEmpty(keywords)) {
                    continue;
                } else {
                    boolean ignoreCase = ((Boolean) notificationCategory.get("ignoreCase")).booleanValue();
                    String matchText = ignoreCase ? text.toLowerCase(Locale.ENGLISH) : text;
                    Log.i(TAG, "getNotificationChannelName; name: " + name + ", keywords: " + keywords + ", ignoreCase: " + ignoreCase + ", matchText: " + matchText);
                    for (String keyword : keywords.split(",")) {
                        String keyword2 = keyword.trim();
                        if (ignoreCase) {
                            keyword2 = keyword2.toLowerCase(Locale.ENGLISH);
                        }
                        if (matchText.contains(keyword2)) {
                            Log.i(TAG, "getNotificationChannelName; found keyword; keyword: " + keyword2);
                            return name;
                        }
                    }
                    continue;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:174:0x03bb A[ADDED_TO_REGION, Catch:{ Exception -> 0x0412 }] */
    /* JADX WARNING: Removed duplicated region for block: B:214:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public void replaceNotificationText(Notification notification, String replace, String with, boolean ignoreCase, boolean replaceInTitle, boolean replaceInContent, boolean replaceInMessages, boolean replaceInActions) {
        boolean z;
        Bundle extras;
        Bundle bundle;
        Bundle bundle2;
        Parcelable[] messages;
        Bundle bundle3;
        Bundle bundle22;
        Exception e;
        Bundle bundle4;
        Parcelable[] pages;
        int i;
        int i2;
        Exception e2;
        Parcelable[] messages2;
        int i3;
        Notification notification2 = notification;
        String str = replace;
        String str2 = with;
        boolean z2 = ignoreCase;
        boolean z3 = replaceInTitle;
        boolean z4 = replaceInContent;
        boolean z5 = replaceInMessages;
        boolean z6 = replaceInActions;
        Log.i(TAG, "replaceNotificationText; replace: " + str + ", with: " + str2 + ", ignoreCase: " + z2 + ", replaceInTitle: " + z3 + ", replaceInContent: " + z4 + ", replaceInMessages: " + z5 + ", replaceInActions: " + z6);
        notification2.tickerText = replaceText(notification2.tickerText, str, str2, z2);
        if (Build.VERSION.SDK_INT >= 19) {
            Bundle extras2 = getExtras(notification);
            if (z3) {
                CharSequence text = extras2.getCharSequence("android.title");
                if (!TextUtils.isEmpty(text)) {
                    CharSequence text2 = replaceText(text, str, str2, z2);
                    if (!TextUtils.isEmpty(text2)) {
                        extras2.putCharSequence("android.title", text2);
                    } else {
                        extras2.remove("android.title.big");
                    }
                }
                CharSequence text3 = extras2.getCharSequence("android.title.big");
                if (!TextUtils.isEmpty(text3)) {
                    CharSequence text4 = replaceText(text3, str, str2, z2);
                    if (!TextUtils.isEmpty(text4)) {
                        extras2.putCharSequence("android.title.big", text4);
                    } else {
                        extras2.remove("android.title.big");
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    CharSequence text5 = extras2.getCharSequence("android.conversationTitle");
                    if (!TextUtils.isEmpty(text5)) {
                        CharSequence text6 = replaceText(text5, str, str2, z2);
                        if (!TextUtils.isEmpty(text6)) {
                            extras2.putCharSequence("android.conversationTitle", text6);
                        } else {
                            extras2.remove("android.conversationTitle");
                        }
                    }
                    CharSequence text7 = extras2.getCharSequence("android.hiddenConversationTitle");
                    if (!TextUtils.isEmpty(text7)) {
                        CharSequence text8 = replaceText(text7, str, str2, z2);
                        if (!TextUtils.isEmpty(text8)) {
                            extras2.putCharSequence("android.hiddenConversationTitle", text8);
                        } else {
                            extras2.remove("android.hiddenConversationTitle");
                        }
                    }
                }
            }
            if (z4) {
                CharSequence text9 = extras2.getCharSequence("android.text");
                if (!TextUtils.isEmpty(text9)) {
                    CharSequence text10 = replaceText(text9, str, str2, z2);
                    if (!TextUtils.isEmpty(text10)) {
                        extras2.putCharSequence("android.text", text10);
                    } else {
                        extras2.remove("android.text");
                    }
                }
                CharSequence text11 = extras2.getCharSequence("android.subText");
                if (!TextUtils.isEmpty(text11)) {
                    CharSequence text12 = replaceText(text11, str, str2, z2);
                    if (!TextUtils.isEmpty(text12)) {
                        extras2.putCharSequence("android.subText", text12);
                    } else {
                        extras2.remove("android.subText");
                    }
                }
                CharSequence text13 = extras2.getCharSequence("android.infoText");
                if (!TextUtils.isEmpty(text13)) {
                    CharSequence text14 = replaceText(text13, str, str2, z2);
                    if (!TextUtils.isEmpty(text14)) {
                        extras2.putCharSequence("android.infoText", text14);
                    } else {
                        extras2.remove("android.infoText");
                    }
                }
                CharSequence text15 = extras2.getCharSequence("android.summaryText");
                if (!TextUtils.isEmpty(text15)) {
                    CharSequence text16 = replaceText(text15, str, str2, z2);
                    if (!TextUtils.isEmpty(text16)) {
                        extras2.putCharSequence("android.summaryText", text16);
                    } else {
                        extras2.remove("android.summaryText");
                    }
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    CharSequence text17 = extras2.getCharSequence("android.bigText");
                    if (!TextUtils.isEmpty(text17)) {
                        CharSequence text18 = replaceText(text17, str, str2, z2);
                        if (!TextUtils.isEmpty(text18)) {
                            extras2.putCharSequence("android.bigText", text18);
                        } else {
                            extras2.remove("android.bigText");
                        }
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    CharSequence text19 = extras2.getCharSequence("android.selfDisplayName");
                    if (!TextUtils.isEmpty(text19)) {
                        CharSequence text20 = replaceText(text19, str, str2, z2);
                        if (!TextUtils.isEmpty(text20)) {
                            extras2.putCharSequence("android.selfDisplayName", text20);
                        } else {
                            extras2.remove("android.selfDisplayName");
                        }
                    }
                }
            }
            if (z5) {
                CharSequence[] textLines = extras2.getCharSequenceArray("android.textLines");
                if (textLines != null) {
                    List<CharSequence> list = new ArrayList<>();
                    int length = textLines.length;
                    int i4 = 0;
                    while (i4 < length) {
                        CharSequence textLine = textLines[i4];
                        CharSequence[] textLines2 = textLines;
                        CharSequence newTextLine = replaceText(textLine, str, str2, z2);
                        if (!TextUtils.isEmpty(newTextLine)) {
                            i3 = length;
                            if (textLine instanceof String) {
                                newTextLine = newTextLine.toString();
                            }
                            list.add(newTextLine);
                        } else {
                            i3 = length;
                        }
                        i4++;
                        textLines = textLines2;
                        length = i3;
                    }
                    if (!list.isEmpty()) {
                        extras2.putCharSequenceArray("android.textLines", (CharSequence[]) list.toArray(new CharSequence[0]));
                    } else {
                        extras2.remove("android.textLines");
                    }
                }
                if (Build.VERSION.SDK_INT >= 24 && (messages2 = extras2.getParcelableArray("android.messages")) != null) {
                    List<Parcelable> list2 = new ArrayList<>();
                    int length2 = messages2.length;
                    int i5 = 0;
                    while (i5 < length2) {
                        Parcelable parcelable = messages2[i5];
                        Parcelable[] messages3 = messages2;
                        Bundle bundle5 = (Bundle) parcelable;
                        int i6 = length2;
                        String bundleSender = bundle5.getString("sender");
                        if (!TextUtils.isEmpty(bundleSender)) {
                            Parcelable parcelable2 = parcelable;
                            bundleSender = "" + replaceText(bundleSender, str, str2, z2);
                            bundle5.putString("sender", bundleSender);
                        }
                        String bundleText = bundle5.getString("text");
                        if (!TextUtils.isEmpty(bundleText)) {
                            bundleText = "" + replaceText(bundleText, str, str2, z2);
                            bundle5.putString("text", bundleText);
                        }
                        if (!TextUtils.isEmpty(bundleSender) || !TextUtils.isEmpty(bundleText)) {
                            list2.add(bundle5);
                        }
                        i5++;
                        messages2 = messages3;
                        length2 = i6;
                        boolean z7 = replaceInMessages;
                        boolean z8 = replaceInContent;
                    }
                    if (!list2.isEmpty()) {
                        extras2.putParcelableArray("android.messages", (Parcelable[]) list2.toArray(new Parcelable[0]));
                    } else {
                        extras2.remove("android.messages");
                    }
                }
            }
            if (z6 && notification2.actions != null) {
                List<Notification.Action> list3 = new ArrayList<>();
                for (Notification.Action action : notification2.actions) {
                    action.title = replaceText(action.title, str, str2, z2);
                    if (!TextUtils.isEmpty(action.title)) {
                        list3.add(action);
                    }
                }
                if (!list3.isEmpty()) {
                    notification2.actions = (Notification.Action[]) list3.toArray(new Notification.Action[0]);
                } else {
                    notification2.actions = null;
                }
            }
            try {
                Bundle bundle6 = extras2.getBundle("android.wearable.EXTENSIONS");
                if (bundle6 != null) {
                    if (z6) {
                        try {
                            ArrayList<Notification.Action> actions = bundle6.getParcelableArrayList("actions");
                            if (actions != null) {
                                Iterator<Notification.Action> it = actions.iterator();
                                while (it.hasNext()) {
                                    Notification.Action action2 = it.next();
                                    action2.title = replaceText(action2.title, str, str2, z2);
                                    if (TextUtils.isEmpty(action2.title)) {
                                        it.remove();
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            extras = extras2;
                            z = replaceInMessages;
                            Log.w(TAG, e);
                            bundle = extras.getBundle("android.car.EXTENSIONS");
                            if (bundle == null) {
                                return;
                            }
                            return;
                        }
                    }
                    Parcelable[] pages2 = bundle6.getParcelableArray("pages");
                    if (pages2 != null) {
                        int length3 = pages2.length;
                        int i7 = 0;
                        while (i7 < length3) {
                            try {
                                i2 = i7;
                                i = length3;
                                extras = extras2;
                                pages = pages2;
                                z = replaceInMessages;
                                bundle4 = bundle6;
                                try {
                                    replaceNotificationText((Notification) pages2[i7], str, str2, z2, z3, replaceInContent, z, replaceInActions);
                                } catch (Exception e4) {
                                    e2 = e4;
                                }
                            } catch (Exception e5) {
                                i2 = i7;
                                i = length3;
                                extras = extras2;
                                pages = pages2;
                                bundle4 = bundle6;
                                z = replaceInMessages;
                                e2 = e5;
                                try {
                                    Log.w(TAG, e2);
                                    i7 = i2 + 1;
                                    boolean z9 = replaceInActions;
                                    extras2 = extras;
                                    length3 = i;
                                    pages2 = pages;
                                    bundle6 = bundle4;
                                    Notification notification3 = notification;
                                } catch (Exception e6) {
                                    e = e6;
                                }
                            }
                            i7 = i2 + 1;
                            boolean z92 = replaceInActions;
                            extras2 = extras;
                            length3 = i;
                            pages2 = pages;
                            bundle6 = bundle4;
                            Notification notification32 = notification;
                        }
                    }
                }
                extras = extras2;
                z = replaceInMessages;
            } catch (Exception e7) {
                extras = extras2;
                z = replaceInMessages;
                e = e7;
                Log.w(TAG, e);
                bundle = extras.getBundle("android.car.EXTENSIONS");
                if (bundle == null) {
                }
            }
            try {
                bundle = extras.getBundle("android.car.EXTENSIONS");
                if (bundle == null && z && (bundle2 = bundle.getBundle("car_conversation")) != null && (messages = bundle2.getParcelableArray("messages")) != null) {
                    int length4 = messages.length;
                    int i8 = 0;
                    while (i8 < length4) {
                        Bundle bundle32 = (Bundle) messages[i8];
                        CharSequence _author = bundle32.getCharSequence("author");
                        if (!TextUtils.isEmpty(_author)) {
                            bundle3 = bundle;
                            bundle32.putCharSequence("author", replaceText(_author, str, str2, z2));
                        } else {
                            bundle3 = bundle;
                        }
                        CharSequence _text = bundle32.getCharSequence("text");
                        if (!TextUtils.isEmpty(_text)) {
                            bundle22 = bundle2;
                            bundle32.putCharSequence("text", replaceText(_text, str, str2, z2));
                        } else {
                            bundle22 = bundle2;
                        }
                        i8++;
                        bundle = bundle3;
                        bundle2 = bundle22;
                    }
                }
            } catch (Exception e8) {
                Log.w(TAG, e8);
            }
        } else {
            boolean z10 = z5;
        }
    }

    private CharSequence replaceText(CharSequence text, String replace, CharSequence with, boolean ignoreCase) {
        if (TextUtils.isEmpty(text)) {
            return text;
        }
        if (TextUtils.isEmpty(replace)) {
            return with;
        }
        while (true) {
            try {
                CharSequence newText = replace(text, replace, with, ignoreCase);
                if (text.toString().equals(newText.toString())) {
                    break;
                }
                text = newText;
            } catch (Exception e) {
                Log.w(TAG, e);
            }
        }
        return text;
    }

    private static CharSequence replace(CharSequence text, String replace, CharSequence with, boolean ignoreCase) {
        int pos;
        SpannableStringBuilder b = new SpannableStringBuilder(text);
        if (ignoreCase) {
            pos = text.toString().toLowerCase(Locale.ENGLISH).indexOf(replace.toLowerCase(Locale.ENGLISH));
        } else {
            pos = text.toString().indexOf(replace);
        }
        if (pos == -1) {
            return text;
        }
        b.setSpan(replace, pos, replace.length() + pos, 33);
        int start = b.getSpanStart(replace);
        int end = b.getSpanEnd(replace);
        if (start != -1) {
            b.replace(start, end, with);
        }
        return b;
    }
}
