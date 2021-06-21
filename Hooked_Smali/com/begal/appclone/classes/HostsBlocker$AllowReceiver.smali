.class public Lcom/begal/appclone/classes/HostsBlocker$AllowReceiver;
.super Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllowReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleHost(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .line 397
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowReceiver; handleHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->addAllowedHost(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/begal/appclone/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    .line 400
    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->removeNotification(Ljava/lang/String;)V
    invoke-static {p2}, Lcom/begal/appclone/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 401
    return-void
.end method
