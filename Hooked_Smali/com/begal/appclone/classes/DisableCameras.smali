.class public Lcom/begal/appclone/classes/DisableCameras;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "DisableCameras.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/DisableCameras$EnableCamerasReceiver;,
        Lcom/begal/appclone/classes/DisableCameras$MyDeviceAdminReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ENABLE_CAMERAS:Ljava/lang/String; = "com.begal.appclone.action.ENABLE_CAMERAS"

.field private static final NOTIFICATION_ID:I = 0x212ebe20

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/begal/appclone/classes/DisableCameras;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableCameras;->disableCameras(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableCameras;->enableCameras(Landroid/content/Context;)V

    return-void
.end method

.method private static disableCameras(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "disableCameras; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_7
    const-string v0, "device_policy"

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 80
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_3a

    .line 81
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/begal/appclone/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, "deviceAdmin":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 85
    const-string v3, "disable_cameras_cameras_disabled_message"

    const-string v4, "Cameras disabled."

    invoke-static {p0, v3, v4}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 87
    .local v3, "message":Ljava/lang/CharSequence;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableCameras;->showNotification(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_3b

    .line 94
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "deviceAdmin":Landroid/content/ComponentName;
    .end local v3    # "message":Ljava/lang/CharSequence;
    :cond_3a
    goto :goto_41

    .line 92
    :catch_3b
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_41
    return-void
.end method

.method private static enableCameras(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "enableCameras; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_7
    const-string v0, "device_policy"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 103
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_35

    .line 104
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/begal/appclone/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v1, "deviceAdmin":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 107
    const-string v2, "disable_cameras_cameras_enabled_message"

    const-string v3, "Cameras enabled."

    invoke-static {p0, v2, v3}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    .local v2, "message":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableCameras;->hideNotification(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_36

    .line 115
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "deviceAdmin":Landroid/content/ComponentName;
    .end local v2    # "message":Ljava/lang/CharSequence;
    :cond_35
    goto :goto_3c

    .line 113
    :catch_36
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method private static hideNotification(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "hideNotification; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_7
    const-string v0, "notification"

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_17

    .line 168
    const v1, 0x212ebe20

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    .line 172
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_17
    goto :goto_1e

    .line 170
    :catch_18
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private static showNotification(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "showNotification; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p0}, Lcom/begal/appclone/classes/DisableCameras;->hideNotification(Landroid/content/Context;)V

    .line 134
    :try_start_a
    const-string v0, "notification"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 136
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_5b

    .line 138
    const-string v1, "disable_cameras_cameras_disabled_message"

    const-string v2, "Cameras disabled."

    invoke-static {p0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 140
    .local v1, "title":Ljava/lang/CharSequence;
    const-string v2, "disable_cameras_touch_to_enable_message"

    const-string v3, "Touch to enable cameras."

    invoke-static {p0, v2, v3}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 143
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.begal.appclone.action.ENABLE_CAMERAS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 147
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 149
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 150
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 151
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 153
    .local v5, "builder":Landroid/app/Notification$Builder;
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 154
    const v6, 0x212ebe20

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5b} :catch_5c

    .line 158
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "title":Ljava/lang/CharSequence;
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    :cond_5b
    goto :goto_62

    .line 156
    :catch_5c
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_62
    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 32
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_7
    invoke-virtual {p0}, Lcom/begal/appclone/classes/DisableCameras;->onCreate()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 38
    goto :goto_11

    .line 36
    :catch_b
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method public maybeEnableDeviceAdmin(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 56
    sget-object v0, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "maybeEnableDeviceAdmin; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_7
    const-string v0, "device_policy"

    .line 60
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 61
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_2d

    .line 62
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/begal/appclone/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "deviceAdmin":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2d} :catch_2e

    .line 71
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v1    # "deviceAdmin":Landroid/content/ComponentName;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_2d
    goto :goto_34

    .line 69
    :catch_2e
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_34
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 43
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/begal/appclone/classes/DisableCameras;->maybeEnableDeviceAdmin(Landroid/app/Activity;)V

    .line 46
    invoke-static {p1}, Lcom/begal/appclone/classes/DisableCameras;->disableCameras(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/begal/appclone/classes/DisableCameras;->enableCameras(Landroid/content/Context;)V

    .line 53
    return-void
.end method
