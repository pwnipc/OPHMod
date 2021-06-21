.class public Lcom/begal/appclone/classes/AppClonerNative;
.super Ljava/lang/Object;
.source "AppClonerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const-class v0, Lcom/begal/appclone/classes/AppClonerNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/AppClonerNative;->TAG:Ljava/lang/String;

    .line 16
    :try_start_8
    const-string v0, "appcloner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    .line 19
    goto :goto_14

    .line 17
    :catch_e
    move-exception v0

    .line 18
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/AppClonerNative;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native androidLogBufWrite(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native disableLogcatLogging()Z
.end method
