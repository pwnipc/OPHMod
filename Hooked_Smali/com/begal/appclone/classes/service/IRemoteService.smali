.class public interface abstract Lcom/begal/appclone/classes/service/IRemoteService;
.super Ljava/lang/Object;
.source "IRemoteService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/service/IRemoteService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
