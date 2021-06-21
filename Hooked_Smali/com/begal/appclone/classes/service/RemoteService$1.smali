.class Lcom/begal/appclone/classes/service/RemoteService$1;
.super Lcom/begal/appclone/classes/service/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/service/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/classes/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/begal/appclone/classes/service/RemoteService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/classes/service/RemoteService;

    .line 29
    iput-object p1, p0, Lcom/begal/appclone/classes/service/RemoteService$1;->this$0:Lcom/begal/appclone/classes/service/RemoteService;

    invoke-direct {p0}, Lcom/begal/appclone/classes/service/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 2

    .line 33
    const/4 v0, 0x1

    return v0
.end method
