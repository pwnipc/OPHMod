.class public final Lat;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method private static Code(I[I)I
    .registers 3

    .prologue
    .line 89
    :cond_0
    aget v0, p1, p0

    if-nez v0, :cond_b

    .line 91
    add-int/lit8 p0, p0, 0x1

    .line 92
    array-length v0, p1

    if-ne p0, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_a
    return v0

    :cond_b
    array-length v0, p1

    sub-int/2addr v0, p0

    goto :goto_a
.end method

.method public static Code([I[I)[I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 30
    array-length v0, p1

    new-array v2, v0, [I

    .line 31
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [I

    .line 33
    invoke-static {v3, p0, p0}, Lat;->Code([I[I[I)[I

    .line 34
    invoke-static {v3, p1}, Lat;->I([I[I)V

    .line 35
    array-length v0, v3

    array-length v4, v2

    sub-int/2addr v0, v4

    array-length v4, v2

    invoke-static {v3, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 37
    :goto_17
    array-length v4, v3

    if-ge v0, v4, :cond_1f

    .line 39
    aput v1, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 42
    :cond_1f
    invoke-static {v3, v2, p0}, Lat;->Code([I[I[I)[I

    .line 43
    invoke-static {v3, p1}, Lat;->I([I[I)V

    .line 44
    array-length v0, v3

    array-length v4, v2

    sub-int/2addr v0, v4

    array-length v4, v2

    invoke-static {v3, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-object v2
.end method

.method private static Code([I[I[I)[I
    .registers 15

    .prologue
    const-wide v10, 0xffffffffL

    .line 51
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_3a

    .line 53
    aget v0, p2, v3

    int-to-long v0, v0

    and-long v4, v0, v10

    .line 54
    const-wide/16 v1, 0x0

    .line 56
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_33

    .line 58
    aget v6, p1, v0

    int-to-long v6, v6

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-int v8, v3, v0

    add-int/lit8 v8, v8, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 60
    add-int v6, v3, v0

    add-int/lit8 v6, v6, 0x1

    long-to-int v7, v1

    aput v7, p0, v6

    .line 62
    const/16 v6, 0x20

    ushr-long/2addr v1, v6

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 65
    :cond_33
    long-to-int v0, v1

    aput v0, p0, v3

    .line 51
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_9

    .line 68
    :cond_3a
    return-object p0
.end method

.method private static I([I[I)V
    .registers 18

    .prologue
    .line 73
    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lat;->Code(I[I)I

    move-result v2

    sub-int v8, v1, v2

    .line 74
    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lat;->Code(I[I)I

    move-result v2

    sub-int v9, v1, v2

    .line 75
    move-object/from16 v0, p0

    array-length v1, v0

    sub-int/2addr v1, v8

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int/2addr v2, v9

    sub-int/2addr v1, v2

    .line 76
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int/2addr v2, v9

    add-int/2addr v2, v1

    new-array v10, v2, [I

    .line 77
    mul-int/lit8 v1, v1, 0x20

    move v7, v1

    :goto_2b
    if-ltz v7, :cond_11a

    .line 79
    ushr-int/lit8 v1, v7, 0x5

    and-int/lit8 v11, v7, 0x1f

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v12, v2, v9

    if-nez v11, :cond_b2

    array-length v2, v10

    sub-int/2addr v2, v12

    sub-int/2addr v2, v1

    move-object/from16 v0, p1

    invoke-static {v0, v9, v10, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_40
    array-length v2, v10

    sub-int/2addr v2, v12

    sub-int v11, v2, v1

    .line 80
    :cond_44
    move-object/from16 v0, p0

    array-length v1, v0

    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lat;->Code(I[I)I

    move-result v2

    sub-int v2, v1, v2

    array-length v1, v10

    invoke-static {v11, v10}, Lat;->Code(I[I)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    array-length v3, v0

    sub-int/2addr v3, v2

    array-length v4, v10

    sub-int/2addr v4, v1

    if-eq v3, v4, :cond_e9

    move-object/from16 v0, p0

    array-length v3, v0

    sub-int v2, v3, v2

    array-length v3, v10

    sub-int v1, v3, v1

    sub-int v1, v2, v1

    :goto_67
    if-ltz v1, :cond_115

    .line 82
    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v3, v1, -0x1

    array-length v1, v10

    add-int/lit8 v2, v1, -0x1

    const/4 v1, 0x0

    move v4, v3

    :goto_73
    aget v3, p0, v4

    int-to-long v5, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v5, v12

    add-int/lit8 v3, v2, -0x1

    aget v2, v10, v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    sub-long/2addr v5, v12

    int-to-long v1, v1

    add-long/2addr v5, v1

    add-int/lit8 v2, v4, -0x1

    long-to-int v1, v5

    aput v1, p0, v4

    const/16 v1, 0x3f

    shr-long v12, v5, v1

    long-to-int v1, v12

    if-ge v3, v11, :cond_11b

    move v4, v2

    move-wide v2, v5

    :goto_98
    if-lt v4, v8, :cond_44

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gez v2, :cond_44

    aget v2, p0, v4

    int-to-long v2, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    int-to-long v5, v1

    add-long/2addr v2, v5

    add-int/lit8 v5, v4, -0x1

    long-to-int v6, v2

    aput v6, p0, v4

    move v4, v5

    goto :goto_98

    .line 79
    :cond_b2
    rsub-int/lit8 v13, v11, 0x20

    aget v2, p1, v9

    ushr-int v4, v2, v13

    if-eqz v4, :cond_bc

    add-int/lit8 v1, v1, 0x1

    :cond_bc
    array-length v2, v10

    sub-int/2addr v2, v12

    sub-int v3, v2, v1

    if-eqz v4, :cond_11f

    add-int/lit8 v2, v3, 0x1

    aput v4, v10, v3

    :goto_c6
    aget v4, p1, v9

    add-int/lit8 v3, v9, 0x1

    move v5, v4

    move v4, v3

    :goto_cc
    if-ge v4, v12, :cond_de

    aget v6, p1, v4

    add-int/lit8 v3, v2, 0x1

    shl-int/2addr v5, v11

    ushr-int v14, v6, v13

    or-int/2addr v5, v14

    aput v5, v10, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v6

    move v2, v3

    goto :goto_cc

    :cond_de
    add-int v3, v12, v9

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    shl-int/2addr v3, v11

    aput v3, v10, v2

    goto/16 :goto_40

    .line 80
    :cond_e9
    :goto_e9
    move-object/from16 v0, p0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_fb

    aget v3, p0, v2

    aget v4, v10, v1

    if-ne v3, v4, :cond_fb

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_fb
    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aget v1, v10, v1

    int-to-long v4, v1

    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    sub-long v1, v2, v4

    const/16 v3, 0x3f

    shr-long/2addr v1, v3

    long-to-int v1, v1

    goto/16 :goto_67

    .line 77
    :cond_115
    add-int/lit8 v1, v7, -0x1

    move v7, v1

    goto/16 :goto_2b

    .line 85
    :cond_11a
    return-void

    :cond_11b
    move v4, v2

    move v2, v3

    goto/16 :goto_73

    :cond_11f
    move v2, v3

    goto :goto_c6
.end method
