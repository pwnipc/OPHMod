.class public Lcom/begal/appclone/classes/InterruptionFilterControls;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "InterruptionFilterControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInterruptionFilter:Ljava/lang/Integer;

.field private mInterruptionFilterSet:Z

.field private mOldInterruptionFilter:I

.field private mRestoreInterruptionFilterOnExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/InterruptionFilterControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 27
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 28
    const-string v0, "interruptionFilter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    .line 29
    const-string v0, "restoreInterruptionFilterOnExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    .line 30
    sget-object v0, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiControls; mInterruptionFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiControls; mRestoreInterruptionFilterOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {p0}, Lcom/begal/appclone/classes/InterruptionFilterControls;->onCreate()Z

    .line 39
    :cond_7
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 43
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9f

    .line 47
    const-string v0, "notification"

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    .line 51
    .local v1, "accessGranted":Z
    sget-object v2, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated; accessGranted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v2, 0x1

    if-nez v1, :cond_5a

    .line 55
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please enable Do Not Disturb access for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p1}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {p1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_9f

    :cond_5a
    iget-boolean v3, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z

    if-nez v3, :cond_9f

    .line 62
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v3

    iput v3, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    .line 63
    iget-object v3, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 64
    sget-object v3, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityCreated: interruption filter set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v3, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityCreated; mOldInterruptionFilter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-boolean v2, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z

    .line 72
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "accessGranted":Z
    :cond_9f
    :goto_9f
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5b

    .line 79
    sget-object v0, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreInterruptionFilterOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldInterruptionFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v0, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    if-eqz v0, :cond_5b

    .line 86
    :try_start_2c
    const-string v0, "notification"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 88
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 89
    sget-object v1, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppExit: interruption filter set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_51} :catch_52

    .line 93
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    goto :goto_58

    .line 91
    :catch_52
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z

    .line 98
    :cond_5b
    return-void
.end method
