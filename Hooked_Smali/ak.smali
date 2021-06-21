.class public final Lak;
.super Lah;
.source "Source"


# instance fields
.field public B:Z

.field public C:I

.field public Code:[I

.field public I:B

.field public J:Z

.field public Z:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Lah;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lak;->Code:[I

    .line 276
    iput-byte v1, p0, Lak;->Z:B

    iput-byte v1, p0, Lak;->I:B

    .line 277
    iput v1, p0, Lak;->C:I

    .line 278
    return-void
.end method


# virtual methods
.method public final Code()B
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x4

    return v0
.end method

.method public final Code(Ljava/io/DataInput;I)I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 307
    and-int/lit8 v0, v3, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lak;->I:B

    .line 308
    and-int/lit8 v0, v3, 0x8

    if-nez v0, :cond_4b

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lak;->J:Z

    .line 309
    and-int/lit8 v0, v3, 0x70

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lak;->Z:B

    .line 310
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_4d

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lak;->B:Z

    .line 311
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lak;->C:I

    .line 312
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    .line 314
    new-array v3, v0, [I

    iput-object v3, p0, Lak;->Code:[I

    .line 315
    iget-object v3, p0, Lak;->Code:[I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    add-int/2addr v4, p2

    aput v4, v3, v2

    .line 316
    :goto_37
    if-ge v1, v0, :cond_4f

    .line 317
    iget-object v3, p0, Lak;->Code:[I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    iget-object v5, p0, Lak;->Code:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4b
    move v0, v2

    .line 308
    goto :goto_10

    :cond_4d
    move v0, v2

    .line 310
    goto :goto_1e

    .line 318
    :cond_4f
    iget-object v0, p0, Lak;->Code:[I

    aget v0, v0, v2

    return v0
.end method

.method protected final I()I
    .registers 2

    .prologue
    .line 301
    const/4 v0, -0x1

    return v0
.end method
