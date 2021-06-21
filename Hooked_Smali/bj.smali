.class final Lbj;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static B:Ljava/util/Hashtable;


# instance fields
.field private C:Lct;

.field private Code:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private Z:I

.field private a:Lbc;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:[Ljava/lang/Thread;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbj;->B:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lbj;->b:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lbj;->c:I

    .line 37
    iput v2, p0, Lbj;->d:I

    .line 38
    iput-boolean v2, p0, Lbj;->e:Z

    .line 39
    iput-boolean v2, p0, Lbj;->f:Z

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    .line 49
    iput-object p1, p0, Lbj;->Code:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lbj;->I:Ljava/lang/String;

    .line 51
    sget-object v0, Lbj;->B:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput p3, p0, Lbj;->Z:I

    .line 53
    iput-object p4, p0, Lbj;->J:Ljava/lang/String;

    .line 54
    if-nez p5, :cond_33

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lbj;->e:Z

    .line 55
    sget-boolean v0, Ldb;->q:Z

    if-nez v0, :cond_35

    :goto_30
    iput-boolean v1, p0, Lbj;->g:Z

    .line 56
    return-void

    :cond_33
    move v0, v2

    .line 54
    goto :goto_2a

    :cond_35
    move v1, v2

    .line 55
    goto :goto_30
.end method

.method private Code(Ljava/io/DataInputStream;)I
    .registers 5

    .prologue
    const/4 v0, 0x4

    .line 117
    new-array v1, v0, [B

    .line 119
    :goto_3
    if-eqz p1, :cond_13

    iget-boolean v2, p0, Lbj;->i:Z

    if-nez v2, :cond_13

    if-lez v0, :cond_13

    .line 121
    rsub-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_3

    .line 123
    :cond_13
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lap;->J([BI)I

    move-result v0

    return v0
.end method

.method public static Code(I)Lbj;
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lbj;->B:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    return-object v0
.end method

.method static synthetic Code(Lbj;)V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lbj;->d()V

    return-void
.end method

.method private static I(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 104
    if-ltz p0, :cond_4

    .line 110
    :cond_3
    :goto_3
    return v0

    :cond_4
    const v1, 0xffff

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private Z(I)V
    .registers 4

    .prologue
    .line 546
    :try_start_0
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 547
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lbj;->Z:I

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 548
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p1}, Lan;->c(I)V

    .line 549
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 551
    invoke-static {}, Ldb;->J()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 556
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method private b()V
    .registers 6

    .prologue
    .line 88
    iget-object v1, p0, Lbj;->j:[Ljava/lang/Thread;

    monitor-enter v1

    .line 91
    :try_start_3
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    .line 92
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 93
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 429
    new-instance v0, Lbj$1;

    invoke-direct {v0, p0}, Lbj$1;-><init>(Lbj;)V

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lbj;->b:I

    packed-switch v0, :pswitch_data_20

    .line 461
    :goto_5
    return-void

    .line 444
    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbj;->Z(I)V

    goto :goto_5

    .line 448
    :pswitch_b
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbj;->Z(I)V

    goto :goto_5

    .line 451
    :pswitch_10
    iget v0, p0, Lbj;->d:I

    iget v1, p0, Lbj;->c:I

    if-ne v0, v1, :cond_1b

    .line 453
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbj;->Z(I)V

    goto :goto_5

    .line 457
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbj;->Z(I)V

    goto :goto_5

    .line 441
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method private e()V
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x1

    iput v0, p0, Lbj;->b:I

    .line 466
    invoke-direct {p0}, Lbj;->g()V

    .line 467
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lbj;->d:I

    .line 499
    const/4 v0, 0x3

    iput v0, p0, Lbj;->b:I

    .line 500
    invoke-direct {p0}, Lbj;->g()V

    .line 501
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lbj;->h:Z

    .line 506
    iput-boolean v0, p0, Lbj;->i:Z

    .line 507
    invoke-direct {p0}, Lbj;->h()V

    .line 508
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lbj;->C:Lct;

    if-eqz v0, :cond_c

    .line 514
    iget-object v0, p0, Lbj;->C:Lct;

    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 515
    iput-object v1, p0, Lbj;->C:Lct;

    .line 517
    :cond_c
    iget-object v0, p0, Lbj;->a:Lbc;

    if-eqz v0, :cond_17

    .line 521
    :try_start_10
    iget-object v0, p0, Lbj;->a:Lbc;

    invoke-interface {v0}, Lbc;->Code()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_18

    .line 526
    :goto_15
    iput-object v1, p0, Lbj;->a:Lbc;

    .line 528
    :cond_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public final B()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 532
    iput-boolean v2, p0, Lbj;->f:Z

    .line 533
    iget-boolean v0, p0, Lbj;->e:Z

    if-eqz v0, :cond_13

    .line 535
    sget-object v0, Lar;->c:Lbk;

    iget-object v1, p0, Lbj;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbk;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 537
    iput-boolean v2, p0, Lbj;->e:Z

    .line 540
    :cond_13
    return-void
.end method

.method public final C()Z
    .registers 2

    .prologue
    .line 560
    iget-boolean v0, p0, Lbj;->e:Z

    return v0
.end method

.method public final Code()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lbj;->h:Z

    .line 66
    iget-object v1, p0, Lbj;->j:[Ljava/lang/Thread;

    monitor-enter v1

    .line 68
    :try_start_6
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_21

    .line 70
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v0, v2

    .line 71
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    :cond_1f
    :goto_1f
    monitor-exit v1

    return-void

    .line 73
    :cond_21
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_1f

    .line 75
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v0, v2

    .line 76
    iget-object v0, p0, Lbj;->j:[Ljava/lang/Thread;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    goto :goto_1f

    .line 78
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final I()V
    .registers 1

    .prologue
    .line 471
    invoke-direct {p0}, Lbj;->e()V

    .line 472
    invoke-direct {p0}, Lbj;->c()V

    .line 473
    return-void
.end method

.method public final J()V
    .registers 2

    .prologue
    .line 490
    const/4 v0, 0x0

    iput v0, p0, Lbj;->d:I

    .line 491
    const/4 v0, 0x2

    iput v0, p0, Lbj;->b:I

    .line 492
    invoke-direct {p0}, Lbj;->g()V

    .line 493
    invoke-direct {p0}, Lbj;->c()V

    .line 494
    return-void
.end method

.method public final Z()V
    .registers 2

    .prologue
    .line 483
    const/4 v0, 0x4

    iput v0, p0, Lbj;->b:I

    .line 484
    invoke-virtual {p0}, Lbj;->Code()V

    .line 485
    invoke-direct {p0}, Lbj;->c()V

    .line 486
    return-void
.end method

.method public final a()I
    .registers 2

    .prologue
    .line 565
    iget v0, p0, Lbj;->d:I

    return v0
.end method

.method public final declared-synchronized run()V
    .registers 18

    .prologue
    .line 128
    monitor-enter p0

    const/4 v4, 0x0

    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v2, 0x0

    .line 133
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->h:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_350
    .catchall {:try_start_4 .. :try_end_8} :catchall_341

    if-eqz v1, :cond_26

    .line 404
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 405
    const/4 v1, 0x0

    invoke-static {v1}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 406
    const/4 v1, 0x0

    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 407
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->f:Z

    if-nez v1, :cond_21

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbj;->B()V

    .line 419
    :cond_21
    invoke-direct/range {p0 .. p0}, Lbj;->b()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_190

    .line 420
    :goto_24
    monitor-exit p0

    return-void

    .line 137
    :cond_26
    const/4 v1, 0x0

    :try_start_27
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lbj;->i:Z

    .line 138
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lbj;->f:Z

    .line 139
    sget-object v5, Lar;->c:Lbk;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbj;->J:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->e:Z

    if-nez v1, :cond_11d

    const/4 v1, 0x1

    :goto_3d
    const/4 v7, 0x3

    invoke-virtual {v5, v6, v1, v7}, Lbk;->Code(Ljava/lang/String;ZI)Lbm;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_41} :catch_350
    .catchall {:try_start_27 .. :try_end_41} :catchall_341

    move-result-object v9

    .line 140
    :try_start_42
    invoke-interface {v9}, Lbm;->J()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lbj;->e:Z

    .line 141
    invoke-interface {v9}, Lbm;->I()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lbj;->J:Ljava/lang/String;

    .line 142
    const/4 v1, 0x0

    .line 143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lbj;->d:I

    .line 144
    move-object/from16 v0, p0

    iget v4, v0, Lbj;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6b

    .line 146
    invoke-interface {v9}, Lbm;->Z()J

    move-result-wide v4

    long-to-int v1, v4

    .line 147
    move-object/from16 v0, p0

    iput v1, v0, Lbj;->d:I

    .line 148
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    :cond_6b
    move v6, v1

    .line 150
    int-to-long v4, v6

    invoke-interface {v9, v4, v5}, Lbm;->Code(J)Ljava/io/OutputStream;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_70} :catch_353
    .catchall {:try_start_42 .. :try_end_70} :catchall_345

    move-result-object v8

    .line 152
    const/4 v1, 0x4

    :try_start_72
    move-object/from16 v0, p0

    iput v1, v0, Lbj;->b:I

    .line 153
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 155
    const/4 v1, -0x1

    .line 157
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 159
    :goto_7c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbj;->i:Z

    if-nez v3, :cond_241

    .line 161
    const/4 v5, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 163
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbj;->g:Z

    if-eqz v3, :cond_19a

    .line 166
    sget-object v3, Lar;->Code:Lci;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbj;->Code:Ljava/lang/String;

    invoke-static {v5}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v11, "GET"

    invoke-interface {v3, v5, v7, v11}, Lci;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbc;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lbj;->a:Lbc;

    .line 169
    if-lez v6, :cond_120

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lbj;->a:Lbc;

    const-string v5, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "bytes="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lbc;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lbj;->a:Lbc;

    const-string v5, "If-Range"

    move-object/from16 v0, p0

    iget-object v7, v0, Lbj;->k:Ljava/lang/String;

    invoke-interface {v3, v5, v7}, Lbc;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lbj;->a:Lbc;

    invoke-interface {v3}, Lbc;->J()I

    move-result v5

    .line 180
    if-nez v6, :cond_193

    const/16 v3, 0xc8

    :goto_da
    if-eq v5, v3, :cond_197

    const/4 v3, 0x1

    .line 183
    :goto_dd
    move-object/from16 v0, p0

    iget-object v5, v0, Lbj;->a:Lbc;

    invoke-interface {v5}, Lbc;->Z()Ljava/io/DataInputStream;

    move-result-object v2

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lbj;->a:Lbc;

    invoke-interface {v5}, Lbc;->B()J

    move-result-wide v11

    .line 186
    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-ltz v5, :cond_fd

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lbj;->a:Lbc;

    invoke-interface {v1}, Lbc;->B()J

    move-result-wide v11

    long-to-int v1, v11

    add-int/2addr v1, v6

    :cond_fd
    move v15, v3

    move v3, v1

    move v1, v4

    move v4, v15

    .line 248
    :goto_101
    if-eqz v4, :cond_363

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lbj;->Code:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbj;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21f

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lbj;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lbj;->Code:Ljava/lang/String;

    move v4, v1

    move v1, v3

    .line 253
    goto/16 :goto_7c

    .line 139
    :cond_11d
    const/4 v1, 0x0

    goto/16 :goto_3d

    .line 177
    :cond_120
    move-object/from16 v0, p0

    iget-object v3, v0, Lbj;->a:Lbc;

    const-string v5, "Last-Modified"

    invoke-interface {v3, v5}, Lbc;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lbj;->k:Ljava/lang/String;
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_12e} :catch_12f
    .catchall {:try_start_72 .. :try_end_12e} :catchall_348

    goto :goto_ce

    .line 378
    :catch_12f
    move-exception v1

    move-object v3, v8

    move-object v4, v9

    .line 380
    :goto_132
    :try_start_132
    move-object/from16 v0, p0

    iget v5, v0, Lbj;->b:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_169

    move-object/from16 v0, p0

    iget v5, v0, Lbj;->b:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_169

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbj;->i:Z

    if-nez v5, :cond_169

    move-object/from16 v0, p0

    iget v5, v0, Lbj;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lbj;->c:I

    if-lt v5, v6, :cond_157

    move-object/from16 v0, p0

    iget v5, v0, Lbj;->c:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_169

    .line 383
    :cond_157
    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_338

    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->al()Z

    move-result v1

    if-eqz v1, :cond_338

    .line 385
    invoke-direct/range {p0 .. p0}, Lbj;->e()V

    invoke-direct/range {p0 .. p0}, Lbj;->d()V
    :try_end_169
    .catchall {:try_start_132 .. :try_end_169} :catchall_33d

    .line 394
    :cond_169
    :goto_169
    :try_start_169
    invoke-interface {v4}, Lbm;->J()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lbj;->e:Z
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_169 .. :try_end_171} :catch_34d
    .catchall {:try_start_169 .. :try_end_171} :catchall_33d

    .line 404
    :goto_171
    :try_start_171
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 405
    invoke-static {v3}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 406
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 407
    if-eqz v4, :cond_17f

    .line 409
    invoke-interface {v4}, Lbm;->C()V

    .line 410
    :cond_17f
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->f:Z

    if-nez v1, :cond_18b

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbj;->B()V

    .line 419
    :cond_18b
    invoke-direct/range {p0 .. p0}, Lbj;->b()V
    :try_end_18e
    .catchall {:try_start_171 .. :try_end_18e} :catchall_190

    goto/16 :goto_24

    .line 128
    :catchall_190
    move-exception v1

    monitor-exit p0

    throw v1

    .line 180
    :cond_193
    const/16 v3, 0xce

    goto/16 :goto_da

    :cond_197
    const/4 v3, 0x0

    goto/16 :goto_dd

    .line 193
    :cond_19a
    const/16 v1, 0x7c

    :try_start_19c
    new-array v1, v1, [Ljava/lang/Object;

    .line 194
    const/16 v3, 0x7c

    new-array v3, v3, [I

    .line 195
    const/16 v7, 0x1d

    const/4 v11, 0x2

    aput v11, v3, v7

    .line 196
    const/16 v7, 0x25

    aput v6, v3, v7

    .line 198
    const/16 v7, 0x2b

    aget v11, v3, v7

    const/high16 v12, 0x1000000

    or-int/2addr v11, v12

    aput v11, v3, v7

    .line 200
    const/16 v7, 0x35

    move-object/from16 v0, p0

    iget-object v11, v0, Lbj;->Code:Ljava/lang/String;

    aput-object v11, v1, v7

    .line 201
    invoke-static {}, Ldb;->B()V

    .line 202
    move-object/from16 v0, p0

    iget-object v7, v0, Lbj;->I:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v11}, Lcz;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    invoke-static {v1, v3, v7, v11}, Lcs;->Code([Ljava/lang/Object;[IIZ)Lct;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lbj;->C:Lct;

    .line 204
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lbj;->C:Lct;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1da
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_1da} :catch_12f
    .catchall {:try_start_19c .. :try_end_1da} :catchall_348

    .line 206
    :try_start_1da
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbj;->Code(Ljava/io/DataInputStream;)I

    move-result v2

    .line 207
    if-gtz v2, :cond_368

    .line 211
    invoke-static {v2}, Lbj;->I(I)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 213
    const/high16 v1, 0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_1f2

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_1fd

    .line 217
    :cond_1f2
    const/4 v1, 0x1

    move v15, v1

    move v1, v4

    move v4, v15

    move/from16 v16, v2

    move-object v2, v3

    move/from16 v3, v16

    goto/16 :goto_101

    .line 221
    :cond_1fd
    const/4 v4, 0x1

    .line 222
    const/high16 v1, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_210

    const/4 v10, 0x1

    .line 225
    :goto_204
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lbj;->Code(Ljava/io/DataInputStream;)I
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_209} :catch_357
    .catchall {:try_start_1da .. :try_end_209} :catchall_34a

    move-result v1

    move-object v2, v3

    move v3, v1

    move v1, v4

    move v4, v5

    goto/16 :goto_101

    .line 222
    :cond_210
    const/4 v10, 0x0

    goto :goto_204

    .line 232
    :cond_212
    if-gez v2, :cond_368

    .line 234
    const/4 v1, 0x1

    move v15, v1

    move v1, v4

    move v4, v15

    move/from16 v16, v2

    move-object v2, v3

    move/from16 v3, v16

    goto/16 :goto_101

    .line 257
    :cond_21f
    :try_start_21f
    invoke-direct/range {p0 .. p0}, Lbj;->f()V
    :try_end_222
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_222} :catch_12f
    .catchall {:try_start_21f .. :try_end_222} :catchall_348

    .line 404
    :try_start_222
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 405
    invoke-static {v8}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 406
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 407
    if-eqz v9, :cond_230

    .line 409
    invoke-interface {v9}, Lbm;->C()V

    .line 410
    :cond_230
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->f:Z

    if-nez v1, :cond_23c

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbj;->B()V

    .line 419
    :cond_23c
    invoke-direct/range {p0 .. p0}, Lbj;->b()V
    :try_end_23f
    .catchall {:try_start_222 .. :try_end_23f} :catchall_190

    goto/16 :goto_24

    :cond_241
    move v12, v4

    move-object v7, v2

    .line 264
    :goto_243
    if-nez v12, :cond_255

    .line 267
    :try_start_245
    move-object/from16 v0, p0

    iget v2, v0, Lbj;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a2

    move-object/from16 v0, p0

    iget v2, v0, Lbj;->c:I

    if-eq v1, v2, :cond_2a2

    .line 269
    invoke-direct/range {p0 .. p0}, Lbj;->f()V

    .line 279
    :cond_255
    :goto_255
    sget v2, Ldb;->D:I

    new-array v13, v2, [B

    .line 281
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 285
    :goto_25c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbj;->i:Z

    if-nez v2, :cond_280

    .line 290
    if-eqz v1, :cond_2d9

    .line 292
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2ad

    const/16 v2, 0x200

    .line 293
    :goto_269
    const/4 v3, 0x0

    invoke-virtual {v7, v13, v3, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .line 294
    const/4 v2, -0x1

    if-ne v5, v2, :cond_2b4

    .line 297
    move-object/from16 v0, p0

    iget v1, v0, Lbj;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_280

    .line 300
    move-object/from16 v0, p0

    iget v1, v0, Lbj;->d:I

    move-object/from16 v0, p0

    iput v1, v0, Lbj;->c:I

    .line 376
    :cond_280
    :goto_280
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_283
    .catch Ljava/lang/Throwable; {:try_start_245 .. :try_end_283} :catch_2a7
    .catchall {:try_start_245 .. :try_end_283} :catchall_2e8

    .line 404
    :try_start_283
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 405
    invoke-static {v8}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 406
    invoke-static {v7}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 407
    if-eqz v9, :cond_291

    .line 409
    invoke-interface {v9}, Lbm;->C()V

    .line 410
    :cond_291
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbj;->f:Z

    if-nez v1, :cond_29d

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbj;->B()V

    .line 419
    :cond_29d
    invoke-direct/range {p0 .. p0}, Lbj;->b()V
    :try_end_2a0
    .catchall {:try_start_283 .. :try_end_2a0} :catchall_190

    goto/16 :goto_24

    .line 273
    :cond_2a2
    :try_start_2a2
    move-object/from16 v0, p0

    iput v1, v0, Lbj;->c:I

    goto :goto_255

    .line 378
    :catch_2a7
    move-exception v1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    goto/16 :goto_132

    .line 292
    :cond_2ad
    const/16 v2, 0x200

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_269

    .line 304
    :cond_2b4
    const/4 v2, 0x0

    invoke-virtual {v8, v13, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 305
    move-object/from16 v0, p0

    iget v2, v0, Lbj;->d:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lbj;->d:I

    .line 306
    if-lez v1, :cond_360

    .line 308
    sub-int v11, v1, v5

    .line 310
    :goto_2c5
    const-wide/16 v1, 0x0

    int-to-long v3, v5

    int-to-long v5, v5

    invoke-static/range {v1 .. v6}, Ldb;->Code(JJJ)V

    .line 313
    if-nez v12, :cond_2d8

    move-object/from16 v0, p0

    iget v1, v0, Lbj;->d:I

    move-object/from16 v0, p0

    iget v2, v0, Lbj;->c:I

    if-eq v1, v2, :cond_280

    :cond_2d8
    move v1, v11

    .line 318
    :cond_2d9
    if-nez v1, :cond_35d

    .line 324
    if-nez v10, :cond_2df

    if-nez v12, :cond_308

    .line 327
    :cond_2df
    move-object/from16 v0, p0

    iget v1, v0, Lbj;->d:I

    move-object/from16 v0, p0

    iput v1, v0, Lbj;->c:I
    :try_end_2e7
    .catch Ljava/lang/Throwable; {:try_start_2a2 .. :try_end_2e7} :catch_2a7
    .catchall {:try_start_2a2 .. :try_end_2e7} :catchall_2e8

    goto :goto_280

    .line 404
    :catchall_2e8
    move-exception v1

    move-object v2, v7

    :goto_2ea
    :try_start_2ea
    invoke-direct/range {p0 .. p0}, Lbj;->d()V

    .line 405
    invoke-static {v8}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 406
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 407
    if-eqz v9, :cond_2f8

    .line 409
    invoke-interface {v9}, Lbm;->C()V

    .line 410
    :cond_2f8
    invoke-direct/range {p0 .. p0}, Lbj;->h()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbj;->f:Z

    if-nez v2, :cond_304

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbj;->B()V

    .line 419
    :cond_304
    invoke-direct/range {p0 .. p0}, Lbj;->b()V

    throw v1
    :try_end_308
    .catchall {:try_start_2ea .. :try_end_308} :catchall_190

    .line 332
    :cond_308
    :try_start_308
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lbj;->Code(Ljava/io/DataInputStream;)I

    move-result v1

    .line 333
    invoke-static {v1}, Lbj;->I(I)Z

    move-result v2

    if-eqz v2, :cond_31e

    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_31e

    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_323

    .line 338
    :cond_31e
    invoke-direct/range {p0 .. p0}, Lbj;->f()V

    goto/16 :goto_280

    .line 342
    :cond_323
    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_336

    const/4 v1, 0x1

    .line 345
    :goto_329
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lbj;->Code(Ljava/io/DataInputStream;)I

    move-result v2

    .line 349
    :goto_32f
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_332
    .catch Ljava/lang/Throwable; {:try_start_308 .. :try_end_332} :catch_2a7
    .catchall {:try_start_308 .. :try_end_332} :catchall_2e8

    move v10, v1

    move v1, v2

    goto/16 :goto_25c

    .line 342
    :cond_336
    const/4 v1, 0x0

    goto :goto_329

    .line 389
    :cond_338
    :try_start_338
    invoke-virtual/range {p0 .. p0}, Lbj;->J()V
    :try_end_33b
    .catchall {:try_start_338 .. :try_end_33b} :catchall_33d

    goto/16 :goto_169

    .line 404
    :catchall_33d
    move-exception v1

    move-object v8, v3

    move-object v9, v4

    goto :goto_2ea

    :catchall_341
    move-exception v1

    move-object v8, v3

    move-object v9, v4

    goto :goto_2ea

    :catchall_345
    move-exception v1

    move-object v8, v3

    goto :goto_2ea

    :catchall_348
    move-exception v1

    goto :goto_2ea

    :catchall_34a
    move-exception v1

    move-object v2, v3

    goto :goto_2ea

    :catch_34d
    move-exception v1

    goto/16 :goto_171

    .line 378
    :catch_350
    move-exception v1

    goto/16 :goto_132

    :catch_353
    move-exception v1

    move-object v4, v9

    goto/16 :goto_132

    :catch_357
    move-exception v1

    move-object v2, v3

    move-object v4, v9

    move-object v3, v8

    goto/16 :goto_132

    :cond_35d
    move v2, v1

    move v1, v10

    goto :goto_32f

    :cond_360
    move v11, v1

    goto/16 :goto_2c5

    :cond_363
    move v12, v1

    move-object v7, v2

    move v1, v3

    goto/16 :goto_243

    :cond_368
    move v1, v4

    move v4, v5

    move v15, v2

    move-object v2, v3

    move v3, v15

    goto/16 :goto_101
.end method
