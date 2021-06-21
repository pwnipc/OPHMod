.class Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$6;
.super Ljava/lang/Object;
.source "HostsBlocker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    .line 502
    iput-object p1, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$6;->this$0:Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 505
    iget-object v0, p0, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity$6;->this$0:Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;

    invoke-virtual {v0}, Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;->finish()V

    .line 506
    return-void
.end method
