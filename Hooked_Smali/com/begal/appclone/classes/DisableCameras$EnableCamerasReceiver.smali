.class public Lcom/begal/appclone/classes/DisableCameras$EnableCamerasReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableCameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/DisableCameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnableCamerasReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 179
    # getter for: Lcom/begal/appclone/classes/DisableCameras;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableCameras;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    # invokes: Lcom/begal/appclone/classes/DisableCameras;->enableCameras(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/begal/appclone/classes/DisableCameras;->access$200(Landroid/content/Context;)V

    .line 182
    return-void
.end method
