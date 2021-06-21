.class public Lcom/opera/mini/android/ac;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ac;->Code:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Code()I
    .registers 1
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method static I()I
    .registers 1
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 36
    sget v0, Lcom/opera/mini/android/ac;->Code:I

    if-nez v0, :cond_14

    .line 37
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    sput v0, Lcom/opera/mini/android/ac;->Code:I

    .line 40
    :cond_14
    sget v0, Lcom/opera/mini/android/ac;->Code:I

    return v0
.end method
