.class public final Lbs;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Lcq;

.field private I:[B

.field private J:[B

.field private Z:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x40

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v2, Lcq;

    invoke-direct {v2}, Lcq;-><init>()V

    iput-object v2, p0, Lbs;->Code:Lcq;

    .line 11
    new-array v2, v0, [B

    iput-object v2, p0, Lbs;->I:[B

    .line 12
    new-array v2, v0, [B

    iput-object v2, p0, Lbs;->Z:[B

    .line 14
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lbs;->J:[B

    .line 19
    if-le p3, v0, :cond_30

    .line 21
    iget-object v2, p0, Lbs;->Code:Lcq;

    invoke-virtual {v2, p1, p2, p3}, Lcq;->Code([BII)V

    .line 24
    new-array p1, v0, [B

    .line 25
    iget-object v2, p0, Lbs;->Code:Lcq;

    invoke-virtual {v2, p1}, Lcq;->Code([B)V

    .line 26
    iget-object v2, p0, Lbs;->Code:Lcq;

    invoke-virtual {v2}, Lcq;->Code()V

    move p3, v0

    move p2, v1

    .line 28
    :cond_30
    iget-object v2, p0, Lbs;->I:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v2, p0, Lbs;->Z:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    .line 30
    :goto_3b
    if-ge v2, v0, :cond_52

    .line 32
    iget-object v3, p0, Lbs;->Z:[B

    aget-byte v4, v3, v2

    xor-int/lit8 v4, v4, 0x36

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 33
    iget-object v3, p0, Lbs;->I:[B

    aget-byte v4, v3, v2

    xor-int/lit8 v4, v4, 0x5c

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 36
    :cond_52
    iget-object v2, p0, Lbs;->Code:Lcq;

    iget-object v3, p0, Lbs;->Z:[B

    invoke-virtual {v2, v3, v1, v0}, Lcq;->Code([BII)V

    .line 37
    return-void
.end method


# virtual methods
.method public final Code(I)V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lbs;->Code:Lcq;

    invoke-virtual {v0, p1}, Lcq;->Code(I)V

    .line 42
    return-void
.end method

.method public final Code([BII)V
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lbs;->Code:Lcq;

    invoke-virtual {v0, p1, p2, p3}, Lcq;->Code([BII)V

    .line 47
    return-void
.end method

.method public final I([BII)V
    .registers 9

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lbs;->Code:Lcq;

    iget-object v1, p0, Lbs;->J:[B

    invoke-virtual {v0, v1}, Lcq;->Code([B)V

    .line 57
    iget-object v0, p0, Lbs;->Code:Lcq;

    iget-object v1, p0, Lbs;->I:[B

    invoke-virtual {v0, v1, v3, v4}, Lcq;->Code([BII)V

    .line 58
    iget-object v0, p0, Lbs;->Code:Lcq;

    iget-object v1, p0, Lbs;->J:[B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v3, v2}, Lcq;->Code([BII)V

    .line 59
    iget-object v0, p0, Lbs;->Code:Lcq;

    iget-object v1, p0, Lbs;->J:[B

    invoke-virtual {v0, v1}, Lcq;->Code([B)V

    .line 60
    iget-object v0, p0, Lbs;->J:[B

    invoke-static {v0, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v0, p0, Lbs;->Code:Lcq;

    iget-object v1, p0, Lbs;->Z:[B

    invoke-virtual {v0, v1, v3, v4}, Lcq;->Code([BII)V

    .line 63
    return-void
.end method
