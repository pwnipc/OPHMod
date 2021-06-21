.class Lcom/begal/appclone/classes/PasswordActivity$9;
.super Ljava/lang/Thread;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PasswordActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 476
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$9;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 480
    const-wide/16 v0, 0xfa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 482
    goto :goto_7

    .line 481
    :catch_6
    move-exception v0

    .line 483
    :goto_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 484
    return-void
.end method
