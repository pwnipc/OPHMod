.class Lcom/begal/appclone/classes/PasswordActivity$4;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 241
    iput-object p1, p0, Lcom/begal/appclone/classes/PasswordActivity$4;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 244
    iget-object v0, p0, Lcom/begal/appclone/classes/PasswordActivity$4;->this$0:Lcom/begal/appclone/classes/PasswordActivity;

    # invokes: Lcom/begal/appclone/classes/PasswordActivity;->onOk()V
    invoke-static {v0}, Lcom/begal/appclone/classes/PasswordActivity;->access$100(Lcom/begal/appclone/classes/PasswordActivity;)V

    .line 245
    return-void
.end method
