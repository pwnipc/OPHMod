.class Lcom/begal/appclone/classes/ConfirmExit$1;
.super Ljava/lang/Object;
.source "ConfirmExit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/ConfirmExit;->handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/ConfirmExit;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/ConfirmExit;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/ConfirmExit;

    .line 40
    iput-object p1, p0, Lcom/begal/appclone/classes/ConfirmExit$1;->this$0:Lcom/begal/appclone/classes/ConfirmExit;

    iput-object p2, p0, Lcom/begal/appclone/classes/ConfirmExit$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 43
    iget-object v0, p0, Lcom/begal/appclone/classes/ConfirmExit$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    return-void
.end method
