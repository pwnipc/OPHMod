.class public Lcom/begal/appclone/classes/LogcatViewer;
.super Ljava/lang/Object;
.source "LogcatViewer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;
    }
.end annotation


# static fields
.field private static final ACTION_SWITCH_LOGCAT_LEVEL:Ljava/lang/String; = "com.begal.appclone.action.SWITCH_LOGCAT_LEVEL"

.field private static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field private static final MAX_LINES:I = 0x3e8

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "logcat_viewer"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Logcat viewer"

.field private static sAutoScroll:Z

.field private static final sLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLevel:Ljava/lang/String;

.field private final mLogcatViewer:Z

.field private mProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    .line 58
    const-string v0, "V"

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    .line 63
    const-string v0, "logcatViewer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLogcatViewer:Z

    .line 64
    const-string v0, "ContentValues"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogcatViewer; mLogcatViewer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLogcatViewer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/begal/appclone/classes/LogcatViewer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z

    return v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 42
    invoke-static {p0}, Lcom/begal/appclone/classes/LogcatViewer;->getLogs(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 42
    sput-boolean p0, Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/LogcatViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer;

    .line 42
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer;->startReadLogs()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .line 42
    sget-object v0, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/LogcatViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer;

    .line 42
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer;->showLogsDelayed()V

    return-void
.end method

.method static synthetic access$500(Lcom/begal/appclone/classes/LogcatViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer;

    .line 42
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer;->showLogs()V

    return-void
.end method

.method private static getLogs(I)Ljava/lang/String;
    .registers 7
    .param p0, "maxLines"    # I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "b":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v1

    .line 205
    :try_start_8
    sget-object v2, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    sget-object v3, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3b

    .line 208
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_24

    .line 212
    .end local v2    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_45

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method private showLogs()V
    .registers 15

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 154
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/begal/appclone/classes/LogcatViewer;->getLogs(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "logs":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 160
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.begal.appclone.action.SWITCH_LOGCAT_LEVEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, "intentVerbose":Landroid/content/Intent;
    const-string v6, "level"

    const-string v7, "V"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v6, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v6, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 165
    .local v6, "pendingIntentVerbose":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.begal.appclone.action.SWITCH_LOGCAT_LEVEL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v7, "intentDebug":Landroid/content/Intent;
    const-string v8, "level"

    const-string v9, "D"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v8, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v8, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 170
    .local v8, "pendingIntentDebug":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.begal.appclone.action.SWITCH_LOGCAT_LEVEL"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v10, "intentInfo":Landroid/content/Intent;
    const-string v11, "level"

    const-string v12, "I"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v11, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v11, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v12, 0x3

    invoke-static {v11, v12, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 175
    .local v11, "pendingIntentInfo":Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification$Builder;

    iget-object v13, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v12, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 177
    invoke-virtual {v13, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 178
    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 179
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 180
    .local v9, "builder":Landroid/app/Notification$Builder;
    invoke-static {v9}, Lcom/begal/appclone/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 183
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_b0

    .line 184
    const-string v12, "logcat_viewer"

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 187
    :cond_b0
    new-instance v12, Landroid/app/Notification$Action;

    const-string v13, "VERBOSE"

    invoke-direct {v12, v4, v13, v6}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 188
    new-instance v12, Landroid/app/Notification$Action;

    const-string v13, "DEBUG"

    invoke-direct {v12, v4, v13, v8}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 189
    new-instance v12, Landroid/app/Notification$Action;

    const-string v13, "INFO"

    invoke-direct {v12, v4, v13, v11}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 191
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 192
    .local v4, "notification":Landroid/app/Notification;
    const/4 v12, 0x0

    iput-object v12, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 193
    iget v12, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v12, v12, -0x2

    iput v12, v4, Landroid/app/Notification;->defaults:I

    .line 194
    const v12, 0x56880

    invoke-virtual {v0, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e1} :catch_e2

    .line 198
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "logs":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "intentVerbose":Landroid/content/Intent;
    .end local v6    # "pendingIntentVerbose":Landroid/app/PendingIntent;
    .end local v7    # "intentDebug":Landroid/content/Intent;
    .end local v8    # "pendingIntentDebug":Landroid/app/PendingIntent;
    .end local v9    # "builder":Landroid/app/Notification$Builder;
    .end local v10    # "intentInfo":Landroid/content/Intent;
    .end local v11    # "pendingIntentInfo":Landroid/app/PendingIntent;
    goto :goto_e8

    .line 196
    :catch_e2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContentValues"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e8
    return-void
.end method

.method private showLogsDelayed()V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/LogcatViewer$4;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/LogcatViewer$4;-><init>(Lcom/begal/appclone/classes/LogcatViewer;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method private startReadLogs()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_c

    .line 123
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 127
    :cond_c
    new-instance v0, Lcom/begal/appclone/classes/LogcatViewer$3;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/LogcatViewer$3;-><init>(Lcom/begal/appclone/classes/LogcatViewer;)V

    .line 132
    invoke-virtual {v0}, Lcom/begal/appclone/classes/LogcatViewer$3;->start()V

    .line 133
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    iget-boolean v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLogcatViewer:Z

    if-eqz v0, :cond_44

    .line 70
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer;->mContext:Landroid/content/Context;

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    .line 75
    :try_start_c
    const-string v0, "notification"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 77
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_23

    .line 78
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "logcat_viewer"

    const-string v3, "Logcat viewer"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_24

    .line 86
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_23
    goto :goto_2a

    .line 84
    :catch_24
    move-exception v0

    .line 85
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ContentValues"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer;->startReadLogs()V

    .line 91
    new-instance v0, Lcom/begal/appclone/classes/LogcatViewer$1;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/LogcatViewer$1;-><init>(Lcom/begal/appclone/classes/LogcatViewer;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.begal.appclone.action.SWITCH_LOGCAT_LEVEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance v0, Lcom/begal/appclone/classes/LogcatViewer$2;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/LogcatViewer$2;-><init>(Lcom/begal/appclone/classes/LogcatViewer;)V

    .line 116
    invoke-virtual {v0}, Lcom/begal/appclone/classes/LogcatViewer$2;->start()V

    .line 118
    :cond_44
    return-void
.end method

.method public readLogs()V
    .registers 6

    .line 219
    :try_start_0
    sget-object v0, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_88

    .line 220
    :try_start_3
    sget-object v1, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 221
    sget-object v1, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 222
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_85

    .line 223
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -v time *:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 224
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/begal/appclone/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3b} :catch_88

    .line 228
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 228
    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_77

    .line 229
    sget-object v1, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_7e

    .line 230
    :try_start_45
    const-string v3, "--------- beginning of"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "OverScrollerOptimization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_72

    .line 233
    :cond_56
    sget-object v3, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_6b

    .line 235
    sget-object v3, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    :cond_6b
    sget-object v3, Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 238
    monitor-exit v1

    goto :goto_3b

    .line 231
    :cond_72
    :goto_72
    monitor-exit v1

    goto :goto_3b

    .line 238
    :catchall_74
    move-exception v3

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_74

    :try_start_76
    throw v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_7e

    .line 242
    .end local v2    # "line":Ljava/lang/String;
    :cond_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_88

    .line 244
    goto :goto_7d

    .line 243
    :catch_7b
    move-exception v1

    .line 245
    nop

    .line 248
    .end local v0    # "reader":Ljava/io/BufferedReader;
    :goto_7d
    goto :goto_89

    .line 241
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_7e
    move-exception v1

    .line 242
    :try_start_7f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_88

    .line 244
    goto :goto_84

    .line 243
    :catch_83
    move-exception v2

    .line 245
    :goto_84
    :try_start_84
    throw v1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_88

    .line 222
    .end local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_88} :catch_88

    .line 246
    :catch_88
    move-exception v0

    .line 249
    :goto_89
    return-void
.end method
