.class public final Ldd;
.super Ljava/io/InputStream;
.source "Source"

# interfaces
.implements Lby;


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field private B:I

.field private C:I

.field private Code:I

.field private I:I

.field private J:I

.field private Z:[B

.field private a:I

.field private b:I

.field private c:I

.field private d:Lcs;

.field private e:Ljava/io/DataInputStream;

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private m:[S

.field private n:[S

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 254
    const/16 v0, 0x1d

    new-array v0, v0, [I

    sput-object v0, Ldd;->k:[I

    .line 256
    const/16 v0, 0x1e

    new-array v0, v0, [I

    sput-object v0, Ldd;->l:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Ldd;->Code:I

    .line 49
    iput v1, p0, Ldd;->c:I

    .line 137
    iput v1, p0, Ldd;->j:I

    .line 318
    const/16 v0, 0x23e

    new-array v0, v0, [S

    iput-object v0, p0, Ldd;->m:[S

    .line 321
    const/16 v0, 0x3e

    new-array v0, v0, [S

    iput-object v0, p0, Ldd;->n:[S

    .line 326
    const/16 v0, 0x120

    new-array v0, v0, [B

    iput-object v0, p0, Ldd;->o:[B

    return-void
.end method

.method private B()Z
    .registers 7

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x1

    .line 277
    iget v0, p0, Ldd;->a:I

    if-lez v0, :cond_f

    invoke-direct {p0}, Ldd;->J()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 314
    :goto_e
    return v0

    .line 281
    :cond_f
    iget-object v0, p0, Ldd;->m:[S

    invoke-direct {p0, v0}, Ldd;->Code([S)I

    move-result v0

    if-eq v0, v5, :cond_77

    .line 283
    if-le v0, v5, :cond_64

    .line 285
    add-int/lit16 v0, v0, -0x101

    .line 286
    sget-object v2, Ldd;->k:[I

    aget v2, v2, v0

    iput v2, p0, Ldd;->a:I

    .line 290
    const/4 v2, 0x7

    if-le v0, v2, :cond_35

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_35

    .line 291
    iget v2, p0, Ldd;->a:I

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Ldd;->a:I

    .line 293
    :cond_35
    iget-object v0, p0, Ldd;->n:[S

    invoke-direct {p0, v0}, Ldd;->Code([S)I

    move-result v2

    .line 294
    sget-object v0, Ldd;->l:[I

    aget v0, v0, v2

    .line 298
    const/4 v3, 0x3

    if-le v2, v3, :cond_4b

    .line 299
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ldd;->Code(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    :cond_4b
    iget v2, p0, Ldd;->J:I

    sub-int v0, v2, v0

    iput v0, p0, Ldd;->B:I

    .line 302
    iget v0, p0, Ldd;->B:I

    if-gez v0, :cond_5c

    .line 303
    iget v0, p0, Ldd;->I:I

    iget v2, p0, Ldd;->B:I

    add-int/2addr v0, v2

    iput v0, p0, Ldd;->B:I

    .line 305
    :cond_5c
    invoke-direct {p0}, Ldd;->J()Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v1

    .line 306
    goto :goto_e

    .line 309
    :cond_64
    iget-object v2, p0, Ldd;->Z:[B

    iget v3, p0, Ldd;->J:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldd;->J:I

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 311
    :cond_6f
    iget v0, p0, Ldd;->C:I

    iget v2, p0, Ldd;->J:I

    if-ne v0, v2, :cond_f

    move v0, v1

    .line 312
    goto :goto_e

    .line 314
    :cond_77
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final Code(I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 140
    move v1, v0

    .line 141
    :goto_2
    if-ge v0, p1, :cond_27

    .line 143
    iget v2, p0, Ldd;->j:I

    if-nez v2, :cond_12

    .line 145
    invoke-direct {p0}, Ldd;->Z()I

    move-result v2

    iput v2, p0, Ldd;->i:I

    .line 146
    const/16 v2, 0x8

    iput v2, p0, Ldd;->j:I

    .line 148
    :cond_12
    iget v2, p0, Ldd;->i:I

    and-int/lit8 v2, v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 149
    iget v2, p0, Ldd;->i:I

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldd;->i:I

    .line 150
    iget v2, p0, Ldd;->j:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ldd;->j:I

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_27
    return v1
.end method

.method private Code([S)I
    .registers 4

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_1
    if-ltz v0, :cond_25

    .line 217
    iget v1, p0, Ldd;->j:I

    if-nez v1, :cond_11

    .line 219
    invoke-direct {p0}, Ldd;->Z()I

    move-result v1

    iput v1, p0, Ldd;->i:I

    .line 220
    const/16 v1, 0x8

    iput v1, p0, Ldd;->j:I

    .line 223
    :cond_11
    iget v1, p0, Ldd;->i:I

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    aget-short v0, p1, v0

    .line 225
    iget v1, p0, Ldd;->i:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldd;->i:I

    .line 226
    iget v1, p0, Ldd;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldd;->j:I

    goto :goto_1

    .line 228
    :cond_25
    and-int/lit16 v0, v0, 0xfff

    return v0
.end method

.method private static final Code([BI[S)V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 175
    move v0, v1

    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_b

    .line 176
    aput-short v1, p2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 179
    :cond_b
    const/4 v0, 0x2

    move v6, v7

    move v3, v1

    .line 183
    :goto_e
    const/16 v2, 0x10

    if-gt v6, v2, :cond_56

    move v5, v1

    .line 185
    :goto_13
    if-ge v5, p1, :cond_50

    .line 187
    aget-byte v2, p0, v5

    if-ne v2, v6, :cond_57

    .line 190
    add-int/lit8 v2, v6, -0x1

    move v4, v2

    move v2, v1

    :goto_1d
    if-ltz v4, :cond_3d

    .line 192
    shl-int v8, v7, v4

    and-int/2addr v8, v3

    if-eqz v8, :cond_26

    add-int/lit8 v2, v2, 0x1

    .line 193
    :cond_26
    if-eqz v4, :cond_3d

    .line 194
    aget-short v8, p2, v2

    if-nez v8, :cond_37

    .line 196
    aput-short v0, p2, v2

    .line 198
    add-int/lit8 v2, v0, 0x2

    int-to-short v2, v2

    .line 190
    :goto_31
    add-int/lit8 v4, v4, -0x1

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_1d

    .line 201
    :cond_37
    aget-short v2, p2, v2

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_31

    .line 203
    :cond_3d
    const v4, 0x8000

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p2, v2

    .line 204
    add-int/lit8 v2, v3, 0x1

    move v9, v2

    move v2, v0

    move v0, v9

    .line 185
    :goto_49
    add-int/lit8 v3, v5, 0x1

    int-to-short v3, v3

    move v5, v3

    move v3, v0

    move v0, v2

    goto :goto_13

    .line 207
    :cond_50
    shl-int/lit8 v3, v3, 0x1

    .line 183
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_e

    .line 209
    :cond_56
    return-void

    :cond_57
    move v2, v0

    move v0, v3

    goto :goto_49
.end method

.method private Code([SI)[B
    .registers 12

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0x10

    const/4 v1, 0x0

    .line 234
    new-array v5, p2, [B

    move v3, v1

    .line 236
    :goto_8
    if-ge v3, p2, :cond_3e

    .line 238
    invoke-direct {p0, p1}, Ldd;->Code([S)I

    move-result v6

    .line 239
    if-ge v6, v7, :cond_17

    .line 240
    add-int/lit8 v4, v3, 0x1

    int-to-byte v0, v6

    aput-byte v0, v5, v3

    move v3, v4

    goto :goto_8

    .line 243
    :cond_17
    if-ne v6, v8, :cond_34

    const/4 v0, 0x7

    :goto_1a
    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x3

    .line 244
    if-ne v6, v8, :cond_24

    .line 245
    add-int/lit8 v2, v2, 0x8

    .line 246
    :cond_24
    if-le v6, v7, :cond_37

    move v0, v1

    :goto_27
    move v4, v3

    .line 247
    :goto_28
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3c

    .line 248
    add-int/lit8 v2, v4, 0x1

    int-to-byte v6, v0

    aput-byte v6, v5, v4

    move v4, v2

    move v2, v3

    goto :goto_28

    .line 243
    :cond_34
    add-int/lit8 v0, v6, -0xe

    goto :goto_1a

    .line 246
    :cond_37
    add-int/lit8 v0, v3, -0x1

    aget-byte v0, v5, v0

    goto :goto_27

    :cond_3c
    move v3, v4

    .line 250
    goto :goto_8

    .line 251
    :cond_3e
    return-object v5
.end method

.method private J()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 262
    :cond_1
    iget v1, p0, Ldd;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ldd;->a:I

    if-lez v1, :cond_2c

    .line 264
    iget-object v1, p0, Ldd;->Z:[B

    iget v2, p0, Ldd;->J:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldd;->J:I

    iget-object v3, p0, Ldd;->Z:[B

    iget v4, p0, Ldd;->B:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldd;->B:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 265
    iget v1, p0, Ldd;->B:I

    iget v2, p0, Ldd;->I:I

    if-ne v1, v2, :cond_25

    .line 266
    iput v0, p0, Ldd;->B:I

    .line 267
    :cond_25
    iget v1, p0, Ldd;->C:I

    iget v2, p0, Ldd;->J:I

    if-ne v1, v2, :cond_1

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_2c
    return v0
.end method

.method private Z()I
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Ldd;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Ldd;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 133
    :goto_a
    return v0

    .line 126
    :cond_b
    :goto_b
    iget v0, p0, Ldd;->g:I

    iget v1, p0, Ldd;->h:I

    if-lt v0, v1, :cond_18

    .line 129
    iget-object v0, p0, Ldd;->d:Lcs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcs;->I(Z)V

    goto :goto_b

    .line 132
    :cond_18
    iget v0, p0, Ldd;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldd;->b:I

    .line 133
    iget-object v0, p0, Ldd;->f:[B

    iget v1, p0, Ldd;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldd;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_a
.end method


# virtual methods
.method public final Code()V
    .registers 2

    .prologue
    .line 74
    const v0, 0x8000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ldd;->Code([B)V

    .line 75
    return-void
.end method

.method public final Code(Lcs;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Ldd;->d:Lcs;

    .line 103
    return-void
.end method

.method public final Code(Ljava/io/DataInputStream;)V
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Ldd;->Code()V

    .line 69
    iput-object p1, p0, Ldd;->e:Ljava/io/DataInputStream;

    .line 70
    return-void
.end method

.method public final Code([B)V
    .registers 10

    .prologue
    const/16 v7, 0x1c

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    iput-object p1, p0, Ldd;->Z:[B

    .line 80
    array-length v0, p1

    iput v0, p0, Ldd;->I:I

    .line 84
    sget-object v0, Ldd;->l:[I

    aget v0, v0, v2

    if-nez v0, :cond_54

    .line 86
    sget-object v0, Ldd;->l:[I

    aput v1, v0, v2

    .line 87
    sget-object v0, Ldd;->l:[I

    const/4 v3, 0x2

    aput v3, v0, v1

    move v0, v1

    .line 88
    :goto_19
    const/16 v3, 0x1d

    if-ge v0, v3, :cond_33

    .line 89
    sget-object v3, Ldd;->l:[I

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v5, v0, 0x2

    shl-int v5, v1, v5

    add-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x2

    shl-int v6, v1, v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 91
    :cond_33
    const/4 v0, 0x3

    move v3, v2

    move v2, v0

    :goto_36
    if-ge v3, v7, :cond_4e

    .line 93
    sget-object v0, Ldd;->k:[I

    aput v2, v0, v3

    .line 94
    const/16 v0, 0x8

    if-ge v3, v0, :cond_47

    move v0, v1

    :goto_41
    add-int/2addr v0, v2

    .line 91
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_36

    .line 94
    :cond_47
    add-int/lit8 v0, v3, -0x4

    div-int/lit8 v0, v0, 0x4

    shl-int v0, v1, v0

    goto :goto_41

    .line 96
    :cond_4e
    sget-object v0, Ldd;->k:[I

    const/16 v1, 0x102

    aput v1, v0, v7

    .line 98
    :cond_54
    return-void
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Ldd;->b:I

    return v0
.end method

.method public final end()V
    .registers 1

    .prologue
    .line 503
    return-void
.end method

.method public final read()I
    .registers 4

    .prologue
    .line 330
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ldd;->read([BII)I

    move-result v0

    if-nez v0, :cond_b

    .line 332
    const/4 v0, -0x1

    .line 334
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ldd;->Z:[B

    iget v1, p0, Ldd;->J:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_a
.end method

.method public final read([BII)I
    .registers 12

    .prologue
    .line 355
    const/4 v0, 0x0

    iput v0, p0, Ldd;->b:I

    .line 357
    iget v0, p0, Ldd;->J:I

    iget v1, p0, Ldd;->I:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Ldd;->J:I

    .line 358
    :cond_c
    iget v0, p0, Ldd;->I:I

    iget v1, p0, Ldd;->J:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_45

    .line 359
    :goto_13
    iget v0, p0, Ldd;->J:I

    add-int/2addr v0, p3

    iput v0, p0, Ldd;->C:I

    .line 360
    iget v3, p0, Ldd;->J:I

    .line 366
    :goto_1a
    iget v0, p0, Ldd;->C:I

    iget v1, p0, Ldd;->J:I

    if-eq v0, v1, :cond_37

    .line 367
    iget-object v0, p0, Ldd;->e:Ljava/io/DataInputStream;

    if-nez v0, :cond_2a

    iget v0, p0, Ldd;->g:I

    iget v1, p0, Ldd;->h:I

    if-ge v0, v1, :cond_37

    .line 372
    :cond_2a
    iget v0, p0, Ldd;->Code:I

    packed-switch v0, :pswitch_data_15c

    .line 468
    :cond_2f
    :goto_2f
    :pswitch_2f
    iget v0, p0, Ldd;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14c

    .line 474
    const/4 v0, 0x7

    iput v0, p0, Ldd;->Code:I

    .line 485
    :cond_37
    :goto_37
    if-eqz p1, :cond_41

    .line 488
    iget-object v0, p0, Ldd;->Z:[B

    iget v1, p0, Ldd;->J:I

    sub-int/2addr v1, v3

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    :cond_41
    iget v0, p0, Ldd;->J:I

    sub-int/2addr v0, v3

    :goto_44
    return v0

    :cond_45
    move p3, v0

    .line 358
    goto :goto_13

    .line 384
    :pswitch_47
    const/4 v0, 0x0

    goto :goto_44

    .line 388
    :pswitch_49
    const/4 v0, 0x0

    iput v0, p0, Ldd;->j:I

    .line 389
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    iput v0, p0, Ldd;->a:I

    .line 390
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    .line 391
    const/4 v0, 0x3

    iput v0, p0, Ldd;->Code:I

    .line 395
    :cond_5c
    :pswitch_5c
    iget v0, p0, Ldd;->a:I

    if-lez v0, :cond_2f

    .line 397
    iget v0, p0, Ldd;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldd;->a:I

    .line 401
    iget-object v0, p0, Ldd;->Z:[B

    iget v1, p0, Ldd;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldd;->J:I

    invoke-direct {p0}, Ldd;->Z()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 402
    iget v0, p0, Ldd;->C:I

    iget v1, p0, Ldd;->J:I

    if-ne v0, v1, :cond_5c

    goto :goto_37

    .line 409
    :pswitch_7c
    const/4 v0, 0x0

    .line 410
    :goto_7d
    const/16 v1, 0x90

    if-ge v0, v1, :cond_8a

    iget-object v1, p0, Ldd;->o:[B

    const/16 v2, 0x8

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 411
    :cond_8a
    :goto_8a
    const/16 v1, 0x100

    if-ge v0, v1, :cond_97

    iget-object v1, p0, Ldd;->o:[B

    const/16 v2, 0x9

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 412
    :cond_97
    :goto_97
    const/16 v1, 0x118

    if-ge v0, v1, :cond_a3

    iget-object v1, p0, Ldd;->o:[B

    const/4 v2, 0x7

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 413
    :cond_a3
    :goto_a3
    const/16 v1, 0x120

    if-ge v0, v1, :cond_b0

    iget-object v1, p0, Ldd;->o:[B

    const/16 v2, 0x8

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 414
    :cond_b0
    iget-object v0, p0, Ldd;->o:[B

    const/16 v1, 0x120

    iget-object v2, p0, Ldd;->m:[S

    invoke-static {v0, v1, v2}, Ldd;->Code([BI[S)V

    .line 416
    const/4 v0, 0x0

    :goto_ba
    const/16 v1, 0x20

    if-ge v0, v1, :cond_c6

    iget-object v1, p0, Ldd;->o:[B

    const/4 v2, 0x5

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 417
    :cond_c6
    iget-object v0, p0, Ldd;->o:[B

    const/16 v1, 0x20

    iget-object v2, p0, Ldd;->n:[S

    invoke-static {v0, v1, v2}, Ldd;->Code([BI[S)V

    .line 419
    const/4 v0, 0x4

    iput v0, p0, Ldd;->Code:I

    .line 423
    :pswitch_d2
    invoke-direct {p0}, Ldd;->B()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_37

    .line 429
    :pswitch_da
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    add-int/lit16 v4, v0, 0x101

    .line 430
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 431
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x4

    .line 435
    const/4 v0, 0x0

    move v2, v0

    :goto_f1
    const/16 v0, 0x13

    if-ge v2, v0, :cond_124

    .line 438
    const/4 v0, 0x3

    if-ge v2, v0, :cond_10a

    .line 439
    add-int/lit8 v0, v2, 0x10

    .line 447
    :goto_fa
    iget-object v7, p0, Ldd;->o:[B

    if-ge v2, v6, :cond_122

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Ldd;->Code(I)I

    move-result v1

    int-to-byte v1, v1

    :goto_104
    aput-byte v1, v7, v0

    .line 435
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f1

    .line 440
    :cond_10a
    const/4 v0, 0x3

    if-ne v2, v0, :cond_10f

    .line 441
    const/4 v0, 0x0

    goto :goto_fa

    .line 442
    :cond_10f
    and-int/lit8 v0, v2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11b

    .line 443
    add-int/lit8 v0, v2, -0x5

    ushr-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v0, v0, 0x7

    goto :goto_fa

    .line 445
    :cond_11b
    add-int/lit8 v0, v2, -0x4

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_fa

    .line 447
    :cond_122
    const/4 v1, 0x0

    goto :goto_104

    .line 451
    :cond_124
    const/16 v0, 0x24

    new-array v0, v0, [S

    .line 452
    iget-object v1, p0, Ldd;->o:[B

    const/16 v2, 0x13

    invoke-static {v1, v2, v0}, Ldd;->Code([BI[S)V

    .line 458
    invoke-direct {p0, v0, v4}, Ldd;->Code([SI)[B

    move-result-object v1

    iget-object v2, p0, Ldd;->m:[S

    invoke-static {v1, v4, v2}, Ldd;->Code([BI[S)V

    .line 460
    invoke-direct {p0, v0, v5}, Ldd;->Code([SI)[B

    move-result-object v0

    iget-object v1, p0, Ldd;->n:[S

    invoke-static {v0, v5, v1}, Ldd;->Code([BI[S)V

    .line 463
    const/4 v0, 0x5

    iput v0, p0, Ldd;->Code:I

    .line 467
    :pswitch_144
    invoke-direct {p0}, Ldd;->B()Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_2f

    .line 478
    :cond_14c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    iput v0, p0, Ldd;->c:I

    .line 479
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldd;->Code(I)I

    move-result v0

    iput v0, p0, Ldd;->Code:I

    goto/16 :goto_1a

    .line 372
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_7c
        :pswitch_da
        :pswitch_5c
        :pswitch_d2
        :pswitch_144
        :pswitch_2f
        :pswitch_47
    .end packed-switch
.end method

.method public final setInput([BII)V
    .registers 5

    .prologue
    .line 107
    iput-object p1, p0, Ldd;->f:[B

    .line 108
    iput p2, p0, Ldd;->g:I

    .line 109
    add-int v0, p2, p3

    iput v0, p0, Ldd;->h:I

    .line 110
    return-void
.end method
