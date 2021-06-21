.class Lcom/begal/appclone/classes/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/CrashHandler;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/CrashHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 27
    iput-object p1, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 35
    :try_start_0
    # getter for: Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/CrashHandler;->access$100(Lcom/begal/appclone/classes/CrashHandler;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 39
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/begal/appclone/classes/CrashHandler;->access$200(Lcom/begal/appclone/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "appName":Ljava/lang/String;
    iget-object v1, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashes:Z
    invoke-static {v1}, Lcom/begal/appclone/classes/CrashHandler;->access$300(Lcom/begal/appclone/classes/CrashHandler;)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 41
    .local v1, "title":Ljava/lang/String;
    :goto_46
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "message":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5b

    const-string v3, "You need to use a Theme.AppCompat theme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 45
    const-string v3, "Please try enabling Change icon color > More > Round icon support."

    move-object v2, v3

    .line 49
    :cond_5b
    const-string v3, "android.content.res.Resources$NotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 50
    iget-object v3, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mAppBundle:Z
    invoke-static {v3}, Lcom/begal/appclone/classes/CrashHandler;->access$400(Lcom/begal/appclone/classes/CrashHandler;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 51
    const-string v3, "Please clone the standalone version of this app, not the Play Store version."

    move-object v2, v3

    goto :goto_72

    .line 53
    :cond_6f
    const-string v3, "Please try enabling Change icon color > More > Round icon support."

    move-object v2, v3

    .line 57
    :cond_72
    :goto_72
    iget-object v3, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    .line 58
    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/begal/appclone/classes/CrashHandler;->access$200(Lcom/begal/appclone/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 60
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/begal/appclone/classes/CrashHandler;->access$200(Lcom/begal/appclone/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 65
    .local v4, "builder":Landroid/app/Notification$Builder;
    invoke-static {v4}, Lcom/begal/appclone/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 67
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_b0

    .line 68
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 71
    :cond_b0
    const v5, 0x60a40a2e

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ba} :catch_bb

    .line 75
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_ba
    goto :goto_c3

    .line 73
    :catch_bb
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c3
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler$1;->this$0:Lcom/begal/appclone/classes/CrashHandler;

    # getter for: Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashes:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/CrashHandler;->access$300(Lcom/begal/appclone/classes/CrashHandler;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 80
    :cond_cf
    return-void
.end method
