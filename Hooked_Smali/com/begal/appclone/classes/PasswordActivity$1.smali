.class Lcom/begal/appclone/classes/PasswordActivity$1;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/PasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/PasswordActivity;

    .line 179
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$1;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$1;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->exit()V
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$000(Lcom/begal/appclone/classes/PasswordActivity;)V

    .line 183
    return-void
.end method
