.class Lcom/begal/appclone/classes/OpenLinksWith$1$1;
.super Ljava/lang/Object;
.source "OpenLinksWith.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/OpenLinksWith$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/OpenLinksWith$1;

.field final synthetic val$originalActivityManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/OpenLinksWith$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$1"    # Lcom/begal/appclone/classes/OpenLinksWith$1;

    .line 44
    iput-object p1, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->this$1:Lcom/begal/appclone/classes/OpenLinksWith$1;

    iput-object p2, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    const-string v0, "startActivity"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 51
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_50

    .line 53
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 54
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 55
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_50

    .line 56
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_50

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 58
    iget-object v3, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->this$1:Lcom/begal/appclone/classes/OpenLinksWith$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/OpenLinksWith$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->this$1:Lcom/begal/appclone/classes/OpenLinksWith$1;

    iget-object v4, v4, Lcom/begal/appclone/classes/OpenLinksWith$1;->this$0:Lcom/begal/appclone/classes/OpenLinksWith;

    # getter for: Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/begal/appclone/classes/OpenLinksWith;->access$000(Lcom/begal/appclone/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/begal/appclone/classes/OpenLinksWith;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/begal/appclone/classes/OpenLinksWith;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 59
    iget-object v3, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->this$1:Lcom/begal/appclone/classes/OpenLinksWith$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/OpenLinksWith$1;->this$0:Lcom/begal/appclone/classes/OpenLinksWith;

    # getter for: Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/begal/appclone/classes/OpenLinksWith;->access$000(Lcom/begal/appclone/classes/OpenLinksWith;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 68
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    :cond_50
    goto :goto_59

    .line 66
    :catch_51
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/begal/appclone/classes/OpenLinksWith;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/OpenLinksWith;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    iget-object v0, p0, Lcom/begal/appclone/classes/OpenLinksWith$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
