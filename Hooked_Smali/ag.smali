.class public final Lag;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lag;->Code:Ljava/util/Vector;

    .line 357
    return-void
.end method

.method private Code(Lah;)V
    .registers 5

    .prologue
    .line 374
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_2b

    .line 376
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah;

    .line 377
    invoke-virtual {p1, v0}, Lah;->Code(Ljava/lang/Object;)I

    move-result v0

    .line 378
    if-nez v0, :cond_1f

    .line 382
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 392
    :goto_1e
    return-void

    .line 385
    :cond_1f
    if-lez v0, :cond_27

    .line 387
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e

    .line 374
    :cond_27
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 391
    :cond_2b
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e
.end method


# virtual methods
.method public final Code()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    return-object v0
.end method

.method public final Code(Ljava/io/InputStream;)V
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 427
    .line 428
    iget-object v0, p0, Lag;->Code:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 433
    new-instance v11, Laf;

    invoke-direct {v11, p1}, Laf;-><init>(Ljava/io/InputStream;)V

    .line 434
    invoke-virtual {v11}, Laf;->readByte()B

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1b

    invoke-virtual {v11}, Laf;->readByte()B

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_21

    .line 436
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_21
    move v1, v8

    move v9, v8

    .line 449
    :goto_23
    :try_start_23
    invoke-virtual {v11}, Laf;->readByte()B
    :try_end_26
    .catch Ljava/io/EOFException; {:try_start_23 .. :try_end_26} :catch_87

    move-result v0

    .line 456
    packed-switch v0, :pswitch_data_94

    .line 479
    :pswitch_2a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 459
    :pswitch_30
    if-eqz v9, :cond_38

    .line 461
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 467
    :cond_38
    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    .line 486
    :goto_3d
    invoke-virtual {v0, v11, v1}, Lah;->Code(Ljava/io/DataInput;I)I

    move-result v10

    .line 487
    instance-of v1, v0, Lak;

    if-eqz v1, :cond_7c

    move-object v6, v0

    .line 489
    check-cast v6, Lak;

    move v7, v8

    .line 490
    :goto_49
    iget-object v0, v6, Lak;->Code:[I

    array-length v0, v0

    if-ge v7, v0, :cond_7a

    .line 492
    new-instance v0, Laj;

    iget-object v1, v6, Lak;->Code:[I

    aget v1, v1, v7

    iget-byte v2, v6, Lak;->I:B

    iget-boolean v3, v6, Lak;->J:Z

    iget-byte v4, v6, Lak;->Z:B

    iget-boolean v5, v6, Lak;->B:Z

    iget v5, v6, Lak;->C:I

    invoke-direct/range {v0 .. v5}, Laj;-><init>(IBZBI)V

    invoke-direct {p0, v0}, Lag;->Code(Lah;)V

    .line 490
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_49

    .line 470
    :pswitch_68
    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    goto :goto_3d

    .line 473
    :pswitch_6e
    new-instance v0, Laj;

    invoke-direct {v0}, Laj;-><init>()V

    goto :goto_3d

    .line 476
    :pswitch_74
    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    goto :goto_3d

    :cond_7a
    move v1, v10

    .line 497
    goto :goto_23

    .line 500
    :cond_7c
    instance-of v1, v0, Lal;

    if-eqz v1, :cond_91

    .line 502
    const/4 v1, 0x1

    .line 505
    :goto_81
    invoke-direct {p0, v0}, Lag;->Code(Lah;)V

    move v9, v1

    move v1, v10

    goto :goto_23

    .line 453
    :catch_87
    move-exception v0

    .line 509
    if-nez v9, :cond_90

    .line 511
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 517
    :cond_90
    return-void

    :cond_91
    move v1, v9

    goto :goto_81

    .line 456
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_30
        :pswitch_68
        :pswitch_6e
        :pswitch_2a
        :pswitch_74
    .end packed-switch
.end method
