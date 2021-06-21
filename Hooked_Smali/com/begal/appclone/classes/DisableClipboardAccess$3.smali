.class Lcom/begal/appclone/classes/DisableClipboardAccess$3;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/DisableClipboardAccess;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/DisableClipboardAccess;

    .line 279
    iput-object p1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$3;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$3;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1100(Lcom/begal/appclone/classes/DisableClipboardAccess;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/begal/appclone/classes/DisableClipboardAccess$3;->this$0:Lcom/begal/appclone/classes/DisableClipboardAccess;

    # getter for: Lcom/begal/appclone/classes/DisableClipboardAccess;->mClearingClipDataToString:Ljava/lang/String;
    invoke-static {v1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1000(Lcom/begal/appclone/classes/DisableClipboardAccess;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/begal/appclone/classes/DisableClipboardAccess;->clearClipboard(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/DisableClipboardAccess;->access$1200(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    return-void
.end method
