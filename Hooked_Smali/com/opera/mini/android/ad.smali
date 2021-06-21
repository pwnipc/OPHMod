.class public Lcom/opera/mini/android/ad;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Landroid/content/Context;)Z
    .registers 2
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/opera/mini/android/ad;->Code:Landroid/os/PowerManager;

    if-nez v0, :cond_e

    .line 53
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/opera/mini/android/ad;->Code:Landroid/os/PowerManager;

    .line 55
    :cond_e
    sget-object v0, Lcom/opera/mini/android/ad;->Code:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method
