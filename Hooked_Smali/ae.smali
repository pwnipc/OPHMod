.class public final Lae;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:I

.field private I:I

.field private J:I

.field private Z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lae;->Code:I

    .line 10
    iput v1, p0, Lae;->I:I

    .line 11
    iput v1, p0, Lae;->Z:I

    .line 12
    iput v1, p0, Lae;->J:I

    .line 13
    return-void
.end method

.method public final Code([BII)V
    .registers 9

    .prologue
    const v4, 0xfff1

    .line 17
    iget v0, p0, Lae;->J:I

    add-int/2addr v0, p3

    iput v0, p0, Lae;->J:I

    .line 19
    :goto_8
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_38

    .line 21
    iget v1, p0, Lae;->Z:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae;->Z:I

    const/16 v2, 0xad7

    if-ne v1, v2, :cond_23

    .line 23
    iget v1, p0, Lae;->Code:I

    rem-int/2addr v1, v4

    iput v1, p0, Lae;->Code:I

    .line 24
    iget v1, p0, Lae;->I:I

    rem-int/2addr v1, v4

    iput v1, p0, Lae;->I:I

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lae;->Z:I

    .line 28
    :cond_23
    iget v2, p0, Lae;->Code:I

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    iput v2, p0, Lae;->Code:I

    .line 29
    iget v2, p0, Lae;->I:I

    iget v3, p0, Lae;->Code:I

    add-int/2addr v2, v3

    iput v2, p0, Lae;->I:I

    move p3, v0

    move p2, v1

    goto :goto_8

    .line 31
    :cond_38
    return-void
.end method

.method public final I()[B
    .registers 5

    .prologue
    const v1, 0xfff1

    .line 35
    iget v0, p0, Lae;->Code:I

    rem-int/2addr v0, v1

    iput v0, p0, Lae;->Code:I

    .line 36
    iget v0, p0, Lae;->I:I

    rem-int/2addr v0, v1

    iput v0, p0, Lae;->I:I

    .line 38
    iget v0, p0, Lae;->I:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lae;->Code:I

    or-int/2addr v0, v1

    .line 39
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 41
    const/4 v2, 0x3

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 42
    const/4 v2, 0x2

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 43
    const/4 v2, 0x1

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 44
    const/4 v2, 0x0

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 46
    return-object v1
.end method
