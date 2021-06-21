.class public Lcom/begal/appclone/classes/WifiControls;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "WifiControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOldWifiState:Ljava/lang/Boolean;

.field private mRestoreWifiStateOnExit:Z

.field private mWifiState:Ljava/lang/Boolean;

.field private mWifiStateSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/begal/appclone/classes/WifiControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 24
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 25
    const-string v0, "wifiState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    .line 26
    const-string v0, "restoreWifiStateOnExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    .line 27
    sget-object v0, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiControls; mWifiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiControls; mRestoreWifiStateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {p0}, Lcom/begal/appclone/classes/WifiControls;->onCreate()Z

    .line 36
    :cond_7
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 40
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 42
    iget-boolean v0, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiStateSet:Z

    if-nez v0, :cond_59

    .line 45
    const/4 v0, 0x1

    :try_start_8
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 46
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    .line 47
    iget-object v2, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 48
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 49
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v3, "onActivityCreated; enabled Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 51
    :cond_2d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 52
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v3, "onActivityCreated; disabled Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_38} :catch_39

    .line 56
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_38
    goto :goto_3f

    .line 54
    :catch_39
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    sget-object v1, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated; mOldWifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v0, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiStateSet:Z

    .line 63
    :cond_59
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreWifiStateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldWifiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v0, p0, Lcom/begal/appclone/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/begal/appclone/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    if-eqz v0, :cond_5a

    .line 74
    const/4 v0, 0x0

    :try_start_2b
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 75
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    iget-object v2, p0, Lcom/begal/appclone/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 76
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 77
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v3, "onAppExit; enabled Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 79
    :cond_47
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 80
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v3, "onAppExit; disabled Wi-Fi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_51} :catch_52

    .line 84
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_51
    goto :goto_58

    .line 82
    :catch_52
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/WifiControls;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_58
    iput-boolean v0, p0, Lcom/begal/appclone/classes/WifiControls;->mWifiStateSet:Z

    .line 88
    :cond_5a
    return-void
.end method
