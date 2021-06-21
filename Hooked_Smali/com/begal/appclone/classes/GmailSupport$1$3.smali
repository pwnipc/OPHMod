.class Lcom/begal/appclone/classes/GmailSupport$1$3;
.super Ljava/lang/Object;
.source "GmailSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/GmailSupport$1;->onContentChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/GmailSupport$1;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/GmailSupport$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/begal/appclone/classes/GmailSupport$1;

    .line 84
    iput-object p1, p0, Lcom/begal/appclone/classes/GmailSupport$1$3;->this$1:Lcom/begal/appclone/classes/GmailSupport$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport$1$3;->this$1:Lcom/begal/appclone/classes/GmailSupport$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/GmailSupport$1;->this$0:Lcom/begal/appclone/classes/GmailSupport;

    # invokes: Lcom/begal/appclone/classes/GmailSupport;->checkForDialog()V
    invoke-static {v0}, Lcom/begal/appclone/classes/GmailSupport;->access$100(Lcom/begal/appclone/classes/GmailSupport;)V

    .line 88
    return-void
.end method
