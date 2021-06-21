.class public Lcom/begal/appclone/classes/ClearCacheOnExitService;
.super Landroid/app/Service;
.source "ClearCacheOnExitService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/ClearCacheOnExitService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 24
    sget-object v0, Lcom/begal/appclone/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 4
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 31
    sget-object v0, Lcom/begal/appclone/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    const-string v1, "onTaskRemoved; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/begal/appclone/classes/ClearCacheOnExitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/ClearCacheOnExitProvider;->clearCache(Landroid/content/Context;)V

    .line 34
    return-void
.end method
