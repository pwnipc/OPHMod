.class public abstract Lcom/begal/appclone/service/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/begal/appclone/service/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/service/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/service/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.begal.appclone.service.IRemoteService"

.field static final TRANSACTION_getInterfaceVersion:I = 0x1

.field static final TRANSACTION_getPreferenceFiles:I = 0x3

.field static final TRANSACTION_getPreferences:I = 0x4

.field static final TRANSACTION_killAppProcesses:I = 0x2

.field static final TRANSACTION_setPreference:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/begal/appclone/service/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/begal/appclone/service/IRemoteService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/begal/appclone/service/IRemoteService;

    if-eqz v1, :cond_14

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/begal/appclone/service/IRemoteService;

    return-object v1

    .line 30
    :cond_14
    new-instance v1, Lcom/begal/appclone/service/IRemoteService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/begal/appclone/service/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_66

    packed-switch p1, :pswitch_data_6c

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 80
    :pswitch_e
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/begal/appclone/service/IRemoteService$Stub;->setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v1

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_26
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/begal/appclone/service/IRemoteService$Stub;->getPreferences(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 74
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 76
    return v1

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_3a
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/begal/appclone/service/IRemoteService$Stub;->getPreferenceFiles()[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 66
    return v1

    .line 55
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_4a
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/begal/appclone/service/IRemoteService$Stub;->killAppProcesses()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v1

    .line 47
    :pswitch_56
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/begal/appclone/service/IRemoteService$Stub;->getInterfaceVersion()I

    move-result v0

    .line 49
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v1

    .line 42
    .end local v0    # "_result":I
    :cond_66
    const-string v0, "com.begal.appclone.service.IRemoteService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_4a
        :pswitch_3a
        :pswitch_26
        :pswitch_e
    .end packed-switch
.end method
