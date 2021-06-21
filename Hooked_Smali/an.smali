.class public Lan;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:Ljava/lang/RuntimeException;

.field private C:I

.field public Code:[B

.field public I:[I

.field private J:Z

.field private Z:J

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Laq;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan;->J:Z

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lan;->B:Ljava/lang/RuntimeException;

    .line 35
    invoke-static {p0, p1}, Lan;->Code(Lan;Laq;)V

    .line 64
    return-void
.end method

.method private native Code(I[I)V
.end method

.method private static native Code(Lan;Laq;)V
.end method

.method private native Code([BIIII)V
.end method

.method private native Code([BI[BIZ)V
.end method

.method private native Code([IIIII)V
.end method

.method private native F(I)V
.end method

.method private native I([IIIII)V
.end method

.method private native Z([BII)I
.end method

.method private native Z([III)I
.end method

.method private native a(II)I
.end method

.method private native a(III)[I
.end method

.method private native b(III)[B
.end method

.method public static i()V
    .registers 0

    .prologue
    .line 146
    return-void
.end method

.method public static k()V
    .registers 0

    .prologue
    .line 250
    return-void
.end method

.method public static r()I
    .registers 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w()V
    .registers 0

    .prologue
    .line 592
    return-void
.end method

.method private native y()V
.end method


# virtual methods
.method public native A(I)V
.end method

.method public final B()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lan;->f:I

    return v0
.end method

.method public native B(II)I
.end method

.method public final B(I)V
    .registers 2

    .prologue
    .line 50
    iput p1, p0, Lan;->f:I

    return-void
.end method

.method public native B(III)V
.end method

.method public native C(II)Ljava/lang/String;
.end method

.method public native C()V
.end method

.method public native C(I)V
.end method

.method public native C(III)V
.end method

.method public final Code()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lan;->a:I

    return v0
.end method

.method public native Code(IILjava/lang/Object;)I
.end method

.method public native Code(J)I
.end method

.method public final Code(Ljava/lang/String;)I
    .registers 12

    .prologue
    const v8, 0xd800

    const/4 v1, 0x0

    .line 169
    invoke-static {p1}, Lap;->Code(Ljava/lang/String;)I

    move-result v4

    .line 170
    new-array v5, v4, [B

    move v0, v1

    move v2, v1

    .line 172
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_36

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 175
    if-lt v3, v8, :cond_3b

    const v6, 0xdbff

    if-gt v3, v6, :cond_3b

    .line 177
    const/high16 v6, 0x10000

    sub-int/2addr v3, v8

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v6, v3

    .line 178
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v7, 0xdc00

    sub-int/2addr v0, v7

    add-int/2addr v0, v6

    .line 180
    :goto_2e
    invoke-static {v0, v5, v2}, Lap;->Code(I[BI)I

    move-result v0

    add-int/2addr v2, v0

    .line 172
    add-int/lit8 v0, v3, 0x1

    goto :goto_c

    .line 182
    :cond_36
    invoke-virtual {p0, v5, v1, v4}, Lan;->Code([BII)I

    move-result v0

    return v0

    :cond_3b
    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_2e
.end method

.method public final Code([B)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 371
    if-nez p1, :cond_4

    .line 375
    :goto_3
    return v0

    :cond_4
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lan;->Z([BII)I

    move-result v0

    goto :goto_3
.end method

.method public native Code([BII)I
.end method

.method public native Code([BII[BII)I
.end method

.method public final Code([CII)I
    .registers 14

    .prologue
    const v9, 0xdbff

    const v8, 0xd800

    const/4 v2, 0x0

    .line 187
    move v0, v2

    move v4, v2

    :goto_9
    if-ge v0, p3, :cond_21

    add-int v1, p2, v0

    aget-char v1, p1, v1

    if-lt v1, v8, :cond_1b

    if-gt v1, v9, :cond_1b

    add-int/lit8 v1, v4, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_9

    :cond_1b
    invoke-static {v1}, Lao;->Code(I)I

    move-result v1

    add-int/2addr v1, v4

    goto :goto_17

    .line 188
    :cond_21
    new-array v5, v4, [B

    move v1, v2

    move v3, v2

    .line 190
    :goto_25
    if-ge v1, p3, :cond_49

    .line 192
    add-int v0, p2, v1

    aget-char v0, p1, v0

    .line 193
    if-lt v0, v8, :cond_40

    if-gt v0, v9, :cond_40

    .line 195
    const/high16 v6, 0x10000

    sub-int/2addr v0, v8

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    .line 196
    add-int/lit8 v1, v1, 0x1

    add-int v6, p2, v1

    aget-char v6, p1, v6

    const v7, 0xdc00

    sub-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 198
    :cond_40
    invoke-static {v0, v5, v3}, Lap;->Code(I[BI)I

    move-result v0

    add-int/2addr v0, v3

    .line 190
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_25

    .line 200
    :cond_49
    invoke-virtual {p0, v5, v2, v4}, Lan;->Code([BII)I

    move-result v0

    return v0
.end method

.method public native Code(III)Ljava/lang/String;
.end method

.method public final Code(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lan;->a:I

    return-void
.end method

.method public final Code(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 297
    iput v0, p0, Lan;->g:I

    .line 298
    iput v0, p0, Lan;->h:I

    .line 299
    invoke-direct {p0, p1, v0, p2}, Lan;->a(III)[I

    move-result-object v0

    iput-object v0, p0, Lan;->I:[I

    .line 301
    return-void
.end method

.method public final Code(IIIZ)V
    .registers 6

    .prologue
    .line 337
    iput p1, p0, Lan;->g:I

    .line 338
    iput p2, p0, Lan;->h:I

    .line 339
    if-eqz p4, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lan;->I(III)[I

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lan;->I:[I

    .line 341
    return-void

    .line 339
    :cond_d
    new-array v0, p3, [I

    goto :goto_a
.end method

.method public native Code(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;Z)V
.end method

.method public final Code(Ljava/io/InputStream;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 79
    new-array v1, v0, [B

    .line 81
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 82
    :goto_10
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1b

    .line 84
    invoke-virtual {v2, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 85
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_10

    .line 87
    :cond_1b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 90
    new-array v3, v5, [B

    .line 105
    array-length v2, v1

    array-length v4, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lan;->Code([BI[BIZ)V

    .line 106
    return-void
.end method

.method public final Code([I)V
    .registers 3

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lan;->Code(I[I)V

    .line 493
    return-void
.end method

.method public native Code([III)V
.end method

.method public native Code(Ljava/lang/Object;)Z
.end method

.method public native D(I)I
.end method

.method public final E(I)V
    .registers 3

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lan;->Code(I[I)V

    .line 484
    return-void
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lan;->b:I

    return v0
.end method

.method public native I(II)I
.end method

.method public final I([BII)I
    .registers 5

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p3}, Lan;->Z([BII)I

    move-result v0

    return v0
.end method

.method public final I(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lan;->b:I

    return-void
.end method

.method public final I(IIIZ)V
    .registers 6

    .prologue
    .line 389
    iput p1, p0, Lan;->g:I

    .line 390
    iput p2, p0, Lan;->h:I

    .line 391
    if-eqz p4, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lan;->b(III)[B

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lan;->Code:[B

    .line 393
    return-void

    .line 391
    :cond_d
    new-array v0, p3, [B

    goto :goto_a
.end method

.method public final I(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lan;->Code(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lan;->F(I)V

    .line 292
    return-void
.end method

.method public native I([III)V
.end method

.method public native I(III)[I
.end method

.method public final J()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lan;->e:I

    return v0
.end method

.method public final J(I)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lan;->e:I

    return-void
.end method

.method public native J(II)V
.end method

.method public native J(III)V
.end method

.method public final Z()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lan;->d:I

    return v0
.end method

.method public final Z(I)V
    .registers 2

    .prologue
    .line 46
    iput p1, p0, Lan;->d:I

    return-void
.end method

.method public native Z(II)V
.end method

.method public native Z(III)V
.end method

.method public native a(I)I
.end method

.method public native a()V
.end method

.method public native b()V
.end method

.method public native b(I)V
.end method

.method public native c(I)V
.end method

.method public native c()[Ljava/lang/Object;
.end method

.method public native d(I)I
.end method

.method public native d()J
.end method

.method public native e()I
.end method

.method public final e(I)Ljava/lang/RuntimeException;
    .registers 3

    .prologue
    .line 163
    iput p1, p0, Lan;->C:I

    .line 164
    iget-object v0, p0, Lan;->B:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public native f()I
.end method

.method public native f(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 647
    :try_start_0
    invoke-direct {p0}, Lan;->y()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 651
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 652
    return-void

    .line 651
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native g()I
.end method

.method public final g(I)[C
    .registers 3

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lan;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public native h()I
.end method

.method public native h(I)J
.end method

.method public final i(I)V
    .registers 3

    .prologue
    .line 242
    new-array v0, p1, [B

    iput-object v0, p0, Lan;->Code:[B

    .line 243
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 217
    const-string v0, ""

    invoke-virtual {p0, v0}, Lan;->Code(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native j(I)V
.end method

.method public native k(I)I
.end method

.method public final l()I
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lan;->Code:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lan;->Code:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lan;->Code([BII)I

    move-result v0

    return v0
.end method

.method public native l(I)V
.end method

.method public final m()V
    .registers 3

    .prologue
    .line 269
    const/4 v0, 0x0

    iget v1, p0, Lan;->a:I

    invoke-direct {p0, v0, v1}, Lan;->a(II)I

    move-result v0

    iput v0, p0, Lan;->a:I

    .line 270
    return-void
.end method

.method public final m(I)V
    .registers 2

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lan;->F(I)V

    .line 287
    return-void
.end method

.method public native n()I
.end method

.method public native n(I)I
.end method

.method public final o()I
    .registers 4

    .prologue
    .line 323
    iget-object v0, p0, Lan;->I:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lan;->I:[I

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lan;->Z([III)I

    move-result v0

    return v0
.end method

.method public final o(I)V
    .registers 3

    .prologue
    .line 318
    new-array v0, p1, [I

    iput-object v0, p0, Lan;->I:[I

    .line 319
    return-void
.end method

.method public final p()V
    .registers 7

    .prologue
    .line 345
    iget-object v1, p0, Lan;->I:[I

    const/4 v2, 0x0

    iget v3, p0, Lan;->g:I

    iget v4, p0, Lan;->h:I

    iget-object v0, p0, Lan;->I:[I

    array-length v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lan;->I([IIIII)V

    .line 346
    return-void
.end method

.method public final p(I)V
    .registers 3

    .prologue
    .line 330
    new-array v0, p1, [I

    iput-object v0, p0, Lan;->I:[I

    .line 332
    return-void
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lan;->Code:[B

    invoke-virtual {p0, v0}, Lan;->Code([B)I

    move-result v0

    return v0
.end method

.method public native q(I)I
.end method

.method public final r(I)V
    .registers 3

    .prologue
    .line 361
    new-array v0, p1, [B

    iput-object v0, p0, Lan;->Code:[B

    .line 362
    return-void
.end method

.method public native s()I
.end method

.method public final s(I)V
    .registers 8

    .prologue
    .line 397
    iget-object v1, p0, Lan;->Code:[B

    const/4 v2, 0x0

    iget v3, p0, Lan;->g:I

    iget v0, p0, Lan;->h:I

    add-int/lit8 v4, v0, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lan;->Code([BIIII)V

    .line 400
    return-void
.end method

.method public native t()I
.end method

.method public final t(I)[B
    .registers 4

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lan;->u(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lan;->b(III)[B

    move-result-object v0

    return-object v0
.end method

.method public native u(I)I
.end method

.method public native u()Z
.end method

.method public native v(I)I
.end method

.method public native v()V
.end method

.method public native w(I)I
.end method

.method public native x(I)I
.end method

.method public final x()Ljava/lang/RuntimeException;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lan;->B:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public native y(I)Ljava/lang/Object;
.end method

.method public native z(I)V
.end method
