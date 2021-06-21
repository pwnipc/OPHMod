.class Lcom/begal/appclone/service/RemoteService$1;
.super Lcom/begal/appclone/service/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/service/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/begal/appclone/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/begal/appclone/service/RemoteService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/begal/appclone/service/RemoteService;

    .line 27
    iput-object p1, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-direct {p0}, Lcom/begal/appclone/service/IRemoteService$Stub;-><init>()V

    return-void
.end method

.method private checkCaller()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-static {v0}, Lcom/begal/appclone/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 33
    :cond_e
    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/begal/appclone/service/RemoteService$1;->checkCaller()V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceFiles()[Ljava/lang/String;
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/begal/appclone/service/RemoteService$1;->checkCaller()V

    .line 57
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-static {v0}, Lcom/begal/appclone/classes/PreferenceEditor;->getPreferenceFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "preferenceFile"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/begal/appclone/service/RemoteService$1;->checkCaller()V

    .line 64
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-static {v0, p1}, Lcom/begal/appclone/classes/PreferenceEditor;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public killAppProcesses()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-virtual {v0}, Lcom/begal/appclone/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "context":Landroid/content/Context;
    const-string v1, "util.Utils"

    const-string v2, "killAppProcesses"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 50
    .end local v0    # "context":Landroid/content/Context;
    nop

    .line 51
    return-void

    .line 48
    :catch_15
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "preferenceFile"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "preference"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/begal/appclone/service/RemoteService$1;->checkCaller()V

    .line 71
    iget-object v0, p0, Lcom/begal/appclone/service/RemoteService$1;->this$0:Lcom/begal/appclone/service/RemoteService;

    invoke-static {v0, p1, p2, p3}, Lcom/begal/appclone/classes/PreferenceEditor;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
