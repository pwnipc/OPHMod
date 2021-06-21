.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    .line 274
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 278
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v1, v1, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # getter for: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z
    invoke-static {v1}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$600(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$602(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;Z)Z

    .line 279
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # getter for: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$600(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 280
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    const-string v2, "Paused"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 282
    :cond_2a
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    const-string v2, "Resumed"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # invokes: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogsDelayed()V
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$700(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    .line 286
    :goto_3e
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
