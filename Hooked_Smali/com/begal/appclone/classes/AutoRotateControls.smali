.class public Lcom/begal/appclone/classes/AutoRotateControls;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "AutoRotateControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRotate:Ljava/lang/Boolean;

.field private mAutoRotateSet:Z

.field private mOldAutoRotate:I

.field private mRestoreAutoRotateOnExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/AutoRotateControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 23
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    .line 24
    const-string v0, "autoRotate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    .line 25
    const-string v0, "restoreAutoRotateOnExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    .line 26
    sget-object v0, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoRotateControls; mAutoRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoRotateControls; mRestoreAutoRotateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/begal/appclone/classes/AutoRotateControls;->onCreate()Z

    .line 35
    :cond_7
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 39
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 41
    iget-boolean v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotateSet:Z

    if-nez v0, :cond_47

    .line 44
    nop

    .line 45
    :try_start_8
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, -0x1

    .line 44
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    .line 47
    nop

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 47
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    .line 54
    goto :goto_2c

    .line 52
    :catch_26
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    sget-object v0, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldAutoRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotateSet:Z

    .line 61
    :cond_47
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreAutoRotateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldAutoRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 72
    nop

    .line 73
    :try_start_2c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget v2, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mOldAutoRotate:I

    .line 72
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_38

    .line 79
    goto :goto_3e

    .line 77
    :catch_38
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/AutoRotateControls;->mAutoRotateSet:Z

    .line 83
    :cond_41
    return-void
.end method
