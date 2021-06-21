.class final Lcom/begal/appclone/classes/Utils$1;
.super Landroid/app/AlertDialog$Builder;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isActivity:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;

    .line 100
    iput-boolean p2, p0, Lcom/begal/appclone/classes/Utils$1;->val$isActivity:Z

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .registers 4

    .line 103
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-boolean v1, p0, Lcom/begal/appclone/classes/Utils$1;->val$isActivity:Z

    if-nez v1, :cond_1b

    .line 105
    # getter for: Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create; setting TYPE_SYSTEM_ALERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_24

    .line 108
    :cond_1b
    # getter for: Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create; not setting TYPE_SYSTEM_ALERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_24
    return-object v0
.end method
