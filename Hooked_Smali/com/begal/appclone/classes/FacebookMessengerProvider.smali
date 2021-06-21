.class public Lcom/begal/appclone/classes/FacebookMessengerProvider;
.super Lcom/begal/appclone/classes/AbstractContentProvider;
.source "FacebookMessengerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/FacebookMessengerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/FacebookMessengerProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 11

    .line 25
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/begal/appclone/classes/FacebookMessengerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 26
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 27
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    .local v3, "originalService":Ljava/lang/Object;
    new-instance v4, Lcom/begal/appclone/classes/FacebookMessengerProvider$1;

    invoke-direct {v4, p0, v3}, Lcom/begal/appclone/classes/FacebookMessengerProvider$1;-><init>(Lcom/begal/appclone/classes/FacebookMessengerProvider;Ljava/lang/Object;)V

    .line 45
    .local v4, "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    const-string v5, "android.accounts.IAccountManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 46
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    .line 48
    .local v6, "proxy":Ljava/lang/Object;
    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    sget-object v7, Lcom/begal/appclone/classes/FacebookMessengerProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate; installed proxy; proxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_50

    .line 53
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "originalService":Ljava/lang/Object;
    .end local v4    # "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "proxy":Ljava/lang/Object;
    goto :goto_56

    .line 51
    :catch_50
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/FacebookMessengerProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_56
    return v0
.end method
