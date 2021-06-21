.class Lcom/begal/appclone/classes/PictureInPicture$1$1;
.super Lcom/begal/appclone/classes/WindowCallbackWrapper;
.source "PictureInPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PictureInPicture$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/PictureInPicture$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PictureInPicture$1;Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/begal/appclone/classes/PictureInPicture$1;
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .line 65
    iput-object p1, p0, Lcom/begal/appclone/classes/PictureInPicture$1$1;->this$1:Lcom/begal/appclone/classes/PictureInPicture$1;

    invoke-direct {p0, p2}, Lcom/begal/appclone/classes/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 71
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    .line 72
    .local v1, "longPress":Z
    :goto_17
    # getter for: Lcom/begal/appclone/classes/PictureInPicture;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PictureInPicture;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent; keyCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", longPress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/begal/appclone/classes/PictureInPicture$1$1;->this$1:Lcom/begal/appclone/classes/PictureInPicture$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/PictureInPicture$1;->this$0:Lcom/begal/appclone/classes/PictureInPicture;

    # getter for: Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureKeyCode:I
    invoke-static {v3}, Lcom/begal/appclone/classes/PictureInPicture;->access$100(Lcom/begal/appclone/classes/PictureInPicture;)I

    move-result v3

    if-ne v0, v3, :cond_67

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 76
    .local v3, "action":I
    if-nez v3, :cond_67

    .line 77
    iget-object v4, p0, Lcom/begal/appclone/classes/PictureInPicture$1$1;->this$1:Lcom/begal/appclone/classes/PictureInPicture$1;

    iget-object v4, v4, Lcom/begal/appclone/classes/PictureInPicture$1;->this$0:Lcom/begal/appclone/classes/PictureInPicture;

    # getter for: Lcom/begal/appclone/classes/PictureInPicture;->mPictureInPictureLongPress:Z
    invoke-static {v4}, Lcom/begal/appclone/classes/PictureInPicture;->access$200(Lcom/begal/appclone/classes/PictureInPicture;)Z

    move-result v4

    if-eqz v4, :cond_5b

    if-eqz v1, :cond_67

    .line 78
    :cond_5b
    iget-object v4, p0, Lcom/begal/appclone/classes/PictureInPicture$1$1;->this$1:Lcom/begal/appclone/classes/PictureInPicture$1;

    iget-object v4, v4, Lcom/begal/appclone/classes/PictureInPicture$1;->this$0:Lcom/begal/appclone/classes/PictureInPicture;

    iget-object v5, p0, Lcom/begal/appclone/classes/PictureInPicture$1$1;->this$1:Lcom/begal/appclone/classes/PictureInPicture$1;

    iget-object v5, v5, Lcom/begal/appclone/classes/PictureInPicture$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/begal/appclone/classes/PictureInPicture;->startPictureInPictureDelayed(Landroid/app/Activity;)V
    invoke-static {v4, v5}, Lcom/begal/appclone/classes/PictureInPicture;->access$300(Lcom/begal/appclone/classes/PictureInPicture;Landroid/app/Activity;)V

    .line 79
    return v2

    .line 84
    .end local v3    # "action":I
    :cond_67
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method
