.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$4;
.super Ljava/lang/Object;
.source "LogcatViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogsDelayed()V
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

    .line 345
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$4;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$4;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogs()V
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$900(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    .line 349
    return-void
.end method
