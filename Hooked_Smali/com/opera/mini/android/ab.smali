.class public Lcom/opera/mini/android/ab;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Code(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
