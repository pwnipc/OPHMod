.class public final Lcl;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:[B

.field private I:I

.field private Z:I


# direct methods
.method public constructor <init>([B)V
    .registers 9

    .prologue
    const/16 v6, 0x100

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v1, v6, [B

    iput-object v1, p0, Lcl;->Code:[B

    .line 29
    iput v0, p0, Lcl;->I:I

    .line 30
    iput v0, p0, Lcl;->Z:I

    .line 39
    iput v0, p0, Lcl;->I:I

    .line 40
    iput v0, p0, Lcl;->Z:I

    move v1, v0

    .line 42
    :goto_13
    if-ge v1, v6, :cond_1d

    .line 44
    iget-object v2, p0, Lcl;->Code:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    move v1, v0

    move v2, v0

    .line 50
    :goto_1f
    if-ge v0, v6, :cond_42

    .line 52
    aget-byte v3, p1, v2

    iget-object v4, p0, Lcl;->Code:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 54
    iget-object v3, p0, Lcl;->Code:[B

    aget-byte v3, v3, v0

    .line 55
    iget-object v4, p0, Lcl;->Code:[B

    iget-object v5, p0, Lcl;->Code:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v0

    .line 56
    iget-object v4, p0, Lcl;->Code:[B

    aput-byte v3, v4, v1

    .line 58
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x20

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 60
    :cond_42
    return-void
.end method


# virtual methods
.method public final Code([BII)V
    .registers 11

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_50

    .line 69
    iget v1, p0, Lcl;->I:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcl;->I:I

    .line 70
    iget-object v1, p0, Lcl;->Code:[B

    iget v2, p0, Lcl;->I:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcl;->Z:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcl;->Z:I

    .line 72
    iget-object v1, p0, Lcl;->Code:[B

    iget v2, p0, Lcl;->I:I

    aget-byte v1, v1, v2

    .line 73
    iget-object v2, p0, Lcl;->Code:[B

    iget v3, p0, Lcl;->I:I

    iget-object v4, p0, Lcl;->Code:[B

    iget v5, p0, Lcl;->Z:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 74
    iget-object v2, p0, Lcl;->Code:[B

    iget v3, p0, Lcl;->Z:I

    aput-byte v1, v2, v3

    .line 76
    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcl;->Code:[B

    iget-object v4, p0, Lcl;->Code:[B

    iget v5, p0, Lcl;->I:I

    aget-byte v4, v4, v5

    iget-object v5, p0, Lcl;->Code:[B

    iget v6, p0, Lcl;->Z:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_50
    return-void
.end method
