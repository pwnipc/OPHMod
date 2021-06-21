.class public final Lax;
.super Ljava/io/InputStream;
.source "Source"


# instance fields
.field public Code:Ljava/io/DataInputStream;

.field public I:I

.field private Z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    return-void
.end method

.method public static Code(I)Lax;
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 27
    new-instance v2, Lax;

    invoke-direct {v2}, Lax;-><init>()V

    .line 28
    and-int/lit16 v3, p0, 0x7fff

    .line 30
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lar;->n()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v2, Lax;->Code:Ljava/io/DataInputStream;

    .line 31
    invoke-static {}, Lar;->m()Lcg;

    move-result-object v4

    .line 33
    iget-object v0, v2, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 34
    iget-object v5, v2, Lax;->Code:Ljava/io/DataInputStream;

    invoke-static {v5, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 35
    iget-object v0, v2, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 37
    mul-int/lit8 v0, v3, 0x6

    add-int/lit8 v5, v0, 0x6

    .line 38
    iget-boolean v0, v4, Lcg;->Z:Z

    if-eqz v0, :cond_49

    iget-object v0, v4, Lcg;->Code:[I

    aget v0, v0, v3

    .line 40
    :goto_38
    iget-boolean v6, v4, Lcg;->Z:Z

    if-eqz v6, :cond_40

    iget-object v1, v4, Lcg;->I:[I

    aget v1, v1, v3

    :cond_40
    iput v1, v2, Lax;->I:I

    .line 41
    iget-object v1, v2, Lax;->Code:Ljava/io/DataInputStream;

    add-int/2addr v0, v5

    invoke-static {v1, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 43
    return-object v2

    :cond_49
    move v0, v1

    .line 38
    goto :goto_38
.end method

.method public static Code(ILjava/lang/String;)Lax;
    .registers 5

    .prologue
    .line 48
    invoke-static {p0}, Lar;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0, p1}, Lar;->Code(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lcn;->Code:Lcn;

    invoke-virtual {v2, v0, v1}, Lcn;->J(Ljava/lang/String;Ljava/lang/String;)Lax;

    move-result-object v0

    return-object v0
.end method

.method public static Code(Ljava/io/InputStream;I)Lax;
    .registers 4

    .prologue
    .line 55
    new-instance v0, Lax;

    invoke-direct {v0}, Lax;-><init>()V

    .line 56
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, v0, Lax;->Code:Ljava/io/DataInputStream;

    .line 57
    iput p1, v0, Lax;->I:I

    .line 58
    return-object v0
.end method


# virtual methods
.method public final B()J
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lax;->I:I

    if-le v0, v1, :cond_e

    .line 141
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 143
    :cond_e
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lax;->Z:I

    .line 144
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Code()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lax;->I:I

    return v0
.end method

.method public final I()I
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lax;->Z:I

    iget v1, p0, Lax;->I:I

    if-ne v0, v1, :cond_c

    .line 111
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 113
    :cond_c
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lax;->Z:I

    .line 114
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public final I(I)I
    .registers 4

    .prologue
    .line 155
    iget v0, p0, Lax;->I:I

    iget v1, p0, Lax;->Z:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 156
    iget-object v1, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-static {v1, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 157
    iget v1, p0, Lax;->Z:I

    add-int/2addr v1, v0

    iput v1, p0, Lax;->Z:I

    .line 158
    if-eq p1, v0, :cond_1b

    .line 160
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 162
    :cond_1b
    return p1
.end method

.method public final J()I
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lax;->I:I

    if-le v0, v1, :cond_e

    .line 131
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 133
    :cond_e
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lax;->Z:I

    .line 134
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public final Z()I
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lax;->I:I

    if-le v0, v1, :cond_e

    .line 121
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 123
    :cond_e
    iget v0, p0, Lax;->Z:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lax;->Z:I

    .line 124
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    .line 172
    return-void
.end method

.method public final read()I
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 79
    if-gez v0, :cond_a

    .line 81
    const/4 v0, -0x1

    .line 84
    :goto_9
    return v0

    .line 83
    :cond_a
    iget v1, p0, Lax;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lax;->Z:I

    goto :goto_9
.end method

.method public final read([BII)I
    .registers 7

    .prologue
    .line 94
    iget v0, p0, Lax;->Z:I

    iget v1, p0, Lax;->I:I

    if-ne v0, v1, :cond_e

    if-lez p3, :cond_e

    .line 96
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 98
    :cond_e
    iget-object v0, p0, Lax;->Code:Ljava/io/DataInputStream;

    iget v1, p0, Lax;->I:I

    iget v2, p0, Lax;->Z:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 99
    if-gez v0, :cond_25

    .line 101
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 103
    :cond_25
    iget v1, p0, Lax;->Z:I

    add-int/2addr v1, v0

    iput v1, p0, Lax;->Z:I

    .line 104
    return v0
.end method
