.class public Lcom/begal/appclone/classes/BluetoothControls;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "BluetoothControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothState:Ljava/lang/Boolean;

.field private mBluetoothStateSet:Z

.field private mOldBluetoothState:Ljava/lang/Boolean;

.field private mRestoreBluetoothStateOnExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/BluetoothControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 23
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    .line 24
    const-string v0, "bluetoothState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    .line 25
    const-string v0, "restoreBluetoothStateOnExit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    .line 26
    sget-object v0, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothControls; mBluetoothState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothControls; mRestoreBluetoothStateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

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
    iget-object v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/begal/appclone/classes/BluetoothControls;->onCreate()Z

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
    iget-boolean v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothStateSet:Z

    if-nez v0, :cond_54

    .line 44
    :try_start_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 45
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/begal/appclone/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    .line 46
    iget-object v1, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 47
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 48
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; enabled bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 50
    :cond_28
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 51
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; disabled bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    .line 55
    .end local v0    # "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_32
    goto :goto_39

    .line 53
    :catch_33
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    sget-object v0, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldBluetoothState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothStateSet:Z

    .line 62
    :cond_54
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreBluetoothStateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldBluetoothState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    if-eqz v0, :cond_55

    .line 73
    :try_start_2a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 74
    .local v0, "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/begal/appclone/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 75
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 76
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v2, "onAppExit; enabled bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 78
    :cond_41
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 79
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v2, "onAppExit; disabled bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4b} :catch_4c

    .line 83
    .end local v0    # "defaultAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_4b
    goto :goto_52

    .line 81
    :catch_4c
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/BluetoothControls;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/BluetoothControls;->mBluetoothStateSet:Z

    .line 87
    :cond_55
    return-void
.end method
