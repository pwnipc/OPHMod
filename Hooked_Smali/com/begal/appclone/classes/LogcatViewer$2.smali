.class Lcom/begal/appclone/classes/LogcatViewer$2;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/LogcatViewer;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/LogcatViewer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/LogcatViewer;

    .line 101
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$2;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 108
    :goto_0
    :try_start_0
    # getter for: Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;
    invoke-static {}, Lcom/begal/appclone/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_16

    .line 109
    :try_start_5
    # getter for: Lcom/begal/appclone/classes/LogcatViewer;->sLines:Ljava/util/List;
    invoke-static {}, Lcom/begal/appclone/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 110
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$2;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer;->showLogsDelayed()V
    invoke-static {v1}, Lcom/begal/appclone/classes/LogcatViewer;->access$400(Lcom/begal/appclone/classes/LogcatViewer;)V

    .line 111
    monitor-exit v0

    goto :goto_17

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_16

    .line 112
    :catch_16
    move-exception v0

    .line 113
    :goto_17
    goto :goto_0
.end method
