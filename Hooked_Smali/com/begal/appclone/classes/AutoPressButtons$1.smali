.class Lcom/begal/appclone/classes/AutoPressButtons$1;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/AutoPressButtons;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/AutoPressButtons;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/AutoPressButtons;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/AutoPressButtons;

    .line 73
    iput-object p1, p0, Lcom/begal/appclone/classes/AutoPressButtons$1;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    iput-object p2, p0, Lcom/begal/appclone/classes/AutoPressButtons$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/begal/appclone/classes/AutoPressButtons$1;->val$activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "rootView":Landroid/view/View;
    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run; rootView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v0, :cond_3e

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/begal/appclone/classes/AutoPressButtons$1$1;

    invoke-direct {v2, p0}, Lcom/begal/appclone/classes/AutoPressButtons$1$1;-><init>(Lcom/begal/appclone/classes/AutoPressButtons$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/begal/appclone/classes/AutoPressButtons$1;->this$0:Lcom/begal/appclone/classes/AutoPressButtons;

    const/4 v2, 0x1

    # setter for: Lcom/begal/appclone/classes/AutoPressButtons;->mReady:Z
    invoke-static {v1, v2}, Lcom/begal/appclone/classes/AutoPressButtons;->access$202(Lcom/begal/appclone/classes/AutoPressButtons;Z)Z

    .line 89
    # getter for: Lcom/begal/appclone/classes/AutoPressButtons;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/AutoPressButtons;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "run; now ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3e
    return-void
.end method
