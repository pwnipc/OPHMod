.class Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractActivityContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/AbstractActivityContentProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    .line 26
    iput-object p1, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    # getter for: Lcom/begal/appclone/classes/AbstractActivityContentProvider;->mActivities:Ljava/util/Set;
    invoke-static {v0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->access$000(Lcom/begal/appclone/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 33
    iget-object v0, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    # getter for: Lcom/begal/appclone/classes/AbstractActivityContentProvider;->mActivities:Ljava/util/Set;
    invoke-static {v0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->access$000(Lcom/begal/appclone/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_42

    .line 35
    .local v1, "activity":Landroid/app/Activity;
    :try_start_22
    iget-object v2, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    invoke-virtual {v2, v1}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->onActivityTimer(Landroid/app/Activity;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    .line 38
    goto :goto_30

    .line 36
    :catch_28
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    :try_start_29
    # getter for: Lcom/begal/appclone/classes/AbstractActivityContentProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_30
    goto :goto_16

    .line 40
    :cond_31
    iget-object v0, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    # getter for: Lcom/begal/appclone/classes/AbstractActivityContentProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->access$200(Lcom/begal/appclone/classes/AbstractActivityContentProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/begal/appclone/classes/AbstractActivityContentProvider$1;->this$0:Lcom/begal/appclone/classes/AbstractActivityContentProvider;

    invoke-virtual {v1}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->getActivityTimerDelayMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_42

    .line 44
    :cond_41
    goto :goto_4a

    .line 42
    :catch_42
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/AbstractActivityContentProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method
