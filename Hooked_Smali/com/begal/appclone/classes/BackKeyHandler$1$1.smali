.class Lcom/begal/appclone/classes/BackKeyHandler$1$1;
.super Ljava/lang/Object;
.source "BackKeyHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/BackKeyHandler$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

.field final synthetic val$originalActivityManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/BackKeyHandler$1;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$1"    # Lcom/begal/appclone/classes/BackKeyHandler$1;

    .line 39
    iput-object p1, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iput-object p2, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->val$originalActivityManager:Ljava/lang/Object;

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

    .line 49
    const-string v0, "finishActivity"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "moveActivityTaskToBack"

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 51
    :cond_18
    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invoke; finishActivity/moveActivityTaskToBack; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    aget-object v1, p3, v0

    .line 54
    .local v1, "token":Ljava/lang/Object;
    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke; token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mActivityTokens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v4, v4, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;
    invoke-static {v4}, Lcom/begal/appclone/classes/BackKeyHandler;->access$100(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;
    invoke-static {v2}, Lcom/begal/appclone/classes/BackKeyHandler;->access$100(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;
    invoke-static {v2}, Lcom/begal/appclone/classes/BackKeyHandler;->access$100(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_ad

    .line 59
    const-string v2, "moveActivityTaskToBack"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 60
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onBackPressed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    goto :goto_90

    .line 67
    :cond_86
    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/BackKeyHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke; no onBackPressed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 62
    :cond_90
    :goto_90
    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v2, v2, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    iget-object v3, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v3, v3, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    # getter for: Lcom/begal/appclone/classes/BackKeyHandler;->mActivities:Ljava/util/Map;
    invoke-static {v3}, Lcom/begal/appclone/classes/BackKeyHandler;->access$200(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/begal/appclone/classes/BackKeyHandler;->handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 70
    :cond_ad
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->this$1:Lcom/begal/appclone/classes/BackKeyHandler$1;

    iget-object v0, v0, Lcom/begal/appclone/classes/BackKeyHandler$1;->this$0:Lcom/begal/appclone/classes/BackKeyHandler;

    # invokes: Lcom/begal/appclone/classes/BackKeyHandler;->removeToken(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/BackKeyHandler;->access$300(Lcom/begal/appclone/classes/BackKeyHandler;Ljava/lang/Object;)V

    .line 74
    .end local v1    # "token":Ljava/lang/Object;
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler$1$1;->val$originalActivityManager:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "res":Ljava/lang/Object;
    return-object v0
.end method
