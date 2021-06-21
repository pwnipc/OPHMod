.class Lcom/begal/appclone/classes/PasswordActivity$5;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PasswordActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/PasswordActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 256
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    iput-object p2, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 261
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$200(Lcom/begal/appclone/classes/PasswordActivity;)Ljava/lang/Runnable;

    move-result-object v0

    .line 264
    .local v0, "longPressRunnable":Ljava/lang/Runnable;
    :try_start_6
    iget-object v1, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 265
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 266
    .local v2, "callback":Landroid/view/Window$Callback;
    new-instance v3, Lcom/begal/appclone/classes/PasswordActivity$5$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/begal/appclone/classes/PasswordActivity$5$1;-><init>(Lcom/begal/appclone/classes/PasswordActivity$5;Landroid/view/Window$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 286
    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->mStealthModeUseFingerprint:Z
    invoke-static {v3}, Lcom/begal/appclone/classes/PasswordActivity;->access$400(Lcom/begal/appclone/classes/PasswordActivity;)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2d

    .line 287
    iget-object v3, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    iget-object v4, p0, Lcom/begal/appclone/classes/PasswordActivity$5;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/begal/appclone/classes/PasswordActivity;->access$500(Lcom/begal/appclone/classes/PasswordActivity;Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2e

    .line 292
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "callback":Landroid/view/Window$Callback;
    :cond_2d
    goto :goto_36

    .line 290
    :catch_2e
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method
