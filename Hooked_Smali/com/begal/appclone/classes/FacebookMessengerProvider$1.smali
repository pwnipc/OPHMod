.class Lcom/begal/appclone/classes/FacebookMessengerProvider$1;
.super Ljava/lang/Object;
.source "FacebookMessengerProvider.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/FacebookMessengerProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/FacebookMessengerProvider;

.field final synthetic val$originalService:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/FacebookMessengerProvider;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lcom/begal/appclone/classes/FacebookMessengerProvider;

    .line 30
    iput-object p1, p0, Lcom/begal/appclone/classes/FacebookMessengerProvider$1;->this$0:Lcom/begal/appclone/classes/FacebookMessengerProvider;

    iput-object p2, p0, Lcom/begal/appclone/classes/FacebookMessengerProvider$1;->val$originalService:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const-string v0, "getAccountsAsUser"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 35
    new-array v0, v1, [Landroid/accounts/Account;

    return-object v0

    .line 37
    :cond_10
    const-string v0, "addAccountExplicitly"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 41
    :cond_21
    iget-object v0, p0, Lcom/begal/appclone/classes/FacebookMessengerProvider$1;->val$originalService:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
