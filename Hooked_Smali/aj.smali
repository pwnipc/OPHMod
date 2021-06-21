.class public final Laj;
.super Lah;
.source "Source"


# instance fields
.field private B:I

.field public Code:B

.field public I:B

.field public J:I

.field public Z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Lah;-><init>()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Laj;->B:I

    .line 199
    iput-byte v1, p0, Laj;->I:B

    iput-byte v1, p0, Laj;->Code:B

    .line 200
    iput v1, p0, Laj;->J:I

    .line 201
    return-void
.end method

.method public constructor <init>(IBZBI)V
    .registers 6

    .prologue
    .line 205
    invoke-direct {p0}, Lah;-><init>()V

    .line 206
    iput p1, p0, Laj;->B:I

    .line 209
    iput-byte p2, p0, Laj;->Code:B

    .line 210
    iput-boolean p3, p0, Laj;->Z:Z

    .line 211
    iput-byte p4, p0, Laj;->I:B

    .line 212
    iput p5, p0, Laj;->J:I

    .line 216
    return-void
.end method


# virtual methods
.method public final Code()B
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x2

    return v0
.end method

.method public final Code(Ljava/io/DataInput;I)I
    .registers 5

    .prologue
    .line 230
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Laj;->B:I

    .line 231
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 232
    and-int/lit8 v0, v1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Laj;->Code:B

    .line 233
    and-int/lit8 v0, v1, 0x8

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Laj;->Z:Z

    .line 234
    and-int/lit8 v0, v1, 0x70

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Laj;->I:B

    .line 235
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Laj;->J:I

    .line 239
    iget v0, p0, Laj;->B:I

    return v0

    .line 233
    :cond_27
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Laj;->B:I

    return v0
.end method
