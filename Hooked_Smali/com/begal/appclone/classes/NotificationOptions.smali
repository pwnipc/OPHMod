.class public Lcom/begal/appclone/classes/NotificationOptions;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "NotificationOptions.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays",
        "Registered",
        "PrivateApi"
    }
.end annotation


# static fields
.field private static final ACTION_SNOOZE_NOTIFICATION:Ljava/lang/String; = "com.begal.appclone.action.SNOOZE_NOTIFICATION"

.field private static final EXTRA_SNOOZE_ACTION:Ljava/lang/String; = "snooze_action"

.field private static final TAG:Ljava/lang/String;

.field private static mAllowNotificationsWhenRunning:Z

.field private static mBlockAllNotifications:Z

.field private static mNotificationColor:Ljava/lang/Integer;


# instance fields
.field private mHeadsUpNotifications:Z

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLocalOnlyNotifications:Z

.field private mNoOngoingNotifications:Z

.field private mNotificationCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLightsColor:Ljava/lang/String;

.field private mNotificationLightsPattern:Ljava/lang/String;

.field private mNotificationPriority:Ljava/lang/String;

.field private mNotificationQuietTime:Z

.field private mNotificationQuietTimeEndHour:I

.field private mNotificationQuietTimeEndMinute:I

.field private mNotificationQuietTimeStartHour:I

.field private mNotificationQuietTimeStartMinute:I

.field private mNotificationSnoozeTimeout:I

.field private mNotificationSound:Ljava/lang/String;

.field private mNotificationTextReplacements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationTimeout:I

.field private mNotificationTintStatusBarIcon:Z

.field private mNotificationVibration:Ljava/lang/String;

.field private mNotificationVisibility:Ljava/lang/String;

.field private mRemoveNotificationActions:Z

.field private mRemoveNotificationIcon:Z

.field private mRemoveNotificationPeople:Z

.field private mReplaceNotificationIcon:Z

.field private mRunning:Z

.field private mShowNotificationTime:Z

.field private mSimpleNotifications:Z

.field private mSnoozeNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutHandler:Landroid/os/Handler;

.field private mTimeoutRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/begal/appclone/classes/NotificationOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 12
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 96
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    .line 98
    const-string v0, "blockAllNotifications"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/begal/appclone/classes/NotificationOptions;->mBlockAllNotifications:Z

    .line 99
    const-string v0, "allowNotificationsWhenRunning"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/begal/appclone/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    .line 100
    const-string v0, "notificationFilter"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "notificationFilter":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_67
    if-ge v5, v4, :cond_83

    aget-object v6, v3, v5

    .line 104
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 106
    iget-object v7, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v6    # "s":Ljava/lang/String;
    :cond_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 110
    :cond_83
    const-string v3, "notificationQuietTime"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTime:Z

    .line 112
    const/4 v3, 0x1

    :try_start_94
    const-string v4, "notificationQuietTimeStart"

    const-string v5, "21:00"

    invoke-virtual {p1, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "arr":[Ljava/lang/String;
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    .line 114
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    .line 115
    const-string v5, "notificationQuietTimeEnd"

    const-string v6, "07:00"

    invoke-virtual {p1, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 116
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    .line 117
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_d1} :catch_d2

    .line 120
    .end local v4    # "arr":[Ljava/lang/String;
    goto :goto_d8

    .line 118
    :catch_d2
    move-exception v4

    .line 119
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_d8
    const-string v4, "notificationColorUseStatusBarColor"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 122
    const-string v4, "statusBarColor"

    invoke-virtual {p1, v4, v2}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    goto :goto_f9

    .line 124
    :cond_f1
    const-string v4, "notificationColor"

    invoke-virtual {p1, v4, v2}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    .line 126
    :goto_f9
    const-string v2, "notificationTintStatusBarIcon"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    .line 127
    const-string v2, "notificationSound"

    const-string v4, "NO_CHANGE"

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    .line 128
    const-string v2, "notificationVibration"

    const-string v4, "NO_CHANGE"

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    .line 129
    const-string v2, "notificationTimeout"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I

    .line 130
    const-string v2, "notificationSnoozeTimeout"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    .line 131
    const-string v2, "headsUpNotifications"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mHeadsUpNotifications:Z

    .line 132
    const-string v2, "localOnlyNotifications"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    .line 133
    const-string v2, "noOngoingNotifications"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNoOngoingNotifications:Z

    .line 134
    const-string v2, "showNotificationTime"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mShowNotificationTime:Z

    .line 135
    const-string v2, "defaultNotificationLights"

    invoke-virtual {p1, v2}, Lcom/begal/appclone/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    const-string v4, "notificationLightsPattern"

    const-string v5, "NO_CHANGE"

    .line 136
    invoke-virtual {v2, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 137
    const-string v2, "defaultNotificationLights"

    invoke-virtual {p1, v2}, Lcom/begal/appclone/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    const-string v4, "notificationLightsColor"

    const-string v5, "NO_CHANGE"

    .line 138
    invoke-virtual {v2, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 139
    const-string v2, "notificationVisibility"

    const-string v4, "NO_CHANGE"

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    .line 140
    const-string v2, "notificationPriority"

    const-string v4, "NO_CHANGE"

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    .line 141
    const-string v2, "replaceNotificationIcon"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    .line 142
    const-string v2, "removeNotificationIcon"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    .line 143
    const-string v2, "removeNotificationActions"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationActions:Z

    .line 144
    const-string v2, "removeNotificationPeople"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    .line 145
    const-string v2, "simpleNotifications"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSimpleNotifications:Z

    .line 146
    const-string v1, "notificationCategories"

    invoke-virtual {p1, v1}, Lcom/begal/appclone/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "notificationCategories":Ljava/util/List;, "Ljava/util/List<Lcom/begal/appclone/classes/CloneSettings;>;"
    if-eqz v1, :cond_24d

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/begal/appclone/classes/CloneSettings;

    .line 149
    .local v4, "notificationCategory":Lcom/begal/appclone/classes/CloneSettings;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "name"

    const-string v7, "name"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v6, "keywords"

    const-string v7, "keywords"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v6, "ignoreCase"

    const-string v7, "ignoreCase"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v6, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "notificationCategory":Lcom/begal/appclone/classes/CloneSettings;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_20d

    .line 156
    :cond_24d
    const-string v2, "notificationTextReplacements"

    invoke-virtual {p1, v2}, Lcom/begal/appclone/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "notificationTextReplacements":Ljava/util/List;, "Ljava/util/List<Lcom/begal/appclone/classes/CloneSettings;>;"
    if-eqz v2, :cond_2d5

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_259
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/begal/appclone/classes/CloneSettings;

    .line 159
    .local v5, "notificationTextReplacement":Lcom/begal/appclone/classes/CloneSettings;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "replace"

    const-string v8, "replace"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v7, "with"

    const-string v8, "with"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "ignoreCase"

    const-string v8, "ignoreCase"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v7, "replaceInTitle"

    const-string v8, "replaceInTitle"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v7, "replaceInContent"

    const-string v8, "replaceInContent"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v7, "replaceInMessages"

    const-string v8, "replaceInMessages"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v7, "replaceInActions"

    const-string v8, "replaceInActions"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v7, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v5    # "notificationTextReplacement":Lcom/begal/appclone/classes/CloneSettings;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_259

    .line 171
    :cond_2d5
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mBlockAllNotifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/begal/appclone/classes/NotificationOptions;->mBlockAllNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mAllowNotificationsWhenRunning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/begal/appclone/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationFilterSet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationQuietTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationQuietTimeStartHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationQuietTimeStartMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationQuietTimeEndHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationQuietTimeEndMinute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationTintStatusBarIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationSound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationVibration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationSnoozeTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mHeadsUpNotifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mHeadsUpNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mLocalOnlyNotifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNoOngoingNotifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNoOngoingNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mShowNotificationTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mShowNotificationTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationLightsPattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationLightsColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationVisibility: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationPriority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mReplaceNotificationIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mRemoveNotificationIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mRemoveNotificationActions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationActions:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mRemoveNotificationPeople: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mSimpleNotifications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSimpleNotifications:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationCategories: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationOptions; mNotificationTextReplacements: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    invoke-direct {p0}, Lcom/begal/appclone/classes/NotificationOptions;->isAppClonerClassesNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    return v0
.end method

.method static synthetic access$1100(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    return v0
.end method

.method static synthetic access$1200(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    return v0
.end method

.method static synthetic access$1300(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    return v0
.end method

.method static synthetic access$1400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I

    return v0
.end method

.method static synthetic access$1700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mHeadsUpNotifications:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/begal/appclone/classes/NotificationOptions;->mBlockAllNotifications:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNoOngoingNotifications:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mShowNotificationTime:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/begal/appclone/classes/NotificationOptions;)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    return v0
.end method

.method static synthetic access$2800(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/begal/appclone/classes/NotificationOptions;)Landroid/graphics/drawable/Icon;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/begal/appclone/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationActions:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSimpleNotifications:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/begal/appclone/classes/NotificationOptions;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .registers 9
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;
    .param p1, "x1"    # Landroid/app/Notification;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Z

    .line 53
    invoke-direct/range {p0 .. p8}, Lcom/begal/appclone/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRunning:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Integer;
    .registers 1

    .line 53
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/app/Notification;

    .line 53
    invoke-static {p0}, Lcom/begal/appclone/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/begal/appclone/classes/NotificationOptions;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/begal/appclone/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/begal/appclone/classes/NotificationOptions;->getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/begal/appclone/classes/NotificationOptions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/NotificationOptions;

    .line 53
    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTime:Z

    return v0
.end method

.method private static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 5
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 871
    const/4 v0, 0x0

    .line 873
    .local v0, "extras":Landroid/os/Bundle;
    :try_start_1
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_5

    move-object v0, v1

    .line 882
    goto :goto_20

    .line 874
    :catch_5
    move-exception v1

    .line 876
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_6
    const-class v2, Landroid/app/Notification;

    const-string v3, "extras"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 877
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 878
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_1a

    move-object v0, v3

    .line 881
    .end local v2    # "f":Ljava/lang/reflect/Field;
    goto :goto_20

    .line 879
    :catch_1a
    move-exception v2

    .line 880
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_20
    if-nez v0, :cond_28

    .line 884
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 886
    :cond_28
    return-object v0
.end method

.method private getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 892
    invoke-direct {p0, p2}, Lcom/begal/appclone/classes/NotificationOptions;->getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "channelName":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 894
    const/4 v1, 0x0

    return-object v1

    .line 897
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_cloner_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "channelId":Ljava/lang/String;
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotificationChannelId; channelId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", channelName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 901
    .local v2, "channel":Landroid/app/NotificationChannel;
    const-string v3, "notification"

    .line 902
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 903
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 905
    return-object v1
.end method

.method private getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;

    .line 910
    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 912
    .local v1, "notificationCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 913
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 915
    const-string v3, "keywords"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 916
    .local v3, "keywords":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 918
    const-string v4, "ignoreCase"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 919
    .local v4, "ignoreCase":Z
    if-eqz v4, :cond_43

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_44

    :cond_43
    move-object v5, p1

    .line 921
    .local v5, "matchText":Ljava/lang/String;
    :goto_44
    sget-object v6, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNotificationChannelName; name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", keywords: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ignoreCase: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", matchText: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_7a
    if-ge v8, v7, :cond_aa

    aget-object v9, v6, v8

    .line 925
    .local v9, "keyword":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 926
    if-eqz v4, :cond_8a

    .line 927
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 929
    :cond_8a
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 930
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotificationChannelName; found keyword; keyword: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-object v2

    .line 924
    .end local v9    # "keyword":Ljava/lang/String;
    :cond_a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7a

    .line 936
    .end local v1    # "notificationCategory":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "keywords":Ljava/lang/String;
    .end local v4    # "ignoreCase":Z
    .end local v5    # "matchText":Ljava/lang/String;
    :cond_aa
    goto/16 :goto_6

    .line 938
    :cond_ac
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAppClonerClassesNotification()Z
    .registers 9

    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, "notificationManager":Z
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 854
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 854
    .end local v0    # "notificationManager":Z
    .local v4, "notificationManager":Z
    :goto_e
    if-ge v0, v2, :cond_2c

    aget-object v5, v1, v0

    .line 855
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 856
    .local v6, "className":Ljava/lang/String;
    const-string v7, "android.app.NotificationManager"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 857
    const/4 v4, 0x1

    goto :goto_29

    .line 858
    :cond_20
    if-eqz v4, :cond_29

    .line 859
    const-string v0, "com.begal.appclone.classes."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 854
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v6    # "className":Ljava/lang/String;
    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 862
    :cond_2c
    return v3
.end method

.method private static replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "replace"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 1257
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1260
    .local v0, "b":Landroid/text/SpannableStringBuilder;
    if-eqz p3, :cond_1c

    .line 1261
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1261
    .local v1, "pos":I
    goto :goto_24

    .line 1263
    .end local v1    # "pos":I
    :cond_1c
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1265
    .restart local v1    # "pos":I
    :goto_24
    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    .line 1266
    return-object p0

    .line 1269
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1272
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1273
    .local v3, "start":I
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1274
    .local v4, "end":I
    if-eq v3, v2, :cond_3f

    .line 1275
    invoke-virtual {v0, v3, v4, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1278
    :cond_3f
    return-object v0
.end method

.method private replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .registers 35
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "replace"    # Ljava/lang/String;
    .param p3, "with"    # Ljava/lang/String;
    .param p4, "ignoreCase"    # Z
    .param p5, "replaceInTitle"    # Z
    .param p6, "replaceInContent"    # Z
    .param p7, "replaceInMessages"    # Z
    .param p8, "replaceInActions"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v9, p6

    move/from16 v8, p7

    .line 949
    move/from16 v7, p8

    sget-object v1, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceNotificationText; replace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInActions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v1, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v10, v1, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 960
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_41a

    .line 962
    invoke-static/range {p1 .. p1}, Lcom/begal/appclone/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v6

    .line 965
    .local v6, "extras":Landroid/os/Bundle;
    const/16 v1, 0x18

    if-eqz v15, :cond_f6

    .line 968
    const-string v2, "android.title"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 969
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8f

    .line 970
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 971
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 972
    const-string v3, "android.title"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_8f

    .line 974
    :cond_8a
    const-string v3, "android.title.big"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 979
    :cond_8f
    :goto_8f
    const-string v3, "android.title.big"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 980
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 981
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 982
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 983
    const-string v3, "android.title.big"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_b0

    .line 985
    :cond_ab
    const-string v3, "android.title.big"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 989
    :cond_b0
    :goto_b0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_f6

    .line 992
    const-string v3, "android.conversationTitle"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 993
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d5

    .line 994
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 995
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 996
    const-string v3, "android.conversationTitle"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_d5

    .line 998
    :cond_d0
    const-string v3, "android.conversationTitle"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1003
    :cond_d5
    :goto_d5
    const-string v3, "android.hiddenConversationTitle"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1004
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f6

    .line 1005
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1006
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 1007
    const-string v3, "android.hiddenConversationTitle"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_f6

    .line 1009
    :cond_f1
    const-string v3, "android.hiddenConversationTitle"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1015
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_f6
    :goto_f6
    if-eqz v9, :cond_1c8

    .line 1018
    const-string v2, "android.text"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1019
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_119

    .line 1020
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1021
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 1022
    const-string v3, "android.text"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_119

    .line 1024
    :cond_114
    const-string v3, "android.text"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1029
    :cond_119
    :goto_119
    const-string v3, "android.subText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1030
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13a

    .line 1031
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1032
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_135

    .line 1033
    const-string v3, "android.subText"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_13a

    .line 1035
    :cond_135
    const-string v3, "android.subText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1040
    :cond_13a
    :goto_13a
    const-string v3, "android.infoText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1041
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15b

    .line 1042
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1043
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_156

    .line 1044
    const-string v3, "android.infoText"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_15b

    .line 1046
    :cond_156
    const-string v3, "android.infoText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1051
    :cond_15b
    :goto_15b
    const-string v3, "android.summaryText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1052
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17c

    .line 1053
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1054
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_177

    .line 1055
    const-string v3, "android.summaryText"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_17c

    .line 1057
    :cond_177
    const-string v3, "android.summaryText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1062
    :cond_17c
    :goto_17c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1a3

    .line 1063
    const-string v3, "android.bigText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1064
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a3

    .line 1065
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1066
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19e

    .line 1067
    const-string v3, "android.bigText"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1a3

    .line 1069
    :cond_19e
    const-string v3, "android.bigText"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1075
    :cond_1a3
    :goto_1a3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1c8

    .line 1076
    const-string v3, "android.selfDisplayName"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1077
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c8

    .line 1078
    invoke-direct {v10, v2, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1079
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c3

    .line 1080
    const-string v3, "android.selfDisplayName"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1c8

    .line 1082
    :cond_1c3
    const-string v3, "android.selfDisplayName"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1088
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1c8
    :goto_1c8
    if-eqz v8, :cond_2c6

    .line 1091
    const-string v2, "android.textLines"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1092
    .local v2, "textLines":[Ljava/lang/CharSequence;
    if-eqz v2, :cond_21d

    .line 1093
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    array-length v4, v2

    const/4 v1, 0x0

    :goto_1d9
    if-ge v1, v4, :cond_200

    aget-object v5, v2, v1

    .line 1095
    .local v5, "textLine":Ljava/lang/CharSequence;
    move-object/from16 v18, v2

    invoke-direct {v10, v5, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1096
    .local v2, "newTextLine":Ljava/lang/CharSequence;
    .local v18, "textLines":[Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1f7

    .line 1097
    move/from16 v20, v4

    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_1f3

    .line 1098
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1100
    :cond_1f3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v2    # "newTextLine":Ljava/lang/CharSequence;
    .end local v5    # "textLine":Ljava/lang/CharSequence;
    goto :goto_1f9

    .line 1094
    :cond_1f7
    move/from16 v20, v4

    :goto_1f9
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v18

    move/from16 v4, v20

    goto :goto_1d9

    .line 1103
    .end local v18    # "textLines":[Ljava/lang/CharSequence;
    .local v2, "textLines":[Ljava/lang/CharSequence;
    :cond_200
    move-object/from16 v18, v2

    .line 1103
    .end local v2    # "textLines":[Ljava/lang/CharSequence;
    .restart local v18    # "textLines":[Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_217

    .line 1104
    const-string v1, "android.textLines"

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_21f

    .line 1106
    :cond_217
    const-string v1, "android.textLines"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1106
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    goto :goto_21f

    .line 1111
    .end local v18    # "textLines":[Ljava/lang/CharSequence;
    .restart local v2    # "textLines":[Ljava/lang/CharSequence;
    :cond_21d
    move-object/from16 v18, v2

    .line 1111
    .end local v2    # "textLines":[Ljava/lang/CharSequence;
    .restart local v18    # "textLines":[Ljava/lang/CharSequence;
    :goto_21f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2c6

    .line 1112
    const-string v1, "android.messages"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 1113
    .local v1, "messages":[Landroid/os/Parcelable;
    if-eqz v1, :cond_2c6

    .line 1114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_234
    if-ge v4, v3, :cond_2aa

    aget-object v5, v1, v4

    .line 1116
    .local v5, "parcelable":Landroid/os/Parcelable;
    move-object/from16 v21, v1

    move-object v1, v5

    check-cast v1, Landroid/os/Bundle;

    .line 1119
    .local v1, "bundle":Landroid/os/Bundle;
    .local v21, "messages":[Landroid/os/Parcelable;
    move/from16 v22, v3

    const-string v3, "sender"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, "bundleSender":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_268

    .line 1121
    move-object/from16 v23, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 1121
    .end local v5    # "parcelable":Landroid/os/Parcelable;
    .local v23, "parcelable":Landroid/os/Parcelable;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v3, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    const-string v5, "sender"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26a

    .line 1126
    .end local v23    # "parcelable":Landroid/os/Parcelable;
    .restart local v5    # "parcelable":Landroid/os/Parcelable;
    :cond_268
    move-object/from16 v23, v5

    .line 1126
    .end local v5    # "parcelable":Landroid/os/Parcelable;
    .restart local v23    # "parcelable":Landroid/os/Parcelable;
    :goto_26a
    const-string v5, "text"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1127
    .local v5, "bundleText":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_290

    .line 1128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v5, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1129
    const-string v8, "text"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_290
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29f

    .line 1133
    :cond_29c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "bundleSender":Ljava/lang/String;
    .end local v5    # "bundleText":Ljava/lang/String;
    .end local v23    # "parcelable":Landroid/os/Parcelable;
    :cond_29f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v21

    move/from16 v3, v22

    move/from16 v8, p7

    move/from16 v9, p6

    goto :goto_234

    .line 1136
    .end local v21    # "messages":[Landroid/os/Parcelable;
    .local v1, "messages":[Landroid/os/Parcelable;
    :cond_2aa
    move-object/from16 v21, v1

    .line 1136
    .end local v1    # "messages":[Landroid/os/Parcelable;
    .restart local v21    # "messages":[Landroid/os/Parcelable;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c1

    .line 1137
    const-string v1, "android.messages"

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/os/Parcelable;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2c6

    .line 1139
    :cond_2c1
    const-string v1, "android.messages"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1145
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    .end local v18    # "textLines":[Ljava/lang/CharSequence;
    .end local v21    # "messages":[Landroid/os/Parcelable;
    :cond_2c6
    :goto_2c6
    if-eqz v7, :cond_306

    .line 1147
    iget-object v1, v11, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_306

    .line 1148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v2, v11, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2d5
    if-ge v4, v3, :cond_2ef

    aget-object v5, v2, v4

    .line 1150
    .local v5, "action":Landroid/app/Notification$Action;
    iget-object v8, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v8, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1151
    iget-object v8, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2ec

    .line 1152
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    .end local v5    # "action":Landroid/app/Notification$Action;
    :cond_2ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d5

    .line 1155
    :cond_2ef
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_301

    .line 1156
    const/4 v5, 0x0

    new-array v2, v5, [Landroid/app/Notification$Action;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/Notification$Action;

    iput-object v2, v11, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_307

    .line 1158
    :cond_301
    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-object v2, v11, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1158
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    goto :goto_307

    .line 1165
    :cond_306
    const/4 v5, 0x0

    :goto_307
    :try_start_307
    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_307 .. :try_end_30d} :catch_3a7

    move-object v9, v1

    .line 1166
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_3a1

    .line 1167
    if-eqz v7, :cond_347

    .line 1168
    :try_start_312
    const-string v1, "actions"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1169
    .local v1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    if-eqz v1, :cond_347

    .line 1170
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1170
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Notification$Action;>;"
    :goto_31e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_347

    .line 1171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 1172
    .local v3, "action":Landroid/app/Notification$Action;
    iget-object v4, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v4, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1173
    iget-object v4, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33d

    .line 1174
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_33d} :catch_33e

    .line 1176
    .end local v3    # "action":Landroid/app/Notification$Action;
    :cond_33d
    goto :goto_31e

    .line 1192
    .end local v1    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Notification$Action;>;"
    .end local v9    # "bundle":Landroid/os/Bundle;
    :catch_33e
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    const/16 v19, 0x0

    move/from16 v20, p7

    goto/16 :goto_3ae

    .line 1179
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :cond_347
    :try_start_347
    const-string v1, "pages"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    .line 1180
    .local v8, "pages":[Landroid/os/Parcelable;
    if-eqz v8, :cond_3a1

    .line 1181
    array-length v4, v8

    const/4 v3, 0x0

    :goto_352
    if-ge v3, v4, :cond_3a1

    aget-object v1, v8, v3
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_356} :catch_3a7

    move-object/from16 v16, v1

    .line 1183
    .local v16, "page":Landroid/os/Parcelable;
    :try_start_358
    move-object/from16 v2, v16

    check-cast v2, Landroid/app/Notification;
    :try_end_35c
    .catch Ljava/lang/Exception; {:try_start_358 .. :try_end_35c} :catch_37b

    .line 1184
    .local v2, "n":Landroid/app/Notification;
    move-object v1, v10

    move/from16 v17, v3

    move-object v3, v12

    move/from16 v18, v4

    move-object v4, v13

    const/16 v19, 0x0

    move v5, v14

    move-object v11, v6

    move v6, v15

    .line 1184
    .end local v6    # "extras":Landroid/os/Bundle;
    .local v11, "extras":Landroid/os/Bundle;
    move/from16 v7, p6

    move-object/from16 v21, v8

    move/from16 v20, p7

    move/from16 v8, v20

    .line 1184
    .end local v8    # "pages":[Landroid/os/Parcelable;
    .local v21, "pages":[Landroid/os/Parcelable;
    move-object/from16 v22, v9

    move/from16 v9, p8

    .line 1184
    .end local v9    # "bundle":Landroid/os/Bundle;
    .local v22, "bundle":Landroid/os/Bundle;
    :try_start_374
    invoke-direct/range {v1 .. v9}, Lcom/begal/appclone/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_377} :catch_378

    .line 1188
    .end local v2    # "n":Landroid/app/Notification;
    goto :goto_38f

    .line 1186
    :catch_378
    move-exception v0

    move-object v1, v0

    goto :goto_38a

    .line 1186
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v21    # "pages":[Landroid/os/Parcelable;
    .end local v22    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v8    # "pages":[Landroid/os/Parcelable;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :catch_37b
    move-exception v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object v11, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    const/16 v19, 0x0

    move/from16 v20, p7

    move-object v1, v0

    .line 1187
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v8    # "pages":[Landroid/os/Parcelable;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v11    # "extras":Landroid/os/Bundle;
    .restart local v21    # "pages":[Landroid/os/Parcelable;
    .restart local v22    # "bundle":Landroid/os/Bundle;
    :goto_38a
    :try_start_38a
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_38a .. :try_end_38f} :catch_39e

    .line 1181
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v16    # "page":Landroid/os/Parcelable;
    :goto_38f
    add-int/lit8 v3, v17, 0x1

    move/from16 v7, p8

    move-object v6, v11

    move/from16 v4, v18

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v5, 0x0

    move-object/from16 v11, p1

    goto :goto_352

    .line 1192
    .end local v21    # "pages":[Landroid/os/Parcelable;
    .end local v22    # "bundle":Landroid/os/Bundle;
    :catch_39e
    move-exception v0

    move-object v1, v0

    goto :goto_3ae

    .line 1194
    .end local v11    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_3a1
    move-object v11, v6

    const/16 v19, 0x0

    move/from16 v20, p7

    .line 1194
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v11    # "extras":Landroid/os/Bundle;
    goto :goto_3b3

    .line 1192
    .end local v11    # "extras":Landroid/os/Bundle;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :catch_3a7
    move-exception v0

    move-object v11, v6

    const/16 v19, 0x0

    move/from16 v20, p7

    move-object v1, v0

    .line 1193
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v11    # "extras":Landroid/os/Bundle;
    :goto_3ae
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3b3
    :try_start_3b3
    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1199
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_411

    .line 1200
    if-eqz v20, :cond_411

    .line 1201
    const-string v2, "car_conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1202
    .local v2, "bundle2":Landroid/os/Bundle;
    if-eqz v2, :cond_411

    .line 1203
    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 1204
    .local v3, "messages":[Landroid/os/Parcelable;
    if-eqz v3, :cond_411

    .line 1205
    array-length v4, v3

    const/4 v5, 0x0

    :goto_3cf
    if-ge v5, v4, :cond_411

    aget-object v6, v3, v5

    .line 1206
    .local v6, "message":Landroid/os/Parcelable;
    move-object v7, v6

    check-cast v7, Landroid/os/Bundle;

    .line 1207
    .local v7, "bundle3":Landroid/os/Bundle;
    const-string v8, "author"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1208
    .local v8, "_author":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3ee

    .line 1209
    const-string v9, "author"

    move-object/from16 v24, v1

    invoke-direct {v10, v8, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1209
    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v24, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_3f0

    .line 1211
    .end local v24    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_3ee
    move-object/from16 v24, v1

    .line 1211
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v24    # "bundle":Landroid/os/Bundle;
    :goto_3f0
    const-string v1, "text"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1212
    .local v1, "_text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_408

    .line 1213
    const-string v9, "text"

    move-object/from16 v25, v2

    invoke-direct {v10, v1, v12, v13, v14}, Lcom/begal/appclone/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1213
    .end local v2    # "bundle2":Landroid/os/Bundle;
    .local v25, "bundle2":Landroid/os/Bundle;
    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_407
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_407} :catch_412

    .line 1213
    .end local v1    # "_text":Ljava/lang/CharSequence;
    .end local v6    # "message":Landroid/os/Parcelable;
    .end local v7    # "bundle3":Landroid/os/Bundle;
    .end local v8    # "_author":Ljava/lang/CharSequence;
    goto :goto_40a

    .line 1205
    .end local v25    # "bundle2":Landroid/os/Bundle;
    .restart local v2    # "bundle2":Landroid/os/Bundle;
    :cond_408
    move-object/from16 v25, v2

    .line 1205
    .end local v2    # "bundle2":Landroid/os/Bundle;
    .restart local v25    # "bundle2":Landroid/os/Bundle;
    :goto_40a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_3cf

    .line 1222
    .end local v3    # "messages":[Landroid/os/Parcelable;
    .end local v24    # "bundle":Landroid/os/Bundle;
    .end local v25    # "bundle2":Landroid/os/Bundle;
    :cond_411
    goto :goto_41c

    .line 1220
    :catch_412
    move-exception v0

    move-object v1, v0

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v11    # "extras":Landroid/os/Bundle;
    goto :goto_41c

    .line 1224
    :cond_41a
    move/from16 v20, v8

    :goto_41c
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "replace"    # Ljava/lang/String;
    .param p3, "with"    # Ljava/lang/CharSequence;
    .param p4, "ignoreCase"    # Z

    .line 1228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1229
    return-object p1

    .line 1232
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1234
    return-object p3

    .line 1240
    :cond_e
    :goto_e
    :try_start_e
    invoke-static {p1, p2, p3, p4}, Lcom/begal/appclone/classes/NotificationOptions;->replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1241
    .local v0, "newText":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_23

    if-nez v1, :cond_22

    .line 1242
    move-object p1, v0

    .line 1243
    goto :goto_e

    .line 1249
    .end local v0    # "newText":Ljava/lang/CharSequence;
    :cond_22
    goto :goto_29

    .line 1247
    :catch_23
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    return-object p1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    if-nez v0, :cond_8c

    sget-boolean v0, Lcom/begal/appclone/classes/NotificationOptions;->mBlockAllNotifications:Z

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationQuietTime:Z

    if-nez v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTimeout:I

    if-nez v0, :cond_8c

    iget v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mHeadsUpNotifications:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNoOngoingNotifications:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mShowNotificationTime:Z

    if-nez v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "NO_CHANGE"

    iget-object v1, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationActions:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    if-nez v0, :cond_8c

    iget-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mSimpleNotifications:Z

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 226
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 228
    :cond_8c
    invoke-virtual {p0}, Lcom/begal/appclone/classes/NotificationOptions;->onCreate()Z

    .line 229
    invoke-virtual {p0, p1}, Lcom/begal/appclone/classes/NotificationOptions;->install(Landroid/content/Context;)V

    .line 231
    :cond_92
    return-void
.end method

.method public install(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :try_start_7
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "sService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 253
    .local v0, "serviceField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 256
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService already initialized!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 258
    :cond_22
    sget-object v3, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_29
    const-class v3, Landroid/app/NotificationManager;

    const-string v4, "getService"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    .local v3, "instance":Ljava/lang/Object;
    const-string v4, "android.app.INotificationManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 267
    .local v4, "inf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/begal/appclone/classes/NotificationOptions;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v5

    new-instance v8, Lcom/begal/appclone/classes/NotificationOptions$1;

    invoke-direct {v8, p0, p1, v3}, Lcom/begal/appclone/classes/NotificationOptions$1;-><init>(Lcom/begal/appclone/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 784
    .local v6, "proxy":Ljava/lang/Object;
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 786
    iget v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-lez v2, :cond_6c

    .line 787
    new-instance v2, Lcom/begal/appclone/classes/NotificationOptions$2;

    invoke-direct {v2, p0}, Lcom/begal/appclone/classes/NotificationOptions$2;-><init>(Lcom/begal/appclone/classes/NotificationOptions;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.begal.appclone.action.SNOOZE_NOTIFICATION"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 830
    :cond_6c
    iget-boolean v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-eqz v2, :cond_aa

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_72} :catch_ab

    const/16 v7, 0x17

    if-lt v2, v7, :cond_aa

    .line 832
    :try_start_76
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v7, ".notificationIconFile"

    invoke-virtual {v2, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/begal/appclone/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    .line 834
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    .line 835
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "install; mIcon: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/begal/appclone/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a3} :catch_a4

    .line 838
    .end local v1    # "bytes":[B
    goto :goto_aa

    .line 836
    :catch_a4
    move-exception v1

    .line 837
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a5
    sget-object v2, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ab

    .line 843
    .end local v0    # "serviceField":Ljava/lang/reflect/Field;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v4    # "inf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "proxy":Ljava/lang/Object;
    :cond_aa
    :goto_aa
    goto :goto_b1

    .line 841
    :catch_ab
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 235
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRunning:Z

    .line 238
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    sget-object v0, Lcom/begal/appclone/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v1, "onAppExit; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/NotificationOptions;->mRunning:Z

    .line 245
    return-void
.end method
