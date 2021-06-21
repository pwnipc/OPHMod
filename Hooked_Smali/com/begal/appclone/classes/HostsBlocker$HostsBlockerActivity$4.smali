.class Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;
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

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    .line 491
    iput-object p1, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;->this$0:Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    iput-object p2, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 494
    iget-object v0, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/begal/appclone/classes/HostsBlocker;->access$500(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$4;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/begal/appclone/classes/HostsBlocker;->removeNotification(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/begal/appclone/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 496
    return-void
.end method
