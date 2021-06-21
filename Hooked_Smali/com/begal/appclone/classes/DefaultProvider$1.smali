.class Lcom/begal/appclone/classes/DefaultProvider$1;
.super Ljava/lang/Thread;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/begal/appclone/classes/DefaultProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/DefaultProvider;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/DefaultProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/DefaultProvider;

    .line 915
    iput-object p1, p0, Lcom/begal/appclone/classes/DefaultProvider$1;->this$0:Lcom/begal/appclone/classes/DefaultProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 919
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V

    .line 920
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 921
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 922
    const-class v1, Lcom/begal/appclone/classes/DefaultProvider;

    invoke-static {v1}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 923
    const-string v1, "getPackageName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 924
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v3, Lcom/begal/appclone/classes/DefaultProvider;

    const-string v4, "getPackageNameHook"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 925
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 923
    invoke-static {v1, v2}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    .line 926
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate; getPackageNameHook installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_36} :catch_37

    .line 929
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3f

    .line 927
    :catch_37
    move-exception v0

    .line 928
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/DefaultProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3f
    return-void
.end method
