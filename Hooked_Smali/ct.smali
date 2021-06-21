.class final Lct;
.super Ljava/io/InputStream;
.source "Source"


# instance fields
.field private B:Ljava/util/Hashtable;

.field private C:I

.field private Code:Lcs;

.field private I:Lct;

.field private J:[I

.field private Z:[Ljava/lang/Object;

.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Z

.field private k:I

.field private l:[B

.field private m:J


# direct methods
.method constructor <init>([Ljava/lang/Object;[IIZ)V
    .registers 8

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 81
    iput v1, p0, Lct;->k:I

    .line 325
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lct;->l:[B

    .line 89
    iput-object p1, p0, Lct;->Z:[Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Lct;->J:[I

    .line 91
    iput p3, p0, Lct;->i:I

    .line 92
    iput-boolean p4, p0, Lct;->j:Z

    .line 93
    const/16 v0, 0x2e

    aput v1, p2, v0

    .line 94
    aget-object v0, p1, v2

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lct;->B:Ljava/util/Hashtable;

    .line 95
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 96
    return-void
.end method


# virtual methods
.method final B()Lct;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lct;->I:Lct;

    return-object v0
.end method

.method final C()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lct;->C:I

    return v0
.end method

.method final Code()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lct;->i:I

    return v0
.end method

.method final Code(Z)Ljava/util/Hashtable;
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lct;->B:Ljava/util/Hashtable;

    .line 242
    if-eqz p1, :cond_7

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lct;->B:Ljava/util/Hashtable;

    .line 246
    :cond_7
    return-object v0
.end method

.method final declared-synchronized Code(I)V
    .registers 3

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lct;->g:I

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lct;->e:[B

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 314
    monitor-exit p0

    return-void

    .line 311
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final Code(Lcs;I)V
    .registers 3

    .prologue
    .line 158
    iput-object p1, p0, Lct;->Code:Lcs;

    .line 159
    iput p2, p0, Lct;->C:I

    .line 160
    return-void
.end method

.method final Code(Lct;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lct;->I:Lct;

    .line 177
    return-void
.end method

.method final Code(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x35

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 108
    iget v2, p0, Lct;->k:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_b

    .line 124
    :goto_a
    return v0

    .line 112
    :cond_b
    iget v2, p0, Lct;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lct;->k:I

    .line 113
    invoke-static {p1, v4}, Lcz;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 115
    iput v2, p0, Lct;->i:I

    .line 116
    iput-object v4, p0, Lct;->Code:Lcs;

    .line 117
    iget v2, p0, Lct;->k:I

    if-ne v2, v1, :cond_27

    .line 120
    iget-object v2, p0, Lct;->Z:[Ljava/lang/Object;

    const/16 v3, 0x5a

    iget-object v4, p0, Lct;->Z:[Ljava/lang/Object;

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 122
    :cond_27
    iget-object v2, p0, Lct;->Z:[Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 123
    iget-object v2, p0, Lct;->J:[I

    const/16 v3, 0x2e

    aput v0, v2, v3

    move v0, v1

    .line 124
    goto :goto_a
.end method

.method final I(Lct;)Lct;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 192
    if-ne p1, p0, :cond_9

    .line 194
    iget-object v0, p0, Lct;->I:Lct;

    .line 195
    iput-object v2, p0, Lct;->I:Lct;

    move-object p0, v0

    .line 209
    :cond_8
    :goto_8
    return-object p0

    :cond_9
    move-object v0, p0

    .line 199
    :goto_a
    iget-object v1, v0, Lct;->I:Lct;

    if-eqz v1, :cond_8

    .line 202
    iget-object v1, v0, Lct;->I:Lct;

    if-ne v1, p1, :cond_19

    .line 204
    iget-object v1, p1, Lct;->I:Lct;

    iput-object v1, v0, Lct;->I:Lct;

    .line 205
    iput-object v2, p1, Lct;->I:Lct;

    goto :goto_8

    .line 200
    :cond_19
    iget-object v0, v0, Lct;->I:Lct;

    goto :goto_a
.end method

.method final I(I)V
    .registers 3

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct;->a:Z

    .line 381
    iput p1, p0, Lct;->d:I

    .line 382
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method final I()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lct;->j:Z

    return v0
.end method

.method final J()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lct;->Code:Lcs;

    .line 169
    return-void
.end method

.method final J(I)V
    .registers 3

    .prologue
    .line 420
    iget v0, p0, Lct;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lct;->h:I

    .line 421
    return-void
.end method

.method final Z()Lcs;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lct;->Code:Lcs;

    return-object v0
.end method

.method final Z(I)V
    .registers 2

    .prologue
    .line 390
    iput p1, p0, Lct;->b:I

    .line 391
    return-void
.end method

.method final a()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lct;->Z:[Ljava/lang/Object;

    return-object v0
.end method

.method final b()[I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lct;->J:[I

    return-object v0
.end method

.method final c()[B
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lct;->e:[B

    return-object v0
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcs;->Code(Lct;Z)V

    .line 407
    return-void
.end method

.method final d()I
    .registers 2

    .prologue
    .line 262
    iget v0, p0, Lct;->f:I

    return v0
.end method

.method final e()I
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Lct;->g:I

    return v0
.end method

.method final f()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lct;->Z:[Ljava/lang/Object;

    .line 279
    iput-object v0, p0, Lct;->J:[I

    .line 280
    return-void
.end method

.method final g()Z
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lct;->Z:[Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final h()Z
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lct;->J:[I

    const/16 v1, 0x2e

    aget v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final i()V
    .registers 4

    .prologue
    .line 303
    iget-object v0, p0, Lct;->J:[I

    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 304
    return-void
.end method

.method final j()V
    .registers 2

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct;->c:Z

    .line 322
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lct;->a:Z

    return v0
.end method

.method final l()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lct;->b:I

    return v0
.end method

.method public final m()I
    .registers 2

    .prologue
    .line 412
    iget v0, p0, Lct;->d:I

    return v0
.end method

.method public final n()I
    .registers 2

    .prologue
    .line 429
    iget v0, p0, Lct;->h:I

    return v0
.end method

.method public final o()Z
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lct;->Code:Lcs;

    if-nez v0, :cond_6

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lct;->Code:Lcs;

    invoke-virtual {v0}, Lcs;->c()Z

    move-result v0

    goto :goto_5
.end method

.method final p()V
    .registers 3

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct;->m:J

    .line 448
    return-void
.end method

.method public final q()I
    .registers 5

    .prologue
    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lct;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lct;->Code:Lcs;

    invoke-virtual {v0}, Lcs;->B()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lct;->l:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lct;->read([BII)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lct;->l:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public final read([BII)I
    .registers 5

    .prologue
    .line 333
    :cond_0
    iput p2, p0, Lct;->f:I

    .line 334
    iput p3, p0, Lct;->g:I

    .line 335
    iput-object p1, p0, Lct;->e:[B

    .line 337
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 341
    :goto_9
    iget-boolean v0, p0, Lct;->a:Z

    if-eqz v0, :cond_19

    .line 343
    iget-boolean v0, p0, Lct;->c:Z

    if-eqz v0, :cond_13

    .line 345
    const/4 v0, -0x1

    .line 362
    :goto_12
    return v0

    .line 347
    :cond_13
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 349
    :cond_19
    iget-object v0, p0, Lct;->Code:Lcs;

    .line 350
    if-eqz v0, :cond_20

    .line 352
    invoke-virtual {v0, p0}, Lcs;->Code(Lct;)V

    .line 355
    :cond_20
    iget-object v0, p0, Lct;->e:[B

    if-nez v0, :cond_2b

    .line 360
    iget v0, p0, Lct;->g:I

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lct;->g:I

    goto :goto_12

    .line 366
    :cond_2b
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Ldb;->Code(Ljava/lang/Object;I)V

    goto :goto_9
.end method

.method final s()Lcp;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lct;->Code:Lcs;

    invoke-virtual {v0}, Lcs;->Code()Lcp;

    move-result-object v0

    return-object v0
.end method
