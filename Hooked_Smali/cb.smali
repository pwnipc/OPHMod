.class final Lcb;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:[B

.field private static final I:[B

.field private static final Z:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x16e

    .line 23
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcb;->Code:[B

    new-array v0, v1, [B

    sput-object v0, Lcb;->I:[B

    .line 24
    new-array v0, v1, [I

    sput-object v0, Lcb;->Z:[I

    return-void
.end method

.method private static Code(IIII)I
    .registers 5

    .prologue
    .line 219
    .line 220
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_5

    .line 222
    sub-int/2addr p2, p3

    .line 224
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static Code()V
    .registers 7

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 31
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "/l"

    invoke-static {v2}, Ldb;->B(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_2f
    .catchall {:try_start_1 .. :try_end_c} :catchall_35

    .line 32
    :try_start_c
    sget-object v1, Lcb;->Code:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 33
    sget-object v1, Lcb;->I:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_17
    const/16 v2, 0x16e

    if-ge v1, v2, :cond_2b

    .line 37
    sget-object v3, Lcb;->Z:[I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_3f
    .catchall {:try_start_c .. :try_end_29} :catchall_3a

    move v1, v2

    goto :goto_17

    .line 47
    :cond_2b
    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 48
    :goto_2e
    return-void

    .line 47
    :catch_2f
    move-exception v0

    move-object v0, v1

    :goto_31
    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    goto :goto_2e

    :catchall_35
    move-exception v0

    :goto_36
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    throw v0

    :catchall_3a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_36

    :catch_3f
    move-exception v1

    goto :goto_31
.end method

.method public static Code([CIIILbp;Lau;)V
    .registers 23

    .prologue
    .line 58
    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    const/4 v3, 0x0

    const/4 v7, 0x0

    move v12, v3

    move v13, v4

    .line 60
    :goto_a
    if-ge v6, v14, :cond_145

    .line 62
    aget-char v9, p0, v6

    .line 63
    const/4 v3, 0x0

    .line 64
    add-int/lit8 v4, v6, 0x1

    if-ge v4, v14, :cond_17

    .line 66
    add-int/lit8 v3, v6, 0x1

    aget-char v3, p0, v3

    .line 68
    :cond_17
    invoke-static {v9}, Lcb;->I(C)I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_27

    invoke-static {v3}, Lcb;->I(C)I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_91

    :cond_27
    const/4 v4, 0x0

    :goto_28
    if-nez v4, :cond_34

    invoke-static {v9}, Lcb;->Code(C)Z

    move-result v4

    if-nez v4, :cond_34

    add-int/lit8 v4, v14, -0x1

    if-ne v6, v4, :cond_15d

    .line 70
    :cond_34
    const/4 v4, 0x0

    .line 71
    invoke-static {v9}, Lcb;->Code(C)Z

    move-result v8

    if-eqz v8, :cond_a1

    move v10, v9

    .line 72
    :goto_3c
    const/16 v8, 0xd

    if-ne v9, v8, :cond_a3

    const/16 v8, 0xa

    if-ne v3, v8, :cond_a3

    .line 75
    add-int/lit8 v4, v6, 0x1

    .line 76
    const/4 v3, 0x2

    .line 77
    const/4 v10, -0x1

    .line 84
    :goto_48
    sub-int v6, v4, v5

    add-int/lit8 v11, v6, 0x1

    .line 85
    sub-int v6, v4, v12

    add-int/lit8 v15, v6, 0x1

    .line 86
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12, v15}, Lbp;->Code([CII)I

    move-result v8

    .line 87
    if-eqz v3, :cond_165

    .line 89
    sub-int v6, v15, v3

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12, v6}, Lbp;->Code([CII)I

    move-result v6

    .line 97
    :goto_64
    add-int/2addr v6, v13

    move/from16 v0, p2

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v7, v0, v1, v2}, Lcb;->Code(IIII)I

    move-result v16

    move/from16 v0, v16

    if-le v6, v0, :cond_101

    .line 103
    if-eq v5, v12, :cond_b0

    .line 106
    sub-int v6, v12, v5

    .line 156
    :goto_77
    const/4 v10, 0x0

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v3 .. v10}, Lcb;->Code(Lau;[CIIIIII)Z

    move-result v3

    if-nez v3, :cond_145

    .line 158
    add-int/lit8 v7, v7, 0x1

    .line 161
    add-int v3, v5, v6

    .line 162
    const/4 v4, 0x0

    move v12, v3

    move v13, v4

    move v5, v3

    move v6, v3

    goto/16 :goto_a

    .line 68
    :cond_91
    invoke-static {v9}, Lcb;->I(C)I

    move-result v4

    if-nez v4, :cond_9f

    invoke-static {v3}, Lcb;->I(C)I

    move-result v4

    if-nez v4, :cond_9f

    const/4 v4, 0x0

    goto :goto_28

    :cond_9f
    const/4 v4, 0x1

    goto :goto_28

    .line 71
    :cond_a1
    const/4 v10, 0x0

    goto :goto_3c

    .line 79
    :cond_a3
    const/16 v3, 0x20

    if-eq v9, v3, :cond_ad

    invoke-static {v9}, Lcb;->Code(C)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 81
    :cond_ad
    const/4 v3, 0x1

    move v4, v6

    goto :goto_48

    .line 108
    :cond_b0
    sub-int v6, v15, v3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_162

    invoke-static {v9}, Ldb;->B(C)Z

    move-result v6

    if-eqz v6, :cond_c0

    sub-int v6, v15, v3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_162

    .line 135
    :cond_c0
    move/from16 v0, p2

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v7, v0, v1, v2}, Lcb;->Code(IIII)I

    move-result v6

    sub-int v8, v6, v13

    .line 139
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcb;->Code([CI)Z

    move-result v6

    if-eqz v6, :cond_f7

    const/4 v6, 0x2

    :goto_d5
    add-int/2addr v6, v12

    .line 141
    sub-int v3, v4, v3

    :goto_d8
    if-le v3, v6, :cond_f9

    .line 143
    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcb;->Code([CI)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 145
    add-int/lit8 v3, v3, -0x1

    .line 147
    :cond_e6
    sub-int v4, v3, v12

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12, v4}, Lbp;->Code([CII)I

    move-result v4

    .line 148
    if-le v4, v8, :cond_f9

    if-le v3, v6, :cond_f9

    .line 150
    add-int/lit8 v3, v3, -0x1

    goto :goto_d8

    .line 139
    :cond_f7
    const/4 v6, 0x1

    goto :goto_d5

    .line 153
    :cond_f9
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 154
    sub-int v6, v3, v5

    goto/16 :goto_77

    .line 164
    :cond_101
    invoke-static {v9}, Lcb;->Code(C)Z

    move-result v6

    if-nez v6, :cond_10b

    add-int/lit8 v6, v14, -0x1

    if-ne v4, v6, :cond_152

    .line 167
    :cond_10b
    invoke-static {v9}, Lcb;->Code(C)Z

    move-result v6

    if-eqz v6, :cond_146

    add-int v6, v5, v11

    if-ne v6, v14, :cond_146

    const/4 v6, 0x1

    move v12, v6

    .line 171
    :goto_117
    if-nez p3, :cond_11c

    if-nez p5, :cond_11c

    const/4 v3, 0x0

    .line 175
    :cond_11c
    sub-int v6, v11, v3

    add-int/lit8 v3, v14, -0x1

    if-ne v4, v3, :cond_149

    if-nez v12, :cond_149

    const/4 v9, 0x0

    :goto_125
    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v8, p2

    invoke-static/range {v3 .. v10}, Lcb;->Code(Lau;[CIIIIII)Z

    move-result v3

    if-nez v3, :cond_145

    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 186
    add-int v3, v5, v11

    .line 187
    const/4 v4, 0x0

    .line 189
    if-eqz v12, :cond_14c

    .line 192
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v8, p2

    invoke-static/range {v3 .. v10}, Lcb;->Code(Lau;[CIIIIII)Z

    .line 209
    :cond_145
    return-void

    .line 167
    :cond_146
    const/4 v6, 0x0

    move v12, v6

    goto :goto_117

    :cond_149
    move/from16 v9, p3

    .line 175
    goto :goto_125

    :cond_14c
    move v12, v3

    move v13, v4

    move v5, v3

    move v6, v3

    .line 195
    goto/16 :goto_a

    .line 199
    :cond_152
    add-int v6, v13, v8

    .line 200
    add-int v3, v12, v15

    .line 201
    add-int/lit8 v4, v4, 0x1

    move v12, v3

    move v13, v6

    move v6, v4

    .line 203
    goto/16 :goto_a

    .line 206
    :cond_15d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    .line 208
    goto/16 :goto_a

    :cond_162
    move v6, v11

    goto/16 :goto_77

    :cond_165
    move v6, v8

    goto/16 :goto_64

    :cond_168
    move v3, v4

    move v4, v6

    goto/16 :goto_48
.end method

.method public static Code(C)Z
    .registers 2

    .prologue
    .line 324
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1c

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static Code(Lau;[CIIIIII)Z
    .registers 15

    .prologue
    .line 245
    if-lez p5, :cond_2e

    add-int/lit8 v0, p5, -0x1

    if-lt p4, v0, :cond_2e

    const/4 v0, 0x1

    move v6, v0

    .line 247
    :goto_8
    if-eqz v6, :cond_1a

    if-eqz p6, :cond_1a

    if-lez p3, :cond_1a

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1a

    .line 251
    add-int/lit8 p3, p3, -0x1

    .line 255
    :cond_1a
    if-eqz p0, :cond_31

    .line 257
    add-int v4, p2, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p2

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lau;->Code([CIIII)V

    .line 258
    if-eqz v6, :cond_2d

    if-eqz p6, :cond_2d

    .line 260
    invoke-virtual {p0, p4}, Lau;->Code(I)V

    .line 268
    :cond_2d
    :goto_2d
    return v6

    .line 245
    :cond_2e
    const/4 v0, 0x0

    move v6, v0

    goto :goto_8

    .line 265
    :cond_31
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Lar;->Code([CII)V

    goto :goto_2d
.end method

.method private static Code([CI)Z
    .registers 3

    .prologue
    .line 273
    if-ltz p1, :cond_c

    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 275
    aget-char v0, p0, p1

    invoke-static {v0}, Ldb;->B(C)Z

    move-result v0

    .line 277
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static I(C)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 282
    const/16 v0, 0x100

    if-ge p0, v0, :cond_a

    .line 284
    sget-object v0, Lcb;->Code:[B

    aget-byte v1, v0, p0

    .line 298
    :cond_9
    :goto_9
    return v1

    .line 286
    :cond_a
    const v0, 0xfffd

    if-ge p0, v0, :cond_9

    .line 290
    sget-object v0, Lcb;->Z:[I

    array-length v0, v0

    move v2, v1

    .line 293
    :goto_13
    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    .line 294
    sget-object v3, Lcb;->Z:[I

    aget v3, v3, v1

    if-gt v3, p0, :cond_2c

    .line 296
    sget-object v2, Lcb;->Z:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-le v2, p0, :cond_2a

    .line 298
    sget-object v0, Lcb;->I:[B

    aget-byte v1, v0, v1

    goto :goto_9

    :cond_2a
    move v2, v1

    .line 300
    goto :goto_13

    :cond_2c
    move v0, v1

    .line 306
    goto :goto_13
.end method
