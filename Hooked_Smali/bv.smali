.class public abstract Lbv;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Code([BIIIII[Lbu;Z)Lbu;
    .registers 27

    .prologue
    .line 128
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    if-nez p6, :cond_8

    .line 130
    :cond_6
    const/4 v5, 0x0

    .line 501
    :cond_7
    :goto_7
    return-object v5

    .line 138
    :cond_8
    const/4 v11, 0x0

    .line 139
    sget-boolean v5, Ldb;->w:Z

    if-eqz v5, :cond_80

    invoke-static/range {p1 .. p3}, Lbv;->I([BII)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 160
    invoke-virtual/range {p0 .. p0}, Lbv;->Code()Ldc;

    move-result-object v5

    .line 163
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v5, v0, v1, v2}, Ldc;->Code([BII)Z

    move-result v6

    if-nez v6, :cond_25

    .line 166
    const/4 v5, 0x0

    goto :goto_7

    .line 169
    :cond_25
    invoke-interface {v5}, Ldc;->Code()I

    move-result v7

    .line 170
    invoke-interface {v5}, Ldc;->I()I

    move-result v8

    .line 171
    const/16 v5, 0x100

    move/from16 v0, p6

    if-ne v0, v5, :cond_43

    move v10, v8

    move v9, v7

    .line 185
    :goto_35
    if-ne v8, v10, :cond_39

    if-eq v7, v9, :cond_75

    .line 187
    :cond_39
    sget-object v5, Lar;->Code:Lci;

    invoke-interface {v5}, Lci;->t()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 189
    const/4 v5, 0x0

    goto :goto_7

    .line 179
    :cond_43
    if-ltz p6, :cond_379

    .line 181
    mul-int v5, v8, p6

    mul-int/lit16 v5, v5, 0x100

    const v6, 0xffff

    add-int/2addr v5, v6

    shr-int/lit8 v10, v5, 0x10

    .line 182
    const/4 v5, 0x1

    mul-int v6, v7, v10

    div-int/2addr v6, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_35

    .line 192
    :cond_58
    const/4 v11, 0x0

    .line 193
    if-gt v10, v8, :cond_5d

    if-le v9, v7, :cond_5e

    .line 195
    :cond_5d
    const/4 v11, 0x1

    .line 202
    :cond_5e
    const/4 v6, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lbv;->Code([IIIIII)Lbu;

    move-result-object v5

    .line 488
    :cond_65
    :goto_65
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lbu;->Z()I

    move-result v6

    if-nez v6, :cond_7

    .line 490
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_75
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p8

    invoke-virtual/range {v5 .. v10}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object v5

    goto :goto_65

    .line 213
    :cond_80
    aget-byte v5, p1, p2

    const/16 v6, 0x52

    if-eq v5, v6, :cond_92

    aget-byte v5, p1, p2

    const/16 v6, 0x43

    if-eq v5, v6, :cond_92

    aget-byte v5, p1, p2

    const/16 v6, 0x58

    if-ne v5, v6, :cond_1dd

    .line 216
    :cond_92
    aget-byte v5, p1, p2

    const/16 v6, 0x58

    if-ne v5, v6, :cond_f1

    .line 221
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    ushr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x7

    or-int v7, v5, v6

    .line 222
    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    or-int v8, v5, v6

    .line 230
    :goto_ba
    mul-int v5, v7, v8

    new-array v6, v5, [I

    .line 232
    aget-byte v5, p1, p2

    const/16 v9, 0x52

    if-ne v5, v9, :cond_fa

    .line 237
    add-int/lit8 v9, p2, 0x3

    .line 238
    const/4 v5, 0x0

    :goto_c7
    mul-int v10, v7, v8

    if-ge v5, v10, :cond_1d2

    .line 240
    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    add-int/lit8 v11, v9, 0x3

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    aput v10, v6, v5

    .line 238
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_c7

    .line 226
    :cond_f1
    add-int/lit8 v5, p2, 0x1

    aget-byte v7, p1, v5

    .line 227
    add-int/lit8 v5, p2, 0x2

    aget-byte v8, p1, v5

    goto :goto_ba

    .line 246
    :cond_fa
    aget-byte v5, p1, p2

    const/16 v9, 0x43

    if-ne v5, v9, :cond_166

    .line 252
    mul-int v5, v7, v8

    mul-int/lit8 v5, v5, 0x2

    new-array v9, v5, [B

    .line 253
    sget-object v5, Lar;->Code:Lci;

    invoke-interface {v5}, Lci;->x()Lby;

    move-result-object v5

    .line 254
    invoke-interface {v5, v9}, Lby;->Code([B)V

    .line 255
    add-int/lit8 v10, p2, 0x3

    add-int/lit8 v11, p3, -0x3

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v10, v11}, Lby;->setInput([BII)V

    .line 256
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-interface {v5, v10, v11, v12}, Lby;->read([BII)I

    .line 257
    invoke-interface {v5}, Lby;->end()V

    .line 259
    const/4 v5, 0x0

    :goto_122
    mul-int v10, v7, v8

    mul-int/lit8 v10, v10, 0x2

    if-ge v5, v10, :cond_1d2

    .line 262
    aget-byte v10, v9, v5

    and-int/lit16 v10, v10, 0xf0

    ushr-int/lit8 v10, v10, 0x4

    aget-byte v11, v9, v5

    and-int/lit16 v11, v11, 0xf0

    or-int/2addr v10, v11

    .line 263
    aget-byte v11, v9, v5

    and-int/lit8 v11, v11, 0xf

    shl-int/lit8 v11, v11, 0x4

    aget-byte v12, v9, v5

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    .line 264
    add-int/lit8 v5, v5, 0x1

    aget-byte v12, v9, v5

    and-int/lit16 v12, v12, 0xf0

    ushr-int/lit8 v12, v12, 0x4

    aget-byte v13, v9, v5

    and-int/lit16 v13, v13, 0xf0

    or-int/2addr v12, v13

    .line 265
    aget-byte v13, v9, v5

    and-int/lit8 v13, v13, 0xf

    shl-int/lit8 v13, v13, 0x4

    aget-byte v14, v9, v5

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    .line 268
    shr-int/lit8 v14, v5, 0x1

    shl-int/lit8 v10, v10, 0x18

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    shl-int/lit8 v11, v12, 0x8

    add-int/2addr v10, v11

    add-int/2addr v10, v13

    aput v10, v6, v14

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_122

    .line 277
    :cond_166
    mul-int v5, v7, v8

    mul-int/lit8 v5, v5, 0x3

    new-array v9, v5, [B

    .line 278
    sget-object v5, Lar;->Code:Lci;

    invoke-interface {v5}, Lci;->x()Lby;

    move-result-object v5

    .line 279
    invoke-interface {v5, v9}, Lby;->Code([B)V

    .line 280
    add-int/lit8 v10, p2, 0x4

    add-int/lit8 v11, p3, -0x4

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v10, v11}, Lby;->setInput([BII)V

    .line 281
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v9

    invoke-interface {v5, v10, v11, v12}, Lby;->read([BII)I

    .line 282
    invoke-interface {v5}, Lby;->end()V

    .line 286
    const/4 v5, 0x0

    :goto_188
    mul-int v10, v7, v8

    mul-int/lit8 v10, v10, 0x3

    if-ge v5, v10, :cond_1d2

    .line 291
    aget-byte v10, v9, v5

    and-int/lit16 v10, v10, 0xfc

    .line 292
    aget-byte v11, v9, v5

    shl-int/lit8 v11, v11, 0x6

    and-int/lit16 v11, v11, 0xf0

    add-int/lit8 v5, v5, 0x1

    aget-byte v12, v9, v5

    shr-int/lit8 v12, v12, 0x2

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    .line 293
    aget-byte v12, v9, v5

    shl-int/lit8 v12, v12, 0x4

    and-int/lit16 v12, v12, 0xf0

    add-int/lit8 v5, v5, 0x1

    aget-byte v13, v9, v5

    shr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xc

    or-int/2addr v12, v13

    .line 294
    aget-byte v13, v9, v5

    and-int/lit8 v13, v13, 0x3f

    shl-int/lit8 v13, v13, 0x2

    .line 298
    shr-int/lit8 v14, v10, 0x6

    or-int/2addr v10, v14

    .line 299
    shr-int/lit8 v14, v11, 0x6

    or-int/2addr v11, v14

    .line 300
    shr-int/lit8 v14, v12, 0x6

    or-int/2addr v12, v14

    .line 301
    shr-int/lit8 v14, v13, 0x6

    or-int/2addr v13, v14

    .line 303
    div-int/lit8 v14, v5, 0x3

    shl-int/lit8 v10, v10, 0x18

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    shl-int/lit8 v11, v12, 0x8

    add-int/2addr v10, v11

    add-int/2addr v10, v13

    aput v10, v6, v14

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_188

    .line 307
    :cond_1d2
    const/4 v9, 0x1

    move-object/from16 v5, p0

    move/from16 v10, p8

    invoke-virtual/range {v5 .. v10}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object v5

    goto/16 :goto_65

    .line 311
    :cond_1dd
    sget-boolean v5, Ldb;->t:Z

    if-nez v5, :cond_1e7

    aget-byte v5, p1, p2

    const/16 v6, -0x77

    if-ne v5, v6, :cond_265

    .line 313
    :cond_1e7
    const/16 v16, 0x0

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lbv;->Code([BIIZ)Lbu;

    move-result-object v5

    .line 332
    const/16 v6, 0x100

    move/from16 v0, p6

    if-ne v0, v6, :cond_221

    .line 334
    invoke-virtual {v5}, Lbu;->Z()I

    move-result v11

    .line 335
    invoke-virtual {v5}, Lbu;->I()I

    move-result v10

    .line 343
    :goto_205
    invoke-virtual {v5}, Lbu;->Z()I

    move-result v6

    if-ne v6, v11, :cond_211

    invoke-virtual {v5}, Lbu;->I()I

    move-result v6

    if-eq v6, v10, :cond_65

    .line 352
    :cond_211
    if-eqz p7, :cond_216

    .line 354
    const/4 v6, 0x0

    aput-object v5, p7, v6

    .line 357
    :cond_216
    sget-object v6, Lar;->Code:Lci;

    invoke-interface {v6}, Lci;->t()Z

    move-result v6

    if-eqz v6, :cond_241

    .line 359
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 337
    :cond_221
    if-ltz p6, :cond_373

    .line 339
    invoke-virtual {v5}, Lbu;->Z()I

    move-result v6

    mul-int v6, v6, p6

    mul-int/lit16 v6, v6, 0x100

    const v7, 0xffff

    add-int/2addr v6, v7

    shr-int/lit8 v11, v6, 0x10

    .line 340
    const/4 v6, 0x1

    invoke-virtual {v5}, Lbu;->I()I

    move-result v7

    mul-int/2addr v7, v11

    invoke-virtual {v5}, Lbu;->Z()I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_205

    .line 362
    :cond_241
    invoke-virtual {v5}, Lbu;->Z()I

    move-result v6

    if-gt v11, v6, :cond_24d

    invoke-virtual {v5}, Lbu;->I()I

    move-result v6

    if-le v10, v6, :cond_24f

    .line 364
    :cond_24d
    const/16 v16, 0x1

    .line 369
    :cond_24f
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Lbu;->I()I

    move-result v8

    invoke-virtual {v5}, Lbu;->Z()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v5 .. v17}, Lbu;->Code(IIIIIIIIIIIZ)Lbu;

    move-result-object v5

    goto/16 :goto_65

    .line 378
    :cond_265
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_29f

    .line 382
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 383
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Ldb;->Code([BII[I)V

    .line 384
    invoke-static {}, Ldb;->h()I

    move-result v5

    .line 385
    invoke-static {}, Ldb;->i()I

    move-result v6

    .line 386
    if-gtz v5, :cond_283

    .line 388
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 390
    :cond_283
    const/16 v7, 0x100

    move/from16 v0, p4

    mul-int/lit16 v8, v0, 0x100

    div-int v5, v8, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v7, 0x100

    move/from16 v0, p5

    mul-int/lit16 v8, v0, 0x100

    div-int v6, v8, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 401
    :cond_29f
    new-instance v5, Lbz;

    invoke-direct {v5}, Lbz;-><init>()V

    .line 402
    const/16 v6, 0x100

    move/from16 v0, p6

    if-ne v0, v6, :cond_2f0

    .line 405
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lbz;->Code([BIIIZ)I

    move-result v6

    .line 406
    if-nez v6, :cond_370

    iget v6, v5, Lbz;->Code:I

    if-eqz v6, :cond_370

    iget v6, v5, Lbz;->I:I

    if-eqz v6, :cond_370

    .line 408
    iget v6, v5, Lbz;->Code:I

    move/from16 v0, p4

    if-lt v6, v0, :cond_2cc

    iget v6, v5, Lbz;->I:I

    move/from16 v0, p5

    if-ge v6, v0, :cond_2df

    .line 411
    :cond_2cc
    iget-object v6, v5, Lbz;->Z:[I

    iget v7, v5, Lbz;->Code:I

    iget v8, v5, Lbz;->I:I

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lbv;->Code([IIIIII)Lbu;

    move-result-object v5

    goto/16 :goto_65

    .line 421
    :cond_2df
    iget-object v6, v5, Lbz;->Z:[I

    iget v7, v5, Lbz;->Code:I

    iget v8, v5, Lbz;->I:I

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p8

    invoke-virtual/range {v5 .. v10}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object v5

    goto/16 :goto_65

    .line 428
    :cond_2f0
    sget-object v6, Lar;->Code:Lci;

    invoke-interface {v6}, Lci;->t()Z

    move-result v6

    if-eqz v6, :cond_2fb

    .line 431
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 434
    :cond_2fb
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lbz;->Code([BIIIZ)I

    move-result v6

    .line 435
    const/high16 v7, -0x10000

    and-int/2addr v7, v6

    shr-int/lit8 v12, v7, 0x10

    .line 436
    const v7, 0xffff

    and-int v13, v6, v7

    .line 438
    const/4 v9, 0x3

    .line 440
    :goto_312
    const/16 v6, 0x100

    shr-int/2addr v6, v9

    move/from16 v0, p6

    if-gt v6, v0, :cond_31c

    .line 442
    add-int/lit8 v9, v9, -0x1

    goto :goto_312

    .line 445
    :cond_31c
    shr-int v6, v12, v9

    if-eqz v6, :cond_368

    shr-int v6, v13, v9

    if-eqz v6, :cond_368

    .line 447
    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lbz;->Code([BIIIZ)I

    move-result v6

    .line 448
    if-nez v6, :cond_365

    .line 450
    const/4 v6, -0x1

    move/from16 v0, p4

    if-eq v0, v6, :cond_33b

    const/4 v6, -0x1

    move/from16 v0, p5

    if-ne v0, v6, :cond_36b

    .line 452
    :cond_33b
    mul-int v6, v13, p6

    mul-int/lit16 v6, v6, 0x100

    const v7, 0xffff

    add-int/2addr v6, v7

    shr-int/lit8 v10, v6, 0x10

    .line 453
    mul-int v6, v12, p6

    mul-int/lit16 v6, v6, 0x100

    const v7, 0xffff

    add-int/2addr v6, v7

    shr-int/lit8 v9, v6, 0x10

    .line 456
    :goto_34f
    const/4 v11, 0x0

    .line 457
    iget v6, v5, Lbz;->Code:I

    if-lt v6, v9, :cond_358

    iget v6, v5, Lbz;->I:I

    if-ge v6, v10, :cond_359

    .line 461
    :cond_358
    const/4 v11, 0x1

    .line 463
    :cond_359
    iget-object v6, v5, Lbz;->Z:[I

    iget v7, v5, Lbz;->Code:I

    iget v8, v5, Lbz;->I:I

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lbv;->Code([IIIIII)Lbu;

    move-result-object v11

    :cond_365
    move-object v5, v11

    .line 474
    goto/16 :goto_65

    .line 478
    :cond_368
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_36b
    move/from16 v10, p5

    move/from16 v9, p4

    goto :goto_34f

    :cond_370
    move-object v5, v11

    goto/16 :goto_65

    :cond_373
    move/from16 v11, p5

    move/from16 v10, p4

    goto/16 :goto_205

    :cond_379
    move/from16 v10, p5

    move/from16 v9, p4

    goto/16 :goto_35
.end method

.method private static Code([IIIIII[IIIIIIIZ)V
    .registers 34

    .prologue
    .line 564
    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    if-eqz p9, :cond_8

    if-nez p10, :cond_9

    .line 755
    :cond_8
    :goto_8
    return-void

    .line 568
    :cond_9
    move/from16 v0, p3

    move/from16 v1, p9

    if-ne v0, v1, :cond_2d

    move/from16 v0, p4

    move/from16 v1, p10

    if-ne v0, v1, :cond_2d

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p11

    move/from16 v10, p3

    move/from16 v11, p4

    .line 570
    invoke-static/range {v2 .. v11}, Lbv;->Code([IIII[IIIIII)V

    goto :goto_8

    .line 575
    :cond_2d
    mul-int v2, p2, p5

    add-int v6, p1, v2

    .line 576
    mul-int v2, p8, p11

    add-int v5, p7, v2

    .line 578
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_be

    const/4 v2, 0x2

    move/from16 v0, p10

    if-lt v0, v2, :cond_be

    move/from16 v0, p3

    move/from16 v1, p9

    if-ne v0, v1, :cond_be

    .line 580
    add-int v10, v6, p3

    move v3, v5

    move v9, v6

    :goto_49
    if-ge v9, v10, :cond_8

    .line 583
    aget v2, p0, v9

    .line 584
    add-int v4, v9, p5

    aget v8, p0, v4

    .line 586
    shr-int/lit8 v4, v2, 0x8

    const/high16 v5, 0xff0000

    and-int v7, v4, v5

    .line 587
    const/high16 v4, 0xff0000

    and-int v6, v2, v4

    .line 588
    shl-int/lit8 v4, v2, 0x8

    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    .line 589
    shl-int/lit8 v2, v2, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v4, v2

    .line 591
    shr-int/lit8 v2, v8, 0x8

    const/high16 v11, 0xff0000

    and-int/2addr v2, v11

    sub-int/2addr v2, v7

    add-int/lit8 v11, p10, -0x1

    div-int v11, v2, v11

    .line 592
    const/high16 v2, 0xff0000

    and-int/2addr v2, v8

    sub-int/2addr v2, v6

    add-int/lit8 v12, p10, -0x1

    div-int v12, v2, v12

    .line 593
    shl-int/lit8 v2, v8, 0x8

    const/high16 v13, 0xff0000

    and-int/2addr v2, v13

    sub-int/2addr v2, v5

    add-int/lit8 v13, p10, -0x1

    div-int v13, v2, v13

    .line 594
    shl-int/lit8 v2, v8, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v2, v8

    sub-int/2addr v2, v4

    add-int/lit8 v8, p10, -0x1

    div-int v14, v2, v8

    .line 596
    const/4 v2, 0x0

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    move v2, v3

    :goto_92
    move/from16 v0, p10

    if-ge v4, v0, :cond_b8

    .line 598
    const/high16 v15, 0xff0000

    and-int/2addr v15, v8

    shl-int/lit8 v15, v15, 0x8

    const/high16 v16, 0xff0000

    and-int v16, v16, v7

    or-int v15, v15, v16

    const/high16 v16, 0xff0000

    and-int v16, v16, v6

    shr-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    shr-int/lit8 v16, v5, 0x10

    or-int v15, v15, v16

    aput v15, p6, v2

    .line 600
    add-int/2addr v8, v11

    .line 601
    add-int/2addr v7, v12

    .line 602
    add-int/2addr v6, v13

    .line 603
    add-int/2addr v5, v14

    .line 596
    add-int/lit8 v4, v4, 0x1

    add-int v2, v2, p11

    goto :goto_92

    .line 581
    :cond_b8
    add-int/lit8 v2, v9, 0x1

    add-int/lit8 v3, v3, 0x1

    move v9, v2

    goto :goto_49

    .line 609
    :cond_be
    move/from16 v0, p3

    mul-int/lit16 v2, v0, 0x100

    div-int v4, v2, p9

    .line 610
    move/from16 v0, p4

    mul-int/lit16 v2, v0, 0x100

    div-int v7, v2, p10

    .line 616
    const/16 v2, 0x200

    if-gt v4, v2, :cond_d2

    const/16 v2, 0x200

    if-le v7, v2, :cond_224

    :cond_d2
    const/4 v2, 0x0

    .line 627
    :goto_d3
    add-int/lit8 v8, p3, -0x1

    .line 628
    add-int/lit8 v9, p4, -0x1

    .line 631
    if-eqz v8, :cond_e5

    if-eqz v9, :cond_e5

    const/4 v3, 0x1

    move/from16 v0, p9

    if-eq v0, v3, :cond_e5

    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_e6

    .line 633
    :cond_e5
    const/4 v2, 0x0

    .line 636
    :cond_e6
    const/4 v3, 0x1

    if-ne v2, v3, :cond_230

    .line 638
    const/4 v2, 0x0

    move v4, v2

    :goto_eb
    move/from16 v0, p10

    if-ge v4, v0, :cond_8

    .line 642
    mul-int v2, v4, v9

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p10, -0x1

    div-int/2addr v2, v3

    .line 643
    and-int/lit16 v7, v2, 0xff

    .line 644
    ushr-int/lit8 v10, v2, 0x8

    .line 646
    const/4 v2, 0x0

    move v3, v2

    :goto_fc
    move/from16 v0, p9

    if-ge v3, v0, :cond_22b

    .line 650
    mul-int v2, v3, v8

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v11, p9, -0x1

    div-int/2addr v2, v11

    .line 651
    and-int/lit16 v11, v2, 0xff

    .line 652
    ushr-int/lit8 v2, v2, 0x8

    .line 654
    mul-int v12, p11, v4

    add-int/2addr v12, v5

    add-int/2addr v12, v3

    .line 657
    add-int/lit8 v13, v2, 0x1

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 658
    add-int/lit8 v14, v10, 0x1

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 660
    mul-int v15, p5, v10

    add-int/2addr v15, v6

    add-int/2addr v15, v2

    aget v15, p0, v15

    .line 661
    mul-int v16, p5, v10

    add-int v16, v16, v6

    add-int v16, v16, v13

    aget v16, p0, v16

    .line 662
    mul-int v17, p5, v14

    add-int v17, v17, v6

    add-int v2, v2, v17

    aget v17, p0, v2

    .line 663
    mul-int v2, p5, v14

    add-int/2addr v2, v6

    add-int/2addr v2, v13

    aget v13, p0, v2

    .line 690
    if-eqz p13, :cond_228

    ushr-int/lit8 v2, v15, 0x18

    rsub-int v14, v11, 0x100

    mul-int/2addr v2, v14

    rsub-int v14, v7, 0x100

    mul-int/2addr v2, v14

    ushr-int/lit8 v14, v16, 0x18

    mul-int/2addr v14, v11

    rsub-int v0, v7, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    add-int/2addr v2, v14

    ushr-int/lit8 v14, v17, 0x18

    rsub-int v0, v11, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    mul-int/2addr v14, v7

    add-int/2addr v2, v14

    ushr-int/lit8 v14, v13, 0x18

    mul-int/2addr v14, v11

    mul-int/2addr v14, v7

    add-int/2addr v2, v14

    ushr-int/lit8 v2, v2, 0x10

    shl-int/lit8 v2, v2, 0x18

    :goto_15e
    shr-int/lit8 v14, v15, 0x10

    and-int/lit16 v14, v14, 0xff

    rsub-int v0, v11, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    rsub-int v0, v7, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    shr-int/lit8 v18, v16, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v18, v18, v11

    rsub-int v0, v7, 0x100

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v14, v14, v18

    shr-int/lit8 v18, v17, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    rsub-int v0, v11, 0x100

    move/from16 v19, v0

    mul-int v18, v18, v19

    mul-int v18, v18, v7

    add-int v14, v14, v18

    shr-int/lit8 v18, v13, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v18, v18, v11

    mul-int v18, v18, v7

    add-int v14, v14, v18

    ushr-int/lit8 v14, v14, 0x10

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v2, v14

    shr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    rsub-int v0, v11, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    rsub-int v0, v7, 0x100

    move/from16 v18, v0

    mul-int v14, v14, v18

    shr-int/lit8 v18, v16, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v18, v18, v11

    rsub-int v0, v7, 0x100

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v14, v14, v18

    shr-int/lit8 v18, v17, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    rsub-int v0, v11, 0x100

    move/from16 v19, v0

    mul-int v18, v18, v19

    mul-int v18, v18, v7

    add-int v14, v14, v18

    shr-int/lit8 v18, v13, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v18, v18, v11

    mul-int v18, v18, v7

    add-int v14, v14, v18

    ushr-int/lit8 v14, v14, 0x10

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v2, v14

    and-int/lit16 v14, v15, 0xff

    rsub-int v15, v11, 0x100

    mul-int/2addr v14, v15

    rsub-int v15, v7, 0x100

    mul-int/2addr v14, v15

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff

    mul-int/2addr v15, v11

    rsub-int v0, v7, 0x100

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    rsub-int v0, v11, 0x100

    move/from16 v16, v0

    mul-int v15, v15, v16

    mul-int/2addr v15, v7

    add-int/2addr v14, v15

    and-int/lit16 v13, v13, 0xff

    mul-int/2addr v11, v13

    mul-int/2addr v11, v7

    add-int/2addr v11, v14

    ushr-int/lit8 v11, v11, 0x10

    add-int/2addr v2, v11

    aput v2, p6, v12

    .line 718
    if-nez p13, :cond_21f

    .line 720
    aget v2, p6, v12

    const/high16 v11, -0x1000000

    or-int/2addr v2, v11

    aput v2, p6, v12

    .line 646
    :cond_21f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_fc

    :cond_224
    move/from16 v2, p12

    .line 616
    goto/16 :goto_d3

    .line 690
    :cond_228
    const/4 v2, 0x0

    goto/16 :goto_15e

    .line 638
    :cond_22b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_eb

    .line 727
    :cond_230
    const/4 v2, 0x0

    move v3, v2

    :goto_232
    move/from16 v0, p10

    if-ge v3, v0, :cond_8

    .line 730
    mul-int v2, v3, v7

    ushr-int/lit8 v2, v2, 0x8

    .line 731
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 733
    const/4 v2, 0x0

    :goto_23f
    move/from16 v0, p9

    if-ge v2, v0, :cond_263

    .line 736
    mul-int v11, v2, v4

    ushr-int/lit8 v11, v11, 0x8

    .line 737
    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 738
    mul-int v12, p11, v3

    add-int/2addr v12, v5

    add-int/2addr v12, v2

    .line 742
    mul-int v13, p5, v10

    add-int/2addr v13, v6

    add-int/2addr v11, v13

    aget v11, p0, v11

    aput v11, p6, v12

    .line 748
    if-nez p13, :cond_260

    .line 750
    aget v11, p6, v12

    const/high16 v13, -0x1000000

    or-int/2addr v11, v13

    aput v11, p6, v12

    .line 733
    :cond_260
    add-int/lit8 v2, v2, 0x1

    goto :goto_23f

    .line 727
    :cond_263
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_232
.end method

.method private static Code([IIII[IIIIII)V
    .registers 13

    .prologue
    .line 761
    if-nez p8, :cond_3

    .line 771
    :cond_2
    return-void

    .line 765
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p9, :cond_2

    .line 767
    add-int v1, p2, v0

    mul-int/2addr v1, p3

    add-int/2addr v1, p1

    add-int v2, p6, v0

    mul-int/2addr v2, p7

    add-int/2addr v2, p5

    invoke-static {p0, v1, p4, v2, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static Code([IIIIIIIIIIZ)[I
    .registers 26

    .prologue
    .line 524
    const/4 v1, 0x2

    move/from16 v0, p9

    if-ne v0, v1, :cond_e9

    .line 526
    const/4 v13, 0x1

    .line 530
    :goto_6
    mul-int v1, p3, p4

    new-array v7, v1, [I

    .line 533
    const/4 v3, 0x0

    sub-int v1, p1, p5

    sub-int v4, v1, p7

    const/4 v9, 0x0

    sub-int v1, p3, p5

    sub-int v10, v1, p7

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v5, p6

    move/from16 v6, p1

    move/from16 v8, p5

    move/from16 v11, p6

    move/from16 v12, p3

    move/from16 v14, p10

    invoke-static/range {v1 .. v14}, Lbv;->Code([IIIIII[IIIIIIIZ)V

    .line 537
    sub-int v1, p1, p5

    sub-int v4, v1, p7

    sub-int v1, p2, p6

    sub-int v5, v1, p8

    sub-int v1, p3, p5

    sub-int v10, v1, p7

    sub-int v1, p4, p6

    sub-int v11, v1, p8

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v12, p3

    move/from16 v14, p10

    invoke-static/range {v1 .. v14}, Lbv;->Code([IIIIII[IIIIIIIZ)V

    .line 541
    sub-int v3, p2, p8

    sub-int v1, p1, p5

    sub-int v4, v1, p7

    sub-int v9, p4, p8

    sub-int v1, p3, p5

    sub-int v10, v1, p7

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v5, p8

    move/from16 v6, p1

    move/from16 v8, p5

    move/from16 v11, p8

    move/from16 v12, p3

    move/from16 v14, p10

    invoke-static/range {v1 .. v14}, Lbv;->Code([IIIIII[IIIIIIIZ)V

    .line 545
    const/4 v2, 0x0

    sub-int v1, p2, p6

    sub-int v5, v1, p8

    const/4 v8, 0x0

    sub-int v1, p4, p6

    sub-int v11, v1, p8

    move-object v1, p0

    move/from16 v3, p6

    move/from16 v4, p5

    move/from16 v6, p1

    move/from16 v9, p6

    move/from16 v10, p5

    move/from16 v12, p3

    move/from16 v14, p10

    invoke-static/range {v1 .. v14}, Lbv;->Code([IIIIII[IIIIIIIZ)V

    .line 549
    sub-int v2, p1, p7

    sub-int v1, p2, p6

    sub-int v5, v1, p8

    sub-int v8, p3, p7

    sub-int v1, p4, p6

    sub-int v11, v1, p8

    move-object v1, p0

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v6, p1

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p3

    move/from16 v14, p10

    invoke-static/range {v1 .. v14}, Lbv;->Code([IIIIII[IIIIIIIZ)V

    .line 553
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move/from16 v6, p1

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lbv;->Code([IIII[IIIIII)V

    .line 554
    const/4 v4, 0x0

    sub-int v5, p2, p8

    const/4 v8, 0x0

    sub-int v9, p4, p8

    move-object v3, p0

    move/from16 v6, p1

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lbv;->Code([IIII[IIIIII)V

    .line 555
    sub-int v4, p1, p7

    const/4 v5, 0x0

    sub-int v8, p3, p7

    const/4 v9, 0x0

    move-object v3, p0

    move/from16 v6, p1

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lbv;->Code([IIII[IIIIII)V

    .line 556
    sub-int v4, p1, p7

    sub-int v5, p2, p8

    sub-int v8, p3, p7

    sub-int v9, p4, p8

    move-object v3, p0

    move/from16 v6, p1

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lbv;->Code([IIII[IIIIII)V

    .line 557
    return-object v7

    :cond_e9
    move/from16 v13, p9

    goto/16 :goto_6
.end method

.method protected static I([BII)Z
    .registers 6

    .prologue
    const/16 v2, 0x46

    .line 784
    const/16 v0, 0x14

    if-lt p2, v0, :cond_42

    aget-byte v0, p0, p1

    const/16 v1, 0x52

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_42

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_42

    add-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, p1, 0x9

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, p1, 0xa

    aget-byte v0, p0, v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, p1, 0xb

    aget-byte v0, p0, v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method


# virtual methods
.method public abstract Code(II)Lbu;
.end method

.method public final Code([BIIII[Lbu;)Lbu;
    .registers 16

    .prologue
    .line 107
    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lbv;->Code([BIIIII[Lbu;Z)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public final Code([BIII[Lbu;Z)Lbu;
    .registers 16

    .prologue
    const/4 v4, -0x1

    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lbv;->Code([BIIIII[Lbu;Z)Lbu;

    move-result-object v0

    return-object v0
.end method

.method protected abstract Code([BIIZ)Lbu;
.end method

.method public final Code([BIZ)Lbu;
    .registers 11

    .prologue
    .line 84
    const/4 v2, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lbv;->Code([BIII[Lbu;Z)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public Code([IIIIII)Lbu;
    .registers 18

    .prologue
    .line 35
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v10}, Lbv;->Code([IIIIIIIIIIZ)[I

    move-result-object v1

    .line 38
    array-length v0, v1

    div-int v2, v0, p5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public abstract Code([IIIZZ)Lbu;
.end method

.method protected Code()Ldc;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract Code([BII)Ljava/lang/Object;
.end method
