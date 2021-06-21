.class Lcom/begal/appclone/classes/PasswordActivity$7;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/PasswordActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 338
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$7;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    iput-object p2, p0, Lcom/begal/appclone/classes/PasswordActivity$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 359
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationError; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$7;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$700(Lcom/begal/appclone/classes/PasswordActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/begal/appclone/classes/PasswordActivity$7$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/PasswordActivity$7$1;-><init>(Lcom/begal/appclone/classes/PasswordActivity$7;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 354
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationFailed; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 4
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 343
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationSucceeded; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :try_start_9
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$7;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->onDoubleLongPress()V
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$600(Lcom/begal/appclone/classes/PasswordActivity;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    .line 349
    goto :goto_17

    .line 347
    :catch_f
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method
