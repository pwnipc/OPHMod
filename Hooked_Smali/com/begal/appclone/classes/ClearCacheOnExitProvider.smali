.class public Lcom/begal/appclone/classes/ClearCacheOnExitProvider;
.super Lcom/begal/appclone/classes/OnAppExitListener;
.source "ClearCacheOnExitProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/begal/appclone/classes/OnAppExitListener;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCache(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;

    monitor-enter v0

    .line 42
    :try_start_3
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 43
    const-string v1, "webview.db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 44
    const-string v1, "webviewCache.db"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_19
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    .line 47
    goto :goto_1f

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    :catchall_17
    move-exception p0

    goto :goto_73

    .line 45
    .restart local p0    # "context":Landroid/content/Context;
    :catch_19
    move-exception v1

    .line 46
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1a
    sget-object v2, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_17

    .line 50
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 51
    .local v1, "cacheDir":Ljava/io/File;
    sget-object v2, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache; cacheDir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v1}, Lcom/begal/appclone/classes/Utils;->deleteDirectory(Ljava/io/File;)Z

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6a

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "externalCacheDirs":[Ljava/io/File;
    if-eqz v2, :cond_6a

    .line 57
    array-length v3, v2

    const/4 v4, 0x0

    :goto_4a
    if-ge v4, v3, :cond_6a

    aget-object v5, v2, v4

    .line 58
    .local v5, "externalCacheDir":Ljava/io/File;
    sget-object v6, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearCache; externalCacheDir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_67} :catch_6b
    .catchall {:try_start_1f .. :try_end_67} :catchall_17

    .line 57
    .end local v5    # "externalCacheDir":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 65
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "externalCacheDirs":[Ljava/io/File;
    :cond_6a
    goto :goto_71

    .line 63
    :catch_6b
    move-exception v1

    .line 64
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_6c
    sget-object v2, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_17

    .line 66
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_71
    monitor-exit v0

    return-void

    .line 41
    .end local p0    # "context":Landroid/content/Context;
    :goto_73
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected onAppExit(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->clearCache(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method protected onInit(Landroid/app/Application;)Z
    .registers 5
    .param p1, "application"    # Landroid/app/Application;

    .line 23
    sget-object v0, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit; application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/begal/appclone/classes/ClearCacheOnExitService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    .line 29
    goto :goto_27

    .line 27
    :catch_21
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    const/4 v0, 0x1

    return v0
.end method
