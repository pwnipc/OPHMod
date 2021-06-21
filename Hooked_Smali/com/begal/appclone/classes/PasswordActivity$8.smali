.class Lcom/begal/appclone/classes/PasswordActivity$8;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/begal/appclone/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 376
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$802(Lcom/begal/appclone/classes/PasswordActivity$8;I)I
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/PasswordActivity$8;
    .param p1, "x1"    # I

    .line 376
    iput p1, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mCount:I

    return p1
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    iget v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mCount:I

    .line 387
    iget v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 388
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->onDoubleLongPress()V
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$600(Lcom/begal/appclone/classes/PasswordActivity;)V

    goto :goto_23

    .line 390
    :cond_17
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/PasswordActivity$8$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/PasswordActivity$8$1;-><init>(Lcom/begal/appclone/classes/PasswordActivity$8;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    :goto_23
    return-void
.end method
