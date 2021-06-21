.class public Lcom/begal/appclone/classes/HostsBlocker$ContentReceiver;
.super Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleHost(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .line 384
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentReceiver; handleHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    const-string v1, "host"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
