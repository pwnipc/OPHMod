.class public final Lal;
.super Lah;
.source "Source"


# instance fields
.field public Code:I

.field public I:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lah;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lal;->Code:I

    .line 58
    return-void
.end method


# virtual methods
.method public final Code()B
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public final Code(Ljava/io/DataInput;I)I
    .registers 4

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lal;->Code:I

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lal;->I:[B

    .line 81
    iget-object v0, p0, Lal;->I:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, -0x1

    return v0
.end method
