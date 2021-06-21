.class final Lcom/opera/mini/android/Browser$2;
.super Ljava/util/HashSet;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/Browser;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 239
    const-string v0, "LogicPD Zoom2"

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser$2;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method
