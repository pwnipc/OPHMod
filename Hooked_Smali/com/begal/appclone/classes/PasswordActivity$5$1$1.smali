.class Lcom/begal/appclone/classes/PasswordActivity$5$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/PasswordActivity$5$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/begal/appclone/classes/PasswordActivity$5$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity$5$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/begal/appclone/classes/PasswordActivity$5$1;

    .line 269
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$5$1$1;->this$2:Lcom/begal/appclone/classes/PasswordActivity$5$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$5$1$1;->this$2:Lcom/begal/appclone/classes/PasswordActivity$5$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/PasswordActivity$5$1;->val$longPressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 275
    goto :goto_10

    .line 273
    :catch_8
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/PasswordActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/PasswordActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method
