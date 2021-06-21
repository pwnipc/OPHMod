.class public Lao;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(I)I
    .registers 2

    .prologue
    .line 197
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_6

    .line 199
    const/4 v0, 0x1

    .line 209
    :goto_5
    return v0

    .line 201
    :cond_6
    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_c

    .line 203
    const/4 v0, 0x2

    goto :goto_5

    .line 205
    :cond_c
    const v0, 0xffff

    if-gt p0, v0, :cond_13

    .line 207
    const/4 v0, 0x3

    goto :goto_5

    .line 209
    :cond_13
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public static Code(I[BI)I
    .registers 6

    .prologue
    .line 218
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_9

    .line 220
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 221
    const/4 v0, 0x1

    .line 242
    :goto_8
    return v0

    .line 223
    :cond_9
    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_1f

    .line 225
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x6

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 226
    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 227
    const/4 v0, 0x2

    goto :goto_8

    .line 229
    :cond_1f
    const v0, 0xffff

    if-gt p0, v0, :cond_41

    .line 231
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 232
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 233
    and-int/lit8 v0, p0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 234
    const/4 v0, 0x3

    goto :goto_8

    .line 238
    :cond_41
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 239
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 240
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 241
    and-int/lit8 v1, p0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 242
    const/4 v0, 0x4

    goto :goto_8
.end method

.method public static Code(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 275
    move v1, v0

    .line 276
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 279
    const v3, 0xd800

    if-lt v2, v3, :cond_1d

    const v3, 0xdbff

    if-gt v2, v3, :cond_1d

    .line 281
    add-int/lit8 v1, v1, 0x4

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 276
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 286
    :cond_1d
    invoke-static {v2}, Lao;->Code(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1a

    .line 289
    :cond_23
    return v1
.end method

.method public static Code(Ljava/lang/String;[BI)I
    .registers 10

    .prologue
    const v5, 0xd800

    const/4 v0, 0x0

    .line 255
    move v1, v0

    .line 256
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 259
    if-lt v2, v5, :cond_37

    const v3, 0xdbff

    if-gt v2, v3, :cond_37

    .line 261
    const/high16 v3, 0x10000

    sub-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v3, v2

    .line 262
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v4, 0xdc00

    sub-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 264
    :goto_27
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v0, p1, v3}, Lao;->Code(I[BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 256
    add-int/lit8 v0, v2, 0x1

    goto :goto_5

    .line 266
    :cond_33
    invoke-static {v1, p1, p2}, Lao;->I(I[BI)V

    .line 267
    return v1

    :cond_37
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_27
.end method

.method public static Code([BI)Ljava/lang/String;
    .registers 4

    .prologue
    .line 15
    invoke-static {p0, p1}, Lao;->Z([BI)I

    move-result v0

    .line 16
    add-int/lit8 v1, p1, 0x2

    .line 17
    add-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lao;->Code([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Code([BII)Ljava/lang/String;
    .registers 5

    .prologue
    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lao;->Z([BII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static I([BI)I
    .registers 4

    .prologue
    .line 335
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static I(I[BI)V
    .registers 5

    .prologue
    .line 361
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 362
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 363
    return-void
.end method

.method private static I(I)Z
    .registers 3

    .prologue
    const v1, 0xfffe

    .line 53
    if-lez p0, :cond_24

    const v0, 0x10ffff

    if-gt p0, v0, :cond_24

    const v0, 0xd800

    if-lt p0, v0, :cond_14

    const v0, 0xdfff

    if-le p0, v0, :cond_24

    :cond_14
    const v0, 0xfdd0

    if-lt p0, v0, :cond_1e

    const v0, 0xfdef

    if-le p0, v0, :cond_24

    :cond_1e
    and-int v0, p0, v1

    if-eq v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static I([BII)Z
    .registers 9

    .prologue
    const/16 v5, 0x80

    const/4 v0, 0x0

    .line 107
    add-int v2, p1, p2

    .line 109
    :cond_5
    :goto_5
    if-ge p1, v2, :cond_b5

    .line 111
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_bc

    .line 184
    add-int/lit8 v1, p1, 0x1

    aget-byte v3, p0, p1

    if-nez v3, :cond_b8

    .line 192
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 121
    :pswitch_17
    add-int/lit8 v1, p1, 0x2

    if-gt v1, v2, :cond_16

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    .line 126
    add-int/lit8 v1, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0x1f

    .line 127
    const/4 v4, 0x2

    if-lt v3, v4, :cond_16

    .line 132
    add-int/lit8 p1, v1, 0x1

    .line 133
    goto :goto_5

    .line 135
    :pswitch_2f
    add-int/lit8 v1, p1, 0x3

    if-gt v1, v2, :cond_16

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    .line 142
    add-int/lit8 v1, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    add-int/lit8 p1, v4, 0x1

    aget-byte v3, p0, v4

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    .line 145
    const/16 v3, 0x800

    if-lt v1, v3, :cond_16

    .line 150
    invoke-static {v1}, Lao;->I(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_16

    .line 156
    :pswitch_66
    add-int/lit8 v1, p1, 0x4

    if-gt v1, v2, :cond_16

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v5, :cond_16

    .line 164
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_16

    .line 169
    add-int/lit8 v1, p1, 0x1

    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v1, v3

    .line 173
    const/high16 v3, 0x10000

    if-lt v1, v3, :cond_16

    .line 178
    invoke-static {v1}, Lao;->I(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_16

    .line 192
    :cond_b5
    const/4 v0, 0x1

    goto/16 :goto_16

    :cond_b8
    move p1, v1

    goto/16 :goto_5

    .line 111
    nop

    :pswitch_data_bc
    .packed-switch 0x8
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_2f
        :pswitch_66
    .end packed-switch
.end method

.method public static J([BI)I
    .registers 4

    .prologue
    .line 381
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static Z([BI)I
    .registers 4

    .prologue
    .line 348
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static Z(I[BI)V
    .registers 5

    .prologue
    .line 396
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 397
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 398
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 399
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 400
    return-void
.end method

.method private static Z([BII)[C
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 78
    move v0, v1

    move v2, p1

    :goto_3
    if-ge v2, p2, :cond_14

    aget-byte v3, p0, v2

    invoke-static {v3}, Lap;->I(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    new-array v2, v0, [C

    .line 80
    :goto_16
    if-ge p1, p2, :cond_4a

    .line 82
    invoke-static {p0, p1}, Lap;->B([BI)I

    move-result v3

    .line 83
    const v0, 0xffff

    if-gt v3, v0, :cond_2f

    .line 85
    add-int/lit8 v0, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 92
    :goto_26
    aget-byte v1, p0, p1

    invoke-static {v1}, Lap;->I(I)I

    move-result v1

    add-int/2addr p1, v1

    move v1, v0

    .line 93
    goto :goto_16

    .line 89
    :cond_2f
    add-int/lit8 v4, v1, 0x1

    const v0, 0xd800

    const/high16 v5, 0x10000

    sub-int v5, v3, v5

    shr-int/lit8 v5, v5, 0xa

    or-int/2addr v0, v5

    int-to-char v0, v0

    aput-char v0, v2, v1

    .line 90
    add-int/lit8 v0, v4, 0x1

    const v1, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v2, v4

    goto :goto_26

    .line 94
    :cond_4a
    return-object v2
.end method
