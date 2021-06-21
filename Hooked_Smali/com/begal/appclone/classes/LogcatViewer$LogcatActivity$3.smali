.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 313
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # getter for: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$800(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 319
    :try_start_8
    # getter for: Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;
    invoke-static {}, Lcom/begal/appclone/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_1e

    .line 320
    :try_start_d
    # getter for: Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;
    invoke-static {}, Lcom/begal/appclone/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 321
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogsDelayed()V
    invoke-static {v1}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$700(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    .line 322
    monitor-exit v0

    .line 325
    goto :goto_0

    .line 322
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 323
    :catch_1e
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    nop

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_20
    return-void
.end method
