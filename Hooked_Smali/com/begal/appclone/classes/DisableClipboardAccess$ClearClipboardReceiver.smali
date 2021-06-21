.class public Lcom/begal/appclone/classes/DisableClipboardAccess$ClearClipboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableClipboardAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/DisableClipboardAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearClipboardReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 297
    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "expected_clip_data_to_string"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->clearClipboard(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    return-void
.end method
