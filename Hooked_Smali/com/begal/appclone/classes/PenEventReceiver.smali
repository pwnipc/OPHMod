.class public Lcom/begal/appclone/classes/PenEventReceiver;
.super Lcom/begal/appclone/classes/StartExitAppEventReceiver;
.source "PenEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/begal/appclone/classes/PenEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/begal/appclone/classes/StartExitAppEventReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18
    sget-object v0, Lcom/begal/appclone/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :try_start_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_61

    .line 23
    const-string v1, "penInsert"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 24
    .local v1, "penInsert":Z
    sget-object v2, Lcom/begal/appclone/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive; penInsert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz v1, :cond_51

    .line 28
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    .line 29
    .local v2, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v3, "penInsertedEventAction"

    const-string v4, "NONE"

    invoke-virtual {v2, v3, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "penInsertedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/begal/appclone/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .end local v2    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v3    # "penInsertedEventAction":Ljava/lang/String;
    goto :goto_60

    .line 35
    :cond_51
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    .line 36
    .restart local v2    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v3, "penDetachedEventAction"

    const-string v4, "NONE"

    invoke-virtual {v2, v3, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "penDetachedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/begal/appclone/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .end local v1    # "penInsert":Z
    .end local v2    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v3    # "penDetachedEventAction":Ljava/lang/String;
    :goto_60
    goto :goto_80

    :cond_61
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string v1, "isShow"

    .line 41
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 43
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v1

    .line 44
    .local v1, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v2, "penButtonPressedEventAction"

    const-string v3, "NONE"

    invoke-virtual {v1, v2, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "penButtonPressedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/begal/appclone/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_80} :catch_81

    .line 50
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v2    # "penButtonPressedEventAction":Ljava/lang/String;
    :cond_80
    :goto_80
    goto :goto_87

    .line 48
    :catch_81
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_87
    return-void
.end method
