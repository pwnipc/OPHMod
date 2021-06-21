.class public Lcom/begal/appclone/classes/HeadphonesEventReceiver;
.super Lcom/begal/appclone/classes/StartExitAppEventReceiver;
.source "HeadphonesEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/HeadphonesEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/begal/appclone/classes/StartExitAppEventReceiver;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    sget-object v0, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "init; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/begal/appclone/classes/StartExitAppEventReceiver;->init()V

    .line 23
    :try_start_a
    new-instance v0, Lcom/begal/appclone/classes/HeadphonesEventReceiver;

    invoke-direct {v0}, Lcom/begal/appclone/classes/HeadphonesEventReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/begal/appclone/classes/PersistentAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_24

    .line 28
    goto :goto_2a

    .line 26
    :catch_24
    move-exception v0

    .line 27
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2a
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    sget-object v0, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_16
    invoke-virtual {p0}, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_73

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 40
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, "state":I
    if-eqz v1, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 42
    .local v2, "plugged":Z
    :goto_34
    sget-object v3, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive; state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", plugged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz v2, :cond_64

    .line 46
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v3

    .line 47
    .local v3, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v4, "headphonesPluggedEventAction"

    const-string v5, "NONE"

    invoke-virtual {v3, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "headphonesPluggedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .end local v3    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v4    # "headphonesPluggedEventAction":Ljava/lang/String;
    goto :goto_73

    .line 53
    :cond_64
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v3

    .line 54
    .restart local v3    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v4, "headphonesUnpluggedEventAction"

    const-string v5, "NONE"

    invoke-virtual {v3, v4, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "headphonesUnpluggedEventAction":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_73} :catch_74

    .line 62
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "state":I
    .end local v2    # "plugged":Z
    .end local v3    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    .end local v4    # "headphonesUnpluggedEventAction":Ljava/lang/String;
    :cond_73
    :goto_73
    goto :goto_7a

    .line 60
    :catch_74
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7a
    return-void
.end method
