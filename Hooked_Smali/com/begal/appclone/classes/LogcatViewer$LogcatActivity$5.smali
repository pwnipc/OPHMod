.class Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$5;
.super Ljava/lang/Object;
.source "LogcatViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogs()V
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

    .line 359
    iput-object p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$5;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$5;->this$0:Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    # getter for: Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->access$1100(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 363
    const-string v0, "ContentValues"

    const-string v1, "run; scrolled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method
