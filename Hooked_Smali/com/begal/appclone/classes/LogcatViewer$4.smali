.class Lcom/begal/appclone/classes/LogcatViewer$4;
.super Ljava/lang/Object;
.source "LogcatViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer;->showLogsDelayed()V
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

    .line 138
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$4;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$4;->this$0:Lcom/begal/appclone/classes/LogcatViewer;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer;->showLogs()V
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer;->access$500(Lcom/begal/appclone/classes/LogcatViewer;)V

    .line 142
    return-void
.end method
