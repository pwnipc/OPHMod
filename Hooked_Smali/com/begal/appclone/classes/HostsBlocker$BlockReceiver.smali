.class public Lcom/begal/appclone/classes/HostsBlocker$BlockReceiver;
.super Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleHost(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .line 408
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockReceiver; handleHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/begal/appclone/classes/HostsBlocker;->access$500(Ljava/lang/String;)V

    .line 411
    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->removeNotification(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/begal/appclone/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 412
    return-void
.end method
