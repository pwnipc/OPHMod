.class public abstract Lcom/begal/appclone/classes/service/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/begal/appclone/classes/service/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/service/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/service/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.begal.appclone.classes.service.IRemoteService"

.field static final TRANSACTION_getInterfaceVersion:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.begal.appclone.classes.service.IRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/begal/appclone/classes/service/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/begal/appclone/classes/service/IRemoteService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.begal.appclone.classes.service.IRemoteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/begal/appclone/classes/service/IRemoteService;

    if-eqz v1, :cond_14

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/begal/appclone/classes/service/IRemoteService;

    return-object v1

    .line 30
    :cond_14
    new-instance v1, Lcom/begal/appclone/classes/service/IRemoteService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/service/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_d

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :cond_d
    const-string v1, "com.begal.appclone.classes.service.IRemoteService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v0

    .line 47
    :cond_13
    const-string v1, "com.begal.appclone.classes.service.IRemoteService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/begal/appclone/classes/service/IRemoteService$Stub;->getInterfaceVersion()I

    move-result v1

    .line 49
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v0
.end method
