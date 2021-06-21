.class public final Lai;
.super Lah;
.source "Source"


# instance fields
.field public Code:I

.field public I:I

.field private J:I

.field public Z:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 116
    invoke-direct {p0}, Lah;-><init>()V

    .line 117
    iput v0, p0, Lai;->J:I

    .line 118
    iput v0, p0, Lai;->Code:I

    .line 119
    iput v0, p0, Lai;->I:I

    .line 120
    return-void
.end method


# virtual methods
.method public final Code()B
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public final Code(Ljava/io/DataInput;I)I
    .registers 5

    .prologue
    .line 158
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lai;->J:I

    .line 159
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lai;->Code:I

    .line 160
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lai;->I:I

    .line 161
    iget v0, p0, Lai;->Code:I

    iget v1, p0, Lai;->I:I

    if-le v0, v1, :cond_27

    iget v0, p0, Lai;->Code:I

    :goto_1b
    new-array v0, v0, [B

    iput-object v0, p0, Lai;->Z:[B

    .line 162
    iget-object v0, p0, Lai;->Z:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 163
    iget v0, p0, Lai;->J:I

    return v0

    .line 161
    :cond_27
    iget v0, p0, Lai;->I:I

    goto :goto_1b
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lai;->J:I

    return v0
.end method
