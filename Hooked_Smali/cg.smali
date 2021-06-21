.class public final Lcg;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field Code:[I

.field I:[I

.field public Z:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Ljava/io/DataInputStream;)V
    .registers 7

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 22
    invoke-static {p1, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 25
    new-array v0, v2, [I

    iput-object v0, p0, Lcg;->Code:[I

    .line 26
    new-array v0, v2, [I

    iput-object v0, p0, Lcg;->I:[I

    .line 27
    mul-int/lit8 v0, v2, 0x6

    add-int/lit8 v1, v0, -0x6

    .line 30
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_33

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    .line 34
    iget-object v3, p0, Lcg;->I:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 35
    iget-object v3, p0, Lcg;->Code:[I

    aput v1, v3, v0

    .line 36
    iget-object v3, p0, Lcg;->I:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, -0x6

    add-int/2addr v1, v3

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 38
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcg;->Z:Z

    .line 39
    return-void
.end method
