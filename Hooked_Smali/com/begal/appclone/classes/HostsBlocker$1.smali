.class final Lcom/begal/appclone/classes/HostsBlocker$1;
.super Ljava/lang/Object;
.source "HostsBlocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/HostsBlocker;->checkHost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/begal/appclone/classes/HostsBlocker$1;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 210
    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$000()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/begal/appclone/classes/HostsBlocker;->sHostBlockedMessage:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/HostsBlocker;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/begal/appclone/classes/HostsBlocker$1;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    return-void
.end method
