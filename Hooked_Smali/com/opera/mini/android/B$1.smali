.class final Lcom/opera/mini/android/B$1;
.super Ljava/lang/ThreadLocal;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/B;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    const/16 v0, 0x100

    new-array v0, v0, [C

    return-object v0
.end method
