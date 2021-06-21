.class public Lcom/begal/appclone/classes/DefaultProvider$DefaultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/DefaultProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1030
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1035
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.begal.appclone.KILL_PROCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1040
    :try_start_24
    const-string v1, "util.Utils"

    const-string v2, "killAppProcesses"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p1, v1, v2, v3}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_32

    .line 1043
    goto :goto_3a

    .line 1041
    :catch_32
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    return-void
.end method
