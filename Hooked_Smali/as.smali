.class final Las;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method static Code([BI)Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v9, 0x3e

    const/4 v1, 0x0

    .line 9
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v5, v0, 0x3

    .line 10
    rem-int/lit8 v0, v5, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v6, v0, 0x4

    .line 11
    add-int v0, v5, v6

    new-array v7, v0, [B

    move v4, v1

    .line 12
    :goto_14
    if-ge v4, v5, :cond_60

    move v2, v1

    move v0, v1

    .line 15
    :goto_18
    const/4 v3, 0x6

    if-ge v2, v3, :cond_38

    .line 17
    shl-int/lit8 v3, v0, 0x1

    .line 18
    mul-int/lit8 v0, v4, 0x6

    add-int v8, v0, v2

    .line 20
    div-int/lit8 v0, v8, 0x8

    if-ge v0, p1, :cond_71

    .line 22
    div-int/lit8 v0, v8, 0x8

    add-int/lit8 v0, v0, 0x0

    aget-byte v0, p0, v0

    .line 24
    :goto_2b
    rem-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v8, v8, 0x7

    shr-int/2addr v0, v8

    and-int/lit8 v0, v0, 0x1

    or-int/2addr v3, v0

    .line 15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_18

    .line 27
    :cond_38
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_46

    .line 29
    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    .line 47
    :goto_3f
    int-to-byte v0, v0

    aput-byte v0, v7, v4

    .line 12
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_14

    .line 31
    :cond_46
    const/16 v2, 0x34

    if-ge v0, v2, :cond_50

    .line 33
    add-int/lit8 v0, v0, -0x1a

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_3f

    .line 35
    :cond_50
    if-ge v0, v9, :cond_58

    .line 37
    add-int/lit8 v0, v0, -0x34

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_3f

    .line 39
    :cond_58
    if-ne v0, v9, :cond_5d

    .line 41
    const/16 v0, 0x2b

    goto :goto_3f

    .line 45
    :cond_5d
    const/16 v0, 0x2f

    goto :goto_3f

    .line 49
    :cond_60
    :goto_60
    if-ge v1, v6, :cond_6b

    .line 51
    add-int v0, v5, v1

    const/16 v2, 0x3d

    aput-byte v2, v7, v0

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 53
    :cond_6b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_71
    move v0, v1

    goto :goto_2b
.end method

.method static Code(Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 62
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_72

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 66
    const/16 v7, 0x41

    if-lt v5, v7, :cond_44

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_44

    .line 68
    add-int/lit8 v5, v5, -0x41

    .line 94
    :goto_23
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v5, v4

    .line 95
    add-int/lit8 v4, v3, 0x6

    .line 96
    const/16 v3, 0x8

    if-lt v4, v3, :cond_7d

    .line 98
    add-int/lit8 v3, v4, -0x8

    shr-int v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    .line 99
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v6, v2

    add-int/lit8 v7, v4, -0x8

    shl-int/2addr v2, v7

    xor-int/2addr v5, v2

    .line 100
    add-int/lit8 v2, v4, -0x8

    move v4, v5

    move v8, v2

    move v2, v3

    move v3, v8

    .line 62
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 70
    :cond_44
    const/16 v7, 0x61

    if-lt v5, v7, :cond_51

    const/16 v7, 0x7a

    if-gt v5, v7, :cond_51

    .line 72
    add-int/lit8 v5, v5, -0x61

    add-int/lit8 v5, v5, 0x1a

    goto :goto_23

    .line 74
    :cond_51
    const/16 v7, 0x30

    if-lt v5, v7, :cond_5e

    const/16 v7, 0x39

    if-gt v5, v7, :cond_5e

    .line 76
    add-int/lit8 v5, v5, -0x30

    add-int/lit8 v5, v5, 0x34

    goto :goto_23

    .line 78
    :cond_5e
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_65

    .line 80
    const/16 v5, 0x3e

    goto :goto_23

    .line 82
    :cond_65
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_6c

    .line 84
    const/16 v5, 0x3f

    goto :goto_23

    .line 86
    :cond_6c
    const/16 v0, 0x3d

    if-eq v5, v0, :cond_72

    .line 88
    const/4 v0, 0x0

    .line 109
    :goto_71
    return-object v0

    .line 103
    :cond_72
    array-length v0, v6

    if-ne v2, v0, :cond_77

    move-object v0, v6

    .line 105
    goto :goto_71

    .line 107
    :cond_77
    new-array v0, v2, [B

    .line 108
    invoke-static {v6, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_71

    :cond_7d
    move v3, v4

    move v4, v5

    goto :goto_41
.end method
