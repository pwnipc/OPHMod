.class public final Lcu;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static A:Lbu;

.field private static B:Z

.field private static C:I

.field static Code:I

.field private static D:Z

.field private static E:I

.field private static F:I

.field private static G:I

.field private static final I:Ljava/lang/Object;

.field private static J:Z

.field private static Z:Lci;

.field private static a:I

.field private static b:Lbu;

.field private static c:Lbu;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:Lbp;

.field private static m:I

.field private static n:Lbu;

.field private static o:Lbu;

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:I

.field private static v:I

.field private static w:Lbp;

.field private static x:Lbu;

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcu;->I:Ljava/lang/Object;

    return-void
.end method

.method static B()Z
    .registers 2

    .prologue
    .line 235
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_3
    sget-boolean v0, Lcu;->J:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    .line 238
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static C()V
    .registers 2

    .prologue
    .line 475
    sget v0, Lcu;->C:I

    sget-object v1, Lcu;->Z:Lci;

    invoke-interface {v1}, Lci;->J()I

    move-result v1

    if-ne v0, v1, :cond_15

    sget v0, Lcu;->a:I

    sget-object v1, Lcu;->Z:Lci;

    invoke-interface {v1}, Lci;->B()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 483
    :goto_14
    return-void

    .line 479
    :cond_15
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->J()I

    move-result v0

    sput v0, Lcu;->C:I

    .line 480
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->B()I

    move-result v0

    .line 481
    sput v0, Lcu;->a:I

    mul-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x64

    .line 482
    sput v0, Lcu;->p:I

    sget v1, Lcu;->G:I

    sub-int/2addr v0, v1

    sget-object v1, Lcu;->l:Lbp;

    invoke-interface {v1}, Lbp;->Code()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcu;->k:I

    goto :goto_14
.end method

.method public static Code()V
    .registers 2

    .prologue
    .line 70
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcu;->B:Z

    .line 73
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static Code(I)V
    .registers 7

    .prologue
    .line 281
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_3
    sget-boolean v0, Lcu;->J:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcu;->B:Z

    if-nez v0, :cond_2d

    .line 285
    invoke-static {}, Lcu;->C()V

    .line 286
    sget v0, Lcu;->i:I

    sget v2, Lcu;->j:I

    sget v3, Lcu;->i:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcu;->m:I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2f

    .line 290
    :try_start_21
    sget-object v0, Lcu;->Z:Lci;

    const/4 v2, 0x0

    sget v3, Lcu;->p:I

    sget v4, Lcu;->C:I

    sget v5, Lcu;->r:I

    invoke-interface {v0, v2, v3, v4, v5}, Lci;->Code(IIII)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2d} :catch_32
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2f

    .line 294
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_32
    move-exception v0

    goto :goto_2d
.end method

.method static Code(II)V
    .registers 4

    .prologue
    .line 271
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    mul-int/lit8 v0, p0, 0xa

    :try_start_5
    sput v0, Lcu;->i:I

    .line 274
    mul-int/lit8 v0, p1, 0xa

    sput v0, Lcu;->j:I

    .line 275
    const/4 v0, 0x0

    invoke-static {v0}, Lcu;->Code(I)V

    .line 276
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static Code(I[B)V
    .registers 5

    .prologue
    .line 218
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "splash"

    invoke-virtual {v0, v1}, Lcn;->Z(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 220
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lao;->Z(I[BI)V

    .line 223
    :try_start_e
    sget-object v1, Lcn;->Code:Lcn;

    const-string v2, "splash"

    invoke-virtual {v1, v2, v0}, Lcn;->Code(Ljava/lang/String;[B)I

    .line 224
    sput p0, Lcu;->Code:I

    .line 225
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "splash"

    invoke-virtual {v0, v1, p1}, Lcn;->Code(Ljava/lang/String;[B)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_1f

    .line 231
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method static Code(Lbr;)V
    .registers 16

    .prologue
    .line 335
    sget-object v8, Lcu;->I:Ljava/lang/Object;

    monitor-enter v8

    .line 337
    :try_start_3
    sget-boolean v0, Lcu;->J:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcu;->B:Z

    if-eqz v0, :cond_d

    .line 339
    :cond_b
    monitor-exit v8

    .line 365
    :goto_c
    return-void

    .line 342
    :cond_d
    invoke-interface {p0}, Lbr;->Code()I

    move-result v1

    invoke-interface {p0}, Lbr;->I()I

    move-result v2

    invoke-interface {p0}, Lbr;->Z()I

    move-result v3

    invoke-interface {p0}, Lbr;->J()I

    move-result v4

    const v5, 0xffffff

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lbr;->Z(IIIII)V

    .line 344
    invoke-static {}, Lcu;->C()V

    .line 347
    sget-object v0, Lcu;->c:Lbu;

    sget v0, Lcu;->e:I

    sget v5, Lcu;->f:I

    sget v1, Lcu;->C:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcu;->k:I

    sget v3, Lcu;->G:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    sget v3, Lcu;->a:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x64

    if-ge v2, v3, :cond_dc

    sub-int v6, v3, v2

    sub-int v2, v5, v6

    int-to-double v9, v2

    int-to-double v11, v5

    div-double/2addr v9, v11

    int-to-double v11, v0

    int-to-double v13, v0

    mul-double/2addr v9, v13

    sub-double v9, v11, v9

    double-to-int v4, v9

    div-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v1

    sget-object v1, Lcu;->c:Lbu;

    sub-int v4, v0, v4

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lbr;->Code(Lbu;IIIIZ)V

    .line 350
    :goto_5c
    sget-object v0, Lcu;->g:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 352
    sget v0, Lcu;->C:I

    sget v1, Lcu;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 353
    sget-object v1, Lcu;->g:Ljava/lang/String;

    sget v3, Lcu;->k:I

    sget-object v4, Lcu;->l:Lbp;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lbr;->Code(Ljava/lang/String;IILbp;I)V

    .line 357
    :cond_72
    sget v0, Lcu;->C:I

    sget v1, Lcu;->q:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 358
    sget-object v1, Lcu;->n:Lbu;

    sget v3, Lcu;->p:I

    sget v4, Lcu;->q:I

    sget v5, Lcu;->r:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcu;->Code(Lbr;Lbu;IIII)V

    .line 359
    sget-object v1, Lcu;->o:Lbu;

    sget v3, Lcu;->p:I

    sget v0, Lcu;->q:I

    sget v4, Lcu;->m:I

    mul-int/2addr v0, v4

    div-int/lit16 v4, v0, 0x3e8

    sget v5, Lcu;->r:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcu;->Code(Lbr;Lbu;IIII)V

    .line 362
    sget v0, Lcu;->p:I

    sget v1, Lcu;->r:I

    add-int/2addr v1, v0

    sget v0, Lcu;->z:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sget v2, Lcu;->G:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    sget v0, Lcu;->a:I

    int-to-double v6, v0

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_e6

    sget v0, Lcu;->a:I

    sub-int/2addr v0, v1

    sget v2, Lcu;->z:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    :goto_bd
    mul-int/lit8 v2, v0, 0x2

    add-int v4, v1, v2

    sget-object v1, Lcu;->b:Lbu;

    if-eqz v1, :cond_eb

    sget v1, Lcu;->d:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_eb

    sget-object v0, Lcu;->b:Lbu;

    sget v1, Lcu;->C:I

    sget v2, Lcu;->d:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0, v0, v1, v4}, Lbr;->Code(Lbu;II)V

    .line 363
    :goto_d6
    monitor-exit v8
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_e3

    .line 364
    invoke-static {p0}, Lcs;->Code(Lbr;)V

    goto/16 :goto_c

    .line 347
    :cond_dc
    :try_start_dc
    sget-object v0, Lcu;->c:Lbu;

    invoke-interface {p0, v0, v1, v2}, Lbr;->Code(Lbu;II)V
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_e3

    goto/16 :goto_5c

    .line 363
    :catchall_e3
    move-exception v0

    monitor-exit v8

    throw v0

    .line 362
    :cond_e6
    :try_start_e6
    sget v0, Lcu;->G:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_bd

    :cond_eb
    sget v1, Lcu;->C:I

    mul-int/lit8 v1, v1, 0x5a

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcu;->y:I

    sub-int/2addr v1, v2

    sget v2, Lcu;->G:I

    sub-int v6, v1, v2

    sget v1, Lcu;->z:I

    add-int/2addr v1, v4

    add-int v9, v1, v0

    sget v0, Lcu;->y:I

    sget v1, Lcu;->G:I

    add-int/2addr v0, v1

    sget v1, Lcu;->u:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcu;->y:I

    sget v2, Lcu;->G:I

    add-int/2addr v1, v2

    sget v2, Lcu;->v:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Lcu;->z:I

    sget-object v5, Lcu;->w:Lbp;

    invoke-interface {v5}, Lbp;->Code()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v10, v3, 0x2

    sget v3, Lcu;->C:I

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lcu;->s:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ldb;->Code(C)Z

    move-result v3

    if-nez v3, :cond_163

    sget v0, Lcu;->y:I

    add-int/2addr v0, v2

    sget v1, Lcu;->G:I

    add-int v3, v0, v1

    sget-object v0, Lcu;->x:Lbu;

    invoke-interface {p0, v0, v2, v4}, Lbr;->Code(Lbu;II)V

    sget-object v0, Lcu;->x:Lbu;

    invoke-interface {p0, v0, v2, v9}, Lbr;->Code(Lbu;II)V

    sget-object v1, Lcu;->w:Lbp;

    sget-object v2, Lcu;->s:Ljava/lang/String;

    add-int/2addr v4, v10

    sget v5, Lcu;->u:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcu;->Code(Lbr;Lbp;Ljava/lang/String;IIIIZ)V

    sget-object v1, Lcu;->w:Lbp;

    sget-object v2, Lcu;->t:Ljava/lang/String;

    add-int v4, v9, v10

    sget v5, Lcu;->v:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcu;->Code(Lbr;Lbp;Ljava/lang/String;IIIIZ)V

    goto/16 :goto_d6

    :cond_163
    sget v3, Lcu;->C:I

    sub-int v2, v3, v2

    sget-object v3, Lcu;->x:Lbu;

    sget v5, Lcu;->y:I

    sub-int v5, v2, v5

    invoke-interface {p0, v3, v5, v4}, Lbr;->Code(Lbu;II)V

    sget-object v3, Lcu;->x:Lbu;

    sget v5, Lcu;->y:I

    sub-int v5, v2, v5

    invoke-interface {p0, v3, v5, v9}, Lbr;->Code(Lbu;II)V

    sub-int v3, v2, v0

    sub-int v11, v2, v1

    sget-object v1, Lcu;->w:Lbp;

    sget-object v2, Lcu;->s:Ljava/lang/String;

    add-int/2addr v4, v10

    sget v5, Lcu;->u:I

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcu;->Code(Lbr;Lbp;Ljava/lang/String;IIIIZ)V

    sget-object v1, Lcu;->w:Lbp;

    sget-object v2, Lcu;->t:Ljava/lang/String;

    add-int v4, v9, v10

    sget v5, Lcu;->v:I

    const/4 v7, 0x1

    move-object v0, p0

    move v3, v11

    invoke-static/range {v0 .. v7}, Lcu;->Code(Lbr;Lbp;Ljava/lang/String;IIIIZ)V
    :try_end_197
    .catchall {:try_start_e6 .. :try_end_197} :catchall_e3

    goto/16 :goto_d6
.end method

.method private static Code(Lbr;Lbp;Ljava/lang/String;IIIIZ)V
    .registers 23

    .prologue
    .line 442
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_14

    .line 444
    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-interface/range {v2 .. v7}, Lbr;->Code(Ljava/lang/String;IILbp;I)V

    .line 458
    :goto_13
    return-void

    .line 448
    :cond_14
    invoke-interface {p0}, Lbr;->Code()I

    move-result v8

    invoke-interface {p0}, Lbr;->I()I

    move-result v9

    .line 449
    invoke-interface {p0}, Lbr;->Z()I

    move-result v10

    invoke-interface {p0}, Lbr;->J()I

    move-result v11

    .line 450
    sget-object v2, Lcu;->w:Lbp;

    invoke-interface {v2}, Lbp;->Code()I

    move-result v12

    .line 452
    sget v2, Lcu;->G:I

    mul-int/lit8 v4, v2, 0x4

    sget-object v2, Lcu;->w:Lbp;

    invoke-interface {v2}, Lbp;->Code()I

    move-result v5

    sget-object v2, Lcu;->A:Lbu;

    if-eqz v2, :cond_46

    sget v2, Lcu;->E:I

    if-ne v2, v4, :cond_46

    sget v2, Lcu;->F:I

    if-ne v2, v5, :cond_46

    sget-boolean v2, Lcu;->D:Z

    move/from16 v0, p7

    if-eq v2, v0, :cond_94

    :cond_46
    new-array v6, v4, [I

    mul-int v2, v4, v5

    new-array v3, v2, [I

    if-eqz p7, :cond_63

    const/4 v2, 0x0

    :goto_4f
    if-ge v2, v4, :cond_74

    sub-int v7, v4, v2

    add-int/lit8 v7, v7, -0x1

    mul-int/lit16 v13, v2, 0xff

    div-int/2addr v13, v4

    shl-int/lit8 v13, v13, 0x18

    const v14, 0xffffff

    or-int/2addr v13, v14

    aput v13, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_63
    const/4 v2, 0x0

    :goto_64
    if-ge v2, v4, :cond_74

    mul-int/lit16 v7, v2, 0xff

    div-int/2addr v7, v4

    shl-int/lit8 v7, v7, 0x18

    const v13, 0xffffff

    or-int/2addr v7, v13

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_74
    const/4 v2, 0x0

    :goto_75
    if-ge v2, v5, :cond_80

    const/4 v7, 0x0

    mul-int v13, v2, v4

    invoke-static {v6, v7, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_80
    sget-object v2, Lcu;->Z:Lci;

    invoke-interface {v2}, Lci;->q()Lbv;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lbv;->Code([IIIZZ)Lbu;

    move-result-object v2

    sput-object v2, Lcu;->A:Lbu;

    sput v4, Lcu;->E:I

    sput v5, Lcu;->F:I

    sput-boolean p7, Lcu;->D:Z

    .line 453
    :cond_94
    add-int v2, p4, v12

    sget-object v3, Lcu;->w:Lbp;

    invoke-interface {v3}, Lbp;->J()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {p0, v0, v2, v1, v12}, Lbr;->I(IIII)V

    .line 454
    if-eqz p7, :cond_c5

    sub-int v2, p5, p6

    sub-int v4, p3, v2

    :goto_aa
    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-interface/range {v2 .. v7}, Lbr;->Code(Ljava/lang/String;IILbp;I)V

    .line 455
    sget-object v2, Lcu;->A:Lbu;

    if-eqz p7, :cond_c8

    :goto_b9
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {p0, v2, v0, v1}, Lbr;->Code(Lbu;II)V

    .line 456
    invoke-interface {p0, v8, v9, v10, v11}, Lbr;->Code(IIII)V

    goto/16 :goto_13

    :cond_c5
    move/from16 v4, p3

    .line 454
    goto :goto_aa

    .line 455
    :cond_c8
    add-int v3, p3, p6

    sget v4, Lcu;->E:I

    sub-int p3, v3, v4

    goto :goto_b9
.end method

.method private static Code(Lbr;Lbu;IIII)V
    .registers 25

    .prologue
    .line 462
    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v1

    move/from16 v0, p5

    if-le v0, v1, :cond_6d

    .line 464
    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v1

    sub-int v1, p5, v1

    div-int/lit8 v1, v1, 0x2

    add-int v8, p3, v1

    .line 466
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lbu;->I()I

    move-result v1

    .line 467
    invoke-virtual/range {p1 .. p1}, Lbu;->I()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    div-int/lit8 v3, p4, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 468
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v8}, Lbr;->Code(Lbu;IIIIII)V

    .line 469
    invoke-virtual/range {p1 .. p1}, Lbu;->I()I

    move-result v1

    sub-int v3, v1, v5

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v6

    add-int v1, p2, p4

    sub-int v7, v1, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v8}, Lbr;->Code(Lbu;IIIIII)V

    .line 470
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lbu;->I()I

    move-result v1

    mul-int/lit8 v2, v5, 0x2

    sub-int v13, v1, v2

    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v14

    add-int v15, p2, v5

    mul-int/lit8 v1, v5, 0x2

    sub-int v17, p4, v1

    invoke-virtual/range {p1 .. p1}, Lbu;->Z()I

    move-result v18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move/from16 v16, v8

    invoke-interface/range {v9 .. v18}, Lbr;->Code(Lbu;IIIIIIII)V

    .line 471
    return-void

    :cond_6d
    move/from16 v8, p3

    goto :goto_12
.end method

.method static Code(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 243
    sget-object v7, Lcu;->I:Ljava/lang/Object;

    monitor-enter v7

    .line 245
    :try_start_3
    sget-boolean v0, Lcu;->J:Z

    if-eqz v0, :cond_4c

    sget-boolean v0, Lcu;->B:Z

    if-nez v0, :cond_4c

    .line 247
    invoke-static {}, Lcu;->C()V

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 250
    new-instance v0, Lau;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcu;->l:Lbp;

    invoke-direct/range {v0 .. v6}, Lau;-><init>([CIIILjava/lang/String;Lbp;)V

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lau;->C(I)I

    move-result v0

    .line 253
    and-int/lit8 v2, v0, 0xe

    if-eqz v2, :cond_4e

    .line 255
    invoke-static {v1, v0}, Lau;->Code([CI)I

    move-result v0

    .line 256
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    sput-object v2, Lcu;->g:Ljava/lang/String;

    .line 263
    :goto_32
    sget-object v0, Lcu;->l:Lbp;

    sget-object v1, Lcu;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcu;->h:I

    .line 264
    sget-object v0, Lcu;->Z:Lci;

    const/4 v1, 0x0

    sget v2, Lcu;->k:I

    sget v3, Lcu;->C:I

    sget-object v4, Lcu;->l:Lbp;

    invoke-interface {v4}, Lbp;->Code()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lci;->Code(IIII)V

    .line 266
    :cond_4c
    monitor-exit v7

    return-void

    .line 260
    :cond_4e
    sput-object p0, Lcu;->g:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_51

    goto :goto_32

    .line 266
    :catchall_51
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 299
    sput-object p0, Lcu;->s:Ljava/lang/String;

    .line 300
    sput-object p1, Lcu;->t:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcu;->C()V

    .line 302
    sget-object v0, Lcu;->w:Lbp;

    sget-object v1, Lcu;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcu;->w:Lbp;

    sget-object v2, Lcu;->t:Ljava/lang/String;

    invoke-interface {v1, v2}, Lbp;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lcu;->C:I

    sget v2, Lcu;->y:I

    sub-int/2addr v1, v2

    sget v2, Lcu;->G:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_36

    .line 305
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->s()Lbq;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbq;->Code(II)Lbp;

    move-result-object v0

    sput-object v0, Lcu;->w:Lbp;

    .line 307
    :cond_36
    sget-object v0, Lcu;->w:Lbp;

    sget-object v1, Lcu;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcu;->u:I

    .line 308
    sget-object v0, Lcu;->w:Lbp;

    sget-object v1, Lcu;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcu;->v:I

    .line 309
    return-void
.end method

.method public static I()V
    .registers 2

    .prologue
    .line 78
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcu;->B:Z

    .line 81
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static J()V
    .registers 2

    .prologue
    .line 204
    sget-object v1, Lcu;->I:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcu;->J:Z

    .line 207
    const/4 v0, 0x0

    sput-object v0, Lcu;->b:Lbu;

    .line 208
    const/4 v0, 0x0

    sput-object v0, Lcu;->c:Lbu;

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcu;->n:Lbu;

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcu;->o:Lbu;

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcu;->x:Lbu;

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcu;->A:Lbu;

    .line 213
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static Z()V
    .registers 13

    .prologue
    const/16 v12, 0x40

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 87
    sget-object v0, Lar;->I:Lar;

    invoke-static {}, Lar;->e()Lci;

    move-result-object v0

    sput-object v0, Lcu;->Z:Lci;

    .line 90
    :try_start_c
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "splash"

    invoke-virtual {v0, v1}, Lcn;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 92
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "splash"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lao;->J([BI)I

    move-result v0

    sput v0, Lcu;->Code:I

    .line 94
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "splash"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 95
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x53503130

    if-ne v0, v1, :cond_a7

    .line 102
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 103
    const-string v1, ""

    move v3, v2

    .line 104
    :goto_49
    if-ge v3, v6, :cond_77

    .line 106
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    move v4, v2

    .line 108
    :goto_54
    if-ge v4, v8, :cond_73

    .line 110
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v10, "brand-logo"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16a

    const-string v10, "bitmap"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16a

    .line 108
    :goto_6e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_54

    .line 104
    :cond_73
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_49

    .line 119
    :cond_77
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move v0, v2

    .line 120
    :goto_7c
    if-ge v0, v3, :cond_a7

    .line 122
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 126
    new-array v4, v6, [B

    .line 127
    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 128
    sget-object v6, Lcu;->Z:Lci;

    invoke-interface {v6}, Lci;->q()Lbv;

    move-result-object v6

    array-length v7, v4

    const/4 v8, 0x1

    invoke-virtual {v6, v4, v7, v8}, Lbv;->Code([BIZ)Lbu;

    move-result-object v4

    sput-object v4, Lcu;->b:Lbu;

    .line 120
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 132
    :cond_a2
    invoke-static {v5, v6}, Ldb;->Code(Ljava/io/InputStream;I)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_a5} :catch_a6

    goto :goto_9f

    .line 138
    :catch_a6
    move-exception v0

    .line 145
    :cond_a7
    :try_start_a7
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->ah()Lbu;

    move-result-object v0

    sput-object v0, Lcu;->c:Lbu;

    .line 146
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->ai()Lbu;

    move-result-object v0

    sput-object v0, Lcu;->n:Lbu;

    .line 147
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->aj()Lbu;

    move-result-object v0

    sput-object v0, Lcu;->o:Lbu;

    .line 148
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->ak()Lbu;

    move-result-object v0

    sput-object v0, Lcu;->x:Lbu;

    .line 155
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->l()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "hvga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 158
    const/16 v0, 0x9

    sput v0, Lcu;->G:I

    .line 172
    :goto_d9
    sget-object v0, Lcu;->b:Lbu;

    if-nez v0, :cond_e7

    .line 174
    const v0, 0x8002

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldb;->Code(IZ)Lbu;

    move-result-object v0

    sput-object v0, Lcu;->b:Lbu;
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_e7} :catch_14d

    .line 182
    :cond_e7
    :goto_e7
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->s()Lbq;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Lbq;->Code(II)Lbp;

    move-result-object v0

    sput-object v0, Lcu;->l:Lbp;

    .line 183
    sget-object v0, Lcu;->Z:Lci;

    invoke-interface {v0}, Lci;->s()Lbq;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v12, v1}, Lbq;->Code(II)Lbp;

    move-result-object v0

    sput-object v0, Lcu;->w:Lbp;

    .line 185
    sget-object v0, Lcu;->c:Lbu;

    invoke-virtual {v0}, Lbu;->Z()I

    move-result v0

    sput v0, Lcu;->f:I

    .line 186
    sget-object v0, Lcu;->c:Lbu;

    invoke-virtual {v0}, Lbu;->I()I

    move-result v0

    sput v0, Lcu;->e:I

    .line 187
    sget-object v0, Lcu;->b:Lbu;

    if-eqz v0, :cond_11d

    .line 189
    sget-object v0, Lcu;->b:Lbu;

    invoke-virtual {v0}, Lbu;->I()I

    move-result v0

    sput v0, Lcu;->d:I

    .line 192
    :cond_11d
    sget-object v0, Lcu;->n:Lbu;

    invoke-virtual {v0}, Lbu;->Z()I

    move-result v0

    sput v0, Lcu;->r:I

    .line 193
    sget-object v0, Lcu;->n:Lbu;

    invoke-virtual {v0}, Lbu;->I()I

    move-result v0

    sput v0, Lcu;->q:I

    .line 196
    sget-object v0, Lcu;->x:Lbu;

    invoke-virtual {v0}, Lbu;->Z()I

    move-result v0

    sput v0, Lcu;->z:I

    .line 197
    sget-object v0, Lcu;->x:Lbu;

    invoke-virtual {v0}, Lbu;->I()I

    move-result v0

    sput v0, Lcu;->y:I

    .line 199
    sput-boolean v11, Lcu;->J:Z

    .line 200
    return-void

    .line 160
    :cond_140
    :try_start_140
    const-string v1, "vga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 162
    const/16 v0, 0xc

    sput v0, Lcu;->G:I

    goto :goto_d9

    .line 177
    :catch_14d
    move-exception v0

    goto :goto_e7

    .line 164
    :cond_14f
    const-string v1, "svga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15f

    const-string v1, "qxga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 166
    :cond_15f
    const/16 v0, 0x12

    sput v0, Lcu;->G:I

    goto/16 :goto_d9

    .line 170
    :cond_165
    const/4 v0, 0x6

    sput v0, Lcu;->G:I
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_168} :catch_14d

    goto/16 :goto_d9

    :cond_16a
    move-object v0, v1

    goto/16 :goto_6e
.end method
