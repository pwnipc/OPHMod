.class public Lcom/begal/appclone/classes/SetBrightnessOnStart;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "SetBrightnessOnStart.java"


# static fields
.field private static final MAX_BRIGHTNESS:I = 0xff

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightnessSet:Z

.field private mOldAutoBrightness:Z

.field private mOldBrightness:Ljava/lang/Integer;

.field private mRestoreBrightnessOnExit:Z

.field private mSetBrightnessOnStart:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 28
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 29
    const-string v0, "setBrightnessOnStart"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    .line 30
    const-string v0, "restoreBrightnessOnExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    .line 31
    sget-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBrightnessOnStart; mSetBrightnessOnStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBrightnessOnStart; mRestoreBrightnessOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private getBrightness(Landroid/content/Context;Z)Ljava/lang/Integer;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoBrightness"    # Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_18

    .line 103
    :try_start_6
    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 103
    .local v1, "oldBrightness":I
    goto :goto_1e

    .line 110
    .end local v1    # "oldBrightness":I
    :catch_16
    move-exception v1

    goto :goto_23

    .line 106
    :cond_18
    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 109
    .restart local v1    # "oldBrightness":I
    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_22} :catch_16

    return-object v2

    .line 110
    .end local v1    # "oldBrightness":I
    :goto_23
    nop

    .line 111
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v2, 0x0

    return-object v2
.end method

.method private isAutoBrightness(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    nop

    :cond_10
    return v0

    .line 79
    :catch_11
    move-exception v1

    .line 80
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return v0
.end method

.method private setAutoBrightness(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoBrightness"    # Z

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 94
    goto :goto_10

    .line 92
    :catch_a
    move-exception v0

    .line 93
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_10
    return-void
.end method

.method private setBrightness(Landroid/content/Context;IZ)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newBrightness"    # I
    .param p3, "autoBrightness"    # Z

    .line 117
    sget-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness; newBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_22} :catch_4d

    .line 121
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    if-eqz p3, :cond_42

    .line 123
    :try_start_25
    const-string v2, "screen_auto_brightness_adj"

    add-int/lit8 v3, p2, -0x80

    int-to-float v3, v3

    const/high16 v4, 0x43000000    # 128.0f

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_4d

    .line 133
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_30
    goto :goto_4c

    .line 125
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    :catch_31
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    :try_start_32
    sget-object v3, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_30

    .line 135
    :cond_42
    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4c} :catch_4d

    .line 143
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :goto_4c
    goto :goto_53

    .line 141
    :catch_4d
    move-exception v0

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_53
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->onCreate()Z

    .line 40
    :cond_7
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 44
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 46
    iget-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    if-nez v0, :cond_4c

    .line 48
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->isAutoBrightness(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    .line 49
    iget-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->getBrightness(Landroid/content/Context;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldAutoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->setBrightness(Landroid/content/Context;IZ)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    .line 57
    :cond_4c
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreBrightnessOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldAutoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    .line 66
    iget-object v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->setBrightness(Landroid/content/Context;IZ)V

    .line 67
    iget-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->setAutoBrightness(Landroid/content/Context;Z)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    .line 70
    :cond_3d
    return-void
.end method
