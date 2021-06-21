.class Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;
.super Ljava/lang/Object;
.source "HostsBlocker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .param p1, "this$0"    # Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    .line 457
    iput-object p1, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;->this$0:Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    iput-object p2, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 460
    iget-object v0, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 461
    .local v0, "item":Ljava/lang/String;
    iget-object v1, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$1;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 462
    return-void
.end method
