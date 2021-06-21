.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;
.super Ljava/lang/Object;
.source "LogcatViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V
    .registers 5
    .param p1, "this$0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 272
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    new-instance v2, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;

    invoke-direct {v2, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1$1;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 292
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    const/4 v0, 0x1

    return v0
.end method
