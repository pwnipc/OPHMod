.class final Laf;
.super Ljava/io/InputStream;
.source "Source"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final Code:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    iput-object p1, p0, Laf;->Code:Ljava/io/InputStream;

    .line 12
    return-void
.end method

.method private Code()I
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Laf;->Code:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 77
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 78
    :cond_f
    return v0
.end method

.method private I()I
    .registers 4

    .prologue
    .line 93
    invoke-direct {p0}, Laf;->Code()I

    move-result v1

    .line 94
    and-int/lit8 v0, v1, 0x7f

    .line 95
    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    .line 97
    shl-int/lit8 v0, v0, 0x7

    .line 98
    invoke-direct {p0}, Laf;->Code()I

    move-result v1

    .line 99
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_6

    .line 101
    :cond_14
    return v0
.end method


# virtual methods
.method public final read()I
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Laf;->Code:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Laf;->Code()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final readByte()B
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Laf;->Code()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final readChar()C
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Laf;->I()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 3

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final readFully([B)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Laf;->Code:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 64
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_f
    return-void
.end method

.method public final readFully([BII)V
    .registers 5

    .prologue
    .line 69
    iget-object v0, p0, Laf;->Code:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ge v0, p3, :cond_e

    .line 70
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 71
    :cond_e
    return-void
.end method

.method public final readInt()I
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Laf;->I()I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public final readLong()J
    .registers 3

    .prologue
    .line 48
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final readShort()S
    .registers 2

    .prologue
    .line 116
    invoke-direct {p0}, Laf;->I()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Laf;->Code()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Laf;->I()I

    move-result v0

    return v0
.end method

.method public final skipBytes(I)I
    .registers 4

    .prologue
    .line 58
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Laf;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
