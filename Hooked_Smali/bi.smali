.class public Lbi;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:[Lcc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcc;

    iput-object v0, p0, Lbi;->Code:[Lcc;

    return-void
.end method


# virtual methods
.method Code()I
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lbi;->Code:[Lcc;

    array-length v0, v0

    return v0
.end method

.method Code(I)Lcc;
    .registers 3

    .prologue
    .line 13
    iget-object v0, p0, Lbi;->Code:[Lcc;

    aget-object v0, v0, p1

    return-object v0
.end method

.method final Code(ILcc;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 23
    iget-object v0, p0, Lbi;->Code:[Lcc;

    array-length v0, v0

    if-lt p1, v0, :cond_14

    .line 25
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcc;

    .line 26
    iget-object v1, p0, Lbi;->Code:[Lcc;

    iget-object v2, p0, Lbi;->Code:[Lcc;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput-object v0, p0, Lbi;->Code:[Lcc;

    .line 29
    :cond_14
    iget-object v0, p0, Lbi;->Code:[Lcc;

    aget-object v0, v0, p1

    if-eq v0, p2, :cond_2b

    .line 31
    iget-object v0, p0, Lbi;->Code:[Lcc;

    aget-object v0, v0, p1

    .line 32
    iget-object v1, p0, Lbi;->Code:[Lcc;

    aput-object p2, v1, p1

    .line 33
    if-eqz v0, :cond_28

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcc;->I(Lbi;I)V

    .line 37
    :cond_28
    invoke-virtual {p2, p0, p1}, Lcc;->I(Lbi;I)V

    .line 39
    :cond_2b
    return-void
.end method

.method final I(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lbi;->Code:[Lcc;

    aget-object v0, v0, p1

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lbi;->Code:[Lcc;

    aget-object v0, v0, p1

    .line 47
    iget-object v1, p0, Lbi;->Code:[Lcc;

    aput-object v2, v1, p1

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcc;->I(Lbi;I)V

    .line 50
    :cond_13
    return-void
.end method
