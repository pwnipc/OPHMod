.class public Lcom/begal/appclone/classes/PressBackAgainToExit;
.super Lcom/begal/appclone/classes/BackKeyHandler;
.source "PressBackAgainToExit.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPressBackAgainToExit:Z

.field private mTimestamp:J

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/PressBackAgainToExit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 23
    invoke-direct {p0}, Lcom/begal/appclone/classes/BackKeyHandler;-><init>()V

    .line 25
    const-string v0, "pressBackAgainToExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    .line 26
    sget-object v0, Lcom/begal/appclone/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PressBackAgainToExit; mPressBackAgainToExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private showToast()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_b

    .line 58
    :try_start_4
    iget-object v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 60
    goto :goto_b

    .line 59
    :catch_a
    move-exception v0

    .line 64
    :cond_b
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mContext:Landroid/content/Context;

    const-string v1, "Press Back again to exit."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    .line 66
    iget-object v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_1c

    .line 69
    goto :goto_22

    .line 67
    :catch_1c
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_22
    return-void
.end method


# virtual methods
.method protected handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Ljava/lang/Object;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    .local v0, "timestamp":J
    :try_start_4
    iget-wide v2, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mTimestamp:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_1d

    .line 43
    sget-object v2, Lcom/begal/appclone/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    const-string v3, "invoke; intercept finishActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0}, Lcom/begal/appclone/classes/PressBackAgainToExit;->showToast()V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_22

    .line 45
    const/4 v2, 0x0

    .line 48
    iput-wide v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mTimestamp:J

    .line 45
    return v2

    .line 48
    :cond_1d
    iput-wide v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mTimestamp:J

    .line 49
    nop

    .line 51
    const/4 v2, 0x1

    return v2

    .line 48
    :catchall_22
    move-exception v2

    iput-wide v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mTimestamp:J

    .line 49
    throw v2
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    if-eqz v0, :cond_9

    .line 32
    iput-object p1, p0, Lcom/begal/appclone/classes/PressBackAgainToExit;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/begal/appclone/classes/PressBackAgainToExit;->onCreate()Z

    .line 35
    :cond_9
    return-void
.end method
