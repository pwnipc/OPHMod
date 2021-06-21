.class Lcom/begal/appclone/classes/GmailSupport$1;
.super Lcom/begal/appclone/classes/WindowCallbackWrapper;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/GmailSupport;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/GmailSupport;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/GmailSupport;
    .param p2, "x0"    # Landroid/view/Window$Callback;

    .line 64
    iput-object p1, p0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    invoke-direct {p0, p2}, Lcom/begal/appclone/classes/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .registers 5

    .line 68
    # getter for: Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onContentChanged; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Lcom/begal/appclone/classes/WindowCallbackWrapper;->onContentChanged()V

    .line 71
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    # invokes: Lcom/begal/appclone/classes/GmailSupport;->checkForDialog()V
    invoke-static {v0}, Lcom/begal/appclone/classes/GmailSupport;->access$100(Lcom/begal/appclone/classes/GmailSupport;)V

    .line 72
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    # getter for: Lcom/begal/appclone/classes/GmailSupport;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/begal/appclone/classes/GmailSupport;->access$200(Lcom/begal/appclone/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/begal/appclone/classes/GmailSupport$1$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/GmailSupport$1$1;-><init>(Lcom/begal/appclone/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    # getter for: Lcom/begal/appclone/classes/GmailSupport;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/begal/appclone/classes/GmailSupport;->access$200(Lcom/begal/appclone/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/begal/appclone/classes/GmailSupport$1$2;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/GmailSupport$1$2;-><init>(Lcom/begal/appclone/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    # getter for: Lcom/begal/appclone/classes/GmailSupport;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/begal/appclone/classes/GmailSupport;->access$200(Lcom/begal/appclone/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/begal/appclone/classes/GmailSupport$1$3;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/GmailSupport$1$3;-><init>(Lcom/begal/appclone/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
