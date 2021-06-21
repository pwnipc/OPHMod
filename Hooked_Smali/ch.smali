.class public final Lch;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Lbs;

.field private I:[B

.field private Z:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lch;->I:[B

    .line 13
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lch;->Z:[B

    return-void
.end method


# virtual methods
.method public final Code([BI)V
    .registers 5

    .prologue
    .line 18
    new-instance v0, Lbs;

    const/16 v1, 0x20

    invoke-direct {v0, p1, p2, v1}, Lbs;-><init>([BII)V

    iput-object v0, p0, Lch;->Code:Lbs;

    .line 19
    return-void
.end method

.method public final I([BI)V
    .registers 7

    .prologue
    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 23
    move v0, p2

    :goto_4
    if-ge v0, v2, :cond_d

    .line 25
    iget-object v1, p0, Lch;->I:[B

    aput-byte v3, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 27
    :cond_d
    iget-object v0, p0, Lch;->I:[B

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->I:[B

    invoke-virtual {v0, v1, v3, v2}, Lbs;->Code([BII)V

    .line 29
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->Z:[B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v3, v2}, Lbs;->I([BII)V

    .line 30
    return-void
.end method

.method public final Z([BI)V
    .registers 8

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->Z:[B

    invoke-virtual {v0, v1, v3, v4}, Lbs;->Code([BII)V

    .line 39
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->I:[B

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v3, v2}, Lbs;->Code([BII)V

    .line 40
    iget-object v0, p0, Lch;->Code:Lbs;

    invoke-virtual {v0, p1, p2, v4}, Lbs;->I([BII)V

    .line 42
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->Z:[B

    invoke-virtual {v0, v1, v3, v4}, Lbs;->Code([BII)V

    .line 43
    iget-object v0, p0, Lch;->Code:Lbs;

    iget-object v1, p0, Lch;->Z:[B

    invoke-virtual {v0, v1, v3, v4}, Lbs;->I([BII)V

    .line 44
    return-void
.end method
