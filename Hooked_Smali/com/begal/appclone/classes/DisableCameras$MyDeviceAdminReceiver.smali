.class public Lcom/begal/appclone/classes/DisableCameras$MyDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DisableCameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/DisableCameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDeviceAdminReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 122
    # getter for: Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableCameras;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnabled; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    # invokes: Lcom/begal/appclone/classes/DisableCameras;->disableCameras(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/begal/appclone/classes/DisableCameras;->access$100(Landroid/content/Context;)V

    .line 125
    return-void
.end method
