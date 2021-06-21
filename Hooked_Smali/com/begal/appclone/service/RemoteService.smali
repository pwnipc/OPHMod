.class public Lcom/begal/appclone/service/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# instance fields
.field private final mBinder:Lcom/begal/appclone/service/IRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/begal/appclone/service/RemoteService$1;

    invoke-direct {v0, p0}, Lcom/begal/appclone/service/RemoteService$1;-><init>(Lcom/begal/appclone/service/RemoteService;)V

    iput-object v0, p0, Lcom/begal/appclone/service/RemoteService;->mBinder:Lcom/begal/appclone/service/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 24
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService;->mBinder:Lcom/begal/appclone/service/IRemoteService$Stub;

    return-object v0
.end method
