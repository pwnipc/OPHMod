.class public Lcom/opera/mini/android/u;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ldc;


# instance fields
.field private Code:J

.field private I:I

.field private Z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native Code([BIIII)Z
.end method

.method private native Code([BII[I)Z
.end method


# virtual methods
.method public final Code()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/opera/mini/android/u;->I:I

    return v0
.end method

.method public final Code([BII)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 32
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/opera/mini/android/u;->Code([BII[I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 45
    :cond_a
    :goto_a
    return v0

    .line 36
    :cond_b
    aget v2, v1, v0

    iput v2, p0, Lcom/opera/mini/android/u;->I:I

    .line 37
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/opera/mini/android/u;->Z:I

    .line 38
    iget v1, p0, Lcom/opera/mini/android/u;->I:I

    iget v2, p0, Lcom/opera/mini/android/u;->Z:I

    mul-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 45
    iget v4, p0, Lcom/opera/mini/android/u;->I:I

    iget v5, p0, Lcom/opera/mini/android/u;->Z:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/u;->Code([BIIII)Z

    move-result v0

    goto :goto_a
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/opera/mini/android/u;->Z:I

    return v0
.end method

.method public final Z()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/opera/mini/android/u;->Code:J

    return-wide v0
.end method
