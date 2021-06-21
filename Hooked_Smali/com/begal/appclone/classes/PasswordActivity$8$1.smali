.class Lcom/begal/appclone/classes/PasswordActivity$8$1;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/PasswordActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/PasswordActivity$8;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity$8;)V
    .registers 2
    .param p1, "this$1"    # Lcom/begal/appclone/classes/PasswordActivity$8;

    .line 390
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$8$1;->this$1:Lcom/begal/appclone/classes/PasswordActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$8$1;->this$1:Lcom/begal/appclone/classes/PasswordActivity$8;

    const/4 v1, 0x0

    # setter for: Lcom/begal/appclone/classes/PasswordActivity$8;->mCount:I
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/PasswordActivity$8;->access$802(Lcom/begal/appclone/classes/PasswordActivity$8;I)I

    .line 394
    return-void
.end method
