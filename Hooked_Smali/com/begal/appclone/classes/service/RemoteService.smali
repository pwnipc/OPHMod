.class public Lcom/begal/appclone/classes/service/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final binder:Lcom/begal/appclone/classes/service/IRemoteService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/begal/appclone/classes/service/RemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/service/RemoteService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/begal/appclone/classes/service/RemoteService$1;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/service/RemoteService$1;-><init>(Lcom/begal/appclone/classes/service/RemoteService;)V

    iput-object v0, p0, Lcom/begal/appclone/classes/service/RemoteService;->binder:Lcom/begal/appclone/classes/service/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 26
    iget-object v0, p0, Lcom/begal/appclone/classes/service/RemoteService;->binder:Lcom/begal/appclone/classes/service/IRemoteService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 19
    sget-object v0, Lcom/begal/appclone/classes/service/RemoteService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    return-void
.end method
