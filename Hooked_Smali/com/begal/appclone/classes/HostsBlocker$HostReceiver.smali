.class public abstract Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HostReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 362
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract handleHost(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 368
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;->handleHost(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 374
    .end local v0    # "host":Ljava/lang/String;
    :cond_d
    goto :goto_16

    .line 372
    :catch_e
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method
