.class public Lbg;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final am:[C

.field private static final ap:Lbw;

.field private static as:[Lbu;

.field private static at:[I

.field private static au:[Lbu;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field final Code:Lcc;

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field I:Lbg;

.field J:I

.field private K:Z

.field private L:Z

.field private M:[I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:[I

.field private V:[I

.field private W:I

.field private X:[B

.field private Y:I

.field Z:Lbh;

.field private a:I

.field private aA:I

.field private aB:Lcv;

.field private aa:I

.field private ab:Ljava/util/Hashtable;

.field private ac:Ljava/util/Vector;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private an:I

.field private ao:Z

.field private aq:Lbh;

.field private ar:Z

.field private av:Ljava/util/Hashtable;

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:[B

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:B

.field private m:I

.field private n:I

.field private o:[I

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:[I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 528
    const/16 v0, 0x200

    new-array v0, v0, [C

    sput-object v0, Lbg;->am:[C

    .line 1900
    new-instance v0, Lbw;

    invoke-direct {v0}, Lbw;-><init>()V

    sput-object v0, Lbg;->ap:Lbw;

    .line 2386
    new-array v0, v1, [Lbu;

    sput-object v0, Lbg;->as:[Lbu;

    .line 2583
    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lbg;->at:[I

    .line 2704
    new-array v0, v1, [Lbu;

    sput-object v0, Lbg;->au:[Lbu;

    .line 5007
    return-void
.end method

.method constructor <init>(Lcc;Lbg;ZZ)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v0, p0, Lbg;->k:I

    .line 130
    iput v2, p0, Lbg;->n:I

    .line 147
    iput-object v1, p0, Lbg;->o:[I

    .line 153
    iput-boolean v0, p0, Lbg;->p:Z

    .line 241
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lbg;->v:[I

    .line 494
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbg;->ab:Ljava/util/Hashtable;

    .line 502
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbg;->ac:Ljava/util/Vector;

    .line 539
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Lbg;->aq:Lbh;

    .line 2209
    iput-boolean v2, p0, Lbg;->ar:Z

    .line 4727
    iput-object v1, p0, Lbg;->av:Ljava/util/Hashtable;

    .line 60
    if-eqz p2, :cond_34

    .line 62
    iput-object p2, p0, Lbg;->I:Lbg;

    .line 63
    iget-object v0, p2, Lbg;->aq:Lbh;

    iput-object v0, p0, Lbg;->Z:Lbh;

    .line 65
    :cond_34
    iput-object p1, p0, Lbg;->Code:Lcc;

    .line 66
    iput-boolean p3, p0, Lbg;->B:Z

    .line 67
    iput-boolean p4, p0, Lbg;->C:Z

    .line 68
    invoke-virtual {p1}, Lcc;->k()I

    move-result v0

    iput v0, p0, Lbg;->a:I

    .line 69
    if-eqz p2, :cond_4b

    iget v0, p0, Lbg;->a:I

    iget v1, p2, Lbg;->a:I

    if-eq v0, v1, :cond_4b

    .line 71
    invoke-virtual {p2, v2}, Lbg;->I(Z)V

    .line 74
    :cond_4b
    return-void
.end method

.method private A()I
    .registers 2

    .prologue
    .line 2859
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbg;->al:I

    .line 2860
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lbg;->I(I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized A(I)I
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 3395
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->I()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_87

    .line 3400
    :try_start_8
    iput p1, p0, Lbg;->al:I

    .line 3401
    :goto_a
    iget v0, p0, Lbg;->al:I

    iget-object v1, p0, Lbg;->X:[B

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget v0, p0, Lbg;->aa:I

    iget-object v1, p0, Lbg;->X:[B

    array-length v1, v1

    if-eq v0, v1, :cond_20

    :cond_18
    iget v0, p0, Lbg;->al:I

    iget v1, p0, Lbg;->aa:I

    add-int/lit8 v1, v1, -0x10

    if-ge v0, v1, :cond_220

    .line 3404
    :cond_20
    iget v3, p0, Lbg;->al:I

    .line 3405
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    .line 3407
    sparse-switch v0, :sswitch_data_22e

    .line 3546
    invoke-direct {p0}, Lbg;->F()V

    .line 3547
    invoke-direct {p0, v0}, Lbg;->D(I)V

    .line 3549
    iget v0, p0, Lbg;->al:I

    iget v1, p0, Lbg;->aa:I

    if-gt v0, v1, :cond_220

    .line 3551
    iget v0, p0, Lbg;->af:I

    iget v1, p0, Lbg;->aj:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->af:I

    .line 3556
    iget v0, p0, Lbg;->ag:I

    iget v1, p0, Lbg;->ak:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->ag:I

    .line 3557
    iget v4, p0, Lbg;->al:I

    iget v0, p0, Lbg;->ag:I

    iget v1, p0, Lbg;->N:I

    invoke-direct {p0, v0, v1}, Lbg;->c(II)I

    move-result v0

    move v1, v0

    :goto_4e
    iget-object v0, p0, Lbg;->M:[I

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x2

    aget v0, v0, v5

    :goto_56
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x4

    aget v5, v5, v6

    if-eqz v5, :cond_1d3

    add-int/lit8 v0, v0, 0x4

    goto :goto_56

    .line 3410
    :sswitch_61
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 3402
    :cond_6a
    :goto_6a
    iget p1, p0, Lbg;->al:I

    goto :goto_a

    .line 3414
    :sswitch_6d
    invoke-direct {p0}, Lbg;->y()I

    .line 3415
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->S:I

    .line 3416
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->T:I
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_7d

    goto :goto_6a

    .line 3567
    :catchall_7d
    move-exception v0

    :try_start_7e
    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->Z()V

    .line 3568
    invoke-direct {p0}, Lbg;->N()V

    throw v0
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_87

    .line 3395
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3424
    :sswitch_8a
    :try_start_8a
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    .line 3425
    invoke-direct {p0}, Lbg;->y()I

    move-result v1

    .line 3428
    iget v3, p0, Lbg;->al:I

    add-int/2addr v3, v1

    iget v4, p0, Lbg;->aa:I

    if-gt v3, v4, :cond_220

    .line 3430
    sparse-switch v0, :sswitch_data_23c

    .line 3539
    iget v0, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    goto :goto_6a

    .line 3436
    :sswitch_a2
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lbg;->an:I

    .line 3437
    iget v0, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    goto :goto_6a

    .line 3443
    :sswitch_ae
    add-int/lit8 v0, v1, -0x8

    .line 3444
    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lbg;->N:I

    .line 3446
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lbg;->N:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lbg;->M:[I

    .line 3447
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    iput v0, p0, Lbg;->Q:I

    .line 3450
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iput v0, p0, Lbg;->G:I

    .line 3451
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->H:I

    .line 3452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->K:Z

    .line 3455
    iget v0, p0, Lbg;->N:I

    mul-int/lit8 v0, v0, 0x5

    move v1, v2

    move v3, v0

    move v0, v2

    .line 3457
    :goto_df
    div-int/lit8 v4, v0, 0x5

    iget v5, p0, Lbg;->N:I

    if-ge v4, v5, :cond_112

    .line 3459
    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    .line 3460
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x0

    aput v1, v5, v6

    .line 3461
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x1

    aput v4, v5, v6

    .line 3462
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x2

    aput v3, v5, v6

    .line 3463
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x4

    invoke-direct {p0}, Lbg;->D()I

    move-result v7

    aput v7, v5, v6

    .line 3465
    invoke-direct {p0}, Lbg;->A()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 3466
    add-int/2addr v1, v4

    .line 3457
    add-int/lit8 v0, v0, 0x5

    goto :goto_df

    .line 3468
    :cond_112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->O:Z

    goto/16 :goto_6a

    .line 3473
    :sswitch_117
    div-int/lit8 v0, v1, 0xc

    .line 3474
    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lbg;->U:[I

    move v0, v2

    .line 3475
    :goto_120
    iget-object v1, p0, Lbg;->U:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6a

    .line 3477
    iget-object v1, p0, Lbg;->U:[I

    add-int/lit8 v3, v0, 0x0

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    aput v4, v1, v3

    .line 3478
    iget-object v1, p0, Lbg;->U:[I

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    aput v4, v1, v3

    .line 3479
    iget-object v1, p0, Lbg;->U:[I

    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    iget-object v5, p0, Lbg;->U:[I

    add-int/lit8 v6, v0, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v1, v3

    .line 3480
    iget-object v1, p0, Lbg;->U:[I

    add-int/lit8 v3, v0, 0x3

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    iget-object v5, p0, Lbg;->U:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    aput v4, v1, v3

    .line 3475
    add-int/lit8 v0, v0, 0x5

    goto :goto_120

    .line 3489
    :sswitch_15e
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lbg;->o:[I

    move v0, v2

    .line 3492
    :goto_164
    if-ge v0, v8, :cond_171

    .line 3494
    iget-object v1, p0, Lbg;->o:[I

    invoke-direct {p0}, Lbg;->A()I

    move-result v3

    aput v3, v1, v0

    .line 3492
    add-int/lit8 v0, v0, 0x1

    goto :goto_164

    .line 3498
    :cond_171
    iget-object v0, p0, Lbg;->o:[I

    const/4 v1, 0x3

    invoke-direct {p0}, Lbg;->D()I

    move-result v3

    aput v3, v0, v1

    .line 3500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->p:Z

    goto/16 :goto_6a

    .line 3508
    :sswitch_17f
    div-int/lit8 v0, v1, 0xb

    .line 3509
    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lbg;->V:[I

    move v0, v2

    .line 3510
    :goto_188
    iget-object v1, p0, Lbg;->V:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6a

    .line 3512
    iget-object v1, p0, Lbg;->V:[I

    add-int/lit8 v3, v0, 0x0

    invoke-direct {p0}, Lbg;->D()I

    move-result v4

    aput v4, v1, v3

    .line 3513
    iget-object v1, p0, Lbg;->V:[I

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    aput v4, v1, v3

    .line 3514
    iget-object v1, p0, Lbg;->V:[I

    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0}, Lbg;->y()I

    move-result v4

    aput v4, v1, v3

    .line 3515
    iget-object v1, p0, Lbg;->V:[I

    add-int/lit8 v3, v0, 0x3

    invoke-direct {p0}, Lbg;->A()I

    move-result v4

    aput v4, v1, v3

    .line 3516
    iget-object v1, p0, Lbg;->V:[I

    add-int/lit8 v3, v0, 0x4

    invoke-direct {p0}, Lbg;->A()I

    move-result v4

    aput v4, v1, v3

    .line 3510
    add-int/lit8 v0, v0, 0x5

    goto :goto_188

    .line 3529
    :sswitch_1c2
    invoke-direct {p0}, Lbg;->x()I

    move-result v0

    .line 3530
    iget-boolean v1, p0, Lbg;->ao:Z

    if-nez v1, :cond_6a

    .line 3532
    iget-object v1, p0, Lbg;->Code:Lcc;

    iget v3, v1, Lcc;->d:I

    add-int/2addr v0, v3

    iput v0, v1, Lcc;->d:I

    goto/16 :goto_6a

    .line 3557
    :cond_1d3
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_208

    invoke-direct {p0, v0, v3, v4}, Lbg;->B(III)I

    :goto_1de
    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Lbg;->N:I

    if-ge v0, v1, :cond_1f3

    iget v1, p0, Lbg;->ag:I

    iget v5, p0, Lbg;->ai:I

    add-int/2addr v1, v5

    iget-object v5, p0, Lbg;->M:[I

    mul-int/lit8 v6, v0, 0x5

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    if-gt v1, v5, :cond_22a

    .line 3558
    :cond_1f3
    iget v0, p0, Lbg;->af:I

    iput v0, p0, Lbg;->aj:I

    .line 3559
    iget v0, p0, Lbg;->ag:I

    iput v0, p0, Lbg;->ak:I

    .line 3561
    iget v0, p0, Lbg;->af:I

    iget v1, p0, Lbg;->ag:I

    iget v3, p0, Lbg;->ah:I

    iget v4, p0, Lbg;->ai:I

    invoke-direct {p0, v0, v1, v3, v4}, Lbg;->J(IIII)V

    goto/16 :goto_6a

    .line 3557
    :cond_208
    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    iget v6, p0, Lbg;->Q:I

    add-int/2addr v5, v6

    if-lt v5, v3, :cond_21a

    iget-object v5, p0, Lbg;->M:[I

    add-int/lit8 v0, v0, 0x1

    aput v4, v5, v0

    goto :goto_1de

    :cond_21a
    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0, v3, v4}, Lbg;->B(III)I
    :try_end_21f
    .catchall {:try_start_8a .. :try_end_21f} :catchall_7d

    goto :goto_1de

    .line 3567
    :cond_220
    :try_start_220
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->Z()V

    .line 3568
    invoke-direct {p0}, Lbg;->N()V
    :try_end_228
    .catchall {:try_start_220 .. :try_end_228} :catchall_87

    .line 3571
    monitor-exit p0

    return p1

    :cond_22a
    move v1, v0

    goto/16 :goto_4e

    .line 3407
    nop

    :sswitch_data_22e
    .sparse-switch
        0x4c -> :sswitch_6d
        0x4d -> :sswitch_8a
        0x53 -> :sswitch_61
    .end sparse-switch

    .line 3430
    :sswitch_data_23c
    .sparse-switch
        0x43 -> :sswitch_ae
        0x49 -> :sswitch_17f
        0x54 -> :sswitch_117
        0x56 -> :sswitch_15e
        0x74 -> :sswitch_a2
        0x75 -> :sswitch_1c2
    .end sparse-switch
.end method

.method private B(III)I
    .registers 7

    .prologue
    .line 3646
    iget-object v0, p0, Lbg;->M:[I

    add-int/lit8 v1, p1, 0x0

    aput p2, v0, v1

    .line 3647
    iget-object v0, p0, Lbg;->M:[I

    add-int/lit8 v1, p1, 0x1

    aput p3, v0, v1

    .line 3649
    iget-object v0, p0, Lbg;->M:[I

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Lbg;->aj:I

    aput v2, v0, v1

    .line 3650
    iget-object v0, p0, Lbg;->M:[I

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Lbg;->ak:I

    aput v2, v0, v1

    .line 3651
    return p1
.end method

.method private native B(IIII)V
.end method

.method private C(III)I
    .registers 6

    .prologue
    .line 3803
    if-gt p1, p3, :cond_3

    .line 3807
    :goto_2
    return p1

    :cond_3
    sub-int v0, p1, p3

    iget v1, p0, Lbg;->q:I

    mul-int/2addr v0, v1

    div-int/2addr v0, p2

    add-int p1, v0, p3

    goto :goto_2
.end method

.method static Code(Ljava/io/DataInput;)I
    .registers 3

    .prologue
    .line 2844
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static Code(Ljava/util/Hashtable;Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 5931
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 5937
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 5938
    if-gez v3, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 5942
    :cond_e
    :try_start_e
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5943
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5944
    invoke-virtual {p0, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_2c

    .line 5945
    if-lt v0, v2, :cond_22

    if-gez v2, :cond_23

    :cond_22
    move v2, v0

    .line 5953
    :cond_23
    :goto_23
    add-int/lit8 v0, v3, 0x1

    .line 5955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 5957
    return v2

    :catch_2c
    move-exception v0

    goto :goto_23
.end method

.method private static Code([BI)I
    .registers 4

    .prologue
    .line 2837
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static Code([BII)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 6861
    const/4 v1, 0x2

    if-ge p2, v1, :cond_5

    .line 6874
    :cond_4
    :goto_4
    return v0

    .line 6865
    :cond_5
    invoke-static {p0, p1}, Lap;->Z([BI)I

    move-result v1

    .line 6866
    add-int/lit8 v2, v1, 0x2

    if-gt v2, p2, :cond_4

    .line 6870
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v1}, Ldb;->I([BII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6874
    add-int/lit8 v0, v1, 0x2

    goto :goto_4
.end method

.method private static Code([CIII)I
    .registers 13

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xa

    const/4 v2, 0x0

    .line 4730
    move v4, v2

    move v3, v2

    move v5, p1

    move-object v1, p0

    .line 4731
    :goto_9
    if-ge v4, v5, :cond_73

    .line 4733
    aget-char v0, v1, v4

    if-ne v0, v7, :cond_1a

    move v0, v4

    move v3, v5

    move-object v4, v1

    move v1, v2

    .line 4731
    :goto_13
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v3, v1

    move-object v1, v4

    move v4, v0

    goto :goto_9

    .line 4737
    :cond_1a
    if-eqz v3, :cond_20

    aget-char v0, v1, v4

    if-ne v0, v8, :cond_78

    .line 4739
    :cond_20
    const/4 v0, 0x1

    move v6, v0

    .line 4740
    :goto_22
    add-int v0, v4, v6

    if-ge v0, v5, :cond_36

    add-int v0, v4, v6

    aget-char v0, v1, v0

    if-eq v0, v8, :cond_36

    add-int v0, v4, v6

    aget-char v0, v1, v0

    if-eq v0, v7, :cond_36

    .line 4742
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_22

    .line 4744
    :cond_36
    invoke-static {p2, v1, v4, v6}, Ldb;->Code(I[CII)I

    move-result v0

    .line 4745
    add-int/2addr v3, v0

    .line 4746
    if-le v3, p3, :cond_76

    .line 4748
    if-gt v0, p3, :cond_49

    .line 4751
    aput-char v7, v1, v4

    .line 4793
    :goto_41
    add-int/lit8 v3, v6, -0x1

    add-int/2addr v3, v4

    move-object v4, v1

    move v1, v0

    move v0, v3

    move v3, v5

    goto :goto_13

    .line 4758
    :cond_49
    aget-char v0, v1, v4

    if-ne v0, v8, :cond_4f

    .line 4760
    aput-char v7, v1, v4

    .line 4769
    :cond_4f
    invoke-static {p2, v1, v4, v6, p3}, Ldb;->Code(I[CIII)I

    move-result v3

    .line 4771
    if-nez v3, :cond_57

    move v0, v2

    .line 4776
    goto :goto_41

    .line 4779
    :cond_57
    array-length v0, v1

    if-ne v5, v0, :cond_74

    .line 4781
    array-length v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [C

    .line 4782
    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4785
    :goto_62
    add-int v1, v4, v3

    .line 4786
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v5, v1

    invoke-static {v0, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4787
    aput-char v7, v0, v1

    .line 4788
    add-int/lit8 v3, v5, 0x1

    move-object v4, v0

    move v0, v1

    move v1, v2

    .line 4790
    goto :goto_13

    .line 4797
    :cond_73
    return v5

    :cond_74
    move-object v0, v1

    goto :goto_62

    :cond_76
    move v0, v3

    goto :goto_41

    :cond_78
    move v0, v4

    move-object v4, v1

    move v1, v3

    move v3, v5

    goto :goto_13
.end method

.method private Code([III)I
    .registers 7

    .prologue
    .line 3834
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lbg;->Z([IIII)I

    move-result v0

    .line 3835
    if-lt v0, p2, :cond_a

    .line 3837
    iget v0, p0, Lbg;->r:I

    .line 3839
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbg;->M:[I

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    add-int/2addr v1, p3

    add-int/lit8 v0, v0, 0x0

    aget v0, p1, v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_9
.end method

.method static Code(Ljava/lang/Object;)Lbg;
    .registers 2

    .prologue
    .line 5889
    check-cast p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lbg;

    return-object v0
.end method

.method private Code(IIIIIII)Lbu;
    .registers 18

    .prologue
    .line 2396
    const/4 v8, 0x0

    .line 2397
    const/4 v0, 0x0

    .line 2398
    sget-object v7, Lbg;->as:[Lbu;

    .line 2400
    iget-object v1, p0, Lbg;->aq:Lbh;

    sget v2, Ldb;->b:I

    mul-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Lbh;->I(I)Z

    move-result v1

    if-nez v1, :cond_81

    .line 2405
    const/4 v7, 0x0

    move v9, v0

    .line 2408
    :goto_12
    const/4 v0, 0x2

    if-gt v9, v0, :cond_7f

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 2412
    :try_start_1e
    invoke-direct/range {v0 .. v7}, Lbg;->Code(IIIIII[Lbu;)Lbu;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_4b

    move-result-object v0

    move-object v1, v0

    .line 2457
    :goto_23
    if-eqz v1, :cond_44

    iget-object v0, p0, Lbg;->aq:Lbh;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbh;->I(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2459
    iget-object v2, p0, Lbg;->aq:Lbh;

    const/16 v0, 0x100

    if-ne p3, v0, :cond_7d

    const/4 v0, 0x1

    :goto_35
    sget-object v3, Lbg;->as:[Lbu;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, p1, v0, v1, v3}, Lbh;->Code(IZLbu;Lbu;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbg;->J(Z)V

    .line 2466
    :cond_44
    sget-object v0, Lbg;->as:[Lbu;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 2468
    return-object v1

    .line 2420
    :catch_4b
    move-exception v0

    sget-object v0, Lbg;->as:[Lbu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2421
    const/4 v7, 0x0

    .line 2422
    const/4 v0, 0x1

    if-gt v9, v0, :cond_7f

    .line 2427
    iget-boolean v0, p0, Lbg;->B:Z

    if-nez v0, :cond_5c

    if-lez v9, :cond_63

    :cond_5c
    iget-object v0, p0, Lbg;->Z:Lbh;

    if-eqz v0, :cond_63

    .line 2432
    invoke-direct {p0}, Lbg;->w()V

    .line 2435
    :cond_63
    if-lez v9, :cond_68

    .line 2438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->ar:Z

    .line 2441
    :cond_68
    if-nez v9, :cond_72

    .line 2443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbg;->J(Z)V

    .line 2408
    :goto_6e
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_12

    .line 2447
    :cond_72
    invoke-direct {p0}, Lbg;->t()V

    .line 2451
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->Code:Lar;

    invoke-virtual {v0}, Lar;->p()V

    goto :goto_6e

    .line 2459
    :cond_7d
    const/4 v0, 0x0

    goto :goto_35

    :cond_7f
    move-object v1, v8

    goto :goto_23

    :cond_81
    move v9, v0

    goto :goto_12
.end method

.method private declared-synchronized Code(IIIIIIIII)Lbu;
    .registers 26

    .prologue
    .line 2319
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->aq:Lbh;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lbh;->Z(I)I

    move-result v3

    .line 2320
    const/16 v2, 0x100

    move/from16 v0, p7

    if-ne v0, v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->I:[Lbu;

    .line 2322
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->aq:Lbh;

    move/from16 v0, p1

    invoke-virtual {v4, v3, v0}, Lbh;->I(II)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2325
    aget-object v4, v2, v3

    if-eqz v4, :cond_ad

    .line 2327
    aget-object v2, v2, v3
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_199

    .line 2381
    :goto_29
    monitor-exit p0

    return-object v2

    .line 2320
    :cond_2b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Z:[Lbu;

    goto :goto_17

    .line 2333
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->aq:Lbh;

    iget v5, v4, Lbh;->J:I

    iget-object v6, v4, Lbh;->I:[Lbu;

    array-length v6, v6

    if-ne v5, v6, :cond_63

    iget-object v5, v4, Lbh;->Code:[I

    iget v6, v4, Lbh;->J:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x6

    invoke-static {v5, v6}, Ldb;->Code([II)[I

    move-result-object v5

    iput-object v5, v4, Lbh;->Code:[I

    iget-object v5, v4, Lbh;->I:[Lbu;

    iget v6, v4, Lbh;->J:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ldb;->Code([Lbu;I)[Lbu;

    move-result-object v5

    iput-object v5, v4, Lbh;->I:[Lbu;

    iget-object v5, v4, Lbh;->Z:[Lbu;

    iget v6, v4, Lbh;->J:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ldb;->Code([Lbu;I)[Lbu;

    move-result-object v5

    iput-object v5, v4, Lbh;->Z:[Lbu;

    :cond_63
    mul-int/lit8 v5, v3, 0x6

    iget-object v6, v4, Lbh;->Code:[I

    iget-object v7, v4, Lbh;->Code:[I

    add-int/lit8 v8, v5, 0x6

    iget v9, v4, Lbh;->J:I

    mul-int/lit8 v9, v9, 0x6

    sub-int/2addr v9, v5

    invoke-static {v6, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v4, Lbh;->I:[Lbu;

    iget-object v7, v4, Lbh;->I:[Lbu;

    add-int/lit8 v8, v3, 0x1

    iget v9, v4, Lbh;->J:I

    sub-int/2addr v9, v3

    invoke-static {v6, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v4, Lbh;->Z:[Lbu;

    iget-object v7, v4, Lbh;->Z:[Lbu;

    add-int/lit8 v8, v3, 0x1

    iget v9, v4, Lbh;->J:I

    sub-int/2addr v9, v3

    invoke-static {v6, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v4, Lbh;->J:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lbh;->J:I

    iget-object v6, v4, Lbh;->Code:[I

    add-int/lit8 v7, v5, 0x0

    aput p1, v6, v7

    iget-object v6, v4, Lbh;->Code:[I

    add-int/lit8 v7, v5, 0x1

    aput p2, v6, v7

    iget-object v6, v4, Lbh;->Code:[I

    add-int/lit8 v5, v5, 0x4

    const/4 v7, 0x0

    aput v7, v6, v5

    iget-object v5, v4, Lbh;->I:[Lbu;

    iget-object v4, v4, Lbh;->Z:[Lbu;

    const/4 v6, 0x0

    aput-object v6, v4, v3

    aput-object v6, v5, v3

    .line 2344
    :cond_ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->Z:Lbh;

    if-eqz v4, :cond_cd

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->Z:Lbh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->aq:Lbh;

    move/from16 v0, p1

    move/from16 v1, p7

    invoke-virtual {v4, v0, v1, v5, v3}, Lbh;->Code(IILbh;I)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 2358
    aget-object v4, v2, v3

    if-eqz v4, :cond_cd

    .line 2359
    aget-object v2, v2, v3

    goto/16 :goto_29

    .line 2370
    :cond_cd
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->aq:Lbh;

    if-gez p8, :cond_134

    const/4 v2, 0x0

    move v4, v2

    :goto_d5
    if-gez p9, :cond_137

    const/4 v2, 0x0

    :goto_d8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lbg;->t:Z

    mul-int/lit8 v6, v3, 0x6

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x4

    aget v7, v7, v8

    if-nez v7, :cond_13a

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x2

    aput p3, v7, v8

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x3

    aput p4, v7, v8

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x4

    shl-int/lit8 v9, p5, 0x10

    or-int v9, v9, p6

    aput v9, v7, v8

    :goto_fc
    iget-object v5, v5, Lbh;->Code:[I

    add-int/lit8 v6, v6, 0x5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aput v2, v5, v6

    .line 2373
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Code:[I

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v4, v4, 0x2

    aget v2, v2, v4

    const/high16 v4, -0x80000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_19c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lbg;->s(I)Z

    move-result v2

    if-eqz v2, :cond_19c

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p3

    move/from16 v9, p4

    .line 2378
    invoke-direct/range {v2 .. v9}, Lbg;->Code(IIIIIII)Lbu;

    move-result-object v2

    goto/16 :goto_29

    :cond_134
    move/from16 v4, p8

    .line 2370
    goto :goto_d5

    :cond_137
    move/from16 v2, p9

    goto :goto_d8

    :cond_13a
    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x2

    aget v7, v7, v8

    const v8, 0x3fffffff    # 1.9999999f

    and-int/2addr v7, v8

    iget-object v8, v5, Lbh;->Code:[I

    add-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    move/from16 v0, p3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v0, p4

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v5, Lbh;->Code:[I

    add-int/lit8 v12, v6, 0x4

    add-int v13, p3, p5

    iget-object v14, v5, Lbh;->Code:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    ushr-int/lit8 v14, v14, 0x10

    add-int/2addr v7, v14

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x10

    add-int v13, p4, p6

    iget-object v14, v5, Lbh;->Code:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    const v15, 0xffff

    and-int/2addr v14, v15

    add-int/2addr v8, v14

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v8, v10

    or-int/2addr v7, v8

    aput v7, v11, v12

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x2

    iget-object v11, v5, Lbh;->Code:[I

    add-int/lit8 v12, v6, 0x2

    aget v11, v11, v12

    const/high16 v12, -0x40000000    # -2.0f

    and-int/2addr v11, v12

    or-int/2addr v9, v11

    aput v9, v7, v8

    iget-object v7, v5, Lbh;->Code:[I

    add-int/lit8 v8, v6, 0x3

    aput v10, v7, v8
    :try_end_197
    .catchall {:try_start_2b .. :try_end_197} :catchall_199

    goto/16 :goto_fc

    .line 2319
    :catchall_199
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2381
    :cond_19c
    const/4 v2, 0x0

    goto/16 :goto_29
.end method

.method private Code(IIIIII[Lbu;)Lbu;
    .registers 22

    .prologue
    .line 2503
    const/4 v1, 0x0

    .line 2506
    iget-boolean v2, p0, Lbg;->ar:Z

    if-eqz v2, :cond_2e

    if-gtz p3, :cond_2e

    if-gtz p4, :cond_2e

    move-object/from16 v6, p7

    .line 2508
    :goto_b
    if-lez p3, :cond_f

    if-gtz p4, :cond_30

    .line 2511
    :cond_f
    const/4 v1, 0x1

    move/from16 v12, p4

    move/from16 v11, p3

    .line 2530
    :goto_14
    if-eqz v1, :cond_61

    .line 2532
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->r()Lbv;

    move-result-object v1

    iget-object v2, p0, Lbg;->X:[B

    add-int/lit8 v3, p1, 0x2

    iget-object v4, p0, Lbg;->X:[B

    invoke-static {v4, p1}, Lap;->Z([BI)I

    move-result v4

    const/4 v7, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lbv;->Code([BIII[Lbu;Z)Lbu;

    move-result-object v1

    .line 2538
    :goto_2d
    return-object v1

    .line 2506
    :cond_2e
    const/4 v6, 0x0

    goto :goto_b

    .line 2516
    :cond_30
    const/16 v2, 0x100

    move/from16 v0, p2

    if-ge v0, v2, :cond_77

    if-lez p2, :cond_77

    .line 2521
    const/4 v2, 0x1

    add-int v3, p5, p3

    invoke-direct {p0, v3}, Lbg;->E(I)I

    move-result v3

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lbg;->E(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 2522
    const/4 v2, 0x1

    add-int v3, p6, p4

    invoke-direct {p0, v3}, Lbg;->E(I)I

    move-result v3

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lbg;->E(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p4

    move/from16 v12, p4

    move/from16 v11, p3

    goto :goto_14

    .line 2538
    :cond_61
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->r()Lbv;

    move-result-object v7

    iget-object v8, p0, Lbg;->X:[B

    add-int/lit8 v9, p1, 0x2

    iget-object v1, p0, Lbg;->X:[B

    invoke-static {v1, p1}, Lap;->Z([BI)I

    move-result v10

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lbv;->Code([BIIII[Lbu;)Lbu;

    move-result-object v1

    goto :goto_2d

    :cond_77
    move/from16 v12, p4

    move/from16 v11, p3

    goto :goto_14
.end method

.method private Code([IIII)Lcw;
    .registers 31

    .prologue
    .line 3160
    const/16 v21, 0x0

    .line 3161
    move-object/from16 v0, p0

    iget v0, v0, Lbg;->al:I

    move/from16 v22, v0

    .line 3162
    move-object/from16 v0, p0

    iget v0, v0, Lbg;->af:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ag:I

    move/from16 v24, v0

    .line 3163
    const/16 v19, -0x1

    .line 3164
    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 3166
    const v16, 0x7fffffff

    .line 3167
    const v15, 0x7fffffff

    .line 3168
    const/4 v14, 0x0

    .line 3170
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    if-nez v3, :cond_dd

    const/4 v11, -0x1

    .line 3171
    :cond_28
    :goto_28
    const/4 v3, 0x0

    .line 3172
    const/4 v4, 0x0

    .line 3173
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->q:I

    .line 3174
    const/4 v6, 0x0

    aget v6, p1, v6

    .line 3176
    if-ltz v11, :cond_5e

    .line 3178
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    add-int/lit8 v4, v11, 0x0

    aget v3, v3, v4

    .line 3179
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->U:[I

    add-int/lit8 v6, v11, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v4, v2, v5}, Lbg;->I([IIII)I

    move-result v4

    .line 3181
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->U:[I

    add-int/lit8 v6, v11, 0x2

    aget v5, v5, v6

    .line 3182
    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->U:[I

    add-int/lit8 v7, v11, 0x3

    aget v6, v6, v7

    .line 3185
    :cond_5e
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3186
    move-object/from16 v0, p0

    iget v9, v0, Lbg;->Y:I

    move-object/from16 v0, p0

    iput v9, v0, Lbg;->al:I

    move v12, v14

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    .line 3189
    :goto_72
    move-object/from16 v0, p0

    iget v9, v0, Lbg;->al:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lbg;->X:[B

    array-length v10, v10

    if-ge v9, v10, :cond_1cb

    .line 3191
    move-object/from16 v0, p0

    iget v0, v0, Lbg;->al:I

    move/from16 v20, v0

    .line 3192
    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v25

    .line 3193
    sparse-switch v25, :sswitch_data_1d6

    move v11, v7

    move v7, v8

    .line 3205
    :goto_8c
    const/16 v8, 0x54

    move/from16 v0, v25

    if-ne v0, v8, :cond_1c2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lbg;->v(I)Z

    move-result v8

    if-nez v8, :cond_1c2

    .line 3208
    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v8, v2, v11}, Lbg;->I([IIII)I

    move-result v8

    .line 3209
    move-object/from16 v0, p0

    iget v9, v0, Lbg;->ah:I

    .line 3210
    move-object/from16 v0, p0

    iget v10, v0, Lbg;->ai:I

    .line 3214
    move/from16 v0, p3

    if-ge v0, v7, :cond_15c

    .line 3215
    sub-int v19, v7, p3

    .line 3221
    :goto_b5
    move/from16 v0, p4

    if-ge v0, v8, :cond_170

    .line 3222
    sub-int v18, v8, p4

    .line 3228
    :goto_bb
    if-nez v19, :cond_184

    if-nez v18, :cond_184

    .line 3258
    :goto_bf
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->af:I

    .line 3259
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->ag:I

    .line 3260
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->al:I

    .line 3262
    if-lez v20, :cond_1be

    .line 3267
    new-instance v3, Lcw;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v3, v0, v1, v7, v11}, Lcw;-><init>(Lbg;III)V

    .line 3270
    :goto_dc
    return-object v3

    .line 3170
    :cond_dd
    const v5, 0x7fffffff

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v11, v3

    move v12, v4

    move v13, v5

    :goto_e5
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    array-length v3, v3

    if-ge v11, v3, :cond_148

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    add-int/lit8 v4, v11, 0x0

    aget v7, v3, v4

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->U:[I

    add-int/lit8 v5, v11, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2, v4}, Lbg;->I([IIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    add-int/lit8 v4, v11, 0x2

    aget v9, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->U:[I

    add-int/lit8 v4, v11, 0x3

    aget v10, v3, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v3 .. v10}, Ldb;->Code(IIIIIIII)Z

    move-result v3

    if-nez v3, :cond_28

    add-int v3, v7, v9

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v7, v3}, Ldb;->Code(III)I

    move-result v3

    add-int v4, v8, v10

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p4

    invoke-static {v0, v8, v4}, Ldb;->Code(III)I

    move-result v4

    sub-int v3, p3, v3

    sub-int v4, p4, v4

    mul-int/2addr v3, v3

    mul-int/2addr v4, v4

    add-int v5, v3, v4

    if-ge v5, v13, :cond_1d2

    move v4, v11

    :goto_142
    add-int/lit8 v3, v11, 0x5

    move v11, v3

    move v12, v4

    move v13, v5

    goto :goto_e5

    :cond_148
    move v11, v12

    goto/16 :goto_28

    .line 3199
    :sswitch_14b
    invoke-direct/range {p0 .. p0}, Lbg;->F()V

    .line 3200
    move-object/from16 v0, p0

    iget v9, v0, Lbg;->af:I

    add-int/2addr v8, v9

    .line 3201
    move-object/from16 v0, p0

    iget v9, v0, Lbg;->ag:I

    add-int v11, v7, v9

    move v7, v8

    goto/16 :goto_8c

    .line 3216
    :cond_15c
    add-int v18, v7, v9

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_16c

    .line 3217
    sub-int v18, p3, v7

    sub-int v18, v18, v9

    add-int/lit8 v19, v18, 0x1

    goto/16 :goto_b5

    .line 3219
    :cond_16c
    const/16 v19, 0x0

    goto/16 :goto_b5

    .line 3223
    :cond_170
    add-int v18, v8, v10

    move/from16 v0, p4

    move/from16 v1, v18

    if-lt v0, v1, :cond_180

    .line 3224
    sub-int v18, p4, v8

    sub-int v18, v18, v10

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_bb

    .line 3226
    :cond_180
    const/16 v18, 0x0

    goto/16 :goto_bb

    .line 3240
    :cond_184
    invoke-static/range {v3 .. v10}, Ldb;->Code(IIIIIIII)Z

    move-result v8

    .line 3242
    move/from16 v0, v18

    if-lt v0, v13, :cond_194

    move/from16 v0, v18

    if-ne v0, v13, :cond_1bc

    move/from16 v0, v19

    if-ge v0, v14, :cond_1bc

    :cond_194
    const/4 v9, 0x1

    .line 3244
    :goto_195
    if-nez v12, :cond_19b

    if-nez v8, :cond_1a1

    if-nez v9, :cond_1a1

    :cond_19b
    if-eqz v12, :cond_1c2

    if-eqz v8, :cond_1c2

    if-eqz v9, :cond_1c2

    :cond_1a1
    move/from16 v9, v18

    move/from16 v10, v19

    move v12, v11

    move v13, v7

    move/from16 v14, v20

    .line 3255
    :goto_1a9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lbg;->D(I)V

    move v15, v12

    move/from16 v16, v13

    move/from16 v17, v14

    move v13, v9

    move v14, v10

    move v12, v8

    move v8, v7

    move v7, v11

    .line 3256
    goto/16 :goto_72

    .line 3242
    :cond_1bc
    const/4 v9, 0x0

    goto :goto_195

    :cond_1be
    move-object/from16 v3, v21

    goto/16 :goto_dc

    :cond_1c2
    move v8, v12

    move v9, v13

    move v10, v14

    move v12, v15

    move/from16 v13, v16

    move/from16 v14, v17

    goto :goto_1a9

    :cond_1cb
    move v11, v15

    move/from16 v7, v16

    move/from16 v20, v17

    goto/16 :goto_bf

    :cond_1d2
    move v4, v12

    move v5, v13

    goto/16 :goto_142

    .line 3193
    :sswitch_data_1d6
    .sparse-switch
        0x42 -> :sswitch_14b
        0x46 -> :sswitch_14b
        0x49 -> :sswitch_14b
        0x54 -> :sswitch_14b
    .end sparse-switch
.end method

.method private native Code(Lan;II[IIIZZZIII)V
.end method

.method private native Code(Lan;IZ)V
.end method

.method private Code(Lbr;II)V
    .registers 16

    .prologue
    .line 4803
    invoke-direct {p0}, Lbg;->D()I

    move-result v5

    .line 4804
    invoke-direct {p0}, Lbg;->D()I

    move-result v6

    .line 4806
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v4

    .line 4807
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v1

    .line 4808
    invoke-direct {p0}, Lbg;->y()I

    move-result v7

    .line 4809
    invoke-direct {p0}, Lbg;->A()I

    .line 4811
    iget-object v0, p0, Lbg;->ac:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 4813
    const/4 v0, 0x0

    .line 4814
    iget-object v2, p0, Lbg;->ad:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 4816
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 4829
    :goto_38
    if-eqz v2, :cond_47

    .line 4831
    int-to-char v3, v5

    iget-object v0, p0, Lbg;->ab:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const/4 v0, 0x0

    :goto_44
    invoke-direct {p0, v2, v4, v3, v0}, Lbg;->Code(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 4835
    :cond_47
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4837
    if-nez v0, :cond_263

    move-object v3, v1

    .line 4842
    :goto_54
    const/4 v9, 0x0

    .line 4843
    const/4 v8, 0x0

    .line 4846
    sparse-switch v5, :sswitch_data_26a

    :cond_59
    move v3, v8

    move-object v2, v9

    .line 4982
    :cond_5b
    :goto_5b
    if-eqz v2, :cond_88

    .line 4993
    invoke-interface {p1}, Lbr;->Code()I

    move-result v7

    .line 4994
    invoke-interface {p1}, Lbr;->I()I

    move-result v8

    .line 4995
    invoke-interface {p1}, Lbr;->Z()I

    move-result v9

    .line 4996
    invoke-interface {p1}, Lbr;->J()I

    move-result v10

    .line 4997
    iget v0, p0, Lbg;->af:I

    iget v1, p0, Lbg;->ag:I

    iget v4, p0, Lbg;->ah:I

    iget v5, p0, Lbg;->ai:I

    invoke-interface {p1, v0, v1, v4, v5}, Lbr;->I(IIII)V

    .line 4998
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->d()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbg;->Code(Lbr;[CIIII)V

    .line 4999
    invoke-interface {p1, v7, v8, v9, v10}, Lbr;->Code(IIII)V

    .line 5001
    :cond_88
    return-void

    .line 4819
    :cond_89
    iget-object v2, p0, Lbg;->ae:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 4821
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_38

    .line 4824
    :cond_98
    iget-object v2, p0, Lbg;->ab:Ljava/util/Hashtable;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_266

    move-object v2, v4

    .line 4826
    goto :goto_38

    :cond_a2
    move-object v0, v1

    .line 4831
    goto :goto_44

    .line 4850
    :sswitch_a4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 4851
    new-array v2, v3, [C

    .line 4852
    const/4 v0, 0x0

    :goto_ab
    array-length v1, v2

    if-ge v0, v1, :cond_5b

    .line 4854
    sget-char v1, Ldb;->x:C

    aput-char v1, v2, v0

    .line 4852
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 4861
    :sswitch_b5
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->d()I

    move-result v4

    .line 4862
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 4863
    sget-object v0, Lbg;->am:[C

    array-length v0, v0

    if-le v1, v0, :cond_115

    .line 4866
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4867
    iget-object v0, p0, Lbg;->av:Ljava/util/Hashtable;

    if-nez v0, :cond_d8

    .line 4869
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbg;->av:Ljava/util/Hashtable;

    .line 4871
    :cond_d8
    const/4 v2, 0x0

    .line 4872
    iget-object v0, p0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 4874
    iget-object v0, p0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 4876
    iget-boolean v6, p0, Lbg;->x:Z

    if-eqz v6, :cond_25e

    iget-boolean v6, p0, Lbg;->w:Z

    if-nez v6, :cond_25e

    .line 4881
    const/4 v2, 0x1

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    .line 4889
    :goto_f5
    if-eqz v0, :cond_25b

    .line 4891
    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 4892
    iget v0, p0, Lbg;->ah:I

    invoke-direct {p0, v0}, Lbg;->F(I)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Lbg;->Code([CIII)I

    move-result v0

    .line 4893
    iget-object v1, p0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v1, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10b
    move v3, v0

    .line 4895
    goto/16 :goto_5b

    .line 4886
    :cond_10e
    new-array v0, v1, [C

    .line 4887
    const/4 v2, 0x1

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    goto :goto_f5

    .line 4899
    :cond_115
    sget-object v2, Lbg;->am:[C

    .line 4900
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 4901
    iget v0, p0, Lbg;->ah:I

    invoke-direct {p0, v0}, Lbg;->F(I)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Lbg;->Code([CIII)I

    move-result v3

    goto/16 :goto_5b

    .line 4910
    :sswitch_128
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 4911
    array-length v3, v2

    goto/16 :goto_5b

    .line 4916
    :sswitch_12f
    if-eqz v0, :cond_175

    const/4 v0, 0x1

    move v1, v0

    :goto_133
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_178

    const/4 v0, 0x1

    :goto_138
    xor-int/2addr v0, v1

    if-eqz v0, :cond_59

    .line 4918
    iget v0, p0, Lbg;->af:I

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lbg;->ag:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lbg;->af:I

    iget v3, p0, Lbg;->ah:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x2

    iget v0, p0, Lbg;->ag:I

    iget v4, p0, Lbg;->ai:I

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lbr;->Code(IIIII)V

    .line 4919
    iget v0, p0, Lbg;->af:I

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lbg;->ag:I

    iget v2, p0, Lbg;->ai:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x2

    iget v0, p0, Lbg;->af:I

    iget v3, p0, Lbg;->ah:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x2

    iget v0, p0, Lbg;->ag:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lbr;->Code(IIIII)V

    move v3, v8

    move-object v2, v9

    goto/16 :goto_5b

    .line 4916
    :cond_175
    const/4 v0, 0x0

    move v1, v0

    goto :goto_133

    :cond_178
    const/4 v0, 0x0

    goto :goto_138

    .line 4924
    :sswitch_17a
    if-eqz v0, :cond_1a1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4926
    :goto_182
    iget v0, p0, Lbg;->af:I

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lbg;->ag:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lbg;->ah:I

    add-int/lit8 v3, v0, -0x3

    iget v0, p0, Lbg;->ai:I

    add-int/lit8 v4, v0, -0x3

    const/16 v5, -0x5a

    const/16 v6, 0x168

    const v7, 0x404040

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lbr;->Code(IIIIIII)V

    move v3, v8

    move-object v2, v9

    goto/16 :goto_5b

    .line 4924
    :cond_1a1
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_59

    goto :goto_182

    .line 4932
    :sswitch_1a6
    iget v2, p0, Lbg;->al:I

    .line 4933
    iput v7, p0, Lbg;->al:I

    .line 4934
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    .line 4935
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u0000"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4937
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    .line 4938
    :goto_1c9
    if-lez v1, :cond_1fe

    .line 4940
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    .line 4941
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v5

    .line 4943
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u0000"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u0000"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_20b

    const/4 v0, 0x1

    .line 4944
    :goto_1ef
    and-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_20d

    .line 4947
    if-eqz v0, :cond_21d

    .line 4949
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4964
    :cond_1fe
    iput v2, p0, Lbg;->al:I

    .line 4965
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 4966
    array-length v3, v2

    goto/16 :goto_5b

    .line 4943
    :cond_20b
    const/4 v0, 0x0

    goto :goto_1ef

    .line 4956
    :cond_20d
    if-eqz v0, :cond_214

    .line 4958
    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4960
    :cond_214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4962
    :cond_21d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 4963
    goto :goto_1c9

    .line 4972
    :sswitch_221
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4974
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 4975
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4976
    if-ltz v1, :cond_254

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_254

    .line 4978
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4980
    :cond_254
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 4981
    array-length v3, v2

    goto/16 :goto_5b

    :cond_25b
    move v0, v1

    goto/16 :goto_10b

    :cond_25e
    move-object v11, v0

    move v0, v2

    move-object v2, v11

    goto/16 :goto_f5

    :cond_263
    move-object v3, v0

    goto/16 :goto_54

    :cond_266
    move-object v2, v0

    goto/16 :goto_38

    .line 4846
    nop

    :sswitch_data_26a
    .sparse-switch
        0x53 -> :sswitch_128
        0x55 -> :sswitch_128
        0x61 -> :sswitch_b5
        0x63 -> :sswitch_12f
        0x66 -> :sswitch_221
        0x70 -> :sswitch_a4
        0x72 -> :sswitch_17a
        0x73 -> :sswitch_1a6
        0x78 -> :sswitch_128
    .end sparse-switch
.end method

.method private Code(Lbr;IIII[I)V
    .registers 47

    .prologue
    .line 4352
    if-gez p5, :cond_3

    .line 4436
    :goto_2
    return-void

    .line 4357
    :cond_3
    add-int/lit8 v5, p4, 0x2

    aget v5, p6, v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v5

    add-int v5, v5, p3

    .line 4358
    invoke-interface/range {p1 .. p1}, Lbr;->Code()I

    move-result v33

    .line 4359
    invoke-interface/range {p1 .. p1}, Lbr;->I()I

    move-result v34

    .line 4360
    invoke-interface/range {p1 .. p1}, Lbr;->Z()I

    move-result v35

    .line 4361
    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v36

    .line 4362
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->s:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lbg;->M:[I

    mul-int/lit8 v8, p5, 0x5

    add-int/lit8 v8, v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    mul-int/lit8 v9, p5, 0x5

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbg;->a(I)I

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v5, v6, v7}, Lbr;->I(IIII)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->M:[I

    mul-int/lit8 v7, p4, 0x5

    add-int/lit8 v7, v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbg;->a(I)I

    move-result v6

    sub-int v37, v5, v6

    .line 4366
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4367
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lbg;->al:I

    .line 4371
    :goto_62
    invoke-static {}, Lar;->r()Z

    move-result v7

    if-nez v7, :cond_4fe

    .line 4373
    const v7, 0x7fffffff

    move/from16 v29, v5

    move/from16 v30, v6

    move v6, v7

    move/from16 v7, p4

    .line 4377
    :goto_72
    move/from16 v0, p5

    if-gt v7, v0, :cond_cf

    .line 4379
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->M:[I

    mul-int/lit8 v8, v7, 0x5

    add-int/lit8 v8, v8, 0x3

    aget v5, v5, v8

    :goto_80
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    aget v8, v8, v5

    if-eqz v8, :cond_511

    .line 4381
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    mul-int/lit8 v9, v7, 0x5

    add-int/lit8 v9, v9, 0x3

    aput v5, v8, v9

    .line 4382
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->al:I

    if-le v8, v9, :cond_cc

    .line 4384
    move-object/from16 v0, p0

    iget v8, v0, Lbg;->al:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lbg;->M:[I

    aget v9, v9, v5

    invoke-static {v6, v8, v9}, Ldb;->Code(III)I

    move-result v6

    .line 4385
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    aget v8, v8, v5

    if-ne v8, v6, :cond_511

    .line 4387
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    add-int/lit8 v9, v5, 0x2

    aget v30, v8, v9

    .line 4388
    move-object/from16 v0, p0

    iget-object v8, v0, Lbg;->M:[I

    add-int/lit8 v5, v5, 0x3

    aget v29, v8, v5

    move v5, v6

    .line 4377
    :goto_c7
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    goto :goto_72

    .line 4379
    :cond_cc
    add-int/lit8 v5, v5, 0x4

    goto :goto_80

    .line 4395
    :cond_cf
    const v5, 0x7fffffff

    if-eq v6, v5, :cond_4fe

    move v5, v6

    :goto_d5
    move/from16 v8, p4

    move/from16 v31, v5

    .line 4405
    :goto_d9
    move/from16 v0, p5

    if-gt v8, v0, :cond_11c

    .line 4407
    move-object/from16 v0, p0

    iget-object v7, v0, Lbg;->M:[I

    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x3

    aget v7, v7, v9

    :goto_e7
    move-object/from16 v0, p0

    iget-object v9, v0, Lbg;->M:[I

    aget v9, v9, v7

    if-eqz v9, :cond_118

    .line 4409
    move-object/from16 v0, p0

    iget-object v9, v0, Lbg;->M:[I

    aget v9, v9, v7

    move-object/from16 v0, p0

    iget v10, v0, Lbg;->Q:I

    add-int v10, v10, v31

    if-gt v9, v10, :cond_118

    .line 4411
    move-object/from16 v0, p0

    iget-object v9, v0, Lbg;->M:[I

    mul-int/lit8 v10, v8, 0x5

    add-int/lit8 v10, v10, 0x3

    aput v7, v9, v10

    .line 4414
    move-object/from16 v0, p0

    iget-object v9, v0, Lbg;->M:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    move/from16 v0, v31

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 4407
    add-int/lit8 v7, v7, 0x4

    goto :goto_e7

    .line 4405
    :cond_118
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_d9

    .line 4418
    :cond_11c
    move/from16 v0, v31

    if-ne v5, v0, :cond_50d

    .line 4420
    move-object/from16 v0, p0

    iput v6, v0, Lbg;->al:I

    move/from16 v13, v29

    move/from16 v5, v30

    :goto_128
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->al:I

    move/from16 v0, v31

    if-ge v6, v0, :cond_4f8

    invoke-static {}, Lar;->r()Z

    move-result v6

    if-nez v6, :cond_4f8

    move-object/from16 v0, p0

    iget v14, v0, Lbg;->al:I

    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v15

    const/16 v6, 0x53

    if-eq v15, v6, :cond_14a

    const/16 v6, 0x4c

    if-eq v15, v6, :cond_14a

    const/16 v6, 0x4d

    if-ne v15, v6, :cond_150

    :cond_14a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lbg;->D(I)V

    goto :goto_128

    :cond_150
    invoke-direct/range {p0 .. p0}, Lbg;->F()V

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->af:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ag:I

    add-int/2addr v5, v13

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->af:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v13, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ah:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ai:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->ah:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->ai:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ai:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->af:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ai:I

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->ag:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ai:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->af:I

    add-int v5, v5, p2

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ag:I

    add-int v5, v5, v37

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ai:I

    invoke-interface/range {p1 .. p1}, Lbr;->Code()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lbr;->I()I

    move-result v10

    invoke-interface/range {p1 .. p1}, Lbr;->Z()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v12

    invoke-static/range {v5 .. v12}, Ldb;->Code(IIIIIIII)Z

    move-result v5

    if-eqz v5, :cond_4ef

    invoke-direct/range {p0 .. p0}, Lbg;->x()I

    move-result v38

    sparse-switch v15, :sswitch_data_514

    :cond_218
    :goto_218
    move/from16 v5, v32

    goto/16 :goto_128

    :sswitch_21c
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v17

    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v5

    :goto_224
    if-lez v5, :cond_241

    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v6

    packed-switch v6, :pswitch_data_526

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->al:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lbg;->al:I

    :goto_23a
    add-int/lit8 v5, v5, -0x1

    goto :goto_224

    :pswitch_23d
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    goto :goto_23a

    :cond_241
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v5

    sget-object v15, Lbg;->am:[C

    sget-object v6, Lbg;->am:[C

    array-length v6, v6

    if-le v5, v6, :cond_24e

    new-array v15, v5, [C

    :cond_24e
    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->X:[B

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->al:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v15, v8, v5}, Lap;->Code([BI[CII)I

    move-result v16

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->al:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->al:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->J:Lcr;

    invoke-virtual {v5}, Lcr;->Z()Z

    move-result v5

    if-eqz v5, :cond_2ac

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->J:Lcr;

    invoke-virtual {v5, v14}, Lcr;->Code(I)Z

    move-result v5

    if-eqz v5, :cond_2ac

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lbg;->v(I)Z

    move-result v5

    if-nez v5, :cond_2ac

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->J:Lcr;

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v10, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v11, v0, Lbg;->ah:I

    const/4 v6, 0x0

    aget-char v6, v15, v6

    invoke-static {v6}, Ldb;->Code(C)Z

    move-result v6

    if-nez v6, :cond_371

    const/16 v19, 0x1

    :goto_2a1
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, v37

    move/from16 v12, v32

    invoke-virtual/range {v5 .. v19}, Lcr;->Code(Lbr;IIIIIIII[CIIIZ)V

    :cond_2ac
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->Z:Lba;

    invoke-virtual {v5, v14}, Lba;->I(I)Z

    move-result v5

    if-eqz v5, :cond_2d1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lbg;->v(I)Z

    move-result v5

    if-nez v5, :cond_2d1

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->Z:Lba;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v5, v0, v1, v2, v3}, Lba;->Code(Lbr;III)V

    :cond_2d1
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v15

    move/from16 v8, v16

    move/from16 v9, v38

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-direct/range {v5 .. v11}, Lbg;->Code(Lbr;[CIIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->aB:Lcv;

    if-eqz v5, :cond_37e

    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->aB:Lcv;

    invoke-virtual {v5, v14}, Lcv;->I(I)Ljava/util/Vector;

    move-result-object v14

    if-eqz v14, :cond_37e

    const/4 v5, 0x0

    move v12, v5

    :goto_2f3
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_37e

    invoke-virtual {v14, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [I

    const/16 v5, 0x9

    aget v5, v11, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->Code:Lcc;

    iget v6, v6, Lcc;->C:I

    if-ne v5, v6, :cond_375

    const/4 v5, 0x1

    :goto_30d
    if-eqz v5, :cond_377

    const v10, 0xee66

    :goto_312
    if-eqz v5, :cond_37b

    const v23, 0xffffff

    :goto_317
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->af:I

    const/4 v6, 0x3

    aget v6, v11, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbg;->a(I)I

    move-result v6

    add-int/2addr v6, v5

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->ag:I

    const/4 v7, 0x4

    aget v7, v11, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbg;->a(I)I

    move-result v7

    add-int/2addr v7, v5

    const/4 v5, 0x5

    aget v5, v11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v8

    const/4 v5, 0x6

    aget v5, v11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lbg;->a(I)I

    move-result v9

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v10}, Lbr;->Z(IIIII)V

    const/4 v5, 0x1

    aget v19, v11, v5

    const/4 v5, 0x2

    aget v20, v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->y:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->s:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->q:I

    move/from16 v26, v0

    move-object/from16 v16, p1

    move-object/from16 v18, v15

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-static/range {v16 .. v26}, Ldb;->Code(Lbr;I[CIIIIIIII)V

    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_2f3

    :cond_371
    const/16 v19, 0x0

    goto/16 :goto_2a1

    :cond_375
    const/4 v5, 0x0

    goto :goto_30d

    :cond_377
    const v10, 0xffee66

    goto :goto_312

    :cond_37b
    const/16 v23, 0x0

    goto :goto_317

    :cond_37e
    move/from16 v5, v32

    goto/16 :goto_128

    :sswitch_382
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lbg;->z()I

    move-result v9

    const/4 v6, 0x0

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v5

    move/from16 v39, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v39

    :goto_398
    if-lez v8, :cond_3e4

    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v10

    sparse-switch v10, :sswitch_data_52c

    move-object/from16 v0, p0

    iget v10, v0, Lbg;->al:I

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Lbg;->al:I

    :goto_3ae
    add-int/lit8 v8, v8, -0x1

    goto :goto_398

    :sswitch_3b1
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lbg;->x()I

    move-result v5

    move-object/from16 v0, p0

    iget v11, v0, Lbg;->al:I

    add-int/lit8 v10, v10, -0x4

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Lbg;->al:I

    goto :goto_3ae

    :sswitch_3c5
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->al:I

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lbg;->al:I

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v7

    goto :goto_3ae

    :sswitch_3d8
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v27

    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v28

    goto :goto_3ae

    :cond_3e4
    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ah:I

    if-lez v8, :cond_218

    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ai:I

    if-lez v8, :cond_218

    move/from16 v0, v28

    mul-int/lit16 v8, v0, 0x400

    add-int/2addr v5, v8

    add-int v20, v5, v27

    const/4 v5, -0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_46d

    const/4 v5, -0x1

    move/from16 v0, v28

    if-eq v0, v5, :cond_46d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbg;->u:Z

    if-eqz v5, :cond_456

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->R:I

    add-int v21, v5, v9

    const/16 v26, 0x100

    move-object/from16 v19, p0

    move/from16 v22, v32

    move/from16 v23, v13

    move/from16 v25, v18

    invoke-direct/range {v19 .. v28}, Lbg;->Code(IIIIIIIII)Lbu;

    move-result-object v15

    :goto_41b
    if-eqz v15, :cond_4ac

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbg;->w:Z

    if-eqz v5, :cond_4a8

    const/16 v24, 0x0

    :goto_425
    move-object/from16 v0, p0

    iget v0, v0, Lbg;->af:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ag:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ah:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ai:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ah:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lbg;->ai:I

    move/from16 v23, v0

    move-object/from16 v14, p1

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-interface/range {v14 .. v24}, Lbr;->Code(Lbu;IIIIIIIII)V

    move/from16 v5, v32

    goto/16 :goto_128

    :cond_456
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->R:I

    add-int v21, v5, v9

    invoke-direct/range {p0 .. p0}, Lbg;->u()I

    move-result v26

    move-object/from16 v19, p0

    move/from16 v22, v32

    move/from16 v23, v13

    move/from16 v25, v18

    invoke-direct/range {v19 .. v28}, Lbg;->Code(IIIIIIIII)Lbu;

    move-result-object v15

    goto :goto_41b

    :cond_46d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbg;->u:Z

    if-eqz v5, :cond_48c

    move-object/from16 v0, p0

    iget v5, v0, Lbg;->R:I

    add-int v21, v5, v9

    const/16 v26, 0x100

    const/16 v27, -0x1

    const/16 v28, -0x1

    move-object/from16 v19, p0

    move/from16 v22, v32

    move/from16 v23, v13

    move/from16 v25, v18

    invoke-direct/range {v19 .. v28}, Lbg;->Code(IIIIIIIII)Lbu;

    move-result-object v15

    goto :goto_41b

    :cond_48c
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->R:I

    add-int v21, v5, v9

    invoke-direct/range {p0 .. p0}, Lbg;->u()I

    move-result v26

    move-object/from16 v19, p0

    move/from16 v22, v32

    move/from16 v23, v13

    move/from16 v25, v18

    move/from16 v27, v24

    move/from16 v28, v18

    invoke-direct/range {v19 .. v28}, Lbg;->Code(IIIIIIIII)Lbu;

    move-result-object v15

    goto/16 :goto_41b

    :cond_4a8
    const/16 v24, 0x1

    goto/16 :goto_425

    :cond_4ac
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->ai:I

    move-object/from16 v5, p1

    move/from16 v10, v38

    invoke-interface/range {v5 .. v10}, Lbr;->Z(IIIII)V

    move/from16 v5, v32

    goto/16 :goto_128

    :sswitch_4c7
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->ai:I

    move-object/from16 v5, p1

    move/from16 v10, v38

    invoke-interface/range {v5 .. v10}, Lbr;->J(IIIII)V

    move/from16 v5, v32

    goto/16 :goto_128

    :sswitch_4e2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v38

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lbg;->Code(Lbr;II)V

    goto/16 :goto_218

    :cond_4ef
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lbg;->D(I)V

    move/from16 v5, v32

    goto/16 :goto_128

    :cond_4f8
    move/from16 v5, v29

    move/from16 v6, v30

    .line 4421
    goto/16 :goto_62

    .line 4435
    :cond_4fe
    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-interface {v0, v1, v2, v3, v4}, Lbr;->Code(IIII)V

    goto/16 :goto_2

    :cond_50d
    move/from16 v5, v31

    goto/16 :goto_d5

    :cond_511
    move v5, v6

    goto/16 :goto_c7

    .line 4420
    :sswitch_data_514
    .sparse-switch
        0x42 -> :sswitch_4c7
        0x46 -> :sswitch_4e2
        0x49 -> :sswitch_382
        0x54 -> :sswitch_21c
    .end sparse-switch

    :pswitch_data_526
    .packed-switch 0x72
        :pswitch_23d
    .end packed-switch

    :sswitch_data_52c
    .sparse-switch
        0x63 -> :sswitch_3b1
        0x6f -> :sswitch_3c5
        0x7a -> :sswitch_3d8
    .end sparse-switch
.end method

.method private Code(Lbr;IIII[II)V
    .registers 16

    .prologue
    const/high16 v7, -0x80000000

    .line 4299
    const/4 v0, 0x0

    aget v0, p6, v0

    if-lt p4, v0, :cond_8

    .line 4348
    :cond_7
    :goto_7
    return-void

    .line 4304
    :cond_8
    const/4 v0, 0x2

    invoke-direct {p0, p6, v0, p7, p4}, Lbg;->Z([IIII)I

    move-result v0

    .line 4305
    if-eq v0, p7, :cond_7

    move v4, v0

    .line 4314
    :goto_10
    invoke-static {}, Lar;->r()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4316
    if-ne v0, p7, :cond_23

    .line 4321
    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbg;->Code(Lbr;IIII[I)V

    goto :goto_7

    .line 4325
    :cond_23
    iget-object v1, p0, Lbg;->M:[I

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lbg;->M:[I

    mul-int/lit8 v5, v0, 0x5

    add-int/lit8 v5, v5, 0x2

    aget v3, v3, v5

    aput v3, v1, v2

    .line 4326
    add-int/lit8 v1, v0, 0x2

    aget v1, p6, v1

    and-int/2addr v1, v7

    if-nez v1, :cond_54

    .line 4328
    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbg;->Code(Lbr;IIII[I)V

    .line 4332
    :cond_44
    add-int/lit8 v4, v4, 0x1

    .line 4333
    if-eq v4, p7, :cond_7

    .line 4335
    add-int/lit8 v0, v4, 0x2

    aget v0, p6, v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_44

    .line 4339
    add-int/lit8 v0, v4, -0x1

    .line 4311
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4341
    :cond_54
    add-int/lit8 v1, v0, 0x2

    aget v1, p6, v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    if-le v1, p5, :cond_51

    .line 4343
    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbg;->Code(Lbr;IIII[I)V

    goto :goto_7
.end method

.method private Code(Lbr;[CIIII)V
    .registers 22

    .prologue
    .line 5016
    const/4 v13, 0x1

    .line 5017
    invoke-static/range {p5 .. p5}, Ldb;->C(I)I

    move-result v1

    div-int v1, p6, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5018
    const/4 v2, 0x0

    :goto_d
    move/from16 v0, p3

    if-ge v2, v0, :cond_20

    if-gt v13, v3, :cond_20

    .line 5020
    aget-char v1, p2, v2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1e

    const/4 v1, 0x1

    :goto_1a
    add-int/2addr v13, v1

    .line 5018
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5020
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a

    :cond_20
    move v1, v13

    .line 5024
    :goto_21
    if-lez v2, :cond_6d

    .line 5026
    iget v3, p0, Lbg;->ag:I

    add-int/lit8 v14, v1, -0x1

    mul-int v1, p6, v14

    div-int/2addr v1, v13

    invoke-virtual {p0, v1}, Lbg;->a(I)I

    move-result v1

    add-int v7, v3, v1

    .line 5027
    const/4 v1, 0x0

    .line 5028
    if-nez v14, :cond_5c

    .line 5031
    const/4 v4, 0x0

    move v5, v2

    .line 5048
    :goto_35
    if-lez v5, :cond_43

    add-int v1, v4, v5

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p2, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_43

    .line 5057
    add-int/lit8 v5, v5, -0x1

    .line 5068
    :cond_43
    iget v6, p0, Lbg;->af:I

    iget-boolean v9, p0, Lbg;->u:Z

    iget v10, p0, Lbg;->y:I

    iget v11, p0, Lbg;->s:I

    iget v12, p0, Lbg;->q:I

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v8, p4

    invoke-interface/range {v1 .. v12}, Lbr;->Code(I[CIIIIIZIII)V

    .line 5071
    add-int/lit8 v2, v4, -0x1

    move v1, v14

    .line 5072
    goto :goto_21

    .line 5035
    :cond_5c
    add-int/lit8 v3, v2, -0x1

    aget-char v3, p2, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6a

    .line 5037
    add-int/lit8 v1, v1, 0x1

    .line 5038
    add-int/lit8 v2, v2, -0x1

    .line 5039
    if-nez v2, :cond_5c

    :cond_6a
    move v5, v1

    move v4, v2

    goto :goto_35

    .line 5073
    :cond_6d
    return-void
.end method

.method private static Code(Ljava/io/DataInputStream;ILcc;)V
    .registers 21

    .prologue
    .line 1470
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 1471
    const/4 v1, 0x1

    .line 1473
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_23

    const/4 v3, 0x1

    .line 1474
    :goto_a
    and-int/lit8 v2, v5, 0x2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    move v4, v2

    .line 1475
    :goto_10
    and-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    move v10, v2

    .line 1476
    :goto_16
    if-eqz v4, :cond_2b

    .line 1479
    invoke-virtual/range {p2 .. p2}, Lcc;->a()V

    .line 1480
    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lar;->Z(I)V

    .line 1638
    :goto_22
    return-void

    .line 1473
    :cond_23
    const/4 v3, 0x0

    goto :goto_a

    .line 1474
    :cond_25
    const/4 v2, 0x0

    move v4, v2

    goto :goto_10

    .line 1475
    :cond_28
    const/4 v2, 0x0

    move v10, v2

    goto :goto_16

    .line 1483
    :cond_2b
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1484
    :goto_30
    move/from16 v0, p1

    if-ge v1, v0, :cond_58

    .line 1486
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 1487
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 1488
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 1489
    invoke-static/range {p0 .. p0}, Lbg;->Code(Ljava/io/DataInput;)I

    move-result v6

    .line 1491
    add-int/lit8 v7, v6, 0x7

    add-int/2addr v1, v7

    .line 1493
    add-int/lit8 v7, v6, 0x6

    new-array v7, v7, [B

    .line 1494
    invoke-static {v7, v2, v4, v5}, Ldb;->Code([BIII)V

    .line 1497
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1501
    invoke-virtual {v11, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_30

    .line 1504
    :cond_58
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1505
    new-array v2, v5, [B

    .line 1506
    sget-object v12, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v12

    .line 1509
    :try_start_61
    sget-object v1, Ldb;->aa:[B

    if-eqz v1, :cond_6a

    sget-object v1, Ldb;->aa:[B

    array-length v1, v1

    if-nez v1, :cond_71

    :cond_6a
    if-nez v3, :cond_71

    .line 1513
    monitor-exit v12
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_6e

    goto :goto_22

    .line 1631
    :catchall_6e
    move-exception v1

    monitor-exit v12

    throw v1

    .line 1515
    :cond_71
    if-nez v3, :cond_77

    :try_start_73
    sget-object v1, Ldb;->aa:[B

    if-nez v1, :cond_e0

    .line 1517
    :cond_77
    invoke-static {}, Ldb;->c()V

    .line 1518
    mul-int/lit8 v1, v5, 0x3

    new-array v1, v1, [B

    sput-object v1, Ldb;->ab:[B

    .line 1519
    new-array v1, v5, [B

    sput-object v1, Ldb;->ac:[B

    .line 1520
    const/4 v1, 0x0

    move v4, v1

    :goto_86
    if-ge v4, v5, :cond_1ee

    .line 1522
    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1523
    sget-object v6, Ldb;->ab:[B

    mul-int/lit8 v7, v4, 0x3

    const/4 v8, 0x2

    aget-byte v8, v1, v8

    aput-byte v8, v6, v7

    .line 1524
    const/4 v6, 0x2

    aget-byte v6, v1, v6

    aput-byte v6, v2, v4

    .line 1525
    invoke-static {v4, v1}, Ldb;->Code(I[B)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 1528
    const/4 v2, 0x1

    .line 1529
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1533
    :goto_a6
    const/4 v3, 0x1

    .line 1617
    :goto_a7
    if-eqz v3, :cond_1d3

    .line 1619
    invoke-static {}, Ldb;->b()V

    .line 1620
    sget-object v3, Ldb;->aa:[B

    if-nez v3, :cond_b4

    .line 1623
    const/4 v2, 0x1

    .line 1624
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 1631
    :cond_b4
    :goto_b4
    monitor-exit v12
    :try_end_b5
    .catchall {:try_start_73 .. :try_end_b5} :catchall_6e

    .line 1633
    invoke-virtual/range {p2 .. p2}, Lcc;->a()V

    .line 1634
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v1}, Lan;->Code([B)I

    move-result v1

    invoke-virtual {v3, v1}, Lan;->b(I)V

    .line 1635
    sget-object v3, Lar;->Z:Lan;

    if-eqz v2, :cond_1d8

    const/4 v1, 0x1

    :goto_c8
    invoke-virtual {v3, v1}, Lan;->c(I)V

    .line 1636
    sget-object v2, Lar;->Z:Lan;

    if-eqz v10, :cond_1db

    const/4 v1, 0x1

    :goto_d0
    invoke-virtual {v2, v1}, Lan;->c(I)V

    .line 1637
    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lar;->Z(I)V

    goto/16 :goto_22

    .line 1520
    :cond_dc
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_86

    .line 1538
    :cond_e0
    const/4 v1, 0x0

    .line 1539
    :try_start_e1
    sget-object v4, Ldb;->aa:[B

    array-length v4, v4

    new-array v4, v4, [B

    sput-object v4, Ldb;->ab:[B

    .line 1540
    sget-object v4, Ldb;->aa:[B

    const/4 v6, 0x0

    sget-object v7, Ldb;->ab:[B

    const/4 v8, 0x0

    sget-object v9, Ldb;->aa:[B

    array-length v9, v9

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1543
    const/4 v4, 0x0

    move v6, v5

    move v5, v3

    move-object v3, v2

    move v2, v1

    :goto_f9
    if-ge v4, v6, :cond_1de

    .line 1545
    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1546
    const/4 v7, 0x0

    .line 1547
    const/4 v8, 0x2

    aget-byte v8, v1, v8

    aput-byte v8, v3, v4

    .line 1550
    const/4 v8, 0x0

    :goto_108
    sget-object v9, Ldb;->ab:[B

    array-length v9, v9

    div-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_1e9

    .line 1552
    const/4 v9, 0x2

    aget-byte v9, v1, v9

    sget-object v13, Ldb;->ab:[B

    mul-int/lit8 v14, v8, 0x3

    aget-byte v13, v13, v14

    if-ne v9, v13, :cond_193

    .line 1554
    sget-object v7, Ldb;->ab:[B

    mul-int/lit8 v9, v8, 0x3

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x3

    aget-byte v13, v1, v13

    aput-byte v13, v7, v9

    .line 1555
    sget-object v7, Ldb;->ab:[B

    mul-int/lit8 v9, v8, 0x3

    add-int/lit8 v9, v9, 0x2

    const/4 v13, 0x4

    aget-byte v13, v1, v13

    aput-byte v13, v7, v9

    .line 1556
    sget-object v7, Ldb;->ac:[B

    const/4 v9, 0x5

    aget-byte v9, v1, v9

    aput-byte v9, v7, v8

    .line 1557
    invoke-static {v8, v1}, Ldb;->Code(I[B)Z

    move-result v1

    if-nez v1, :cond_18f

    .line 1560
    const/4 v5, 0x1

    .line 1561
    const/4 v1, 0x0

    new-array v3, v1, [B

    .line 1562
    const/4 v6, 0x0

    .line 1563
    const/4 v1, 0x1

    move v7, v5

    move-object v5, v3

    .line 1570
    :goto_145
    if-nez v1, :cond_1e7

    .line 1574
    sget-object v1, Ldb;->ab:[B

    array-length v1, v1

    div-int/lit8 v13, v1, 0x3

    .line 1575
    const/4 v3, 0x1

    .line 1576
    sub-int v1, v6, v4

    new-array v14, v1, [B

    .line 1577
    const/4 v2, 0x0

    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v8, 0x2

    aget-byte v1, v1, v8

    aput-byte v1, v14, v2

    .line 1578
    add-int/lit8 v1, v4, 0x1

    move v9, v1

    :goto_160
    if-ge v9, v6, :cond_19a

    .line 1580
    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1581
    const/4 v2, 0x0

    .line 1582
    const/4 v8, 0x0

    :goto_16a
    if-ge v8, v13, :cond_1e5

    .line 1584
    const/4 v15, 0x2

    aget-byte v15, v1, v15

    sget-object v16, Ldb;->ab:[B

    mul-int/lit8 v17, v8, 0x3

    aget-byte v16, v16, v17

    move/from16 v0, v16

    if-ne v15, v0, :cond_197

    .line 1586
    const/4 v1, 0x1

    .line 1590
    :goto_17a
    if-nez v1, :cond_1e3

    .line 1592
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v11, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v8, 0x2

    aget-byte v1, v1, v8

    aput-byte v1, v14, v3

    move v1, v2

    .line 1578
    :goto_18a
    add-int/lit8 v2, v9, 0x1

    move v3, v1

    move v9, v2

    goto :goto_160

    .line 1566
    :cond_18f
    const/4 v1, 0x1

    move v7, v5

    move-object v5, v3

    .line 1567
    goto :goto_145

    .line 1550
    :cond_193
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_108

    .line 1582
    :cond_197
    add-int/lit8 v8, v8, 0x1

    goto :goto_16a

    .line 1595
    :cond_19a
    add-int v1, v13, v3

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 1596
    add-int v2, v13, v3

    new-array v2, v2, [B

    .line 1597
    sget-object v8, Ldb;->ab:[B

    const/4 v9, 0x0

    const/4 v15, 0x0

    mul-int/lit8 v16, v13, 0x3

    move/from16 v0, v16

    invoke-static {v8, v9, v1, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1599
    sget-object v8, Ldb;->ac:[B

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v9, v2, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1601
    sput-object v1, Ldb;->ab:[B

    .line 1602
    sput-object v2, Ldb;->ac:[B

    .line 1603
    const/4 v2, 0x1

    .line 1607
    const/4 v1, 0x0

    :goto_1bc
    if-ge v1, v3, :cond_1cb

    .line 1609
    sget-object v8, Ldb;->ab:[B

    add-int v9, v13, v1

    mul-int/lit8 v9, v9, 0x3

    aget-byte v15, v14, v1

    aput-byte v15, v8, v9

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_1bc

    .line 1613
    :cond_1cb
    add-int/lit8 v1, v4, -0x1

    .line 1543
    :goto_1cd
    add-int/lit8 v4, v1, 0x1

    move-object v3, v5

    move v5, v7

    goto/16 :goto_f9

    .line 1629
    :cond_1d3
    invoke-static {}, Ldb;->e()V
    :try_end_1d6
    .catchall {:try_start_e1 .. :try_end_1d6} :catchall_6e

    goto/16 :goto_b4

    .line 1635
    :cond_1d8
    const/4 v1, 0x0

    goto/16 :goto_c8

    .line 1636
    :cond_1db
    const/4 v1, 0x0

    goto/16 :goto_d0

    :cond_1de
    move-object v1, v3

    move v3, v2

    move v2, v5

    goto/16 :goto_a7

    :cond_1e3
    move v1, v3

    goto :goto_18a

    :cond_1e5
    move v1, v2

    goto :goto_17a

    :cond_1e7
    move v1, v4

    goto :goto_1cd

    :cond_1e9
    move v1, v7

    move v7, v5

    move-object v5, v3

    goto/16 :goto_145

    :cond_1ee
    move-object v1, v2

    move v2, v3

    goto/16 :goto_a6
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .registers 9

    .prologue
    .line 5199
    const/4 v0, 0x0

    .line 5201
    if-eqz p2, :cond_55

    iget-object v1, p0, Lbg;->ac:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lbg;->Code:Lcc;

    iget-object v1, v1, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    if-eqz p4, :cond_45

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_55

    .line 5209
    :cond_45
    iget-object v0, p0, Lbg;->ab:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5216
    :cond_4d
    :goto_4d
    if-eqz v0, :cond_54

    .line 5218
    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1, v0, p3, p2}, Lcc;->Code(Ljava/lang/String;ILjava/lang/String;)V

    .line 5220
    :cond_54
    return-void

    .line 5211
    :cond_55
    if-eqz p4, :cond_4d

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    move-object v0, p4

    .line 5213
    goto :goto_4d
.end method

.method private Code([II[I)V
    .registers 15

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 6353
    iget-object v0, p0, Lbg;->aB:Lcv;

    iget-object v2, p0, Lbg;->Code:Lcc;

    iget v2, v2, Lcc;->C:I

    invoke-virtual {v0, v2}, Lcv;->Code(I)[[I

    move-result-object v2

    move v0, v1

    .line 6354
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_4e

    .line 6356
    aget-object v3, v2, v0

    .line 6357
    if-nez v0, :cond_39

    .line 6359
    aget v4, v3, v7

    aget v5, v3, v10

    add-int/2addr v4, v5

    aput v4, p3, v1

    .line 6360
    aget v4, v3, v9

    aput v4, p3, v8

    .line 6369
    :goto_22
    const/4 v4, 0x1

    const/4 v5, 0x4

    aget v5, v3, v5

    const/16 v6, 0x8

    aget v6, v3, v6

    add-int/2addr v5, v6

    invoke-direct {p0, p1, v1, p2, v5}, Lbg;->I([IIII)I

    move-result v5

    aput v5, p3, v4

    .line 6371
    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, p3, v7

    .line 6354
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 6365
    :cond_39
    aget v4, p3, v1

    aget v5, v3, v7

    aget v6, v3, v10

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, p3, v1

    .line 6366
    aget v4, p3, v8

    aget v5, v3, v9

    add-int/2addr v4, v5

    aput v4, p3, v8

    goto :goto_22

    .line 6373
    :cond_4e
    return-void
.end method

.method private static Code(I[BI)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6702
    sparse-switch p0, :sswitch_data_74

    move v0, v1

    .line 6706
    :cond_6
    :goto_6
    return v0

    .line 6702
    :sswitch_7
    if-eqz p2, :cond_44

    const/4 v2, 0x0

    :try_start_a
    aget-byte v2, p1, v2

    and-int/lit16 v4, v2, 0xff

    move v2, v1

    move v3, v0

    :goto_10
    if-ge v2, v4, :cond_42

    add-int/lit8 v5, v3, 0x0

    sub-int v6, p2, v3

    invoke-static {p1, v5, v6}, Lbg;->I([BII)I

    move-result v5

    if-ltz v5, :cond_44

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x0

    sub-int v6, p2, v3

    invoke-static {p1, v5, v6}, Lbg;->I([BII)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_44

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x0

    sub-int v6, p2, v3

    invoke-static {p1, v5, v6}, Lbg;->Code([BII)I

    move-result v5

    if-ltz v5, :cond_44

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x0

    sub-int v6, p2, v3

    invoke-static {p1, v5, v6}, Lbg;->Code([BII)I

    move-result v5

    if-ltz v5, :cond_44

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_42
    if-eq v3, p2, :cond_6

    :cond_44
    move v0, v1

    goto :goto_6

    :sswitch_46
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lbg;->Code([BIZ)Z

    move-result v0

    goto :goto_6

    :sswitch_4c
    move v0, v1

    goto :goto_6

    :sswitch_4e
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lbg;->Code([BIZ)Z

    move-result v0

    goto :goto_6

    :sswitch_54
    if-gtz p2, :cond_6

    move v0, v1

    goto :goto_6

    :sswitch_58
    move v2, v1

    move v3, v1

    :goto_5a
    const/4 v4, 0x5

    if-ge v2, v4, :cond_69

    sub-int v4, p2, v3

    invoke-static {p1, v3, v4}, Lbg;->I([BII)I
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_62} :catch_71

    move-result v4

    if-ltz v4, :cond_6b

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_69
    if-eq v3, p2, :cond_6

    :cond_6b
    move v0, v1

    goto :goto_6

    :sswitch_6d
    if-gtz p2, :cond_6

    move v0, v1

    goto :goto_6

    .line 6706
    :catch_71
    move-exception v0

    move v0, v1

    goto :goto_6

    .line 6702
    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_7
        0x2 -> :sswitch_46
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_4c
        0x12 -> :sswitch_4e
        0x1e -> :sswitch_54
        0x1f -> :sswitch_58
        0x25 -> :sswitch_6d
    .end sparse-switch
.end method

.method static Code(ZII)Z
    .registers 5

    .prologue
    .line 6494
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->m()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6496
    if-eqz p0, :cond_1a

    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, p1, p2}, Lbk;->I(II)Ljava/lang/String;

    move-result-object v0

    .line 6499
    :goto_10
    sget-object v1, Lar;->c:Lbk;

    invoke-virtual {v1, v0}, Lbk;->B(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 6501
    const/4 v0, 0x1

    .line 6506
    :goto_19
    return v0

    .line 6496
    :cond_1a
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, p1, p2}, Lbk;->Code(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 6503
    :cond_21
    sget-object v1, Lar;->c:Lbk;

    invoke-virtual {v1, v0}, Lbk;->Z(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19

    .line 6506
    :cond_28
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static Code([BIZ)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6807
    if-nez p1, :cond_6

    move v0, v1

    .line 6851
    :goto_5
    return v0

    .line 6812
    :cond_6
    aget-byte v0, p0, v1

    and-int/lit16 v4, v0, 0xff

    move v3, v1

    move v0, v2

    .line 6813
    :goto_c
    if-ge v3, v4, :cond_54

    .line 6815
    add-int/lit8 v5, v0, 0x0

    sub-int v6, p1, v0

    invoke-static {p0, v5, v6}, Lbg;->I([BII)I

    move-result v5

    .line 6816
    if-gez v5, :cond_1a

    move v0, v1

    .line 6818
    goto :goto_5

    .line 6820
    :cond_1a
    add-int/2addr v0, v5

    .line 6821
    add-int/lit8 v5, v0, 0x0

    sub-int v6, p1, v0

    invoke-static {p0, v5, v6}, Lbg;->I([BII)I

    move-result v5

    .line 6822
    const/4 v6, 0x2

    if-gt v5, v6, :cond_28

    move v0, v1

    .line 6825
    goto :goto_5

    .line 6827
    :cond_28
    add-int/2addr v5, v0

    .line 6828
    if-ne v5, p1, :cond_2d

    move v0, v1

    .line 6830
    goto :goto_5

    .line 6832
    :cond_2d
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p0, v5

    if-eqz v5, :cond_42

    .line 6834
    add-int/lit8 v5, v0, 0x0

    sub-int v6, p1, v0

    invoke-static {p0, v5, v6}, Lbg;->Code([BII)I

    move-result v5

    .line 6835
    if-gez v5, :cond_41

    move v0, v1

    .line 6837
    goto :goto_5

    .line 6839
    :cond_41
    add-int/2addr v0, v5

    .line 6841
    :cond_42
    if-eqz p2, :cond_51

    .line 6843
    add-int/lit8 v5, v0, 0x0

    sub-int v6, p1, v0

    invoke-static {p0, v5, v6}, Lbg;->I([BII)I

    move-result v5

    .line 6844
    if-gez v5, :cond_50

    move v0, v1

    .line 6846
    goto :goto_5

    .line 6848
    :cond_50
    add-int/2addr v0, v5

    .line 6813
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6851
    :cond_54
    if-ne v0, p1, :cond_58

    move v0, v2

    goto :goto_5

    :cond_58
    move v0, v1

    goto :goto_5
.end method

.method private D()I
    .registers 3

    .prologue
    .line 2882
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbg;->al:I

    invoke-virtual {p0, v0}, Lbg;->Z(I)I

    move-result v0

    return v0
.end method

.method private D(I)V
    .registers 4

    .prologue
    .line 3699
    sparse-switch p1, :sswitch_data_64

    .line 3727
    :goto_3
    return-void

    .line 3702
    :sswitch_4
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lbg;->al:I

    .line 3703
    invoke-direct {p0}, Lbg;->R()V

    .line 3704
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3707
    :sswitch_17
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lbg;->al:I

    .line 3708
    invoke-direct {p0}, Lbg;->R()V

    goto :goto_3

    .line 3711
    :sswitch_21
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3714
    :sswitch_28
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lbg;->al:I

    .line 3715
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 3716
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3719
    :sswitch_43
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3722
    :sswitch_4d
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3725
    :sswitch_54
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbg;->al:I

    .line 3726
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    goto :goto_3

    .line 3699
    :sswitch_data_64
    .sparse-switch
        0x42 -> :sswitch_21
        0x46 -> :sswitch_28
        0x49 -> :sswitch_17
        0x4c -> :sswitch_4d
        0x4d -> :sswitch_54
        0x53 -> :sswitch_43
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method private E(I)I
    .registers 4

    .prologue
    .line 3776
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->c()I

    move-result v0

    mul-int/2addr v0, p1

    iget v1, p0, Lbg;->q:I

    div-int/2addr v0, v1

    return v0
.end method

.method private E()V
    .registers 2

    .prologue
    .line 2892
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iput v0, p0, Lbg;->af:I

    .line 2893
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->ag:I

    .line 2894
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iput v0, p0, Lbg;->ah:I

    .line 2895
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->ai:I

    .line 2896
    return-void
.end method

.method private F(I)I
    .registers 4

    .prologue
    .line 3781
    iget v0, p0, Lbg;->q:I

    mul-int/2addr v0, p1

    iget v1, p0, Lbg;->s:I

    div-int/2addr v0, v1

    return v0
.end method

.method private F()V
    .registers 2

    .prologue
    .line 2900
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Lbg;->af:I

    .line 2901
    invoke-direct {p0}, Lbg;->z()I

    move-result v0

    iput v0, p0, Lbg;->ag:I

    .line 2902
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iput v0, p0, Lbg;->ah:I

    .line 2903
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->ai:I

    .line 2904
    return-void
.end method

.method private G(I)I
    .registers 5

    .prologue
    .line 5764
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5765
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbg;->al:I

    .line 5766
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->al:I

    return v0
.end method

.method private G()V
    .registers 3

    .prologue
    .line 2908
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 2909
    return-void
.end method

.method private H()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2913
    iget v0, p0, Lbg;->al:I

    invoke-virtual {p0, v0}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v0

    .line 2914
    invoke-direct {p0}, Lbg;->G()V

    .line 2915
    return-object v0
.end method

.method private static I([BII)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 6879
    const/4 v1, 0x2

    if-ge p2, v1, :cond_5

    .line 6892
    :cond_4
    :goto_4
    return v0

    .line 6883
    :cond_5
    invoke-static {p0, p1}, Lap;->Z([BI)I

    move-result v1

    .line 6884
    add-int/lit8 v2, v1, 0x2

    if-gt v2, p2, :cond_4

    .line 6888
    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2, v1}, Lap;->I([BII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6892
    add-int/lit8 v0, v1, 0x2

    goto :goto_4
.end method

.method private I([IIII)I
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 3816
    if-nez p3, :cond_4

    .line 3825
    :cond_3
    :goto_3
    return v0

    .line 3820
    :cond_4
    invoke-direct {p0, p4, p3}, Lbg;->c(II)I

    move-result v1

    .line 3821
    add-int v2, p2, v1

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 3825
    iget-object v0, p0, Lbg;->M:[I

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x0

    aget v0, v0, v2

    sub-int v0, p4, v0

    add-int/2addr v1, p2

    aget v1, p1, v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method private J(IIII)V
    .registers 7

    .prologue
    .line 3735
    invoke-direct {p0, p1, p2, p3, p4}, Lbg;->Z(IIII)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3737
    iget v0, p0, Lbg;->E:I

    if-lez v0, :cond_3e

    .line 3739
    iget v0, p0, Lbg;->A:I

    iget v1, p0, Lbg;->E:I

    add-int/2addr v0, v1

    .line 3740
    iget v1, p0, Lbg;->A:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbg;->A:I

    .line 3741
    add-int v1, p1, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lbg;->A:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbg;->E:I

    .line 3742
    iget v0, p0, Lbg;->D:I

    iget v1, p0, Lbg;->F:I

    add-int/2addr v0, v1

    .line 3743
    iget v1, p0, Lbg;->D:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbg;->D:I

    .line 3744
    add-int v1, p2, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lbg;->D:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbg;->F:I

    .line 3756
    :cond_3a
    :goto_3a
    invoke-direct {p0, p1, p2, p3, p4}, Lbg;->B(IIII)V

    .line 3758
    return-void

    .line 3748
    :cond_3e
    iput p1, p0, Lbg;->A:I

    .line 3749
    iput p2, p0, Lbg;->D:I

    .line 3750
    iput p3, p0, Lbg;->E:I

    .line 3751
    iput p4, p0, Lbg;->F:I

    goto :goto_3a
.end method

.method private J(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2251
    move v0, v1

    move v2, v1

    .line 2252
    :goto_4
    iget-object v3, p0, Lbg;->aq:Lbh;

    iget v3, v3, Lbh;->J:I

    if-ge v0, v3, :cond_50

    .line 2255
    iget-boolean v3, p0, Lbg;->t:Z

    if-eqz v3, :cond_2c

    .line 2258
    iget-object v3, p0, Lbg;->aq:Lbh;

    iget-object v3, v3, Lbh;->I:[Lbu;

    aget-object v3, v3, v0

    if-eqz v3, :cond_26

    invoke-direct {p0, v2}, Lbg;->t(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2260
    iget-object v3, p0, Lbg;->aq:Lbh;

    invoke-virtual {v3, v0, v4, v4}, Lbh;->Code(IZZ)V

    .line 2253
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x6

    goto :goto_4

    .line 2264
    :cond_26
    iget-object v3, p0, Lbg;->aq:Lbh;

    invoke-virtual {v3, v0, v4, v1}, Lbh;->Code(IZZ)V

    goto :goto_21

    .line 2269
    :cond_2c
    iget-object v3, p0, Lbg;->aq:Lbh;

    iget-object v3, v3, Lbh;->Z:[Lbu;

    aget-object v3, v3, v0

    if-eqz v3, :cond_40

    invoke-direct {p0, v2}, Lbg;->t(I)Z

    move-result v3

    if-nez v3, :cond_40

    .line 2271
    iget-object v3, p0, Lbg;->aq:Lbh;

    invoke-virtual {v3, v0, v4, v4}, Lbh;->Code(IZZ)V

    goto :goto_21

    .line 2273
    :cond_40
    if-nez p1, :cond_21

    iget-object v3, p0, Lbg;->aq:Lbh;

    iget-object v3, v3, Lbh;->I:[Lbu;

    aget-object v3, v3, v0

    if-eqz v3, :cond_21

    .line 2275
    iget-object v3, p0, Lbg;->aq:Lbh;

    invoke-virtual {v3, v0, v1, v4}, Lbh;->Code(IZZ)V

    goto :goto_21

    .line 2279
    :cond_50
    return-void
.end method

.method private K()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2925
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    .line 2926
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_2f

    .line 2928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbg;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2930
    :cond_2f
    return-object v0
.end method

.method private L()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3346
    iget-boolean v1, p0, Lbg;->O:Z

    if-nez v1, :cond_6

    .line 3363
    :cond_5
    :goto_5
    return v0

    .line 3351
    :cond_6
    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->b()Lbg;

    move-result-object v1

    if-ne v1, p0, :cond_5

    .line 3363
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private M()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 3368
    iput-boolean v1, p0, Lbg;->O:Z

    .line 3369
    sget-object v0, Lar;->Z:Lan;

    iget v2, p0, Lbg;->N:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lan;->o(I)V

    .line 3371
    sget-object v0, Lar;->Z:Lan;

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    .line 3372
    :goto_11
    iget v3, p0, Lbg;->N:I

    if-ge v0, v3, :cond_3b

    .line 3374
    iget-object v3, p0, Lbg;->M:[I

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x4

    aget v6, v3, v4

    .line 3375
    sget-object v3, Lar;->Z:Lan;

    iget-object v7, v3, Lan;->I:[I

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_37

    const/high16 v4, -0x80000000

    move v5, v4

    :goto_2a
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_39

    const/high16 v4, 0x40000000    # 2.0f

    :goto_30
    or-int/2addr v4, v5

    aput v4, v7, v2

    .line 3372
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_11

    :cond_37
    move v5, v1

    .line 3375
    goto :goto_2a

    :cond_39
    move v4, v1

    goto :goto_30

    .line 3379
    :cond_3b
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 3380
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 3381
    return-void
.end method

.method private native N()V
.end method

.method private O()V
    .registers 4

    .prologue
    .line 3581
    invoke-direct {p0}, Lbg;->N()V

    .line 3583
    invoke-direct {p0}, Lbg;->P()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3585
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 3586
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 3588
    :cond_1b
    return-void
.end method

.method private P()Z
    .registers 2

    .prologue
    .line 3766
    iget v0, p0, Lbg;->E:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private declared-synchronized Q()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 5128
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lbg;->aw:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3d

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 5149
    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    .line 5132
    :cond_9
    :try_start_9
    iget v1, p0, Lbg;->aw:I

    iput v1, p0, Lbg;->al:I

    .line 5133
    :cond_d
    iget v1, p0, Lbg;->al:I

    iget v2, p0, Lbg;->T:I

    if-gt v1, v2, :cond_7

    .line 5135
    iget v1, p0, Lbg;->al:I

    iput v1, p0, Lbg;->aw:I

    .line 5136
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    .line 5137
    invoke-direct {p0}, Lbg;->D()I

    move-result v2

    .line 5138
    iget v3, p0, Lbg;->al:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 5140
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    iget v3, p0, Lbg;->al:I

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 5141
    invoke-direct {p0}, Lbg;->R()V

    .line 5142
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_d

    .line 5144
    iget v0, p0, Lbg;->aw:I

    .line 5145
    iget v1, p0, Lbg;->al:I

    iput v1, p0, Lbg;->aw:I
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3d

    goto :goto_7

    .line 5128
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private R()V
    .registers 4

    .prologue
    .line 5405
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    :goto_4
    if-lez v0, :cond_18

    .line 5407
    iget v1, p0, Lbg;->al:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbg;->al:I

    .line 5408
    invoke-direct {p0}, Lbg;->A()I

    move-result v1

    iget v2, p0, Lbg;->al:I

    add-int/2addr v1, v2

    iput v1, p0, Lbg;->al:I

    .line 5405
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 5410
    :cond_18
    return-void
.end method

.method private S()V
    .registers 4

    .prologue
    .line 6188
    iget-boolean v0, p0, Lbg;->p:Z

    if-eqz v0, :cond_19

    .line 6190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->p:Z

    .line 6191
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 6192
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 6194
    :cond_19
    return-void
.end method

.method private T()Z
    .registers 2

    .prologue
    .line 6401
    iget-object v0, p0, Lbg;->aB:Lcv;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbg;->aB:Lcv;

    invoke-virtual {v0}, Lcv;->Code()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized Z([IIII)I
    .registers 12

    .prologue
    const v6, 0xffffff

    .line 3867
    monitor-enter p0

    const/4 v3, 0x1

    const v4, 0xffffff

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v5, p4

    :try_start_c
    invoke-static/range {v0 .. v5}, Ldb;->Code([IIIIII)I

    move-result v0

    .line 3869
    :goto_10
    if-lez v0, :cond_2c

    if-eq v0, p3, :cond_29

    add-int v1, p2, v0

    aget v1, p1, v1

    and-int/2addr v1, v6

    add-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    and-int/2addr v2, v6

    if-eq v1, v2, :cond_29

    add-int v1, p2, v0

    aget v1, p1, v1

    and-int/2addr v1, v6

    if-le v1, p4, :cond_2c

    .line 3881
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 3886
    :cond_2c
    :goto_2c
    if-ge v0, p3, :cond_3a

    add-int v1, p2, v0

    aget v1, p1, v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3c

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_3a

    .line 3888
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 3890
    :cond_3a
    monitor-exit p0

    return v0

    .line 3867
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Z(IIII)Z
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2650
    move v8, v9

    :goto_3
    iget-object v0, p0, Lbg;->v:[I

    aget v0, v0, v10

    if-ge v8, v0, :cond_30

    .line 2652
    iget-object v0, p0, Lbg;->v:[I

    add-int/lit8 v1, v8, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lbg;->v:[I

    add-int/lit8 v1, v8, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lbg;->v:[I

    add-int/lit8 v1, v8, 0x2

    aget v6, v0, v1

    iget-object v0, p0, Lbg;->v:[I

    add-int/lit8 v1, v8, 0x3

    aget v7, v0, v1

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Ldb;->Code(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2661
    :goto_2b
    return v9

    .line 2650
    :cond_2c
    add-int/lit8 v0, v8, 0x4

    move v8, v0

    goto :goto_3

    :cond_30
    move v9, v10

    .line 2661
    goto :goto_2b
.end method

.method private declared-synchronized a(III)I
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 5241
    monitor-enter p0

    :try_start_2
    iput p3, p0, Lbg;->al:I

    .line 5242
    invoke-direct {p0}, Lbg;->D()I

    .line 5243
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    .line 5244
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, p1}, Lan;->Z(I)V

    .line 5245
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, p2}, Lan;->J(I)V

    .line 5246
    sget-object v2, Lar;->Z:Lan;

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Lan;->o(I)V

    .line 5247
    sget-object v2, Lar;->Z:Lan;

    .line 5248
    iget v3, p0, Lbg;->al:I

    move v2, v0

    .line 5249
    :goto_21
    if-ge v0, v1, :cond_51

    .line 5251
    invoke-direct {p0}, Lbg;->E()V

    .line 5252
    sget-object v4, Lar;->Z:Lan;

    iget-object v4, v4, Lan;->I:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lbg;->af:I

    aput v6, v4, v2

    .line 5253
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, p0, Lbg;->ag:I

    aput v6, v2, v5

    .line 5254
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, p0, Lbg;->ah:I

    aput v6, v2, v4

    .line 5255
    sget-object v2, Lar;->Z:Lan;

    iget-object v4, v2, Lan;->I:[I

    add-int/lit8 v2, v5, 0x1

    iget v6, p0, Lbg;->ai:I

    aput v6, v4, v5

    .line 5249
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 5257
    :cond_51
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I

    move-result v4

    .line 5258
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->Z()I

    move-result v5

    .line 5259
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->J()I

    move-result v0

    .line 5260
    sget-object v2, Lar;->Z:Lan;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lan;->Z(I)V

    .line 5261
    sget-object v2, Lar;->Z:Lan;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lan;->J(I)V

    .line 5262
    invoke-static {v0}, Lbg;->w(I)I

    move-result v6

    .line 5263
    sget-object v0, Lar;->Z:Lan;

    iget-object v7, v0, Lan;->I:[I

    .line 5264
    sget-object v0, Lar;->Z:Lan;

    .line 5265
    iput v3, p0, Lbg;->al:I

    .line 5266
    const/4 v0, 0x1

    :goto_7c
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_97

    .line 5268
    invoke-direct {p0}, Lbg;->E()V

    .line 5269
    const/4 v1, 0x0

    iget v3, p0, Lbg;->ag:I

    invoke-direct {p0, v7, v1, v6, v3}, Lbg;->I([IIII)I

    move-result v1

    iput v1, p0, Lbg;->ag:I

    .line 5270
    sget-object v1, Lar;->Z:Lan;

    iget v3, p0, Lbg;->ag:I

    invoke-virtual {v1, v4, v0, v3}, Lan;->Z(III)V

    .line 5266
    add-int/lit8 v0, v0, 0x4

    move v1, v2

    goto :goto_7c

    .line 5272
    :cond_97
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5273
    invoke-direct {p0}, Lbg;->R()V

    .line 5274
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1, p3}, Lan;->B(III)V

    .line 5275
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x4

    const/16 v2, 0x10

    invoke-virtual {v0, v5, v1, v2}, Lan;->B(III)V

    .line 5276
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2}, Lan;->B(III)V

    .line 5277
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x2

    invoke-virtual {v0, v5, v1, v4}, Lan;->J(III)V
    :try_end_be
    .catchall {:try_start_2 .. :try_end_be} :catchall_c0

    .line 5278
    monitor-exit p0

    return v5

    .line 5241
    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(II)I
    .registers 4

    .prologue
    .line 3798
    iget v0, p0, Lbg;->q:I

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    return v0
.end method

.method private declared-synchronized c(II)I
    .registers 7

    .prologue
    .line 3844
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbg;->M:[I

    const/4 v1, 0x5

    invoke-static {v0, p2, v1, p1}, Ldb;->Code([IIII)I

    move-result v0

    .line 3845
    :goto_8
    if-lez v0, :cond_2d

    if-eq v0, p2, :cond_2a

    iget-object v1, p0, Lbg;->M:[I

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lbg;->M:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Lbg;->M:[I

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2f

    if-le v1, p1, :cond_2d

    .line 3857
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3860
    :cond_2d
    monitor-exit p0

    return v0

    .line 3844
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(II)[I
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6406
    iget-object v0, p0, Lbg;->aB:Lcv;

    invoke-virtual {v0, p1}, Lcv;->I(I)Ljava/util/Vector;

    move-result-object v5

    .line 6408
    if-eqz v5, :cond_55

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_55

    .line 6410
    invoke-virtual {v5, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 6412
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v4, v1, [I

    .line 6413
    array-length v1, v0

    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6416
    array-length v6, v0

    const/16 v1, 0x9

    aget v1, v0, v1

    iget-object v7, p0, Lbg;->Code:Lcc;

    iget v7, v7, Lcc;->C:I

    if-ne v1, v7, :cond_51

    move v1, v2

    :goto_2c
    aput v1, v4, v6

    .line 6418
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 6419
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    aget v6, v1, v3

    if-ne p1, v6, :cond_53

    aget v6, v0, v2

    aget v0, v0, v8

    add-int/2addr v0, v6

    aget v6, v1, v2

    aget v1, v1, v8

    add-int/2addr v1, v6

    if-ne v0, v1, :cond_53

    :goto_4d
    aput v2, v4, v5

    move-object v0, v4

    .line 6425
    :goto_50
    return-object v0

    :cond_51
    move v1, v3

    .line 6416
    goto :goto_2c

    :cond_53
    move v2, v3

    .line 6419
    goto :goto_4d

    .line 6425
    :cond_55
    const/4 v0, 0x0

    goto :goto_50
.end method

.method private q()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1440
    const/16 v1, 0x8

    move v2, v1

    move v1, v0

    .line 1443
    :goto_5
    const/4 v3, 0x4

    if-ge v1, v3, :cond_19

    .line 1445
    add-int/lit8 v3, v2, 0x2

    iget v4, p0, Lbg;->aa:I

    if-lt v3, v4, :cond_f

    .line 1452
    :cond_e
    :goto_e
    return v0

    .line 1449
    :cond_f
    invoke-virtual {p0, v2}, Lbg;->I(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1451
    :cond_19
    add-int/lit8 v1, v2, 0x6

    .line 1452
    iget v2, p0, Lbg;->aa:I

    if-lt v2, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method private r(I)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2547
    iget v1, p0, Lbg;->R:I

    add-int/2addr v1, p1

    .line 2549
    invoke-direct {p0, v1}, Lbg;->s(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2565
    :goto_a
    return-object v0

    .line 2558
    :cond_b
    :try_start_b
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2}, Lci;->r()Lbv;

    move-result-object v2

    iget-object v3, p0, Lbg;->X:[B

    add-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lbg;->X:[B

    invoke-static {v5, v1}, Lap;->Z([BI)I

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Lbv;->Code([BII)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_a

    .line 2563
    :catch_20
    move-exception v1

    goto :goto_a
.end method

.method private native r()V
.end method

.method private s()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1792
    monitor-enter p0

    .line 1794
    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, Lbg;->al:I

    .line 1795
    invoke-direct {p0}, Lbg;->D()I

    move-result v2

    iput v2, p0, Lbg;->b:I

    .line 1798
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    iput v2, p0, Lbg;->q:I

    .line 1799
    invoke-direct {p0}, Lbg;->y()I

    move-result v2

    iput v2, p0, Lbg;->r:I

    .line 1800
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    iput v2, p0, Lbg;->j:I

    .line 1801
    iget v2, p0, Lbg;->k:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    .line 1803
    const/4 v2, 0x0

    iput v2, p0, Lbg;->j:I

    .line 1805
    :cond_27
    iget v2, p0, Lbg;->al:I

    iput v2, p0, Lbg;->f:I

    .line 1806
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    iget v3, p0, Lbg;->al:I

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 1808
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    .line 1810
    if-lez v2, :cond_4d

    .line 1812
    new-array v3, v2, [B

    iput-object v3, p0, Lbg;->g:[B

    .line 1813
    iget-object v3, p0, Lbg;->g:[B

    iget-object v4, p0, Lbg;->X:[B

    iget v5, p0, Lbg;->al:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lbg;->al:I

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 1816
    :cond_4d
    iget v2, p0, Lbg;->al:I

    iput v2, p0, Lbg;->e:I

    .line 1817
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbg;->d:Ljava/lang/String;

    .line 1819
    invoke-direct {p0}, Lbg;->K()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbg;->c:Ljava/lang/String;

    .line 1822
    invoke-direct {p0}, Lbg;->D()I

    move-result v3

    .line 1823
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_91

    move v2, v0

    :goto_66
    iput-boolean v2, p0, Lbg;->L:Z

    .line 1824
    and-int/lit8 v2, v3, 0x6

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbg;->n:I

    .line 1825
    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_93

    move v2, v0

    :goto_73
    iput-boolean v2, p0, Lbg;->i:Z

    .line 1827
    iget-boolean v2, p0, Lbg;->ao:Z

    if-nez v2, :cond_7f

    .line 1829
    and-int/lit8 v2, v3, 0x8

    if-eqz v2, :cond_95

    :goto_7d
    sput-boolean v0, Ldb;->q:Z

    .line 1832
    :cond_7f
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iput v0, p0, Lbg;->W:I

    .line 1834
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->R:I

    .line 1836
    iget v0, p0, Lbg;->al:I

    iput v0, p0, Lbg;->Y:I

    .line 1843
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_4 .. :try_end_90} :catchall_97

    return-void

    :cond_91
    move v2, v1

    .line 1823
    goto :goto_66

    :cond_93
    move v2, v1

    .line 1825
    goto :goto_73

    :cond_95
    move v0, v1

    .line 1829
    goto :goto_7d

    .line 1843
    :catchall_97
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s(I)Z
    .registers 4

    .prologue
    .line 2644
    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lbg;->aa:I

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Lbg;->X:[B

    invoke-static {v0, p1}, Lap;->Z([BI)I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lbg;->aa:I

    if-gt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private t()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2229
    move v1, v0

    .line 2230
    :goto_3
    iget-object v2, p0, Lbg;->aq:Lbh;

    iget v2, v2, Lbh;->J:I

    if-ge v0, v2, :cond_30

    .line 2233
    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->I:[Lbu;

    aget-object v2, v2, v0

    if-nez v2, :cond_19

    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Z:[Lbu;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2b

    .line 2241
    :cond_19
    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Code:[I

    add-int/lit8 v3, v1, 0x2

    aget v4, v2, v3

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 2242
    iget-object v2, p0, Lbg;->aq:Lbh;

    invoke-virtual {v2, v0, v6, v6}, Lbh;->Code(IZZ)V

    .line 2231
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x6

    goto :goto_3

    .line 2245
    :cond_30
    return-void
.end method

.method private t(I)Z
    .registers 7

    .prologue
    .line 2666
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget-object v1, v1, Lbh;->Code:[I

    add-int/lit8 v2, p1, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Code:[I

    add-int/lit8 v3, p1, 0x4

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lbg;->aq:Lbh;

    iget-object v3, v3, Lbh;->Code:[I

    add-int/lit8 v4, p1, 0x4

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lbg;->Z(IIII)Z

    move-result v0

    .line 2672
    return v0
.end method

.method private u()I
    .registers 3

    .prologue
    .line 2289
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    iget v1, p0, Lbg;->q:I

    div-int/2addr v0, v1

    return v0
.end method

.method private u(I)V
    .registers 7

    .prologue
    .line 2805
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget-object v1, v1, Lbh;->Code:[I

    add-int/lit8 v2, p1, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Code:[I

    add-int/lit8 v3, p1, 0x4

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lbg;->aq:Lbh;

    iget-object v3, v3, Lbh;->Code:[I

    add-int/lit8 v4, p1, 0x4

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lbg;->J(IIII)V

    .line 2809
    return-void
.end method

.method private declared-synchronized v()Z
    .registers 13

    .prologue
    .line 2590
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbg;->t:Z

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->I:[Lbu;

    move-object v10, v0

    .line 2591
    :goto_a
    iget-boolean v0, p0, Lbg;->t:Z

    if-eqz v0, :cond_b7

    const/16 v3, 0x100

    .line 2592
    :goto_10
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move v9, v1

    .line 2593
    :goto_14
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget v0, v0, Lbh;->J:I

    if-ge v7, v0, :cond_11d

    .line 2596
    aget-object v0, v10, v7

    if-nez v0, :cond_a8

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x2

    aget v0, v0, v1

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_bd

    invoke-direct {p0, v9}, Lbg;->t(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lbg;->s(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    const/4 v0, 0x1

    :goto_40
    if-eqz v0, :cond_a8

    .line 2598
    iget-boolean v0, p0, Lbg;->ar:Z

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x5

    aget v0, v0, v1

    if-nez v0, :cond_bf

    const/4 v8, 0x1

    .line 2599
    :goto_51
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget v0, v0, Lbh;->B:I

    if-lez v0, :cond_db

    .line 2601
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x1

    aget v2, v0, v1

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x5

    aget v0, v0, v1

    ushr-int/lit8 v4, v0, 0x10

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x5

    aget v0, v0, v1

    const v1, 0xffff

    and-int v5, v0, v1

    sget-object v6, Lbg;->at:[I

    iget-object v0, p0, Lbg;->X:[B

    add-int/lit8 v1, v2, 0x2

    iget-object v11, p0, Lbg;->X:[B

    invoke-static {v11, v2}, Lap;->Z([BI)I

    move-result v2

    if-nez v4, :cond_85

    const/4 v4, -0x1

    :cond_85
    if-nez v5, :cond_88

    const/4 v5, -0x1

    :cond_88
    invoke-static/range {v0 .. v6}, Ldb;->Code([BIIIII[I)V

    .line 2606
    iget-object v0, p0, Lbg;->aq:Lbh;

    sget-object v1, Lbg;->at:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lbh;->I(I)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 2608
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    add-int/lit8 v1, v9, 0x2

    aget v2, v0, v1

    const/high16 v4, -0x80000000

    or-int/2addr v2, v4

    aput v2, v0, v1

    .line 2609
    invoke-direct {p0, v9}, Lbg;->u(I)V

    .line 2594
    :cond_a8
    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v1, v9, 0x6

    move v7, v0

    move v9, v1

    goto/16 :goto_14

    .line 2590
    :cond_b0
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Z:[Lbu;

    move-object v10, v0

    goto/16 :goto_a

    .line 2591
    :cond_b7
    invoke-direct {p0}, Lbg;->u()I

    move-result v3

    goto/16 :goto_10

    .line 2596
    :cond_bd
    const/4 v0, 0x0

    goto :goto_40

    .line 2598
    :cond_bf
    const/4 v8, 0x0

    goto :goto_51

    .line 2612
    :cond_c1
    if-eqz v8, :cond_db

    const/16 v0, 0x100

    if-eq v3, v0, :cond_db

    iget-object v0, p0, Lbg;->aq:Lbh;

    sget-object v1, Lbg;->at:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lbg;->at:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbh;->I(I)Z

    move-result v0

    if-nez v0, :cond_db

    .line 2616
    const/4 v8, 0x0

    .line 2619
    :cond_db
    sget-object v0, Lbg;->ap:Lbw;

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget-object v1, v1, Lbh;->Code:[I

    add-int/lit8 v2, v9, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lbg;->aq:Lbh;

    iget-object v2, v2, Lbh;->Code:[I

    add-int/lit8 v4, v9, 0x1

    aget v2, v2, v4

    iget-object v4, p0, Lbg;->aq:Lbh;

    iget-object v4, v4, Lbh;->Code:[I

    add-int/lit8 v5, v9, 0x2

    aget v4, v4, v5

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    iget-object v5, p0, Lbg;->aq:Lbh;

    iget-object v5, v5, Lbh;->Code:[I

    add-int/lit8 v6, v9, 0x3

    aget v5, v5, v6

    iget-object v6, p0, Lbg;->aq:Lbh;

    iget-object v6, v6, Lbh;->Code:[I

    add-int/lit8 v7, v9, 0x5

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x10

    iget-object v7, p0, Lbg;->aq:Lbh;

    iget-object v7, v7, Lbh;->Code:[I

    add-int/lit8 v9, v9, 0x5

    aget v7, v7, v9

    const v9, 0xffff

    and-int/2addr v7, v9

    invoke-virtual/range {v0 .. v8}, Lbw;->Code(IIIIIIIZ)V
    :try_end_11a
    .catchall {:try_start_1 .. :try_end_11a} :catchall_11f

    .line 2627
    const/4 v0, 0x1

    .line 2630
    :goto_11b
    monitor-exit p0

    return v0

    :cond_11d
    const/4 v0, 0x0

    goto :goto_11b

    .line 2590
    :catchall_11f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private v(I)Z
    .registers 6

    .prologue
    .line 3026
    add-int/lit8 v0, p1, 0x11

    .line 3027
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lbg;->Z(I)I

    move-result v0

    :goto_8
    if-lez v0, :cond_2c

    .line 3029
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lbg;->Z(I)I

    move-result v1

    const/16 v3, 0x74

    if-ne v1, v3, :cond_22

    invoke-virtual {p0, v2}, Lbg;->J(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3030
    const/4 v0, 0x1

    .line 3034
    :goto_21
    return v0

    .line 3031
    :cond_22
    invoke-virtual {p0, v2}, Lbg;->I(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 3027
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3034
    :cond_2c
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static w(I)I
    .registers 5

    .prologue
    .line 3079
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p0}, Lan;->q(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 3080
    sget-object v1, Lar;->Z:Lan;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v0, v3}, Lan;->Code(IIIZ)V

    .line 3082
    return v0
.end method

.method private w()V
    .registers 4

    .prologue
    .line 2693
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget v0, v0, Lbh;->B:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lbg;->aq:Lbh;

    iget v0, v0, Lbh;->C:I

    if-lez v0, :cond_1b

    .line 2695
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget v1, v1, Lbh;->B:I

    iget-object v2, p0, Lbg;->aq:Lbh;

    iget v2, v2, Lbh;->C:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbh;->Code(II)V

    .line 2698
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lbg;->Z:Lbh;

    .line 2699
    return-void
.end method

.method private x()I
    .registers 5

    .prologue
    .line 2817
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbg;->al:I

    .line 2818
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, -0x4

    iget-object v1, p0, Lbg;->X:[B

    aget-byte v1, v1, v0

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lbg;->X:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget-object v2, p0, Lbg;->X:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lbg;->X:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static x(I)I
    .registers 5

    .prologue
    .line 3087
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p0}, Lan;->q(I)I

    move-result v0

    .line 3088
    sget-object v1, Lar;->Z:Lan;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v0, v3}, Lan;->Code(IIIZ)V

    .line 3089
    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private y()I
    .registers 2

    .prologue
    .line 2831
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lbg;->al:I

    .line 2832
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Lbg;->Code(I)I

    move-result v0

    return v0
.end method

.method private y(I)I
    .registers 6

    .prologue
    .line 3278
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p1, 0x2

    iget-object v3, p0, Lbg;->X:[B

    invoke-static {v3, p1}, Lap;->Z([BI)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lan;->Code([BII)I

    move-result v0

    return v0
.end method

.method private z()I
    .registers 2

    .prologue
    .line 2854
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private z(I)I
    .registers 6

    .prologue
    .line 3325
    invoke-direct {p0, p1}, Lbg;->A(I)I

    move-result v0

    .line 3326
    invoke-direct {p0}, Lbg;->L()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    invoke-direct {p0}, Lbg;->M()V

    .line 3327
    :cond_12
    iget-boolean v1, p0, Lbg;->P:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lbg;->V:[I

    if-nez v1, :cond_1b

    .line 3328
    :cond_1a
    :goto_1a
    return v0

    .line 3327
    :cond_1b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbg;->P:Z

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->a()V

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {p0}, Lbg;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lan;->b(I)V

    sget-object v1, Lar;->Z:Lan;

    iget v2, p0, Lbg;->W:I

    invoke-virtual {v1, v2}, Lan;->c(I)V

    sget-object v1, Lar;->I:Lar;

    iget-object v2, p0, Lbg;->Code:Lcc;

    invoke-virtual {v2}, Lcc;->C()I

    move-result v2

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lar;->I(II)V

    goto :goto_1a
.end method


# virtual methods
.method final declared-synchronized B(I)Lcw;
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 2973
    monitor-enter p0

    const/4 v0, 0x0

    .line 2974
    :try_start_3
    iget v7, p0, Lbg;->al:I

    .line 2975
    iget v8, p0, Lbg;->af:I

    iget v9, p0, Lbg;->ag:I

    .line 2976
    const/4 v6, -0x1

    .line 2980
    iget v2, p0, Lbg;->Y:I

    iput v2, p0, Lbg;->al:I

    move v2, v1

    move v3, v1

    move v4, v1

    .line 2982
    :goto_11
    iget v5, p0, Lbg;->al:I

    if-ge v5, p1, :cond_3a

    .line 2984
    iget v5, p0, Lbg;->al:I

    .line 2985
    invoke-direct {p0}, Lbg;->D()I

    move-result v10

    .line 2986
    sparse-switch v10, :sswitch_data_4c

    :cond_1e
    move v5, v6

    .line 3004
    :goto_1f
    invoke-direct {p0, v10}, Lbg;->D(I)V

    move v6, v5

    .line 3005
    goto :goto_11

    .line 2992
    :sswitch_24
    invoke-direct {p0}, Lbg;->F()V

    .line 2993
    iget v11, p0, Lbg;->af:I

    add-int/2addr v2, v11

    .line 2994
    iget v11, p0, Lbg;->ag:I

    add-int/2addr v1, v11

    .line 2996
    const/16 v11, 0x54

    if-ne v10, v11, :cond_1e

    invoke-direct {p0, v5}, Lbg;->v(I)Z

    move-result v11

    if-nez v11, :cond_1e

    move v3, v1

    move v4, v2

    .line 3000
    goto :goto_1f

    .line 3007
    :cond_3a
    if-lez v6, :cond_41

    .line 3008
    new-instance v0, Lcw;

    invoke-direct {v0, p0, v6, v4, v3}, Lcw;-><init>(Lbg;III)V

    .line 3010
    :cond_41
    iput v8, p0, Lbg;->af:I

    .line 3011
    iput v9, p0, Lbg;->ag:I

    .line 3012
    iput v7, p0, Lbg;->al:I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_49

    .line 3014
    monitor-exit p0

    return-object v0

    .line 2973
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2986
    :sswitch_data_4c
    .sparse-switch
        0x42 -> :sswitch_24
        0x46 -> :sswitch_24
        0x49 -> :sswitch_24
        0x54 -> :sswitch_24
    .end sparse-switch
.end method

.method final declared-synchronized B(II)V
    .registers 8

    .prologue
    .line 6920
    monitor-enter p0

    :try_start_1
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Lan;->Code(IIIZ)V

    .line 6921
    iget-object v0, p0, Lbg;->M:[I

    mul-int/lit8 v1, p1, 0x5

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6924
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->p()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 6925
    monitor-exit p0

    return-void

    .line 6920
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final B()Z
    .registers 2

    .prologue
    .line 2677
    iget-object v0, p0, Lbg;->Z:Lbh;

    if-eqz v0, :cond_e

    .line 2679
    monitor-enter p0

    .line 2681
    :try_start_5
    invoke-direct {p0}, Lbg;->w()V

    .line 2682
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_b

    .line 2683
    const/4 v0, 0x1

    .line 2685
    :goto_a
    return v0

    .line 2682
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2685
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final C()I
    .registers 2

    .prologue
    .line 3298
    iget v0, p0, Lbg;->W:I

    return v0
.end method

.method final declared-synchronized C(I)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 3656
    monitor-enter p0

    .line 3657
    :try_start_2
    invoke-static {p1}, Lbg;->x(I)I

    move-result v2

    .line 3658
    sget-object v1, Lar;->Z:Lan;

    iget-object v3, v1, Lan;->I:[I

    .line 3659
    sget-object v1, Lar;->Z:Lan;

    .line 3660
    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v3, v1

    move v1, v0

    .line 3661
    :goto_11
    if-ge v1, v2, :cond_4b

    .line 3663
    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v1, 0x2

    aget v5, v3, v5

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v5, v0

    aput v5, v3, v4

    .line 3665
    add-int/lit8 v4, v1, 0x2

    aget v4, v3, v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    .line 3667
    iget-object v4, p0, Lbg;->M:[I

    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    .line 3668
    add-int/lit8 v4, v1, 0x2

    aget v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_48

    .line 3670
    const/4 v4, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lbg;->M:[I

    mul-int/lit8 v7, v1, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 3661
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3676
    :cond_4b
    const/4 v1, 0x0

    aput v0, v3, v1

    .line 3677
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->p()V
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_55

    .line 3678
    monitor-exit p0

    return-void

    .line 3656
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized C(II)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6945
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lbg;->P()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2c

    move-result v2

    if-nez v2, :cond_b

    .line 6977
    :goto_9
    monitor-exit p0

    return v0

    .line 6949
    :cond_b
    :try_start_b
    invoke-static {p2}, Lbg;->x(I)I

    move-result v3

    .line 6950
    sget-object v2, Lar;->Z:Lan;

    iget-object v4, v2, Lan;->I:[I

    .line 6951
    sget-object v2, Lar;->Z:Lan;

    .line 6952
    const/4 v2, 0x2

    iget v5, p0, Lbg;->D:I

    invoke-direct {p0, v4, v2, v3, v5}, Lbg;->I([IIII)I

    move-result v2

    .line 6953
    const/4 v5, 0x2

    iget v6, p0, Lbg;->D:I

    iget v7, p0, Lbg;->F:I

    add-int/2addr v6, v7

    invoke-direct {p0, v4, v5, v3, v6}, Lbg;->I([IIII)I

    move-result v3

    .line 6955
    if-ne v2, v3, :cond_2f

    .line 6957
    const/4 v1, 0x0

    iput v1, p0, Lbg;->E:I
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    goto :goto_9

    .line 6945
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6960
    :cond_2f
    if-gez v2, :cond_77

    .line 6962
    :try_start_31
    iget v0, p0, Lbg;->F:I

    sub-int v0, v3, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    .line 6969
    :goto_3b
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lan;->Code(IIIZ)V

    .line 6971
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    const/4 v4, 0x0

    iget v5, p0, Lbg;->A:I

    aput v5, v3, v4

    .line 6972
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    const/4 v4, 0x1

    aput v0, v3, v4

    .line 6973
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    const/4 v4, 0x2

    iget v5, p0, Lbg;->E:I

    aput v5, v3, v4

    .line 6974
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    const/4 v4, 0x3

    sub-int v0, v2, v0

    aput v0, v3, v4

    .line 6975
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->p()V

    .line 6976
    const/4 v0, 0x0

    iput v0, p0, Lbg;->E:I

    move v0, v1

    .line 6977
    goto :goto_9

    .line 6964
    :cond_77
    if-gez v3, :cond_87

    .line 6966
    iget v0, p0, Lbg;->F:I

    add-int/2addr v0, v2

    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
    :try_end_82
    .catchall {:try_start_31 .. :try_end_82} :catchall_2c

    move-result v0

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_3b

    :cond_87
    move v0, v2

    move v2, v3

    goto :goto_3b
.end method

.method final Code()I
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lbg;->X:[B

    array-length v0, v0

    return v0
.end method

.method final Code(I)I
    .registers 3

    .prologue
    .line 2849
    iget-object v0, p0, Lbg;->X:[B

    invoke-static {v0, p1}, Lbg;->Code([BI)I

    move-result v0

    return v0
.end method

.method final declared-synchronized Code(ICI)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 5566
    monitor-enter p0

    .line 5568
    :try_start_2
    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    .line 5569
    if-nez p2, :cond_42

    .line 5571
    invoke-virtual {p0, v1}, Lbg;->I(I)I

    move-result v3

    .line 5572
    add-int/lit8 v2, v1, 0x2

    .line 5573
    add-int v1, v3, v2

    move v3, v1

    move v1, v2

    .line 5602
    :goto_19
    if-nez p3, :cond_70

    .line 5604
    sget-object v2, Lar;->Z:Lan;

    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v4}, Lan;->o(I)V

    .line 5611
    :goto_24
    sget-object v2, Lar;->Z:Lan;

    .line 5612
    :goto_26
    if-ge v1, v3, :cond_7d

    .line 5614
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lbg;->Z(I)I

    move-result v4

    .line 5615
    invoke-virtual {p0, v2}, Lbg;->I(I)I

    move-result v5

    .line 5616
    add-int/lit8 v2, v2, 0x2

    .line 5617
    sget-object v1, Lar;->Z:Lan;

    iget-object v6, v1, Lan;->I:[I

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v5

    aput v4, v6, v0

    move v0, v1

    move v1, v2

    .line 5618
    goto :goto_26

    .line 5578
    :cond_42
    invoke-virtual {p0, v1}, Lbg;->I(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 5580
    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v3, v2, -0x1

    aget-byte v1, v1, v3

    :goto_51
    if-lez v1, :cond_87

    .line 5582
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lbg;->Z(I)I

    move-result v2

    .line 5583
    if-ne v2, p2, :cond_66

    .line 5585
    invoke-virtual {p0, v3}, Lbg;->I(I)I
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_7a

    move-result v1

    .line 5586
    add-int/lit8 v2, v3, 0x2

    .line 5587
    add-int/2addr v1, v2

    .line 5596
    :goto_62
    if-ge v1, v2, :cond_84

    .line 5619
    :goto_64
    monitor-exit p0

    return v0

    .line 5593
    :cond_66
    :try_start_66
    invoke-virtual {p0, v3}, Lbg;->I(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 5580
    add-int/lit8 v1, v1, -0x1

    goto :goto_51

    .line 5608
    :cond_70
    sget-object v2, Lar;->Z:Lan;

    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v4}, Lan;->p(I)V
    :try_end_79
    .catchall {:try_start_66 .. :try_end_79} :catchall_7a

    goto :goto_24

    .line 5566
    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5619
    :cond_7d
    :try_start_7d
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_7a

    move-result v0

    goto :goto_64

    :cond_84
    move v3, v1

    move v1, v2

    goto :goto_19

    :cond_87
    move v1, v0

    goto :goto_62
.end method

.method final declared-synchronized Code(II)I
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 5160
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lbg;->aw:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_55

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    move v0, v8

    .line 5194
    :goto_8
    monitor-exit p0

    return v0

    .line 5164
    :cond_a
    :try_start_a
    invoke-static {p2}, Lbg;->w(I)I

    move-result v10

    .line 5165
    sget-object v0, Lar;->Z:Lan;

    iget-object v11, v0, Lan;->I:[I

    .line 5166
    sget-object v0, Lar;->Z:Lan;

    .line 5167
    iget v0, p0, Lbg;->aw:I

    iput v0, p0, Lbg;->al:I

    .line 5168
    :goto_18
    iget v0, p0, Lbg;->al:I

    iget v1, p0, Lbg;->T:I

    if-gt v0, v1, :cond_7d

    .line 5170
    iget v0, p0, Lbg;->al:I

    iput v0, p0, Lbg;->aw:I

    .line 5171
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbg;->al:I

    .line 5172
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    move v9, v0

    :goto_2d
    if-lez v9, :cond_48

    .line 5174
    invoke-direct {p0}, Lbg;->E()V

    .line 5175
    const/4 v0, 0x0

    iget v1, p0, Lbg;->ag:I

    invoke-direct {p0, v11, v0, v10, v1}, Lbg;->I([IIII)I

    move-result v0

    iput v0, p0, Lbg;->ag:I

    .line 5176
    iget v0, p0, Lbg;->ag:I

    if-gez v0, :cond_58

    .line 5179
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v1, v9, -0x1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5191
    :cond_48
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5192
    invoke-direct {p0}, Lbg;->R()V
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_55

    goto :goto_18

    .line 5160
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5182
    :cond_58
    :try_start_58
    iget v0, p0, Lbg;->ax:I

    iget v1, p0, Lbg;->ay:I

    iget v2, p0, Lbg;->az:I

    iget v3, p0, Lbg;->aA:I

    iget v4, p0, Lbg;->af:I

    iget v5, p0, Lbg;->ag:I

    iget v6, p0, Lbg;->ah:I

    iget v7, p0, Lbg;->ai:I

    invoke-static/range {v0 .. v7}, Ldb;->Code(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 5184
    iget v0, p0, Lbg;->aw:I

    invoke-direct {p0, p1, p2, v0}, Lbg;->a(III)I

    .line 5186
    iget v0, p0, Lbg;->al:I

    iput v0, p0, Lbg;->aw:I
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_55

    .line 5187
    const/4 v0, 0x1

    goto :goto_8

    .line 5172
    :cond_79
    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_2d

    :cond_7d
    move v0, v8

    .line 5194
    goto :goto_8
.end method

.method final Code(IIIIII)I
    .registers 19

    .prologue
    .line 5700
    iget-object v0, p0, Lbg;->U:[I

    if-nez v0, :cond_6

    .line 5702
    const/4 v0, 0x0

    .line 5746
    :goto_5
    return v0

    .line 5704
    :cond_6
    const/4 v1, 0x0

    .line 5705
    invoke-static/range {p6 .. p6}, Lbg;->w(I)I

    move-result v10

    .line 5706
    sget-object v0, Lar;->Z:Lan;

    iget-object v11, v0, Lan;->I:[I

    .line 5707
    sget-object v0, Lar;->Z:Lan;

    .line 5708
    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    :goto_14
    iget-object v0, p0, Lbg;->U:[I

    array-length v0, v0

    if-ge v8, v0, :cond_66

    .line 5710
    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lbg;->U:[I

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v11, v2, v10, v3}, Lbg;->I([IIII)I

    move-result v2

    aput v2, v0, v1

    .line 5712
    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x4

    aget v0, v0, v1

    if-ltz v0, :cond_5d

    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x4

    aget v5, v0, v1

    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x2

    aget v6, v0, v1

    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x3

    aget v7, v0, v1

    move/from16 v0, p5

    move/from16 v1, p4

    move v2, p3

    move v3, p2

    invoke-static/range {v0 .. v7}, Ldb;->Code(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 5719
    add-int/lit8 v1, v9, 0x1

    .line 5708
    :goto_58
    add-int/lit8 v0, v8, 0x5

    move v8, v0

    move v9, v1

    goto :goto_14

    .line 5723
    :cond_5d
    iget-object v0, p0, Lbg;->U:[I

    add-int/lit8 v1, v8, 0x4

    const/4 v2, -0x1

    aput v2, v0, v1

    move v1, v9

    goto :goto_58

    .line 5726
    :cond_66
    if-nez p1, :cond_bb

    .line 5729
    sget-object v0, Lar;->Z:Lan;

    mul-int/lit8 v1, v9, 0x4

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 5735
    :goto_6f
    sget-object v0, Lar;->Z:Lan;

    const/4 v0, 0x0

    .line 5736
    const/4 v1, 0x0

    :goto_73
    iget-object v2, p0, Lbg;->U:[I

    array-length v2, v2

    if-ge v1, v2, :cond_c3

    .line 5738
    iget-object v2, p0, Lbg;->U:[I

    add-int/lit8 v3, v1, 0x4

    aget v2, v2, v3

    if-ltz v2, :cond_b8

    .line 5740
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lbg;->U:[I

    add-int/lit8 v5, v1, 0x0

    aget v4, v4, v5

    aput v4, v2, v0

    .line 5741
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lbg;->U:[I

    add-int/lit8 v5, v1, 0x4

    aget v4, v4, v5

    aput v4, v0, v3

    .line 5742
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lbg;->U:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    aput v4, v0, v2

    .line 5743
    sget-object v0, Lar;->Z:Lan;

    iget-object v2, v0, Lan;->I:[I

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lbg;->U:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    .line 5736
    :cond_b8
    add-int/lit8 v1, v1, 0x5

    goto :goto_73

    .line 5733
    :cond_bb
    sget-object v0, Lar;->Z:Lan;

    mul-int/lit8 v1, v9, 0x4

    invoke-virtual {v0, v1}, Lan;->p(I)V

    goto :goto_6f

    .line 5746
    :cond_c3
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I

    move-result v0

    goto/16 :goto_5
.end method

.method final Code(I[I)I
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3901
    iput p1, p0, Lbg;->al:I

    .line 3902
    :goto_4
    iget v0, p0, Lbg;->al:I

    iget v1, p0, Lbg;->aa:I

    if-ge v0, v1, :cond_36

    .line 3904
    iget v0, p0, Lbg;->al:I

    .line 3906
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    .line 3907
    sparse-switch v1, :sswitch_data_38

    .line 3921
    :goto_13
    const/16 v2, 0x54

    if-ne v1, v2, :cond_32

    .line 3927
    :goto_17
    return v0

    .line 3913
    :sswitch_18
    invoke-direct {p0}, Lbg;->F()V

    .line 3914
    iget v2, p0, Lbg;->af:I

    aget v3, p2, v4

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->af:I

    .line 3915
    iget v2, p0, Lbg;->ag:I

    aget v3, p2, v5

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->ag:I

    .line 3916
    iget v2, p0, Lbg;->af:I

    aput v2, p2, v4

    .line 3917
    iget v2, p0, Lbg;->ag:I

    aput v2, p2, v5

    goto :goto_13

    .line 3924
    :cond_32
    invoke-direct {p0, v1}, Lbg;->D(I)V

    goto :goto_4

    .line 3927
    :cond_36
    const/4 v0, -0x1

    goto :goto_17

    .line 3907
    :sswitch_data_38
    .sparse-switch
        0x42 -> :sswitch_18
        0x46 -> :sswitch_18
        0x49 -> :sswitch_18
        0x54 -> :sswitch_18
    .end sparse-switch
.end method

.method final declared-synchronized Code(Ljava/lang/Object;I)I
    .registers 5

    .prologue
    .line 5963
    monitor-enter p0

    :try_start_1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, [I

    .line 5964
    aget v0, v0, p2

    .line 5965
    iget-object v1, p0, Lbg;->X:[B

    invoke-static {v1, v0}, Lap;->Z([BI)I

    move-result v1

    .line 5967
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lbg;->y(I)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    move-result v0

    monitor-exit p0

    return v0

    .line 5963
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Code(Ljava/lang/Object;Lbp;I)I
    .registers 5

    .prologue
    .line 6018
    monitor-enter p0

    :try_start_1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, [I

    .line 6019
    aget v0, v0, p3

    iput v0, p0, Lbg;->al:I

    .line 6020
    invoke-direct {p0}, Lbg;->G()V

    .line 6021
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lbp;->Code(Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    move-result v0

    monitor-exit p0

    return v0

    .line 6018
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Ljava/lang/String;[II)I
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6269
    monitor-enter p0

    const/4 v2, 0x0

    .line 6272
    if-eqz p2, :cond_86

    .line 6274
    :try_start_6
    invoke-static {p3}, Lbg;->w(I)I

    move-result v2

    .line 6275
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    .line 6276
    sget-object v4, Lar;->Z:Lan;

    .line 6279
    :goto_10
    iget-object v4, p0, Lbg;->Code:Lcc;

    iget-object v4, v4, Lcc;->B:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lbg;->aB:Lcv;

    if-eqz v4, :cond_4f

    .line 6281
    iget-object v4, p0, Lbg;->aB:Lcv;

    invoke-virtual {v4}, Lcv;->Code()Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_83

    move-result v4

    if-nez v4, :cond_28

    .line 6312
    :cond_26
    :goto_26
    monitor-exit p0

    return v0

    .line 6281
    :cond_28
    :try_start_28
    iget-object v4, p0, Lbg;->Code:Lcc;

    iget-object v5, p0, Lbg;->Code:Lcc;

    iget v5, v5, Lcc;->C:I

    iget-object v6, p0, Lbg;->aB:Lcv;

    invoke-virtual {v6}, Lcv;->I()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3e

    iget-object v0, p0, Lbg;->Code:Lcc;

    iget v0, v0, Lcc;->C:I

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    iput v0, v4, Lcc;->C:I

    if-eqz p2, :cond_45

    invoke-direct {p0, v3, v2, p2}, Lbg;->Code([II[I)V

    :cond_45
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget v0, v0, Lcc;->C:I

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_26

    :cond_4d
    const/4 v0, 0x2

    goto :goto_26

    .line 6284
    :cond_4f
    iget-object v4, p0, Lbg;->aB:Lcv;

    if-eqz v4, :cond_56

    .line 6286
    invoke-virtual {p0}, Lbg;->l()V

    .line 6289
    :cond_56
    iget-object v4, p0, Lbg;->Code:Lcc;

    iput-object p1, v4, Lcc;->B:Ljava/lang/String;

    .line 6292
    new-instance v4, Lcv;

    invoke-direct {v4}, Lcv;-><init>()V

    iput-object v4, p0, Lbg;->aB:Lcv;

    .line 6293
    iget-object v4, p0, Lbg;->aB:Lcv;

    iget v5, p0, Lbg;->Y:I

    invoke-virtual {v4, p0, v5, p1}, Lcv;->Code(Lbg;ILjava/lang/String;)V

    .line 6297
    iget-object v4, p0, Lbg;->aB:Lcv;

    invoke-virtual {v4}, Lcv;->Code()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 6299
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget v0, v0, Lcc;->C:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_7c

    .line 6301
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v4, 0x0

    iput v4, v0, Lcc;->C:I

    .line 6304
    :cond_7c
    if-eqz p2, :cond_81

    .line 6306
    invoke-direct {p0, v3, v2, p2}, Lbg;->Code([II[I)V
    :try_end_81
    .catchall {:try_start_28 .. :try_end_81} :catchall_83

    :cond_81
    move v0, v1

    .line 6308
    goto :goto_26

    .line 6269
    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_86
    move-object v3, v2

    move v2, v0

    goto :goto_10
.end method

.method final declared-synchronized Code(III)Lcw;
    .registers 12

    .prologue
    const/4 v7, -0x1

    .line 2940
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lbg;->al:I

    .line 2941
    iget v2, p0, Lbg;->af:I

    iget v3, p0, Lbg;->ag:I

    .line 2943
    const/4 v0, 0x4

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p2, v4, v0

    const/4 v0, 0x1

    aput p3, v4, v0

    const/4 v0, 0x2

    const/4 v5, 0x0

    aput v5, v4, v0

    const/4 v0, 0x3

    const/4 v5, 0x0

    aput v5, v4, v0

    .line 2944
    const/4 v0, 0x0

    .line 2946
    :cond_1a
    :goto_1a
    if-nez v0, :cond_46

    if-eq p1, v7, :cond_46

    .line 2949
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0xa

    iput v5, p0, Lbg;->al:I

    .line 2951
    const/16 v5, 0x54

    invoke-direct {p0, v5}, Lbg;->D(I)V

    .line 2953
    iget v5, p0, Lbg;->al:I

    invoke-virtual {p0, v5, v4}, Lbg;->Code(I[I)I

    move-result p1

    .line 2954
    if-eq p1, v7, :cond_1a

    invoke-direct {p0, p1}, Lbg;->v(I)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2956
    new-instance v0, Lcw;

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-direct {v0, p0, p1, v5, v6}, Lcw;-><init>(Lbg;III)V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    goto :goto_1a

    .line 2940
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2960
    :cond_46
    :try_start_46
    iput v2, p0, Lbg;->af:I

    .line 2961
    iput v3, p0, Lbg;->ag:I

    .line 2962
    iput v1, p0, Lbg;->al:I
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_43

    .line 2964
    monitor-exit p0

    return-object v0
.end method

.method final Code(IIII)V
    .registers 6

    .prologue
    .line 5110
    iget v0, p0, Lbg;->S:I

    if-nez v0, :cond_8

    .line 5112
    const/4 v0, -0x1

    iput v0, p0, Lbg;->aw:I

    .line 5120
    :goto_7
    return-void

    .line 5115
    :cond_8
    iget v0, p0, Lbg;->S:I

    iput v0, p0, Lbg;->aw:I

    .line 5116
    iput p4, p0, Lbg;->ax:I

    .line 5117
    iput p3, p0, Lbg;->ay:I

    .line 5118
    iput p2, p0, Lbg;->az:I

    .line 5119
    iput p1, p0, Lbg;->aA:I

    goto :goto_7
.end method

.method final Code(IIIIIIIZ)V
    .registers 19

    .prologue
    .line 2711
    const/4 v9, 0x0

    .line 2712
    const/4 v1, 0x0

    .line 2713
    if-eqz p8, :cond_55

    sget-object v0, Lbg;->au:[Lbu;

    :goto_6
    move v8, v1

    move-object v7, v0

    .line 2715
    :goto_8
    sget v0, Lar;->b:I

    if-gt v8, v0, :cond_8d

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    .line 2719
    :try_start_15
    invoke-direct/range {v0 .. v7}, Lbg;->Code(IIIIII[Lbu;)Lbu;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_57

    move-result-object v0

    move-object v1, v0

    .line 2748
    :goto_1a
    if-nez v1, :cond_1e

    if-lez v8, :cond_4e

    .line 2750
    :cond_1e
    monitor-enter p0

    .line 2752
    :try_start_1f
    iget-object v0, p0, Lbg;->aq:Lbh;

    invoke-virtual {v0, p1}, Lbh;->Z(I)I

    move-result v2

    .line 2754
    if-eqz v1, :cond_39

    iget-object v3, p0, Lbg;->aq:Lbh;

    const/16 v0, 0x100

    if-ne p3, v0, :cond_88

    const/4 v0, 0x1

    :goto_2e
    sget-object v4, Lbg;->au:[Lbu;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v0, v1, v4}, Lbh;->Code(IZLbu;Lbu;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2759
    :cond_39
    iget-object v0, p0, Lbg;->aq:Lbh;

    iget-object v0, v0, Lbh;->Code:[I

    mul-int/lit8 v1, v2, 0x6

    add-int/lit8 v1, v1, 0x2

    aget v3, v0, v1

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 2763
    :cond_48
    mul-int/lit8 v0, v2, 0x6

    invoke-direct {p0, v0}, Lbg;->u(I)V

    .line 2764
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_8a

    .line 2766
    :cond_4e
    sget-object v0, Lbg;->au:[Lbu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2767
    return-void

    .line 2713
    :cond_55
    const/4 v0, 0x0

    goto :goto_6

    .line 2727
    :catch_57
    move-exception v0

    sget-object v0, Lbg;->au:[Lbu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2728
    const/4 v7, 0x0

    .line 2729
    sget v0, Lar;->b:I

    if-eq v8, v0, :cond_8d

    .line 2734
    iget-boolean v0, p0, Lbg;->B:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lbg;->Z:Lbh;

    if-eqz v0, :cond_6e

    .line 2738
    invoke-direct {p0}, Lbg;->w()V

    .line 2741
    :cond_6e
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 2742
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v1, v0, Lcc;->Code:Lar;

    if-lez v8, :cond_86

    const/4 v0, 0x1

    :goto_7a
    invoke-virtual {v1, v0}, Lar;->Code(Z)V

    .line 2743
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 2715
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_8

    .line 2742
    :cond_86
    const/4 v0, 0x0

    goto :goto_7a

    .line 2754
    :cond_88
    const/4 v0, 0x0

    goto :goto_2e

    .line 2764
    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8d
    move-object v1, v9

    goto :goto_1a
.end method

.method final declared-synchronized Code(IIIIIZZZIII)V
    .registers 31

    .prologue
    .line 4077
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->v:[I

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x4

    aput v4, v2, v3

    .line 4078
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->v:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->v:[I

    array-length v3, v3

    if-le v2, v3, :cond_35

    .line 4080
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->v:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->v:[I

    .line 4081
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->v:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->v:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 4083
    :cond_35
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->v:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lan;->Code(IIIZ)V

    .line 4085
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->v:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->v:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4088
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->v:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->M:[I

    if-eqz v2, :cond_d9

    invoke-static/range {p4 .. p4}, Lbg;->x(I)I

    move-result v6

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    const/4 v4, 0x2

    const/4 v5, 0x1

    aget v5, v2, v5

    move-object v8, v2

    move v9, v4

    move v10, v6

    move v4, v5

    :goto_77
    if-nez p3, :cond_e2

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    :cond_7d
    move-object/from16 v0, p0

    iput-object v3, v0, Lbg;->v:[I

    .line 4125
    sget-object v3, Lar;->Z:Lan;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->v:[I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lbg;->Code(Lan;II[IIIZZZIII)V

    .line 4134
    if-nez p8, :cond_259

    .line 4136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbg;->z:Z

    .line 4137
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->y:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_c9

    .line 4139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->A:I

    .line 4140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->D:I

    .line 4141
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->q:I

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->E:I

    .line 4142
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->r:I

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->F:I

    .line 4160
    :cond_c9
    :goto_c9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbg;->w:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbg;->x:Z

    .line 4161
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lbg;->w:Z
    :try_end_d7
    .catchall {:try_start_1 .. :try_end_d7} :catchall_150

    .line 4163
    monitor-exit p0

    return-void

    .line 4088
    :cond_d9
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v2

    move v9, v4

    move v10, v6

    move v4, v5

    goto :goto_77

    :cond_e2
    const/4 v2, 0x1

    :goto_e3
    const/4 v5, 0x0

    :try_start_e4
    aget v5, v3, v5

    if-ge v2, v5, :cond_153

    add-int/lit8 v5, v2, 0x3

    aget v5, v3, v5

    if-nez v5, :cond_103

    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, -0x4

    aput v6, v3, v5

    add-int/lit8 v5, v2, 0x4

    const/4 v6, 0x0

    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, v2

    invoke-static {v3, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_100
    add-int/lit8 v2, v2, 0x4

    goto :goto_e3

    :cond_103
    add-int/lit8 v5, v2, 0x0

    aget v5, v3, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v3, v6

    add-int/lit8 v7, v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lbg;->b(II)I

    move-result v11

    aput v11, v3, v7

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v1, v4}, Lbg;->C(III)I

    move-result v11

    aput v11, v3, v7

    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v11, v2, 0x2

    aget v11, v3, v11

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lbg;->b(II)I

    move-result v5

    add-int/lit8 v11, v2, 0x0

    aget v11, v3, v11

    sub-int/2addr v5, v11

    aput v5, v3, v7

    add-int/lit8 v5, v2, 0x3

    add-int/lit8 v7, v2, 0x3

    aget v7, v3, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v1, v4}, Lbg;->C(III)I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    aget v7, v3, v7

    sub-int/2addr v6, v7

    aput v6, v3, v5
    :try_end_14f
    .catchall {:try_start_e4 .. :try_end_14f} :catchall_150

    goto :goto_100

    .line 4077
    :catchall_150
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4088
    :cond_153
    :try_start_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->M:[I

    if-eqz v2, :cond_7d

    const/4 v5, 0x1

    :goto_15a
    const/4 v2, 0x0

    aget v2, v3, v2

    if-ge v5, v2, :cond_7d

    add-int/lit8 v2, v5, 0x1

    aget v4, v3, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v4}, Lbg;->Z([IIII)I

    move-result v2

    if-lt v2, v10, :cond_182

    const/4 v2, 0x0

    aget v4, v3, v2

    add-int/lit8 v4, v4, -0x4

    aput v4, v3, v2

    add-int/lit8 v2, v5, 0x4

    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v4, v5

    invoke-static {v3, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v5, -0x4

    :cond_17f
    :goto_17f
    add-int/lit8 v5, v2, 0x4

    goto :goto_15a

    :cond_182
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lbg;->M:[I

    mul-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x0

    aget v7, v7, v11

    add-int/2addr v7, v4

    add-int v11, v9, v2

    aget v11, v8, v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    sub-int/2addr v7, v11

    aput v7, v3, v6

    const/4 v6, 0x1

    add-int v7, v9, v2

    aget v7, v8, v7

    const v11, 0xffffff

    and-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lbg;->M:[I

    mul-int/lit8 v12, v2, 0x5

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v7, v11

    move/from16 v17, v2

    move v2, v5

    move/from16 v5, v17

    move/from16 v18, v4

    move v4, v6

    move/from16 v6, v18

    :cond_1b8
    :goto_1b8
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v10, :cond_241

    add-int/lit8 v11, v2, 0x3

    aget v11, v3, v11

    add-int/2addr v11, v6

    if-ge v7, v11, :cond_241

    add-int v11, v9, v5

    aget v11, v8, v11

    const/high16 v12, -0x80000000

    and-int/2addr v11, v12

    if-nez v11, :cond_223

    if-eqz v4, :cond_1b8

    sub-int v6, v7, v6

    add-int/lit8 v4, v2, 0x0

    aget v11, v3, v4

    add-int/lit8 v4, v2, 0x1

    aget v12, v3, v4

    add-int/lit8 v4, v2, 0x2

    aget v13, v3, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x4

    array-length v14, v3

    if-lt v4, v14, :cond_1f4

    array-length v4, v3

    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v14, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_1f4
    add-int/lit8 v4, v2, 0x4

    const/4 v14, 0x0

    aget v14, v3, v14

    add-int/lit8 v14, v14, 0x1

    sub-int/2addr v14, v2

    invoke-static {v3, v2, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    aget v14, v3, v4

    add-int/lit8 v14, v14, 0x4

    aput v14, v3, v4

    add-int/lit8 v4, v2, 0x0

    aput v11, v3, v4

    add-int/lit8 v4, v2, 0x1

    aput v12, v3, v4

    add-int/lit8 v4, v2, 0x2

    aput v13, v3, v4

    add-int/lit8 v4, v2, 0x3

    aput v6, v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x3

    aget v11, v3, v4

    sub-int v6, v11, v6

    aput v6, v3, v4

    const/4 v4, 0x0

    move v6, v7

    goto :goto_1b8

    :cond_223
    if-nez v4, :cond_234

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lbg;->M:[I

    mul-int/lit8 v12, v5, 0x5

    add-int/lit8 v12, v12, 0x0

    aget v11, v11, v12

    aput v11, v3, v4

    const/4 v4, 0x1

    :cond_234
    move-object/from16 v0, p0

    iget-object v11, v0, Lbg;->M:[I

    mul-int/lit8 v12, v5, 0x5

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v7, v11

    goto/16 :goto_1b8

    :cond_241
    if-nez v4, :cond_17f

    const/4 v4, 0x0

    aget v5, v3, v4

    add-int/lit8 v5, v5, -0x4

    aput v5, v3, v4

    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x0

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v5, v2

    invoke-static {v3, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x4

    goto/16 :goto_17f

    .line 4147
    :cond_259
    if-lez p11, :cond_274

    .line 4149
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbg;->w:Z

    if-nez v2, :cond_c9

    .line 4151
    move/from16 v0, p3

    move/from16 v1, p11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->y:I

    .line 4152
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbg;->z:Z

    goto/16 :goto_c9

    .line 4158
    :cond_274
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbg;->z:Z
    :try_end_279
    .catchall {:try_start_153 .. :try_end_279} :catchall_150

    goto/16 :goto_c9
.end method

.method final declared-synchronized Code(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 6158
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 6159
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lbg;->al:I

    .line 6160
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    .line 6161
    iget v1, p0, Lbg;->al:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbg;->al:I

    .line 6162
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v1

    .line 6163
    iget-object v2, p0, Lbg;->Code:Lcc;

    invoke-virtual {v2, p2, v0, v1}, Lcc;->Code(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 6164
    monitor-exit p0

    return-void

    .line 6158
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Code(IZ)V
    .registers 4

    .prologue
    .line 3688
    monitor-enter p0

    :try_start_1
    sget-object v0, Lar;->Z:Lan;

    invoke-direct {p0, v0, p1, p2}, Lbg;->Code(Lan;IZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 3690
    monitor-exit p0

    return-void

    .line 3688
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final Code(Lct;Ljava/io/DataInputStream;II)V
    .registers 25

    .prologue
    .line 685
    shl-int/lit8 v2, p4, 0x10

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lct;->n()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->h:I

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    move-object/from16 v0, p0

    iget v3, v0, Lbg;->h:I

    invoke-virtual {v2, v3}, Lcc;->Code(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcc;->Z(I)V

    .line 693
    sget-object v2, Ldb;->L:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_39

    sget-object v2, Ldb;->L:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_39

    .line 699
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ldb;->Code(ILjava/lang/String;Z)V

    .line 703
    :cond_39
    invoke-virtual/range {p1 .. p1}, Lct;->n()I

    move-result v10

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 709
    invoke-static/range {p2 .. p2}, Lbg;->Code(Ljava/io/DataInput;)I

    move-result v13

    .line 711
    const/4 v3, 0x0

    .line 712
    const/4 v2, 0x0

    .line 713
    const/4 v7, 0x0

    move v8, v2

    move-object v9, v3

    .line 722
    :cond_4a
    :goto_4a
    if-ge v7, v13, :cond_701

    .line 724
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 726
    if-ltz v4, :cond_6e

    .line 728
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 729
    add-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v7

    move v7, v3

    .line 737
    :goto_5a
    and-int/lit8 v3, v4, 0x7f

    .line 743
    sparse-switch v3, :sswitch_data_944

    .line 920
    invoke-virtual/range {p1 .. p1}, Lct;->o()Z

    move-result v4

    if-eqz v4, :cond_6e5

    .line 922
    sparse-switch v3, :sswitch_data_962

    .line 1196
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ldb;->Code(Ljava/io/InputStream;I)V

    goto :goto_4a

    .line 733
    :cond_6e
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 734
    add-int/lit8 v3, v2, 0x5

    add-int/2addr v3, v7

    move v7, v3

    goto :goto_5a

    .line 765
    :sswitch_77
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    .line 773
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->l()V

    .line 775
    const/4 v3, 0x1

    invoke-static {v3}, Ldb;->Code(Z)V

    .line 776
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_4a

    .line 782
    :sswitch_9f
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object/from16 v0, p0

    iput-byte v2, v0, Lbg;->l:B

    .line 783
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->m:I

    goto :goto_4a

    .line 790
    :sswitch_b0
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 793
    const/4 v2, 0x0

    move v6, v2

    :goto_b6
    if-eq v6, v14, :cond_4a

    .line 795
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 796
    const/4 v2, -0x1

    .line 797
    const/4 v4, 0x1

    if-ne v3, v4, :cond_c4

    .line 800
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 803
    :cond_c4
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 804
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 806
    const/4 v5, 0x4

    if-ne v2, v5, :cond_100

    .line 808
    sput v4, Ldb;->P:I

    .line 809
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ldb;->Q:Ljava/lang/String;

    .line 810
    const-string v2, "md"

    invoke-static {v2}, Ldb;->a(Ljava/lang/String;)V

    .line 811
    sget-object v2, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    invoke-virtual {v2}, Lcc;->a()V

    .line 813
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Ldb;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 814
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    .line 793
    :cond_fc
    :goto_fc
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b6

    .line 817
    :cond_100
    new-array v3, v3, [B

    .line 818
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 819
    sparse-switch v2, :sswitch_data_9a8

    sget-object v5, Lar;->I:Lar;

    invoke-virtual {v5}, Lar;->h()V

    sget-object v5, Lar;->Z:Lan;

    invoke-virtual {v5, v2}, Lan;->c(I)V

    sget-object v5, Lar;->Z:Lan;

    invoke-virtual {v5, v4}, Lan;->c(I)V

    array-length v4, v3

    invoke-static {v2, v3, v4}, Lbg;->Code(I[BI)Z

    move-result v4

    if-nez v4, :cond_1e9

    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    :goto_126
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    goto :goto_fc

    :sswitch_12e
    invoke-static {v4, v3}, Lcu;->Code(I[B)V

    sget-object v2, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    goto :goto_fc

    :sswitch_137
    sget v2, Lcz;->Code:I

    if-eq v4, v2, :cond_fc

    invoke-static {v4, v3}, Lcz;->Code(I[B)V

    sget-object v2, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    sget v2, Lcz;->Code:I

    invoke-static {v2}, Lcs;->Code(I)V

    goto :goto_fc

    :sswitch_149
    sput v4, Ldb;->T:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    aget-byte v15, v3, v2

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    move v5, v4

    :goto_155
    if-ge v2, v15, :cond_169

    array-length v4, v3

    sub-int/2addr v4, v5

    invoke-static {v3, v5, v4}, Lbg;->I([BII)I

    move-result v4

    invoke-static {v3, v5}, Lap;->Code([BI)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v5, v4

    goto :goto_155

    :cond_169
    sget-object v2, Lar;->Code:Lci;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lci;->Code([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ldb;->R:Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    new-array v15, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_17a
    if-ge v2, v5, :cond_193

    array-length v0, v3

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    invoke-static {v3, v4, v0}, Lbg;->I([BII)I

    move-result v16

    invoke-static {v3, v4}, Lap;->Code([BI)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v2

    add-int v4, v4, v16

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_17a

    :cond_193
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2, v15}, Lci;->I([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ldb;->S:Ljava/lang/String;

    sget-object v2, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    goto/16 :goto_fc

    :sswitch_1a2
    sput v4, Ldb;->U:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    aget-byte v5, v3, v2

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_1ae
    if-ge v2, v5, :cond_1dd

    array-length v0, v3

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    invoke-static {v3, v4, v0}, Lbg;->I([BII)I

    move-result v16

    invoke-static {v3, v4}, Lap;->Code([BI)Ljava/lang/String;

    move-result-object v17

    add-int v4, v4, v16

    array-length v0, v3

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    invoke-static {v3, v4, v0}, Lbg;->I([BII)I

    move-result v16

    invoke-static {v3, v4}, Lap;->Code([BI)Ljava/lang/String;

    move-result-object v18

    add-int v4, v4, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1ae

    :cond_1dd
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2, v15}, Lci;->Code(Ljava/util/Map;)V

    sget-object v2, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    goto/16 :goto_fc

    :cond_1e9
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_941

    sget-object v2, Lar;->Code:Lci;

    const-string v4, "OM-Upgrade"

    invoke-interface {v2, v4}, Lci;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_941

    array-length v2, v3

    invoke-static {v4}, Lap;->Code(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v5, 0x0

    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v5, v2, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    invoke-static {v4, v2, v3}, Lap;->Code(Ljava/lang/String;[BI)I

    :goto_20f
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    const/4 v5, 0x0

    array-length v15, v2

    invoke-virtual {v4, v2, v5, v15}, Lan;->I([BII)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->b(I)V

    goto/16 :goto_126

    .line 828
    :sswitch_21e
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 830
    const/4 v2, 0x0

    move v3, v2

    :goto_224
    if-ge v3, v4, :cond_4a

    .line 832
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 833
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 834
    const/4 v2, 0x0

    .line 835
    if-lez v6, :cond_238

    .line 837
    new-array v2, v6, [B

    .line 838
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 840
    :cond_238
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 841
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    .line 842
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 844
    if-lez v5, :cond_26c

    const/16 v17, 0x9

    move/from16 v0, v17

    if-gt v5, v0, :cond_26c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_25a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_25a

    if-lez v6, :cond_277

    :cond_25a
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_26c

    if-eqz v2, :cond_26c

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v0, v6}, Ldb;->I([BII)Z

    move-result v17

    if-nez v17, :cond_277

    .line 859
    :cond_26c
    sget-object v2, Lar;->I:Lar;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lar;->c(I)V

    .line 830
    :goto_273
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_224

    .line 863
    :cond_277
    move-object/from16 v0, p0

    iget-object v0, v0, Lbg;->Code:Lcc;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcc;->a()V

    .line 864
    sget-object v17, Lar;->Z:Lan;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 865
    sget-object v16, Lar;->Z:Lan;

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lan;->c(I)V

    .line 866
    sget-object v5, Lar;->Z:Lan;

    sget-object v16, Lar;->Z:Lan;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lan;->Code(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lan;->b(I)V

    .line 867
    sget-object v5, Lar;->Z:Lan;

    sget-object v14, Lar;->Z:Lan;

    invoke-virtual {v14, v15}, Lan;->Code(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v14}, Lan;->b(I)V

    .line 868
    if-lez v6, :cond_2c0

    .line 870
    sget-object v5, Lar;->Z:Lan;

    sget-object v14, Lar;->Z:Lan;

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v6}, Lan;->I([BII)I

    move-result v2

    invoke-virtual {v5, v2}, Lan;->b(I)V

    .line 878
    :goto_2b8
    sget-object v2, Lar;->I:Lar;

    const/16 v5, 0x1d

    invoke-virtual {v2, v5}, Lar;->Z(I)V

    goto :goto_273

    .line 876
    :cond_2c0
    sget-object v2, Lar;->Z:Lan;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lan;->b(I)V

    goto :goto_2b8

    .line 886
    :sswitch_2c7
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->j()Ljava/lang/String;

    move-result-object v3

    .line 889
    invoke-virtual/range {p1 .. p1}, Lct;->o()Z

    move-result v4

    if-nez v4, :cond_2df

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 895
    :cond_2df
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    iput-object v2, v3, Lcc;->b:Ljava/lang/String;

    .line 896
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 904
    :sswitch_2eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lbg;->Code(Ljava/io/DataInputStream;ILcc;)V

    goto/16 :goto_4a

    .line 909
    :sswitch_2f6
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->a()V

    .line 911
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->b(I)V

    .line 912
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x34

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    goto/16 :goto_4a

    .line 926
    :sswitch_315
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 927
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 928
    if-nez v2, :cond_334

    .line 930
    invoke-virtual/range {p1 .. p1}, Lct;->s()Lcp;

    move-result-object v2

    .line 931
    sget-object v4, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcp;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 932
    const/4 v4, 0x1

    aput-object v3, v2, v4

    goto/16 :goto_4a

    .line 937
    :cond_334
    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ldb;->Code(ILjava/lang/String;Z)V

    goto/16 :goto_4a

    .line 943
    :sswitch_33a
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 944
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 945
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 946
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    invoke-virtual {v5}, Lcc;->a()V

    .line 947
    sget-object v5, Lar;->Z:Lan;

    sget-object v6, Lar;->Z:Lan;

    invoke-virtual {v6, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lan;->b(I)V

    .line 948
    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->c(I)V

    .line 949
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v3}, Lan;->c(I)V

    .line 950
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 955
    :sswitch_372
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 956
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 957
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->ad:Ljava/lang/String;

    .line 959
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->ae:Ljava/lang/String;

    .line 961
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 962
    const/4 v2, 0x0

    :goto_38d
    if-ge v2, v3, :cond_4a

    .line 964
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 965
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->ac:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_38d

    .line 972
    :sswitch_39d
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 975
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 976
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d0

    if-eqz v5, :cond_3d0

    .line 978
    const-string v6, "auth_server="

    .line 979
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 980
    if-ltz v14, :cond_3d0

    .line 982
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v14

    .line 983
    const/16 v14, 0x26

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 984
    if-le v14, v6, :cond_3d0

    .line 986
    invoke-virtual {v5, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 991
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->Code:Lcc;

    invoke-virtual {v6}, Lcc;->a()V

    .line 992
    sget-object v6, Lar;->Z:Lan;

    sget-object v14, Lar;->Z:Lan;

    invoke-virtual {v14, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lan;->b(I)V

    .line 993
    sget-object v2, Lar;->Z:Lan;

    sget-object v6, Lar;->Z:Lan;

    invoke-virtual {v6, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 994
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 995
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v5}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 996
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 1001
    :sswitch_414
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1002
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 1003
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    .line 1004
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 1005
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 1006
    const/4 v4, 0x0

    .line 1007
    const/4 v3, 0x0

    .line 1008
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v3

    :goto_42d
    move/from16 v0, v18

    if-ge v5, v0, :cond_448

    .line 1010
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    int-to-char v0, v3

    move/from16 v19, v0

    .line 1011
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1012
    sparse-switch v19, :sswitch_data_9ba

    move-object v3, v4

    .line 1008
    :goto_440
    :sswitch_440
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    goto :goto_42d

    :sswitch_445
    move-object v2, v3

    move-object v3, v4

    .line 1017
    goto :goto_440

    .line 1022
    :cond_448
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->a()V

    .line 1023
    sget-object v3, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    invoke-virtual {v5, v6}, Lan;->Code(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lan;->b(I)V

    .line 1024
    sget-object v3, Lar;->Z:Lan;

    invoke-static {}, Ldb;->f()I

    move-result v5

    invoke-virtual {v3, v5}, Lan;->c(I)V

    .line 1025
    sget-object v3, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lan;->Code(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lan;->b(I)V

    .line 1026
    sget-object v3, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lan;->Code(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lan;->b(I)V

    .line 1027
    if-eqz v4, :cond_4b3

    .line 1029
    sget-object v3, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    invoke-virtual {v5, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lan;->b(I)V

    .line 1035
    :goto_48a
    if-eqz v2, :cond_4ba

    .line 1037
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->b(I)V

    .line 1043
    :goto_497
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v14, v15}, Lan;->Code(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1044
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 1033
    :cond_4b3
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lan;->b(I)V

    goto :goto_48a

    .line 1041
    :cond_4ba
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    goto :goto_497

    .line 1049
    :sswitch_4c1
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->k:I

    goto/16 :goto_4a

    .line 1058
    :sswitch_4cb
    add-int/lit8 v2, v2, -0x2

    div-int/lit8 v2, v2, 0x9

    .line 1059
    mul-int/lit8 v3, v2, 0x3

    new-array v3, v3, [I

    .line 1060
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 1069
    mul-int/lit8 v4, v2, 0x9

    new-array v5, v4, [B

    .line 1070
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1071
    const/4 v4, 0x0

    :goto_4e0
    if-ge v4, v2, :cond_50f

    .line 1074
    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v8, v4, 0x9

    add-int/lit8 v8, v8, 0x0

    invoke-static {v5, v8}, Lbg;->Code([BI)I

    move-result v8

    aput v8, v3, v6

    .line 1075
    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v8, v4, 0x9

    add-int/lit8 v8, v8, 0x3

    invoke-static {v5, v8}, Lbg;->Code([BI)I

    move-result v8

    aput v8, v3, v6

    .line 1076
    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v8, v4, 0x9

    add-int/lit8 v8, v8, 0x6

    invoke-static {v5, v8}, Lbg;->Code([BI)I

    move-result v8

    aput v8, v3, v6

    .line 1071
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e0

    :cond_50f
    move v8, v2

    move-object v9, v3

    .line 1079
    goto/16 :goto_4a

    .line 1084
    :sswitch_513
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1087
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->Code:Lcc;

    invoke-virtual {v5}, Lcc;->a()V

    .line 1088
    sget-object v5, Lar;->Z:Lan;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lan;->c(I)V

    .line 1089
    sget-object v5, Lar;->Z:Lan;

    sget-object v6, Lar;->Z:Lan;

    invoke-virtual {v6, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lan;->b(I)V

    .line 1090
    sget-object v2, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    invoke-virtual {v5, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1091
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1092
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1093
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1094
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1095
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 1100
    :sswitch_570
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1102
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 1104
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lbg;->Code:Lcc;

    invoke-virtual {v14}, Lcc;->a()V

    .line 1106
    sget-object v14, Lar;->Z:Lan;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lan;->c(I)V

    .line 1107
    sget-object v14, Lar;->Z:Lan;

    sget-object v15, Lar;->Z:Lan;

    invoke-virtual {v15, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Lan;->b(I)V

    .line 1108
    sget-object v2, Lar;->Z:Lan;

    sget-object v14, Lar;->Z:Lan;

    invoke-virtual {v14, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1109
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v6}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1110
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1111
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v5}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1112
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1113
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 1118
    :sswitch_5df
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1119
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1120
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1121
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 1122
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 1123
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 1124
    move-object/from16 v0, p0

    iget-object v15, v0, Lbg;->Code:Lcc;

    invoke-virtual {v15}, Lcc;->a()V

    .line 1125
    sget-object v15, Lar;->Z:Lan;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lan;->c(I)V

    .line 1126
    sget-object v15, Lar;->Z:Lan;

    sget-object v16, Lar;->Z:Lan;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Lan;->b(I)V

    .line 1127
    sget-object v2, Lar;->Z:Lan;

    sget-object v15, Lar;->Z:Lan;

    invoke-virtual {v15, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1128
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v14}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1129
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1130
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v5}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1131
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v6}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 1132
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    goto/16 :goto_4a

    .line 1137
    :sswitch_65a
    sget-object v2, Lar;->Code:Lci;

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lci;->I(Ljava/lang/String;)Z

    goto/16 :goto_4a

    .line 1142
    :sswitch_665
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 1144
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbg;->B:Z

    if-eqz v3, :cond_4a

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3, v2}, Lcc;->B(I)V

    goto/16 :goto_4a

    .line 1152
    :sswitch_678
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lck;->Z(I)V

    goto/16 :goto_4a

    .line 1157
    :sswitch_681
    sget-boolean v2, Lar;->e:Z

    if-nez v2, :cond_4a

    .line 1159
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->w()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    invoke-virtual {v2}, Lcc;->a()V

    .line 1161
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    goto/16 :goto_4a

    .line 1169
    :sswitch_69a
    new-array v2, v2, [B

    .line 1170
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->a()V

    .line 1172
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->Code([B)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->b(I)V

    .line 1173
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    goto/16 :goto_4a

    .line 1179
    :sswitch_6bc
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2}, Lci;->ad()V

    goto/16 :goto_4a

    .line 1187
    :sswitch_6c3
    new-array v2, v2, [B

    .line 1188
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->a()V

    .line 1190
    sget-object v3, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->Code([B)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->b(I)V

    .line 1191
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Lar;->Z(I)V

    goto/16 :goto_4a

    .line 1202
    :cond_6e5
    packed-switch v3, :pswitch_data_9c4

    .line 1221
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ldb;->Code(Ljava/io/InputStream;I)V

    goto/16 :goto_4a

    .line 1206
    :pswitch_6ef
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 1207
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1208
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4a

    .line 1211
    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ldb;->Code(ILjava/lang/String;Z)V

    goto/16 :goto_4a

    .line 1233
    :cond_701
    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual/range {p2 .. p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    add-int v5, v2, v3

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    invoke-virtual {v2, v5}, Lcc;->I(I)V

    .line 1237
    const/4 v2, 0x0

    move v3, v2

    :goto_716
    const/4 v2, 0x4

    if-gt v3, v2, :cond_71f

    .line 1241
    :try_start_719
    new-array v2, v5, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->X:[B
    :try_end_71f
    .catch Ljava/lang/Throwable; {:try_start_719 .. :try_end_71f} :catch_73a

    .line 1274
    :cond_71f
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    if-eqz v2, :cond_7a8

    if-lez v8, :cond_7a8

    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    iget-object v2, v2, Lbg;->X:[B

    if-nez v2, :cond_7a8

    .line 1281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->X:[B

    .line 1282
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2

    .line 1248
    :catch_73a
    move-exception v2

    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->h()V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    iget-object v4, v2, Lcc;->Code:Lar;

    const/4 v2, 0x1

    if-le v3, v2, :cond_766

    const/4 v2, 0x1

    :goto_74a
    invoke-virtual {v4, v2}, Lar;->Code(Z)V

    .line 1250
    if-nez v3, :cond_768

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    if-eqz v2, :cond_75d

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lbg;->I(Z)V

    .line 1256
    :cond_75d
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->i()V

    .line 1237
    :goto_762
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_716

    .line 1249
    :cond_766
    const/4 v2, 0x0

    goto :goto_74a

    .line 1260
    :cond_768
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    if-eqz v2, :cond_797

    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    iget v2, v2, Lbg;->J:I

    if-nez v2, :cond_797

    sget v2, Lar;->b:I

    if-lt v3, v2, :cond_797

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    iget-boolean v2, v2, Lbg;->C:Z

    if-nez v2, :cond_78f

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    const/4 v4, 0x0

    iput-object v4, v2, Lbg;->X:[B

    const/4 v4, -0x1

    iput v4, v2, Lbg;->aw:I

    const/4 v4, 0x0

    iput v4, v2, Lbg;->S:I

    .line 1266
    :cond_78f
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->I:Lbg;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lbg;->I(Z)V

    .line 1269
    :cond_797
    sget-object v2, Lar;->Z:Lan;

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v2, v4}, Lan;->c(I)V

    .line 1270
    sget-object v2, Lar;->I:Lar;

    const/16 v4, 0x4e

    invoke-virtual {v2, v4}, Lar;->Z(I)V

    goto :goto_762

    .line 1286
    :cond_7a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->X:[B

    if-nez v2, :cond_7b4

    .line 1288
    new-array v2, v5, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->X:[B

    .line 1291
    :cond_7b4
    const/4 v2, 0x0

    :goto_7b5
    if-ge v2, v8, :cond_7d9

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->I:Lbg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->X:[B

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v7, v9, v7

    mul-int/lit8 v13, v2, 0x3

    add-int/lit8 v13, v13, 0x2

    aget v13, v9, v13

    iget-object v3, v3, Lbg;->X:[B

    invoke-static {v3, v7, v4, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b5

    .line 1299
    :cond_7d9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lbg;->I:Lbg;

    .line 1301
    sget v2, Ldb;->d:I

    mul-int/lit16 v2, v2, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lbg;->q(I)I

    .line 1303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lbg;->aa:I

    .line 1304
    const/4 v3, 0x0

    .line 1305
    const/4 v2, 0x0

    .line 1306
    :cond_7ee
    :goto_7ee
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->aa:I

    if-ge v4, v5, :cond_8e8

    .line 1310
    move-object/from16 v0, p0

    iget v6, v0, Lbg;->aa:I

    .line 1314
    :goto_7f8
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->aa:I

    sub-int/2addr v4, v6

    const/16 v7, 0x400

    if-ge v4, v7, :cond_867

    move-object/from16 v0, p0

    iget v4, v0, Lbg;->aa:I

    if-ge v4, v5, :cond_867

    .line 1316
    const/16 v7, 0x400

    if-ge v3, v8, :cond_844

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    iget v13, v0, Lbg;->aa:I

    sub-int/2addr v4, v13

    :goto_816
    move-object/from16 v0, p0

    iget v13, v0, Lbg;->aa:I

    sub-int v13, v5, v13

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1323
    if-ge v3, v8, :cond_847

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->aa:I

    mul-int/lit8 v13, v3, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v9, v13

    if-ne v7, v13, :cond_847

    .line 1329
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->aa:I

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v7, v9, v7

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lbg;->aa:I

    .line 1336
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f8

    .line 1316
    :cond_844
    const/16 v4, 0x400

    goto :goto_816

    .line 1341
    :cond_847
    move-object/from16 v0, p0

    iget-object v7, v0, Lbg;->X:[B

    move-object/from16 v0, p0

    iget v13, v0, Lbg;->aa:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13, v4}, Lct;->read([BII)I

    move-result v4

    .line 1342
    if-gez v4, :cond_85d

    .line 1344
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1346
    :cond_85d
    move-object/from16 v0, p0

    iget v7, v0, Lbg;->aa:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lbg;->aa:I

    goto :goto_7f8

    .line 1354
    :cond_867
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->B:Z

    if-eqz v4, :cond_7ee

    .line 1356
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->Y:I

    if-nez v4, :cond_891

    invoke-direct/range {p0 .. p0}, Lbg;->q()Z

    move-result v4

    if-eqz v4, :cond_891

    .line 1358
    invoke-direct/range {p0 .. p0}, Lbg;->s()V

    .line 1364
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->Y:I

    .line 1365
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbg;->Code(Z)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->aq:Lbh;

    invoke-direct/range {p0 .. p0}, Lbg;->u()I

    move-result v6

    invoke-virtual {v4, v6}, Lbh;->Code(I)V

    .line 1368
    :cond_891
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->Y:I

    if-lez v4, :cond_8a0

    .line 1371
    invoke-direct/range {p0 .. p0}, Lbg;->r()V

    .line 1375
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbg;->z(I)I

    move-result v2

    .line 1377
    :cond_8a0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->K:Z

    if-eqz v4, :cond_8e3

    .line 1379
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbg;->K:Z

    .line 1380
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->L:Z

    if-eqz v4, :cond_8e3

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->Code:Lcc;

    invoke-virtual {v4}, Lcc;->h()Z

    move-result v4

    if-nez v4, :cond_8e3

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->Code:Lcc;

    invoke-virtual {v4}, Lcc;->a()V

    .line 1383
    sget-object v4, Lar;->Z:Lan;

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->G:I

    invoke-virtual {v4, v6}, Lan;->c(I)V

    .line 1384
    sget-object v4, Lar;->Z:Lan;

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->H:I

    invoke-virtual {v4, v6}, Lan;->c(I)V

    .line 1385
    sget-object v4, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbg;->Code:Lcc;

    invoke-virtual {v6}, Lcc;->C()I

    move-result v6

    const/16 v7, 0x9

    invoke-virtual {v4, v6, v7}, Lar;->I(II)V

    .line 1390
    :cond_8e3
    invoke-direct/range {p0 .. p0}, Lbg;->S()V

    goto/16 :goto_7ee

    .line 1395
    :cond_8e8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    .line 1396
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_902

    .line 1398
    invoke-virtual/range {p1 .. p1}, Lct;->n()I

    move-result v4

    sub-int/2addr v4, v10

    .line 1399
    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long v2, v4, v2

    long-to-int v2, v2

    invoke-static {v2}, Lcc;->J(I)V

    .line 1402
    :cond_902
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbg;->B:Z

    if-eqz v2, :cond_925

    .line 1413
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->an:I

    if-eqz v2, :cond_924

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->Code:Lcc;

    invoke-virtual {v2}, Lcc;->a()V

    .line 1416
    sget-object v2, Lar;->I:Lar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbg;->Code:Lcc;

    invoke-virtual {v3}, Lcc;->C()I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lar;->I(II)V

    .line 1433
    :cond_924
    :goto_924
    return-void

    .line 1421
    :cond_925
    invoke-direct/range {p0 .. p0}, Lbg;->s()V

    .line 1422
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->Y:I

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lbg;->aq:Lbh;

    invoke-direct/range {p0 .. p0}, Lbg;->u()I

    move-result v3

    invoke-virtual {v2, v3}, Lbh;->Code(I)V

    .line 1424
    move-object/from16 v0, p0

    iget v2, v0, Lbg;->Y:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lbg;->z(I)I

    goto :goto_924

    :cond_941
    move-object v2, v3

    goto/16 :goto_20f

    .line 743
    :sswitch_data_944
    .sparse-switch
        0x23 -> :sswitch_21e
        0x4c -> :sswitch_9f
        0x55 -> :sswitch_2eb
        0x63 -> :sswitch_b0
        0x66 -> :sswitch_77
        0x72 -> :sswitch_2c7
        0x74 -> :sswitch_2f6
    .end sparse-switch

    .line 922
    :sswitch_data_962
    .sparse-switch
        0x41 -> :sswitch_69a
        0x43 -> :sswitch_4c1
        0x44 -> :sswitch_513
        0x46 -> :sswitch_414
        0x48 -> :sswitch_39d
        0x4b -> :sswitch_315
        0x4e -> :sswitch_570
        0x4f -> :sswitch_4cb
        0x50 -> :sswitch_5df
        0x57 -> :sswitch_372
        0x59 -> :sswitch_6bc
        0x61 -> :sswitch_6c3
        0x65 -> :sswitch_33a
        0x67 -> :sswitch_681
        0x6c -> :sswitch_678
        0x6f -> :sswitch_665
        0x70 -> :sswitch_65a
    .end sparse-switch

    .line 819
    :sswitch_data_9a8
    .sparse-switch
        0x3 -> :sswitch_12e
        0x11 -> :sswitch_137
        0x26 -> :sswitch_149
        0x28 -> :sswitch_1a2
    .end sparse-switch

    .line 1012
    :sswitch_data_9ba
    .sparse-switch
        0x6f -> :sswitch_440
        0x73 -> :sswitch_445
    .end sparse-switch

    .line 1202
    :pswitch_data_9c4
    .packed-switch 0x4b
        :pswitch_6ef
    .end packed-switch
.end method

.method final declared-synchronized Code(Lcx;II)V
    .registers 9

    .prologue
    .line 6931
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcx;->C()I

    move-result v0

    .line 6932
    invoke-static {p3}, Lbg;->w(I)I

    move-result v1

    .line 6933
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1, v0}, Lbg;->I([IIII)I

    move-result v0

    .line 6935
    sget-object v1, Lar;->Z:Lan;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Lan;->Code(IIIZ)V

    .line 6936
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcx;->B()I

    move-result v3

    aput v3, v1, v2

    .line 6937
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 6938
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    sget-object v1, Lar;->Z:Lan;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcx;->b()I

    move-result v2

    aput v2, v0, v1

    .line 6939
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->p()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 6940
    monitor-exit p0

    return-void

    .line 6931
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final Code(Ljava/lang/String;Lbg;)V
    .registers 11

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    const-string v0, "odp:component"

    invoke-static {v0, p1}, Ldb;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 550
    if-gez v4, :cond_36

    if-nez p2, :cond_36

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lbg;->ao:Z

    move v3, v2

    .line 551
    :goto_12
    const/4 v0, 0x4

    if-gt v3, v0, :cond_83

    .line 555
    if-eqz p2, :cond_38

    .line 557
    :try_start_17
    iget-object v0, p2, Lbg;->X:[B

    iput-object v0, p0, Lbg;->X:[B

    .line 570
    :goto_1b
    iget-object v0, p0, Lbg;->X:[B

    if-nez v0, :cond_83

    .line 572
    iget-boolean v0, p0, Lbg;->ao:Z

    if-eqz v0, :cond_2f

    .line 575
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 576
    sget-object v0, Lar;->I:Lar;

    const/16 v5, 0x25

    invoke-virtual {v0, v5}, Lar;->Z(I)V

    .line 578
    :cond_2f
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Lcc;->Z(I)V

    .line 674
    :goto_35
    return-void

    :cond_36
    move v0, v2

    .line 550
    goto :goto_f

    .line 559
    :cond_38
    iget-boolean v0, p0, Lbg;->ao:Z

    if-nez v0, :cond_67

    .line 561
    invoke-static {v4}, Ldb;->B(I)[B

    move-result-object v0

    iput-object v0, p0, Lbg;->X:[B
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_42} :catch_43

    goto :goto_1b

    .line 587
    :catch_43
    move-exception v0

    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 588
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v5, v0, Lcc;->Code:Lar;

    if-le v3, v1, :cond_70

    move v0, v1

    :goto_50
    invoke-virtual {v5, v0}, Lar;->Code(Z)V

    .line 589
    if-nez v3, :cond_72

    .line 591
    iget-object v0, p0, Lbg;->I:Lbg;

    if-eqz v0, :cond_5e

    .line 593
    iget-object v0, p0, Lbg;->I:Lbg;

    invoke-virtual {v0, v2}, Lbg;->I(Z)V

    .line 595
    :cond_5e
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 551
    :goto_63
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    .line 566
    :cond_67
    :try_start_67
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, p1}, Lbk;->I(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lbg;->X:[B
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6f} :catch_43

    goto :goto_1b

    :cond_70
    move v0, v2

    .line 588
    goto :goto_50

    .line 599
    :cond_72
    sget-object v0, Lar;->Z:Lan;

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v0, v5}, Lan;->c(I)V

    .line 600
    sget-object v0, Lar;->I:Lar;

    const/16 v5, 0x4e

    invoke-virtual {v0, v5}, Lar;->Z(I)V

    goto :goto_63

    .line 604
    :cond_83
    iget-object v0, p0, Lbg;->X:[B

    if-nez v0, :cond_8d

    .line 607
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0, v6}, Lcc;->Z(I)V

    goto :goto_35

    .line 611
    :cond_8d
    iget-boolean v0, p0, Lbg;->ao:Z

    if-nez v0, :cond_e5

    iget-object v0, p0, Lbg;->X:[B

    array-length v0, v0

    if-nez v0, :cond_e5

    .line 614
    monitor-enter p0

    .line 616
    const/16 v0, 0x10

    :try_start_99
    iput v0, p0, Lbg;->b:I

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lbg;->q:I

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lbg;->r:I

    .line 619
    const/4 v0, 0x0

    iput v0, p0, Lbg;->j:I

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lbg;->g:[B

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lbg;->an:I

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lbg;->d:Ljava/lang/String;

    .line 623
    const-string v0, ""

    iput-object v0, p0, Lbg;->c:Ljava/lang/String;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->L:Z

    .line 625
    const/4 v0, 0x0

    iput v0, p0, Lbg;->n:I

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->i:Z

    .line 627
    const/4 v0, 0x0

    iput v0, p0, Lbg;->W:I

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lbg;->e:I

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lbg;->f:I

    .line 630
    const/4 v0, 0x2

    iput v0, p0, Lbg;->R:I

    .line 631
    const/4 v0, 0x2

    iput v0, p0, Lbg;->Y:I

    .line 632
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lbg;->X:[B

    .line 633
    const/4 v0, 0x2

    iput v0, p0, Lbg;->aa:I

    .line 634
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_99 .. :try_end_d3} :catchall_e2

    .line 635
    iget v0, p0, Lbg;->Y:I

    invoke-direct {p0, v0}, Lbg;->z(I)I

    .line 636
    invoke-virtual {p0, v1}, Lbg;->Code(Z)V

    .line 637
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0, v7}, Lcc;->Z(I)V

    goto/16 :goto_35

    .line 634
    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 643
    :cond_e5
    const/4 v0, 0x0

    :try_start_e6
    invoke-virtual {p0, v0}, Lbg;->Z(I)I

    move-result v0

    .line 644
    const/16 v1, 0x10

    if-eq v0, v1, :cond_fe

    .line 647
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcc;->Z(I)V
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_f4} :catch_f6

    goto/16 :goto_35

    .line 671
    :catch_f6
    move-exception v0

    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0, v6}, Lcc;->Z(I)V

    goto/16 :goto_35

    .line 651
    :cond_fe
    :try_start_fe
    iget-object v0, p0, Lbg;->X:[B

    array-length v0, v0

    iput v0, p0, Lbg;->aa:I

    .line 652
    invoke-direct {p0}, Lbg;->s()V

    .line 653
    iget v0, p0, Lbg;->Y:I

    invoke-direct {p0, v0}, Lbg;->z(I)I

    .line 654
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbg;->Code(Z)V

    .line 656
    iget v0, p0, Lbg;->an:I

    if-eqz v0, :cond_125

    .line 658
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 659
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 662
    :cond_125
    invoke-direct {p0}, Lbg;->S()V

    .line 665
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcc;->Z(I)V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_12e} :catch_f6

    goto/16 :goto_35
.end method

.method final Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 6434
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_f

    .line 6435
    iget-object v0, p0, Lbg;->Code:Lcc;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcc;->a:Ljava/util/Hashtable;

    .line 6436
    :cond_f
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, p1}, Lbk;->C(Ljava/lang/String;)J

    move-result-wide v0

    .line 6438
    iget-object v2, p0, Lbg;->Code:Lcc;

    iget-object v2, v2, Lcc;->a:Ljava/util/Hashtable;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    long-to-int v0, v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6442
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0, p2}, Lcc;->Code(Ljava/lang/String;)V

    .line 6444
    return-void
.end method

.method final Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 6619
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 6620
    sget-object v0, Lar;->Z:Lan;

    invoke-static {}, Ldb;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 6621
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p1}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 6622
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p2}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 6623
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p3}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 6624
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 6625
    return-void
.end method

.method final Code(Z)V
    .registers 8

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1862
    if-eqz p1, :cond_b

    .line 1864
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 1866
    :cond_b
    sget-object v0, Lar;->Z:Lan;

    iget v3, p0, Lbg;->q:I

    invoke-virtual {v0, v3}, Lan;->c(I)V

    .line 1867
    sget-object v0, Lar;->Z:Lan;

    iget v3, p0, Lbg;->r:I

    invoke-virtual {v0, v3}, Lan;->c(I)V

    .line 1868
    sget-object v0, Lar;->Z:Lan;

    iget v3, p0, Lbg;->f:I

    invoke-direct {p0, v3}, Lbg;->y(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->b(I)V

    .line 1869
    sget-object v0, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    iget-object v4, p0, Lbg;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->b(I)V

    .line 1870
    sget-object v0, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    iget-object v4, p0, Lbg;->g:[B

    invoke-virtual {v3, v4}, Lan;->Code([B)I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->b(I)V

    .line 1872
    sget-object v3, Lar;->Z:Lan;

    iget v0, p0, Lbg;->an:I

    if-eqz v0, :cond_74

    move v0, v1

    :goto_45
    invoke-virtual {v3, v0}, Lan;->c(I)V

    .line 1873
    sget-object v0, Lar;->Z:Lan;

    iget-boolean v3, p0, Lbg;->L:Z

    if-eqz v3, :cond_76

    :goto_4e
    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 1874
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lbg;->W:I

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 1876
    invoke-direct {p0}, Lbg;->L()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1878
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 1881
    :try_start_69
    sget-object v0, Lar;->Z:Lan;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lan;->C(I)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_70} :catch_84

    .line 1888
    :goto_70
    invoke-direct {p0}, Lbg;->M()V

    .line 1894
    :goto_73
    return-void

    :cond_74
    move v0, v2

    .line 1872
    goto :goto_45

    :cond_76
    move v1, v2

    .line 1873
    goto :goto_4e

    .line 1892
    :cond_78
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lar;->I(II)V

    goto :goto_73

    :catch_84
    move-exception v0

    goto :goto_70
.end method

.method final declared-synchronized Code(Lba;ILba;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 3095
    monitor-enter p0

    if-nez p2, :cond_6

    .line 3108
    :cond_4
    :goto_4
    monitor-exit p0

    return v0

    .line 3099
    :cond_6
    :try_start_6
    invoke-static {p2}, Lbg;->x(I)I

    move-result v1

    .line 3100
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    .line 3101
    sget-object v3, Lar;->Z:Lan;

    .line 3102
    const/4 v3, 0x2

    invoke-virtual {p3}, Lba;->I()I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lbg;->I([IIII)I

    move-result v3

    .line 3103
    if-ltz v3, :cond_4

    .line 3107
    invoke-virtual {p1}, Lba;->Z()Lcx;

    move-result-object v0

    invoke-virtual {p3}, Lba;->Code()I

    move-result v4

    invoke-direct {p0, v2, v1, v4, v3}, Lbg;->Code([IIII)Lcw;

    move-result-object v1

    invoke-virtual {p3}, Lba;->Code()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcx;->Code(Lcw;II)V
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_30

    .line 3108
    const/4 v0, 0x1

    goto :goto_4

    .line 3095
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Lbr;IIII)Z
    .registers 23

    .prologue
    .line 4187
    monitor-enter p0

    :try_start_1
    sget-object v4, Lbg;->ap:Lbw;

    invoke-virtual {v4}, Lbw;->Code()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1da

    .line 4190
    :try_start_6
    invoke-interface/range {p1 .. p1}, Lbr;->Code()I

    move-result v5

    .line 4191
    invoke-interface/range {p1 .. p1}, Lbr;->I()I

    move-result v6

    .line 4192
    invoke-interface/range {p1 .. p1}, Lbr;->Z()I

    move-result v7

    .line 4193
    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v8

    .line 4194
    const v9, 0xffffff

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Lbr;->Z(IIIII)V

    .line 4195
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->M:[I

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->X:[B

    if-eqz v4, :cond_2c

    if-nez p5, :cond_83

    .line 4197
    :cond_2c
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->s:I

    .line 4198
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->q:I
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_1b5

    if-eqz v4, :cond_5e

    .line 4200
    :try_start_38
    sget-object v4, Lbg;->ap:Lbw;

    invoke-virtual {v4}, Lbw;->I()V

    .line 4280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->x:Z

    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->w:Z

    if-nez v4, :cond_5b

    .line 4285
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    if-eqz v4, :cond_5b

    .line 4287
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 4288
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbg;->av:Ljava/util/Hashtable;
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_1da

    :cond_5b
    const/4 v4, 0x1

    .line 4292
    :goto_5c
    monitor-exit p0

    return v4

    .line 4202
    :cond_5e
    :try_start_5e
    sget-object v4, Lbg;->ap:Lbw;

    invoke-virtual {v4}, Lbw;->I()V

    .line 4280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->x:Z

    if-eqz v4, :cond_81

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->w:Z

    if-nez v4, :cond_81

    .line 4285
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    if-eqz v4, :cond_81

    .line 4287
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 4288
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbg;->av:Ljava/util/Hashtable;
    :try_end_81
    .catchall {:try_start_5e .. :try_end_81} :catchall_1da

    :cond_81
    const/4 v4, 0x0

    goto :goto_5c

    .line 4205
    :cond_83
    :try_start_83
    invoke-static/range {p5 .. p5}, Lbg;->x(I)I

    move-result v16

    .line 4206
    sget-object v4, Lar;->Z:Lan;

    iget-object v15, v4, Lan;->I:[I

    .line 4207
    sget-object v4, Lar;->Z:Lan;

    .line 4212
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->w:Z

    if-nez v4, :cond_19b

    .line 4214
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->y:I

    .line 4233
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->s:I

    .line 4234
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->s:I

    .line 4236
    const/4 v4, 0x0

    aget v4, v15, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbg;->a(I)I

    move-result v4

    .line 4237
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lbr;->I(IIII)V

    .line 4238
    invoke-interface/range {p1 .. p1}, Lbr;->Z()I

    move-result v4

    if-lez v4, :cond_163

    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v4

    if-lez v4, :cond_163

    .line 4243
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->q:I

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, p4

    if-le v0, v4, :cond_1f1

    const/4 v4, 0x1

    :goto_ce
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbg;->t:Z

    .line 4244
    const/4 v4, 0x1

    aget v4, v15, v4

    if-lez v4, :cond_1fd

    .line 4246
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->q:I

    move-object/from16 v0, p0

    iput v4, v0, Lbg;->s:I

    .line 4247
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbg;->u:Z

    .line 4248
    invoke-interface/range {p1 .. p1}, Lbr;->I()I

    move-result v4

    sub-int v4, v4, p3

    const/4 v9, 0x0

    aget v9, v15, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4249
    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v4

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x1

    aget v9, v15, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 4250
    invoke-direct/range {v9 .. v16}, Lbg;->Code(Lbr;IIII[II)V

    .line 4252
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lbg;->s:I

    .line 4253
    const/4 v4, 0x1

    aget v4, v15, v4

    const/4 v9, 0x1

    aget v9, v15, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lbg;->a(I)I

    move-result v9

    sub-int/2addr v4, v9

    add-int v12, p3, v4

    .line 4255
    :goto_123
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->t:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbg;->u:Z

    .line 4257
    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-interface/range {p1 .. p1}, Lbr;->I()I

    move-result v9

    sub-int/2addr v9, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lbg;->F(I)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v9, 0x0

    aget v9, v15, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4258
    invoke-interface/range {p1 .. p1}, Lbr;->J()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lbg;->F(I)I

    move-result v4

    add-int/2addr v4, v13

    const/4 v9, 0x0

    aget v9, v15, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 4259
    invoke-direct/range {v9 .. v16}, Lbg;->Code(Lbr;IIII[II)V

    .line 4262
    :cond_163
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6, v7, v8}, Lbr;->Code(IIII)V

    .line 4264
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->C:Z

    if-eqz v4, :cond_1f4

    .line 4268
    sget-object v4, Lbg;->ap:Lbw;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lbw;->I(Lbg;)V
    :try_end_175
    .catchall {:try_start_83 .. :try_end_175} :catchall_1b5

    .line 4278
    :goto_175
    :try_start_175
    sget-object v4, Lbg;->ap:Lbw;

    invoke-virtual {v4}, Lbw;->I()V

    .line 4280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->x:Z

    if-eqz v4, :cond_198

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->w:Z

    if-nez v4, :cond_198

    .line 4285
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    if-eqz v4, :cond_198

    .line 4287
    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 4288
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lbg;->av:Ljava/util/Hashtable;
    :try_end_198
    .catchall {:try_start_175 .. :try_end_198} :catchall_1da

    .line 4292
    :cond_198
    const/4 v4, 0x1

    goto/16 :goto_5c

    .line 4218
    :cond_19b
    :try_start_19b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lbg;->z:Z

    if-nez v4, :cond_99

    .line 4223
    mul-int/lit8 v4, p4, 0xc

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->y:I

    mul-int/lit8 v9, v9, 0xb

    if-ge v4, v9, :cond_1dd

    .line 4225
    mul-int/lit8 v4, p4, 0xb

    div-int/lit8 v4, v4, 0xc

    move-object/from16 v0, p0

    iput v4, v0, Lbg;->y:I
    :try_end_1b3
    .catchall {:try_start_19b .. :try_end_1b3} :catchall_1b5

    goto/16 :goto_99

    .line 4278
    :catchall_1b5
    move-exception v4

    :try_start_1b6
    sget-object v5, Lbg;->ap:Lbw;

    invoke-virtual {v5}, Lbw;->I()V

    .line 4280
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbg;->x:Z

    if-eqz v5, :cond_1d9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lbg;->w:Z

    if-nez v5, :cond_1d9

    .line 4285
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->av:Ljava/util/Hashtable;

    if-eqz v5, :cond_1d9

    .line 4287
    move-object/from16 v0, p0

    iget-object v5, v0, Lbg;->av:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 4288
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lbg;->av:Ljava/util/Hashtable;

    :cond_1d9
    throw v4
    :try_end_1da
    .catchall {:try_start_1b6 .. :try_end_1da} :catchall_1da

    .line 4187
    :catchall_1da
    move-exception v4

    monitor-exit p0

    throw v4

    .line 4228
    :cond_1dd
    :try_start_1dd
    move-object/from16 v0, p0

    iget v4, v0, Lbg;->y:I

    mul-int/lit8 v4, v4, 0xc

    mul-int/lit8 v9, p4, 0xb

    if-ge v4, v9, :cond_99

    .line 4230
    mul-int/lit8 v4, p4, 0xc

    div-int/lit8 v4, v4, 0xb

    move-object/from16 v0, p0

    iput v4, v0, Lbg;->y:I

    goto/16 :goto_99

    .line 4243
    :cond_1f1
    const/4 v4, 0x0

    goto/16 :goto_ce

    .line 4272
    :cond_1f4
    sget-object v4, Lbg;->ap:Lbw;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lbw;->Z(Lbg;)V
    :try_end_1fb
    .catchall {:try_start_1dd .. :try_end_1fb} :catchall_1b5

    goto/16 :goto_175

    :cond_1fd
    move/from16 v12, p3

    goto/16 :goto_123
.end method

.method final declared-synchronized Code(Lcr;ILcr;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 3115
    monitor-enter p0

    if-nez p2, :cond_6

    .line 3136
    :cond_4
    :goto_4
    monitor-exit p0

    return v0

    .line 3119
    :cond_6
    :try_start_6
    invoke-static {p2}, Lbg;->x(I)I

    move-result v1

    .line 3120
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    .line 3121
    sget-object v3, Lar;->Z:Lan;

    .line 3122
    const/4 v3, 0x2

    invoke-virtual {p3}, Lcr;->Code()Lcx;

    move-result-object v4

    invoke-virtual {v4}, Lcx;->C()I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lbg;->I([IIII)I

    move-result v3

    .line 3124
    if-ltz v3, :cond_4

    .line 3128
    const/4 v4, 0x2

    invoke-virtual {p3}, Lcr;->I()Lcx;

    move-result-object v5

    invoke-virtual {v5}, Lcx;->C()I

    move-result v5

    invoke-direct {p0, v2, v4, v1, v5}, Lbg;->I([IIII)I

    move-result v4

    .line 3130
    if-ltz v4, :cond_4

    .line 3134
    invoke-virtual {p1}, Lcr;->Code()Lcx;

    move-result-object v0

    invoke-virtual {p3}, Lcr;->Code()Lcx;

    move-result-object v5

    invoke-virtual {v5}, Lcx;->B()I

    move-result v5

    invoke-direct {p0, v2, v1, v5, v3}, Lbg;->Code([IIII)Lcw;

    move-result-object v5

    invoke-virtual {p3}, Lcr;->Code()Lcx;

    move-result-object v6

    invoke-virtual {v6}, Lcx;->B()I

    move-result v6

    invoke-virtual {v0, v5, v6, v3}, Lcx;->Code(Lcw;II)V

    .line 3135
    invoke-virtual {p1}, Lcr;->I()Lcx;

    move-result-object v0

    invoke-virtual {p3}, Lcr;->I()Lcx;

    move-result-object v3

    invoke-virtual {v3}, Lcx;->B()I

    move-result v3

    invoke-direct {p0, v2, v1, v3, v4}, Lbg;->Code([IIII)Lcw;

    move-result-object v1

    invoke-virtual {p3}, Lcr;->I()Lcx;

    move-result-object v2

    invoke-virtual {v2}, Lcx;->B()I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Lcx;->Code(Lcw;II)V
    :try_end_64
    .catchall {:try_start_6 .. :try_end_64} :catchall_66

    .line 3136
    const/4 v0, 0x1

    goto :goto_4

    .line 3115
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final I(I)I
    .registers 5

    .prologue
    .line 2870
    iget-object v0, p0, Lbg;->X:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method final declared-synchronized I(II)I
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 5288
    monitor-enter p0

    if-nez p1, :cond_7

    .line 5343
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 5292
    :cond_7
    :try_start_7
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p1}, Lan;->q(I)I

    move-result v1

    .line 5293
    if-eqz v1, :cond_5

    .line 5297
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v1, v5}, Lan;->Code(IIIZ)V

    .line 5298
    sget-object v3, Lar;->Z:Lan;

    add-int/lit8 v4, v1, 0x0

    .line 5299
    iget v1, p0, Lbg;->S:I

    iput v1, p0, Lbg;->al:I

    .line 5300
    :cond_1e
    :goto_1e
    iget v1, p0, Lbg;->al:I

    iget v3, p0, Lbg;->T:I

    if-gt v1, v3, :cond_5

    .line 5302
    iget v5, p0, Lbg;->al:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lbg;->al:I

    .line 5306
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    move v3, v1

    :goto_2f
    if-lez v3, :cond_a7

    .line 5308
    invoke-direct {p0}, Lbg;->E()V

    .line 5309
    iget v1, p0, Lbg;->ag:I

    iget v6, p0, Lbg;->N:I

    invoke-direct {p0, v1, v6}, Lbg;->c(II)I

    move-result v6

    .line 5310
    sget-object v1, Lar;->Z:Lan;

    move v1, v0

    :goto_3f
    if-ge v1, v4, :cond_8f

    .line 5312
    sget-object v7, Lar;->Z:Lan;

    iget-object v7, v7, Lan;->I:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_8c

    .line 5315
    iget v1, p0, Lbg;->al:I

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v3

    iput v1, p0, Lbg;->al:I

    move v1, v2

    .line 5320
    :goto_53
    invoke-direct {p0}, Lbg;->A()I

    move-result v3

    iget v6, p0, Lbg;->al:I

    add-int/2addr v3, v6

    iput v3, p0, Lbg;->al:I

    .line 5322
    if-eqz v1, :cond_9f

    .line 5324
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    :goto_62
    if-lez v1, :cond_1e

    .line 5326
    invoke-direct {p0}, Lbg;->D()I

    move-result v3

    const/16 v6, 0x66

    if-ne v3, v6, :cond_93

    .line 5328
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p2}, Lan;->Z(I)V

    .line 5329
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x6

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Lan;->I(II)I

    move-result v0

    .line 5330
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->Z()I

    move-result v1

    .line 5331
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lan;->Z(I)V

    .line 5332
    invoke-direct {p0, v0, v1, v5}, Lbg;->a(III)I

    move-result v0

    goto/16 :goto_5

    .line 5310
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 5306
    :cond_8f
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_2f

    .line 5334
    :cond_93
    invoke-direct {p0}, Lbg;->A()I

    move-result v3

    iget v6, p0, Lbg;->al:I

    add-int/2addr v3, v6

    iput v3, p0, Lbg;->al:I

    .line 5324
    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    .line 5339
    :cond_9f
    invoke-direct {p0}, Lbg;->R()V
    :try_end_a2
    .catchall {:try_start_7 .. :try_end_a2} :catchall_a4

    goto/16 :goto_1e

    .line 5288
    :catchall_a4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a7
    move v1, v0

    goto :goto_53
.end method

.method final declared-synchronized I(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 5978
    monitor-enter p0

    :try_start_1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized I(III)Lcw;
    .registers 7

    .prologue
    .line 3151
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lbg;->x(I)I

    move-result v0

    .line 3152
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    invoke-direct {p0, v1, v0, p2, p3}, Lbg;->Code([IIII)Lcw;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3151
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized I(IIII)V
    .registers 9

    .prologue
    .line 6061
    monitor-enter p0

    :try_start_1
    invoke-static {p3}, Lbg;->w(I)I

    move-result v0

    .line 6062
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    invoke-direct {p0, v1, v0, p1}, Lbg;->Code([III)I

    move-result v0

    .line 6065
    sget-object v1, Lar;->Z:Lan;

    iget-object v2, p0, Lbg;->Code:Lcc;

    iget-object v2, v2, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Lan;->l(I)V

    .line 6067
    sget-object v1, Lar;->Z:Lan;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6068
    sget-object v1, Lar;->Z:Lan;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6069
    sget-object v1, Lar;->Z:Lan;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6070
    sget-object v1, Lar;->Z:Lan;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lan;->I(Ljava/lang/String;)V

    .line 6072
    invoke-virtual {p0, p4}, Lbg;->Z(I)I

    move-result v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_94

    .line 6074
    add-int/lit8 v0, p4, 0x2

    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p4, 0x1

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 6075
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6076
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->I(Ljava/lang/String;)V

    .line 6077
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->j()I

    move-result v0

    .line 6079
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    :goto_6c
    if-lez v1, :cond_8f

    .line 6081
    invoke-direct {p0}, Lbg;->D()I

    move-result v2

    packed-switch v2, :pswitch_data_e0

    .line 6087
    iget v2, p0, Lbg;->al:I

    invoke-direct {p0}, Lbg;->A()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 6079
    add-int/lit8 v1, v1, -0x1

    goto :goto_6c

    .line 6084
    :pswitch_81
    sget-object v0, Lar;->Z:Lan;

    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lan;->Code(Ljava/lang/String;)I

    move-result v0

    .line 6091
    :cond_8f
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->m(I)V

    .line 6094
    :cond_94
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_9c
    :goto_9c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 6096
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6097
    const-string v2, "o:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 6099
    sget-object v2, Lar;->Z:Lan;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lan;->I(Ljava/lang/String;)V

    .line 6100
    sget-object v2, Lar;->Z:Lan;

    iget-object v3, p0, Lbg;->Code:Lcc;

    iget-object v3, v3, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lan;->I(Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_1 .. :try_end_ce} :catchall_cf

    goto :goto_9c

    .line 6061
    :catchall_cf
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6103
    :cond_d2
    :try_start_d2
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_cf

    .line 6104
    monitor-exit p0

    return-void

    .line 6081
    nop

    :pswitch_data_e0
    .packed-switch 0x74
        :pswitch_81
    .end packed-switch
.end method

.method public final I(Z)V
    .registers 3

    .prologue
    .line 2214
    monitor-enter p0

    .line 2216
    if-eqz p1, :cond_8

    .line 2218
    :try_start_3
    invoke-direct {p0}, Lbg;->t()V

    .line 2224
    :goto_6
    monitor-exit p0

    return-void

    .line 2222
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbg;->J(Z)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 2224
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final I()Z
    .registers 3

    .prologue
    .line 1785
    iget-object v0, p0, Lbg;->X:[B

    if-eqz v0, :cond_d

    iget v0, p0, Lbg;->aa:I

    iget-object v1, p0, Lbg;->X:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final declared-synchronized I(Ljava/lang/Object;I)Z
    .registers 5

    .prologue
    .line 5972
    monitor-enter p0

    :try_start_1
    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Hashtable;

    .line 5973
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 5972
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized J(II)I
    .registers 6

    .prologue
    .line 6026
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lbg;->w(I)I

    move-result v0

    .line 6027
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    invoke-direct {p0, v1, v0, p1}, Lbg;->Code([III)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    .line 6026
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized J(III)Lbd;
    .registers 25

    .prologue
    .line 6512
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lbg;->S:I

    if-nez v3, :cond_18

    .line 6514
    new-instance v3, Lbd;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Lbd;-><init>(Lbg;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14c

    .line 6614
    :goto_16
    monitor-exit p0

    return-object v3

    .line 6517
    :cond_18
    const/4 v12, 0x0

    .line 6518
    const/4 v11, 0x0

    .line 6519
    const/4 v13, 0x0

    .line 6520
    const/4 v4, 0x0

    .line 6521
    const/4 v3, 0x0

    .line 6523
    :try_start_1d
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->S:I

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->al:I

    .line 6525
    invoke-static/range {p3 .. p3}, Lbg;->w(I)I

    move-result v18

    .line 6526
    sget-object v5, Lar;->Z:Lan;

    iget-object v0, v5, Lan;->I:[I

    move-object/from16 v19, v0

    .line 6527
    sget-object v5, Lar;->Z:Lan;

    move v15, v3

    move/from16 v16, v4

    .line 6529
    :goto_34
    move-object/from16 v0, p0

    iget v3, v0, Lbg;->al:I

    move-object/from16 v0, p0

    iget v4, v0, Lbg;->T:I

    if-gt v3, v4, :cond_136

    .line 6531
    move-object/from16 v0, p0

    iget v0, v0, Lbg;->al:I

    move/from16 v17, v0

    .line 6532
    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v20

    .line 6534
    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v3

    move v14, v3

    :goto_4d
    if-lez v14, :cond_152

    .line 6536
    invoke-direct/range {p0 .. p0}, Lbg;->E()V

    .line 6537
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v2, v4}, Lbg;->I([IIII)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lbg;->ag:I

    .line 6539
    move-object/from16 v0, p0

    iget v3, v0, Lbg;->ag:I

    if-ltz v3, :cond_131

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->af:I

    move-object/from16 v0, p0

    iget v8, v0, Lbg;->ag:I

    move-object/from16 v0, p0

    iget v9, v0, Lbg;->ah:I

    move-object/from16 v0, p0

    iget v10, v0, Lbg;->ai:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v3 .. v10}, Ldb;->Code(IIIIIIII)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 6541
    move-object/from16 v0, p0

    iget v3, v0, Lbg;->al:I

    add-int/lit8 v4, v14, -0x1

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lbg;->al:I

    .line 6542
    move-object/from16 v0, p0

    iget v5, v0, Lbg;->al:I

    .line 6544
    sparse-switch v20, :sswitch_data_158

    :cond_9b
    move v3, v15

    move/from16 v4, v16

    .line 6598
    :goto_9e
    move-object/from16 v0, p0

    iput v5, v0, Lbg;->al:I

    .line 6604
    :goto_a2
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lbg;->al:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lbg;->al:I

    .line 6605
    invoke-direct/range {p0 .. p0}, Lbg;->R()V

    move v15, v3

    move/from16 v16, v4

    .line 6606
    goto/16 :goto_34

    .line 6547
    :sswitch_b7
    if-nez v12, :cond_9b

    .line 6549
    invoke-direct/range {p0 .. p0}, Lbg;->K()Ljava/lang/String;

    move-result-object v12

    move v3, v15

    move/from16 v4, v16

    goto :goto_9e

    .line 6554
    :sswitch_c1
    if-nez v12, :cond_9b

    .line 6556
    move-object/from16 v0, p0

    iget v3, v0, Lbg;->al:I

    add-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lbg;->al:I

    .line 6557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lbg;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move v3, v15

    move/from16 v4, v16

    goto :goto_9e

    .line 6562
    :sswitch_f0
    if-nez v11, :cond_f6

    .line 6564
    invoke-direct/range {p0 .. p0}, Lbg;->K()Ljava/lang/String;

    move-result-object v11

    .line 6566
    :cond_f6
    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v3

    move v4, v3

    move-object v3, v13

    :goto_fc
    if-lez v4, :cond_11c

    if-nez v3, :cond_11c

    .line 6568
    invoke-direct/range {p0 .. p0}, Lbg;->D()I

    move-result v6

    packed-switch v6, :pswitch_data_16e

    .line 6575
    invoke-direct/range {p0 .. p0}, Lbg;->A()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lbg;->al:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lbg;->al:I

    .line 6566
    :goto_114
    add-int/lit8 v4, v4, -0x1

    goto :goto_fc

    .line 6571
    :pswitch_117
    invoke-direct/range {p0 .. p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v3

    goto :goto_114

    :cond_11c
    move/from16 v4, v16

    move-object v13, v3

    move v3, v15

    .line 6578
    goto/16 :goto_9e

    .line 6581
    :sswitch_122
    if-nez v16, :cond_9b

    move v3, v15

    move/from16 v4, v17

    .line 6583
    goto/16 :goto_9e

    .line 6588
    :sswitch_129
    if-nez v15, :cond_9b

    move/from16 v3, v17

    move/from16 v4, v16

    .line 6590
    goto/16 :goto_9e

    .line 6534
    :cond_131
    add-int/lit8 v3, v14, -0x1

    move v14, v3

    goto/16 :goto_4d

    .line 6608
    :cond_136
    if-nez v16, :cond_13a

    if-eqz v15, :cond_14f

    .line 6610
    :cond_13a
    const/4 v7, 0x0

    .line 6611
    const/4 v8, 0x0

    .line 6614
    :goto_13c
    new-instance v3, Lbd;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object v9, v13

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lbd;-><init>(Lbg;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_14a
    .catchall {:try_start_1d .. :try_end_14a} :catchall_14c

    goto/16 :goto_16

    .line 6512
    :catchall_14c
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_14f
    move-object v8, v11

    move-object v7, v12

    goto :goto_13c

    :cond_152
    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_a2

    .line 6544
    nop

    :sswitch_data_158
    .sparse-switch
        0x49 -> :sswitch_122
        0x4c -> :sswitch_b7
        0x4e -> :sswitch_c1
        0x53 -> :sswitch_129
        0x69 -> :sswitch_f0
    .end sparse-switch

    .line 6568
    :pswitch_data_16e
    .packed-switch 0x74
        :pswitch_117
    .end packed-switch
.end method

.method final J(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 2920
    iget-object v0, p0, Lbg;->X:[B

    invoke-static {v0, p1}, Lap;->Code([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final J()V
    .registers 4

    .prologue
    .line 2635
    invoke-direct {p0}, Lbg;->v()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lbg;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2637
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 2638
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 2640
    :cond_1e
    return-void
.end method

.method final Z(I)I
    .registers 3

    .prologue
    .line 2887
    iget-object v0, p0, Lbg;->X:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method final declared-synchronized Z(II)I
    .registers 17

    .prologue
    .line 5820
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lbg;->G(I)I

    move-result v3

    .line 5822
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbg;->al:I

    .line 5823
    invoke-direct {p0}, Lbg;->F()V

    .line 5824
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbg;->al:I

    .line 5826
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    .line 5827
    invoke-direct {p0}, Lbg;->D()I

    move-result v4

    .line 5828
    and-int/lit8 v0, v4, 0x8

    .line 5829
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v2

    .line 5830
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    .line 5832
    iget-object v5, p0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_87

    move-result-object v2

    if-eqz v2, :cond_122

    .line 5835
    const/4 v0, 0x0

    move v2, v0

    .line 5838
    :goto_31
    and-int/lit8 v5, v4, 0x1

    .line 5840
    sparse-switch v1, :sswitch_data_126

    .line 5884
    const/4 v0, 0x0

    :goto_37
    monitor-exit p0

    return v0

    .line 5848
    :sswitch_39
    :try_start_39
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 5849
    sget-object v0, Lar;->Z:Lan;

    .line 5850
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x0

    aput v5, v0, v1

    .line 5851
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 5852
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x2

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 5853
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I

    move-result v0

    goto :goto_37

    .line 5857
    :sswitch_5e
    invoke-direct {p0}, Lbg;->y()I

    move-result v0

    iput v0, p0, Lbg;->al:I

    .line 5858
    invoke-direct {p0}, Lbg;->y()I

    move-result v6

    .line 5860
    iget v7, p0, Lbg;->af:I

    iget v8, p0, Lbg;->ag:I

    iget v9, p0, Lbg;->al:I

    iget v10, p0, Lbg;->ah:I

    iget v11, p0, Lbg;->ai:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v12, p0, Lbg;->Y:I

    iput v12, p0, Lbg;->al:I

    :goto_78
    iget v12, p0, Lbg;->al:I

    if-ge v12, v3, :cond_94

    invoke-direct {p0}, Lbg;->D()I

    move-result v12

    sparse-switch v12, :sswitch_data_148

    :goto_83
    invoke-direct {p0, v12}, Lbg;->D(I)V
    :try_end_86
    .catchall {:try_start_39 .. :try_end_86} :catchall_87

    goto :goto_78

    .line 5820
    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5860
    :sswitch_8a
    :try_start_8a
    invoke-direct {p0}, Lbg;->F()V

    iget v13, p0, Lbg;->af:I

    add-int/2addr v1, v13

    iget v13, p0, Lbg;->ag:I

    add-int/2addr v0, v13

    goto :goto_83

    :cond_94
    add-int/2addr v1, v7

    iput v1, p0, Lbg;->af:I

    add-int/2addr v0, v8

    iput v0, p0, Lbg;->ag:I

    iput v10, p0, Lbg;->ah:I

    iput v11, p0, Lbg;->ai:I

    iput v9, p0, Lbg;->al:I

    .line 5862
    invoke-static/range {p2 .. p2}, Lbg;->w(I)I

    move-result v0

    .line 5863
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    iget v7, p0, Lbg;->ag:I

    invoke-direct {p0, v1, v3, v0, v7}, Lbg;->I([IIII)I

    move-result v0

    iput v0, p0, Lbg;->ag:I

    .line 5866
    sget-object v0, Lar;->Z:Lan;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 5867
    sget-object v0, Lar;->Z:Lan;

    .line 5868
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x0

    aput v5, v0, v1

    .line 5869
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 5870
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x2

    aput v6, v0, v1

    .line 5871
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, v0, Lan;->I:[I

    const/4 v2, 0x3

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_109

    const/4 v0, 0x1

    :goto_db
    aput v0, v1, v2

    .line 5872
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x4

    iget v2, p0, Lbg;->af:I

    aput v2, v0, v1

    .line 5873
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x5

    iget v2, p0, Lbg;->ag:I

    aput v2, v0, v1

    .line 5874
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x6

    iget v2, p0, Lbg;->ah:I

    aput v2, v0, v1

    .line 5875
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x7

    iget v2, p0, Lbg;->ai:I

    aput v2, v0, v1

    .line 5876
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I

    move-result v0

    goto/16 :goto_37

    .line 5871
    :cond_109
    const/4 v0, 0x0

    goto :goto_db

    .line 5880
    :sswitch_10b
    sget-object v0, Lar;->Z:Lan;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 5881
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    sget-object v1, Lar;->Z:Lan;

    const/4 v1, 0x0

    aput v5, v0, v1

    .line 5882
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_11f
    .catchall {:try_start_8a .. :try_end_11f} :catchall_87

    move-result v0

    goto/16 :goto_37

    :cond_122
    move v2, v0

    goto/16 :goto_31

    .line 5840
    nop

    :sswitch_data_126
    .sparse-switch
        0x53 -> :sswitch_39
        0x55 -> :sswitch_39
        0x61 -> :sswitch_39
        0x63 -> :sswitch_10b
        0x70 -> :sswitch_39
        0x72 -> :sswitch_10b
        0x73 -> :sswitch_5e
        0x78 -> :sswitch_39
    .end sparse-switch

    .line 5860
    :sswitch_data_148
    .sparse-switch
        0x42 -> :sswitch_8a
        0x46 -> :sswitch_8a
        0x49 -> :sswitch_8a
        0x54 -> :sswitch_8a
    .end sparse-switch
.end method

.method final Z(Z)I
    .registers 9

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x0

    .line 6449
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->m()Z

    move-result v0

    if-eqz v0, :cond_5e

    move v3, v2

    .line 6451
    :goto_c
    const/4 v0, 0x5

    if-ge v3, v0, :cond_5e

    .line 6453
    iget-object v0, p0, Lbg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 6454
    const v1, 0x5f5e100

    rem-int v1, v0, v1

    .line 6455
    if-gez v1, :cond_2b

    .line 6456
    neg-int v1, v1

    .line 6457
    :cond_2b
    if-eqz v1, :cond_54

    .line 6458
    if-eqz p1, :cond_41

    .line 6462
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, v1, v6}, Lbk;->I(II)Ljava/lang/String;

    move-result-object v0

    .line 6468
    :goto_35
    sget-object v4, Lar;->c:Lbk;

    iget-object v5, p0, Lbg;->X:[B

    invoke-virtual {v4, v5, v0}, Lbk;->Code([BLjava/lang/String;)I

    move-result v0

    .line 6469
    if-nez v0, :cond_48

    move v0, v1

    .line 6488
    :goto_40
    return v0

    .line 6466
    :cond_41
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0, v1, v6}, Lbk;->Code(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 6473
    :cond_48
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    move v0, v2

    .line 6475
    goto :goto_40

    .line 6477
    :cond_4d
    if-eqz p1, :cond_58

    .line 6479
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0}, Lbk;->I()V

    .line 6451
    :cond_54
    :goto_54
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 6483
    :cond_58
    sget-object v0, Lar;->c:Lbk;

    invoke-virtual {v0}, Lbk;->Code()V

    goto :goto_54

    :cond_5e
    move v0, v2

    .line 6488
    goto :goto_40
.end method

.method final declared-synchronized Z(III)V
    .registers 8

    .prologue
    .line 6033
    monitor-enter p0

    :try_start_1
    invoke-static {p3}, Lbg;->w(I)I

    move-result v0

    .line 6034
    sget-object v1, Lar;->Z:Lan;

    iget-object v1, v1, Lan;->I:[I

    sget-object v2, Lar;->Z:Lan;

    invoke-direct {p0, v1, v0, p1}, Lbg;->Code([III)I

    move-result v0

    .line 6037
    sget-object v1, Lar;->Z:Lan;

    iget-object v2, p0, Lbg;->Code:Lcc;

    iget-object v2, v2, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Lan;->l(I)V

    .line 6039
    sget-object v1, Lar;->Z:Lan;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6040
    sget-object v1, Lar;->Z:Lan;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6041
    sget-object v1, Lar;->Z:Lan;

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lan;->I(Ljava/lang/String;)V

    .line 6042
    sget-object v1, Lar;->Z:Lan;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lan;->I(Ljava/lang/String;)V

    .line 6044
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 6046
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6047
    const-string v2, "o:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 6049
    sget-object v2, Lar;->Z:Lan;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lan;->I(Ljava/lang/String;)V

    .line 6050
    sget-object v2, Lar;->Z:Lan;

    iget-object v3, p0, Lbg;->Code:Lcc;

    iget-object v3, v3, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lan;->I(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_1 .. :try_end_7a} :catchall_7b

    goto :goto_48

    .line 6033
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6053
    :cond_7e
    :try_start_7e
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_7b

    .line 6054
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized Z(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 6003
    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/Hashtable;

    .line 6004
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 6005
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 6007
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_23

    .line 6009
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6011
    :cond_23
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_13

    .line 6003
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6013
    :cond_2e
    :try_start_2e
    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbg;->Code(ILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_2b

    .line 6014
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized Z(Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 5983
    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/Hashtable;

    .line 5984
    check-cast p1, [Ljava/lang/Object;

    const/4 v2, 0x4

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 5986
    if-nez v2, :cond_1a

    .line 5988
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 5990
    :cond_1a
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 5991
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 5993
    invoke-virtual {v1, v2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    .line 5999
    :goto_28
    monitor-exit p0

    return-void

    .line 5997
    :cond_2a
    :try_start_2a
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_28

    .line 5983
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final Z()Z
    .registers 2

    .prologue
    .line 1848
    iget-boolean v0, p0, Lbg;->i:Z

    return v0
.end method

.method final a()I
    .registers 5

    .prologue
    .line 3308
    :goto_0
    iget v0, p0, Lbg;->an:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lbg;->X:[B

    if-eqz v0, :cond_1d

    .line 3310
    iget-object v0, p0, Lbg;->X:[B

    iget v1, p0, Lbg;->an:I

    invoke-static {v0, v1}, Lbg;->Code([BI)I

    move-result v0

    .line 3311
    sget-object v1, Lar;->Z:Lan;

    iget-object v2, p0, Lbg;->X:[B

    iget v3, p0, Lbg;->an:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lan;->I([BII)I

    move-result v0

    .line 3317
    :goto_1c
    return v0

    .line 3313
    :cond_1d
    iget-object v0, p0, Lbg;->I:Lbg;

    if-eqz v0, :cond_24

    .line 3315
    iget-object p0, p0, Lbg;->I:Lbg;

    goto :goto_0

    .line 3317
    :cond_24
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method final a(I)I
    .registers 4

    .prologue
    .line 3771
    iget v0, p0, Lbg;->s:I

    mul-int/2addr v0, p1

    iget v1, p0, Lbg;->q:I

    div-int/2addr v0, v1

    return v0
.end method

.method final declared-synchronized a(II)I
    .registers 10

    .prologue
    .line 6982
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lbg;->V:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5d

    if-nez v0, :cond_8

    .line 6984
    const/4 v0, 0x0

    .line 7014
    :goto_6
    monitor-exit p0

    return v0

    .line 6987
    :cond_8
    :try_start_8
    iget-object v0, p0, Lbg;->V:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v3, v0, v1

    .line 6988
    iget-object v0, p0, Lbg;->V:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    add-int v4, v3, v0

    .line 6990
    iget v0, p0, Lbg;->N:I

    invoke-direct {p0, v3, v0}, Lbg;->c(II)I

    move-result v1

    move v2, v1

    .line 6994
    :goto_21
    iget-object v0, p0, Lbg;->M:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x0

    aget v0, v0, v5

    .line 6995
    iget-object v5, p0, Lbg;->M:[I

    mul-int/lit8 v6, v2, 0x5

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    add-int/2addr v5, v0

    .line 6996
    if-lt v0, v3, :cond_3a

    if-gt v5, v4, :cond_3a

    .line 6998
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 7001
    goto :goto_21

    .line 7002
    :cond_3a
    if-nez p2, :cond_55

    .line 7004
    sget-object v0, Lar;->Z:Lan;

    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Lan;->o(I)V

    :goto_43
    move v0, v1

    .line 7010
    :goto_44
    if-ge v0, v2, :cond_60

    .line 7012
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    sget-object v4, Lar;->Z:Lan;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x0

    aput v0, v3, v4

    .line 7010
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 7008
    :cond_55
    sget-object v0, Lar;->Z:Lan;

    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Lan;->p(I)V
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5d

    goto :goto_43

    .line 6982
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 7014
    :cond_60
    :try_start_60
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5d

    move-result v0

    goto :goto_6
.end method

.method public final b(I)I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 4167
    if-nez p1, :cond_23

    .line 4169
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->v:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 4176
    :goto_c
    iget-object v0, p0, Lbg;->v:[I

    const/4 v1, 0x1

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    iget-object v3, p0, Lbg;->v:[I

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4179
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I

    move-result v0

    return v0

    .line 4173
    :cond_23
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->v:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lan;->p(I)V

    goto :goto_c
.end method

.method final declared-synchronized b()V
    .registers 2

    .prologue
    .line 5081
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbg;->C:Z

    if-eqz v0, :cond_a

    .line 5083
    sget-object v0, Lbg;->ap:Lbw;

    invoke-virtual {v0, p0}, Lbw;->Code(Lbg;)V

    .line 5085
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lbg;->J:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 5088
    monitor-exit p0

    return-void

    .line 5081
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()I
    .registers 2

    .prologue
    .line 5668
    iget v0, p0, Lbg;->G:I

    return v0
.end method

.method final c(I)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 5353
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p1}, Lan;->n(I)I

    move-result v2

    .line 5354
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p1, v2}, Lan;->Code(II)V

    .line 5355
    iget-object v0, p0, Lbg;->ab:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    move v0, v1

    .line 5356
    :goto_13
    if-ge v0, v2, :cond_47

    .line 5358
    iget-object v3, p0, Lbg;->ab:Ljava/util/Hashtable;

    sget-object v4, Lar;->Z:Lan;

    sget-object v5, Lar;->Z:Lan;

    iget-object v5, v5, Lan;->I:[I

    sget-object v6, Lar;->Z:Lan;

    add-int/lit8 v6, v0, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Lan;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldb;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lar;->Z:Lan;

    sget-object v6, Lar;->Z:Lan;

    iget-object v6, v6, Lan;->I:[I

    sget-object v7, Lar;->Z:Lan;

    add-int/lit8 v7, v0, 0x0

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lan;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldb;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5356
    add-int/lit8 v0, v0, 0x2

    goto :goto_13

    .line 5364
    :cond_47
    if-lez v2, :cond_60

    .line 5366
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbg;->ad:Ljava/lang/String;

    const/16 v3, 0x78

    invoke-direct {p0, v0, v2, v3, v8}, Lbg;->Code(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v0, p0, Lbg;->ae:Ljava/lang/String;

    const/16 v2, 0x70

    invoke-direct {p0, v1, v0, v2, v8}, Lbg;->Code(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 5369
    :cond_60
    return-void
.end method

.method final d()I
    .registers 2

    .prologue
    .line 5673
    iget v0, p0, Lbg;->H:I

    return v0
.end method

.method final d(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 5376
    packed-switch p1, :pswitch_data_1c

    .line 5397
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5380
    :pswitch_5
    iget-object v0, p0, Lbg;->ae:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    iget-object v1, p0, Lbg;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5384
    iget-object v0, p0, Lbg;->ad:Ljava/lang/String;

    goto :goto_4

    .line 5390
    :pswitch_18
    iget-object v0, p0, Lbg;->ae:Ljava/lang/String;

    goto :goto_4

    .line 5376
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_18
    .end packed-switch
.end method

.method final e()I
    .registers 2

    .prologue
    .line 6171
    iget v0, p0, Lbg;->n:I

    return v0
.end method

.method final declared-synchronized e(I)I
    .registers 16

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 5459
    monitor-enter p0

    :try_start_4
    iget v0, p0, Lbg;->S:I

    if-nez v0, :cond_76

    const/4 v0, -0x1

    iput v0, p0, Lbg;->aw:I

    .line 5461
    :goto_b
    iget v0, p0, Lbg;->N:I

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [I

    move v0, v3

    move v2, v3

    .line 5464
    :goto_13
    invoke-direct {p0}, Lbg;->Q()I

    move-result v9

    if-lez v9, :cond_ab

    .line 5468
    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v1, v1, v6

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    .line 5470
    invoke-virtual {p0, v1}, Lbg;->I(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    .line 5472
    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v7, v6, -0x1

    aget-byte v1, v1, v7

    move v13, v1

    move v1, v6

    move v6, v13

    :goto_36
    if-lez v6, :cond_142

    .line 5474
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v1}, Lbg;->Z(I)I

    move-result v1

    .line 5475
    const/16 v10, 0x72

    if-ne v1, v10, :cond_7e

    .line 5477
    invoke-virtual {p0, v7}, Lbg;->I(I)I

    move-result v1

    .line 5478
    add-int/lit8 v0, v7, 0x2

    .line 5479
    add-int v7, v1, v0

    .line 5488
    :goto_4a
    if-lt v7, v0, :cond_13f

    move v1, v3

    move v6, v0

    move v0, v5

    .line 5495
    :cond_4f
    :goto_4f
    if-ge v6, v7, :cond_8a

    .line 5497
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v6}, Lbg;->Z(I)I

    move-result v11

    .line 5498
    invoke-virtual {p0, v10}, Lbg;->I(I)I

    move-result v12

    .line 5499
    add-int/lit8 v6, v10, 0x2

    .line 5500
    if-lez v11, :cond_4f

    .line 5502
    const/4 v10, 0x1

    aput v10, v8, v12

    .line 5503
    iget-object v10, p0, Lbg;->M:[I

    mul-int/lit8 v11, v12, 0x5

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v1, v10

    .line 5504
    if-ne v0, v5, :cond_4f

    .line 5506
    iget-object v0, p0, Lbg;->M:[I

    mul-int/lit8 v10, v12, 0x5

    add-int/lit8 v10, v10, 0x0

    aget v0, v0, v10

    goto :goto_4f

    .line 5459
    :cond_76
    iget v0, p0, Lbg;->S:I

    iput v0, p0, Lbg;->aw:I
    :try_end_7a
    .catchall {:try_start_4 .. :try_end_7a} :catchall_7b

    goto :goto_b

    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5485
    :cond_7e
    :try_start_7e
    invoke-virtual {p0, v7}, Lbg;->I(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v7, v1

    .line 5472
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v1, v7

    goto :goto_36

    .line 5510
    :cond_8a
    if-lez v1, :cond_13c

    .line 5512
    iget v6, p0, Lbg;->N:I

    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v6, v10

    aput v0, v8, v6

    .line 5513
    iget v0, p0, Lbg;->N:I

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    aput v1, v8, v0

    .line 5514
    iget v0, p0, Lbg;->N:I

    mul-int/lit8 v1, v2, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    aput v9, v8, v0

    .line 5515
    add-int/lit8 v0, v2, 0x1

    :goto_a7
    move v2, v0

    move v0, v7

    .line 5517
    goto/16 :goto_13

    .line 5522
    :cond_ab
    const/4 v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    .line 5523
    :goto_af
    if-nez v0, :cond_dd

    .line 5526
    iget v0, p0, Lbg;->N:I

    :goto_b3
    iget v5, p0, Lbg;->N:I

    add-int/lit8 v6, v2, -0x1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_db

    .line 5528
    aget v5, v8, v0

    add-int/lit8 v6, v0, 0x3

    aget v6, v8, v6

    if-le v5, v6, :cond_d8

    .line 5530
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v8, v0, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5531
    add-int/lit8 v5, v0, 0x3

    const/4 v6, 0x3

    invoke-static {v8, v5, v8, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5532
    const/4 v5, 0x0

    add-int/lit8 v0, v0, 0x3

    const/4 v6, 0x3

    invoke-static {v1, v5, v8, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    .line 5534
    goto :goto_af

    .line 5526
    :cond_d8
    add-int/lit8 v0, v0, 0x3

    goto :goto_b3

    :cond_db
    move v0, v4

    goto :goto_af

    .line 5538
    :cond_dd
    if-nez p1, :cond_11d

    .line 5540
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lbg;->N:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 5546
    :goto_eb
    sget-object v0, Lar;->Z:Lan;

    .line 5547
    sget-object v0, Lar;->Z:Lan;

    iget-object v0, v0, Lan;->I:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    move v0, v3

    move v1, v4

    .line 5548
    :goto_f6
    if-ge v0, v2, :cond_12a

    .line 5550
    sget-object v3, Lar;->Z:Lan;

    iget-object v3, v3, Lan;->I:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lbg;->N:I

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    aget v5, v8, v5

    aput v5, v3, v1

    .line 5551
    sget-object v1, Lar;->Z:Lan;

    iget-object v3, v1, Lan;->I:[I

    add-int/lit8 v1, v4, 0x1

    iget v5, p0, Lbg;->N:I

    mul-int/lit8 v6, v0, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    aput v5, v3, v4

    .line 5548
    add-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 5544
    :cond_11d
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lbg;->N:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lan;->p(I)V

    goto :goto_eb

    .line 5553
    :cond_12a
    const/4 v0, 0x0

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    iget v3, p0, Lbg;->N:I

    invoke-static {v8, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5554
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_139
    .catchall {:try_start_7e .. :try_end_139} :catchall_7b

    move-result v0

    monitor-exit p0

    return v0

    :cond_13c
    move v0, v2

    goto/16 :goto_a7

    :cond_13f
    move v0, v7

    goto/16 :goto_13

    :cond_142
    move v7, v0

    move v0, v1

    goto/16 :goto_4a
.end method

.method final f(I)I
    .registers 3

    .prologue
    .line 5624
    iget-object v0, p0, Lbg;->X:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method final f()[I
    .registers 2

    .prologue
    .line 6183
    iget-object v0, p0, Lbg;->o:[I

    return-object v0
.end method

.method final g()B
    .registers 2

    .prologue
    .line 6202
    iget-byte v0, p0, Lbg;->l:B

    return v0
.end method

.method final g(I)I
    .registers 9

    .prologue
    .line 5629
    invoke-virtual {p0, p1}, Lbg;->Z(I)I

    move-result v0

    .line 5630
    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x2

    add-int v5, p1, v1

    .line 5631
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lbg;->X:[B

    invoke-static {v0, v5}, Lap;->Z([BI)I

    move-result v6

    if-lez v6, :cond_3f

    iget-object v0, p0, Lbg;->X:[B

    add-int/lit8 v1, v5, 0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_3f

    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->X:[B

    iget v2, p0, Lbg;->e:I

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lbg;->X:[B

    iget v4, p0, Lbg;->e:I

    invoke-static {v3, v4}, Lap;->Z([BI)I

    move-result v3

    iget-object v4, p0, Lbg;->X:[B

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lan;->Code([BII[BII)I

    move-result v0

    :goto_3e
    return v0

    :cond_3f
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->X:[B

    add-int/lit8 v2, v5, 0x2

    invoke-virtual {v0, v1, v2, v6}, Lan;->Code([BII)I

    move-result v0

    goto :goto_3e

    :cond_4a
    add-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lbg;->y(I)I

    move-result v0

    goto :goto_3e
.end method

.method final h()I
    .registers 2

    .prologue
    .line 6210
    iget v0, p0, Lbg;->m:I

    return v0
.end method

.method final h(I)I
    .registers 4

    .prologue
    .line 5639
    iget-object v0, p0, Lbg;->X:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 5640
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lbg;->I(I)I

    move-result v0

    return v0
.end method

.method final i()I
    .registers 2

    .prologue
    .line 6218
    iget v0, p0, Lbg;->k:I

    return v0
.end method

.method final i(I)I
    .registers 4

    .prologue
    .line 5648
    iget-object v0, p0, Lbg;->X:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 5649
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lbg;->Code(I)I

    move-result v0

    return v0
.end method

.method final j()I
    .registers 2

    .prologue
    .line 6223
    iget v0, p0, Lbg;->h:I

    return v0
.end method

.method final j(I)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 5654
    .line 5655
    iput p1, p0, Lbg;->al:I

    .line 5656
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_48

    .line 5658
    const/16 v0, 0x10

    .line 5660
    :goto_d
    invoke-direct {p0}, Lbg;->D()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lbg;->al:I

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 5661
    invoke-direct {p0}, Lbg;->A()I

    move-result v2

    iget v3, p0, Lbg;->al:I

    add-int/2addr v2, v3

    iput v2, p0, Lbg;->al:I

    .line 5662
    invoke-direct {p0}, Lbg;->D()I

    move-result v2

    :goto_25
    if-lez v2, :cond_46

    invoke-direct {p0}, Lbg;->D()I

    move-result v3

    sparse-switch v3, :sswitch_data_4a

    :goto_2e
    invoke-direct {p0}, Lbg;->A()I

    move-result v3

    iget v4, p0, Lbg;->al:I

    add-int/2addr v3, v4

    iput v3, p0, Lbg;->al:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :sswitch_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :sswitch_3d
    add-int/lit8 v1, v1, 0x2

    goto :goto_2e

    :sswitch_40
    add-int/lit8 v1, v1, 0x4

    goto :goto_2e

    :sswitch_43
    add-int/lit8 v1, v1, 0x8

    goto :goto_2e

    :cond_46
    or-int/2addr v0, v1

    .line 5663
    return v0

    :cond_48
    move v0, v1

    goto :goto_d

    .line 5662
    :sswitch_data_4a
    .sparse-switch
        0x42 -> :sswitch_3d
        0x46 -> :sswitch_3a
        0x6c -> :sswitch_40
        0x72 -> :sswitch_43
    .end sparse-switch
.end method

.method final k()I
    .registers 2

    .prologue
    .line 6231
    iget v0, p0, Lbg;->j:I

    return v0
.end method

.method final declared-synchronized k(I)I
    .registers 5

    .prologue
    .line 5681
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    :try_start_3
    iput v0, p0, Lbg;->al:I

    .line 5682
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5683
    invoke-direct {p0}, Lbg;->A()I

    move-result v0

    iget v1, p0, Lbg;->al:I

    add-int/2addr v0, v1

    iput v0, p0, Lbg;->al:I

    .line 5684
    invoke-direct {p0}, Lbg;->D()I

    move-result v0

    :goto_1d
    if-lez v0, :cond_3a

    .line 5686
    invoke-direct {p0}, Lbg;->D()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 5692
    invoke-direct {p0}, Lbg;->A()I

    move-result v1

    iget v2, p0, Lbg;->al:I

    add-int/2addr v1, v2

    iput v1, p0, Lbg;->al:I

    .line 5684
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 5689
    :pswitch_32
    iget v0, p0, Lbg;->al:I

    invoke-direct {p0, v0}, Lbg;->y(I)I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3c

    move-result v0

    .line 5695
    :goto_38
    monitor-exit p0

    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_38

    .line 5681
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5686
    nop

    :pswitch_data_40
    .packed-switch 0x74
        :pswitch_32
    .end packed-switch
.end method

.method final declared-synchronized l(I)I
    .registers 4

    .prologue
    .line 5751
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 5752
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lbg;->al:I

    .line 5753
    iget-object v0, p0, Lbg;->X:[B

    iget v1, p0, Lbg;->al:I

    aget-byte v0, v0, v1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return v0

    .line 5751
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()V
    .registers 3

    .prologue
    .line 6338
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbg;->aB:Lcv;

    .line 6339
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v1, 0x0

    iput-object v1, v0, Lcc;->B:Ljava/lang/String;

    .line 6340
    iget-object v0, p0, Lbg;->Code:Lcc;

    const/4 v1, -0x1

    iput v1, v0, Lcc;->C:I
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 6341
    monitor-exit p0

    return-void

    .line 6338
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final m()I
    .registers 3

    .prologue
    .line 6661
    const/4 v0, 0x0

    .line 6662
    sget-boolean v1, Ldb;->c:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lbg;->X:[B

    if-eqz v1, :cond_18

    .line 6664
    iget-object v0, p0, Lbg;->X:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 6665
    iget-object v1, p0, Lbg;->M:[I

    if-eqz v1, :cond_18

    .line 6667
    iget-object v1, p0, Lbg;->M:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 6671
    :cond_18
    iget-object v1, p0, Lbg;->Z:Lbh;

    if-eqz v1, :cond_29

    .line 6673
    iget-object v1, p0, Lbg;->aq:Lbh;

    invoke-static {v1}, Lbh;->Code(Lbh;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget v1, v1, Lbh;->C:I

    add-int/2addr v0, v1

    .line 6677
    :goto_28
    return v0

    :cond_29
    iget-object v1, p0, Lbg;->aq:Lbh;

    invoke-static {v1}, Lbh;->Code(Lbh;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_28
.end method

.method final declared-synchronized m(I)Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5894
    monitor-enter p0

    :try_start_3
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 5895
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lbg;->al:I

    .line 5896
    invoke-direct {p0}, Lbg;->D()I

    .line 5897
    invoke-direct {p0}, Lbg;->D()I

    move-result v4

    .line 5898
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v5

    .line 5899
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    .line 5900
    invoke-direct {p0}, Lbg;->y()I

    move-result v3

    iput v3, p0, Lbg;->al:I

    .line 5901
    invoke-direct {p0}, Lbg;->y()I

    move-result v6

    .line 5903
    new-array v7, v6, [I

    move v3, v2

    .line 5904
    :goto_28
    if-ge v3, v6, :cond_37

    .line 5906
    iget v8, p0, Lbg;->al:I

    aput v8, v7, v3

    .line 5907
    invoke-direct {p0}, Lbg;->G()V

    .line 5908
    invoke-direct {p0}, Lbg;->G()V

    .line 5904
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 5911
    :cond_37
    iget-object v3, p0, Lbg;->Code:Lcc;

    iget-object v3, v3, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 5913
    iget-object v0, p0, Lbg;->Code:Lcc;

    iget-object v0, v0, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5916
    :cond_4b
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 5917
    new-instance v5, Ljava/lang/Integer;

    invoke-static {v3, v0}, Lbg;->Code(Ljava/util/Hashtable;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 5918
    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v6, v0

    const/4 v0, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v0

    const/4 v0, 0x2

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v3, 0x4

    new-instance v7, Ljava/lang/Boolean;

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_7f

    move v0, v1

    :goto_75
    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v3

    const/4 v0, 0x5

    aput-object v5, v6, v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_81

    monitor-exit p0

    return-object v6

    :cond_7f
    move v0, v2

    goto :goto_75

    .line 5894
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized n()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 6897
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lbg;->V:[I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_27

    if-nez v1, :cond_8

    .line 6906
    :goto_6
    monitor-exit p0

    return v0

    .line 6902
    :cond_8
    :try_start_8
    sget-object v0, Lar;->Z:Lan;

    iget-object v1, p0, Lbg;->V:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 6903
    iget-object v0, p0, Lbg;->V:[I

    const/4 v1, 0x0

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    iget-object v4, p0, Lbg;->V:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6906
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_27

    move-result v0

    goto :goto_6

    .line 6897
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized n(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 6108
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 6109
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x11

    iput v0, p0, Lbg;->al:I

    .line 6110
    invoke-direct {p0}, Lbg;->G()V

    .line 6111
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 6108
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o()I
    .registers 6

    .prologue
    .line 6911
    monitor-enter p0

    :try_start_1
    sget-object v0, Lar;->Z:Lan;

    iget v1, p0, Lbg;->N:I

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Lan;->o(I)V

    .line 6912
    iget-object v0, p0, Lbg;->M:[I

    const/4 v1, 0x0

    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->I:[I

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    iget v4, p0, Lbg;->N:I

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6915
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0}, Lan;->o()I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result v0

    monitor-exit p0

    return v0

    .line 6911
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6117
    monitor-enter p0

    :try_start_3
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 6118
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lbg;->al:I

    .line 6120
    invoke-direct {p0}, Lbg;->D()I

    move-result v3

    .line 6121
    invoke-direct {p0}, Lbg;->D()I

    move-result v4

    .line 6122
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    .line 6123
    iget-object v5, p0, Lbg;->Code:Lcc;

    iget-object v5, v5, Lcc;->I:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6125
    sparse-switch v3, :sswitch_data_48

    .line 6146
    const-string v0, ""
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_45

    :cond_27
    :goto_27
    monitor-exit p0

    return-object v0

    .line 6133
    :sswitch_29
    if-nez v0, :cond_27

    .line 6135
    :try_start_2b
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 6140
    :sswitch_30
    if-eqz v0, :cond_3e

    move v3, v1

    :goto_33
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_40

    move v0, v1

    :goto_38
    xor-int/2addr v0, v3

    if-eqz v0, :cond_42

    .line 6141
    const-string v0, "1"

    goto :goto_27

    :cond_3e
    move v3, v2

    .line 6140
    goto :goto_33

    :cond_40
    move v0, v2

    goto :goto_38

    .line 6143
    :cond_42
    const-string v0, "0"
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_45

    goto :goto_27

    .line 6117
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6125
    :sswitch_data_48
    .sparse-switch
        0x53 -> :sswitch_29
        0x55 -> :sswitch_29
        0x61 -> :sswitch_29
        0x63 -> :sswitch_30
        0x70 -> :sswitch_29
        0x73 -> :sswitch_29
        0x78 -> :sswitch_29
    .end sparse-switch
.end method

.method final declared-synchronized p(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 6151
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lbg;->G(I)I

    .line 6152
    iget v0, p0, Lbg;->al:I

    add-int/lit8 v0, v0, 0x11

    iput v0, p0, Lbg;->al:I

    .line 6153
    invoke-direct {p0}, Lbg;->H()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 6151
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()V
    .registers 4

    .prologue
    .line 7019
    iget-object v0, p0, Lbg;->Code:Lcc;

    invoke-virtual {v0}, Lcc;->a()V

    .line 7020
    sget-object v0, Lar;->I:Lar;

    iget-object v1, p0, Lbg;->Code:Lcc;

    invoke-virtual {v1}, Lcc;->C()I

    move-result v1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lar;->I(II)V

    .line 7021
    return-void
.end method

.method final q(I)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 6636
    .line 6637
    sget-boolean v0, Ldb;->c:Z

    if-eqz v0, :cond_4a

    if-lez p1, :cond_4a

    iget-object v0, p0, Lbg;->X:[B

    if-eqz v0, :cond_4a

    .line 6639
    iget-object v0, p0, Lbg;->X:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 6640
    iget-object v2, p0, Lbg;->M:[I

    if-eqz v2, :cond_1a

    .line 6642
    iget-object v2, p0, Lbg;->M:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 6644
    :cond_1a
    const/4 v2, 0x1

    sub-int v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6647
    :goto_21
    iget-object v2, p0, Lbg;->Z:Lbh;

    if-eqz v2, :cond_3d

    .line 6649
    iget-object v1, p0, Lbg;->aq:Lbh;

    iget-object v2, p0, Lbg;->Z:Lbh;

    invoke-static {v2}, Lbh;->Code(Lbh;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lbh;->Code(II)V

    .line 6650
    iget-object v1, p0, Lbg;->aq:Lbh;

    invoke-static {v1}, Lbh;->Code(Lbh;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbg;->aq:Lbh;

    iget v1, v1, Lbh;->C:I

    add-int/2addr v0, v1

    .line 6655
    :goto_3c
    return v0

    .line 6654
    :cond_3d
    iget-object v2, p0, Lbg;->aq:Lbh;

    invoke-virtual {v2, p1, v1}, Lbh;->Code(II)V

    .line 6655
    iget-object v1, p0, Lbg;->aq:Lbh;

    invoke-static {v1}, Lbh;->Code(Lbh;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3c

    :cond_4a
    move v0, v1

    goto :goto_21
.end method
