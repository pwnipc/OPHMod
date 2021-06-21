.class Lcom/begal/appclone/classes/LogcatViewer$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 91
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    const-string v1, "level"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/begal/appclone/classes/LogcatViewer;->mLevel:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/LogcatViewer;->access$002(Lcom/begal/appclone/classes/LogcatViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    # setter for: Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer;->access$102(Z)Z

    .line 96
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer;->startReadLogs()V
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer;->access$200(Lcom/begal/appclone/classes/LogcatViewer;)V

    .line 97
    return-void
.end method
