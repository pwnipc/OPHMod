.class public final Lcq;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:[I


# instance fields
.field private B:I

.field private C:I

.field private I:I

.field private J:I

.field private Z:I

.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:[I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const-string v0, "428a2f9871374491b5c0fbcfe9b5dba53956c25b59f111f1923f82a4ab1c5ed5d807aa9812835b01243185be550c7dc372be5d7480deb1fe9bdc06a7c19bf174e49b69c1efbe47860fc19dc6240ca1cc2de92c6f4a7484aa5cb0a9dc76f988da983e5152a831c66db00327c8bf597fc7c6e00bf3d5a7914706ca63511429296727b70a852e1b21384d2c6dfc53380d13650a7354766a0abb81c2c92e92722c85a2bfe8a1a81a664bc24b8b70c76c51a3d192e819d6990624f40e3585106aa07019a4c1161e376c082748774c34b0bcb5391c0cb34ed8aa4a5b9cca4f682e6ff3748f82ee78a5636f84c878148cc7020890befffaa4506cebbef9a3f7c67178f2"

    invoke-static {v0}, Ldb;->J(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {v0, v1, v2}, Ldb;->Code([BII)[I

    move-result-object v0

    sput-object v0, Lcq;->Code:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcq;->d:[B

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcq;->f:[I

    .line 48
    invoke-virtual {p0}, Lcq;->Code()V

    .line 49
    return-void
.end method

.method private static Code(III)I
    .registers 6

    .prologue
    .line 287
    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 v2, p0, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    and-int v1, p0, p1

    xor-int/lit8 v2, p0, -0x1

    and-int/2addr v2, p2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private Code(B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lcq;->d:[B

    iget v1, p0, Lcq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcq;->e:I

    aput-byte p1, v0, v1

    .line 55
    iget v0, p0, Lcq;->e:I

    iget-object v1, p0, Lcq;->d:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 57
    iget-object v0, p0, Lcq;->d:[B

    invoke-direct {p0, v0, v3}, Lcq;->Code([BI)V

    .line 58
    iput v3, p0, Lcq;->e:I

    .line 61
    :cond_19
    iget v0, p0, Lcq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcq;->h:I

    .line 62
    return-void
.end method

.method private static Code(I[BI)V
    .registers 5

    .prologue
    .line 122
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 123
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 124
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 125
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 126
    return-void
.end method

.method private Code([BI)V
    .registers 7

    .prologue
    .line 111
    iget-object v0, p0, Lcq;->f:[I

    iget v1, p0, Lcq;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcq;->g:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 114
    iget v0, p0, Lcq;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_32

    .line 116
    invoke-direct {p0}, Lcq;->I()V

    .line 118
    :cond_32
    return-void
.end method

.method private static I(III)I
    .registers 6

    .prologue
    .line 293
    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 v2, p0, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    and-int v1, p0, p1

    and-int v2, p0, p2

    xor-int/2addr v1, v2

    and-int v2, p1, p2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private I()V
    .registers 16

    .prologue
    const/16 v11, 0x10

    const/4 v1, 0x0

    .line 205
    move v0, v11

    :goto_4
    const/16 v2, 0x3f

    if-gt v0, v2, :cond_46

    .line 207
    iget-object v2, p0, Lcq;->f:[I

    iget-object v3, p0, Lcq;->f:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    ushr-int/lit8 v4, v3, 0x11

    shl-int/lit8 v5, v3, 0xf

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x13

    shl-int/lit8 v6, v3, 0xd

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v4

    iget-object v4, p0, Lcq;->f:[I

    add-int/lit8 v5, v0, -0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcq;->f:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    ushr-int/lit8 v5, v4, 0x7

    shl-int/lit8 v6, v4, 0x19

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x12

    shl-int/lit8 v7, v4, 0xe

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v4, v4, 0x3

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcq;->f:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 213
    :cond_46
    iget v8, p0, Lcq;->I:I

    .line 214
    iget v7, p0, Lcq;->Z:I

    .line 215
    iget v6, p0, Lcq;->J:I

    .line 216
    iget v5, p0, Lcq;->B:I

    .line 217
    iget v4, p0, Lcq;->C:I

    .line 218
    iget v3, p0, Lcq;->a:I

    .line 219
    iget v2, p0, Lcq;->b:I

    .line 220
    iget v0, p0, Lcq;->c:I

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 223
    :goto_60
    const/16 v12, 0x8

    if-ge v0, v12, :cond_122

    .line 226
    invoke-static {v6, v5, v4}, Lcq;->Code(III)I

    move-result v12

    sget-object v13, Lcq;->Code:[I

    aget v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, p0, Lcq;->f:[I

    add-int/lit8 v14, v2, 0x1

    aget v2, v13, v2

    add-int/2addr v2, v12

    add-int/2addr v2, v3

    .line 227
    add-int v3, v7, v2

    .line 228
    invoke-static {v10, v9, v8}, Lcq;->I(III)I

    move-result v7

    add-int/2addr v2, v7

    .line 231
    invoke-static {v3, v6, v5}, Lcq;->Code(III)I

    move-result v7

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v14

    add-int/2addr v7, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 232
    add-int/2addr v8, v4

    .line 233
    invoke-static {v2, v10, v9}, Lcq;->I(III)I

    move-result v7

    add-int/2addr v4, v7

    .line 236
    invoke-static {v8, v3, v6}, Lcq;->Code(III)I

    move-result v7

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v13

    add-int/2addr v7, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v7, v12

    add-int/2addr v5, v7

    .line 237
    add-int/2addr v9, v5

    .line 238
    invoke-static {v4, v2, v10}, Lcq;->I(III)I

    move-result v7

    add-int/2addr v5, v7

    .line 241
    invoke-static {v9, v8, v3}, Lcq;->Code(III)I

    move-result v7

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v14

    add-int/2addr v7, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v7, v12

    add-int/2addr v6, v7

    .line 242
    add-int/2addr v10, v6

    .line 243
    invoke-static {v5, v4, v2}, Lcq;->I(III)I

    move-result v7

    add-int/2addr v6, v7

    .line 246
    invoke-static {v10, v9, v8}, Lcq;->Code(III)I

    move-result v7

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v13

    add-int/2addr v7, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v7, v12

    add-int/2addr v7, v3

    .line 247
    add-int v3, v2, v7

    .line 248
    invoke-static {v6, v5, v4}, Lcq;->I(III)I

    move-result v2

    add-int/2addr v7, v2

    .line 251
    invoke-static {v3, v10, v9}, Lcq;->Code(III)I

    move-result v2

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v14

    add-int/2addr v2, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v13, v14, 0x1

    aget v12, v12, v14

    add-int/2addr v2, v12

    add-int/2addr v2, v8

    .line 252
    add-int/2addr v4, v2

    .line 253
    invoke-static {v7, v6, v5}, Lcq;->I(III)I

    move-result v8

    add-int/2addr v8, v2

    .line 256
    invoke-static {v4, v3, v10}, Lcq;->Code(III)I

    move-result v2

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v13

    add-int/2addr v2, v12

    iget-object v12, p0, Lcq;->f:[I

    add-int/lit8 v14, v13, 0x1

    aget v12, v12, v13

    add-int/2addr v2, v12

    add-int/2addr v2, v9

    .line 257
    add-int/2addr v5, v2

    .line 258
    invoke-static {v8, v7, v6}, Lcq;->I(III)I

    move-result v9

    add-int/2addr v9, v2

    .line 261
    invoke-static {v5, v4, v3}, Lcq;->Code(III)I

    move-result v2

    sget-object v12, Lcq;->Code:[I

    aget v12, v12, v14

    add-int/2addr v12, v2

    iget-object v13, p0, Lcq;->f:[I

    add-int/lit8 v2, v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 262
    add-int/2addr v6, v10

    .line 263
    invoke-static {v9, v8, v7}, Lcq;->I(III)I

    move-result v12

    add-int/2addr v10, v12

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_60

    .line 266
    :cond_122
    iget v0, p0, Lcq;->I:I

    add-int/2addr v0, v10

    iput v0, p0, Lcq;->I:I

    .line 267
    iget v0, p0, Lcq;->Z:I

    add-int/2addr v0, v9

    iput v0, p0, Lcq;->Z:I

    .line 268
    iget v0, p0, Lcq;->J:I

    add-int/2addr v0, v8

    iput v0, p0, Lcq;->J:I

    .line 269
    iget v0, p0, Lcq;->B:I

    add-int/2addr v0, v7

    iput v0, p0, Lcq;->B:I

    .line 270
    iget v0, p0, Lcq;->C:I

    add-int/2addr v0, v6

    iput v0, p0, Lcq;->C:I

    .line 271
    iget v0, p0, Lcq;->a:I

    add-int/2addr v0, v5

    iput v0, p0, Lcq;->a:I

    .line 272
    iget v0, p0, Lcq;->b:I

    add-int/2addr v0, v4

    iput v0, p0, Lcq;->b:I

    .line 273
    iget v0, p0, Lcq;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcq;->c:I

    .line 278
    iput v1, p0, Lcq;->g:I

    move v0, v1

    .line 279
    :goto_14d
    if-ge v0, v11, :cond_156

    .line 281
    iget-object v2, p0, Lcq;->f:[I

    aput v1, v2, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_14d

    .line 283
    :cond_156
    return-void
.end method


# virtual methods
.method public final Code()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lcq;->h:I

    .line 174
    iput v1, p0, Lcq;->e:I

    move v0, v1

    .line 175
    :goto_6
    iget-object v2, p0, Lcq;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 177
    iget-object v2, p0, Lcq;->d:[B

    aput-byte v1, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 180
    :cond_12
    iput v1, p0, Lcq;->g:I

    move v0, v1

    .line 181
    :goto_15
    iget-object v2, p0, Lcq;->f:[I

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 183
    iget-object v2, p0, Lcq;->f:[I

    aput v1, v2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 190
    :cond_21
    const v0, 0x6a09e667

    iput v0, p0, Lcq;->I:I

    .line 191
    const v0, -0x4498517b

    iput v0, p0, Lcq;->Z:I

    .line 192
    const v0, 0x3c6ef372

    iput v0, p0, Lcq;->J:I

    .line 193
    const v0, -0x5ab00ac6

    iput v0, p0, Lcq;->B:I

    .line 194
    const v0, 0x510e527f

    iput v0, p0, Lcq;->C:I

    .line 195
    const v0, -0x64fa9774

    iput v0, p0, Lcq;->a:I

    .line 196
    const v0, 0x1f83d9ab

    iput v0, p0, Lcq;->b:I

    .line 197
    const v0, 0x5be0cd19

    iput v0, p0, Lcq;->c:I

    .line 198
    return-void
.end method

.method public final Code(I)V
    .registers 3

    .prologue
    .line 66
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 67
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 68
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 69
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 70
    return-void
.end method

.method public final Code([B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 140
    iget v0, p0, Lcq;->h:I

    mul-int/lit8 v0, v0, 0x8

    .line 145
    const/16 v1, -0x80

    invoke-direct {p0, v1}, Lcq;->Code(B)V

    .line 147
    :goto_a
    iget v1, p0, Lcq;->e:I

    if-eqz v1, :cond_12

    .line 149
    invoke-direct {p0, v3}, Lcq;->Code(B)V

    goto :goto_a

    .line 152
    :cond_12
    iget v1, p0, Lcq;->g:I

    const/16 v2, 0xe

    if-le v1, v2, :cond_1b

    invoke-direct {p0}, Lcq;->I()V

    :cond_1b
    iget-object v1, p0, Lcq;->f:[I

    const/16 v2, 0xf

    aput v0, v1, v2

    .line 153
    invoke-direct {p0}, Lcq;->I()V

    .line 155
    iget v0, p0, Lcq;->I:I

    invoke-static {v0, p1, v3}, Lcq;->Code(I[BI)V

    .line 156
    iget v0, p0, Lcq;->Z:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 157
    iget v0, p0, Lcq;->J:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 158
    iget v0, p0, Lcq;->B:I

    const/16 v1, 0xc

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 159
    iget v0, p0, Lcq;->C:I

    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 160
    iget v0, p0, Lcq;->a:I

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 161
    iget v0, p0, Lcq;->b:I

    const/16 v1, 0x18

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 162
    iget v0, p0, Lcq;->c:I

    const/16 v1, 0x1c

    invoke-static {v0, p1, v1}, Lcq;->Code(I[BI)V

    .line 164
    invoke-virtual {p0}, Lcq;->Code()V

    .line 165
    return-void
.end method

.method public final Code([BII)V
    .registers 6

    .prologue
    .line 77
    :goto_0
    iget v0, p0, Lcq;->e:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    .line 79
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 88
    :cond_10
    :goto_10
    iget-object v0, p0, Lcq;->d:[B

    array-length v0, v0

    if-le p3, v0, :cond_29

    .line 90
    invoke-direct {p0, p1, p2}, Lcq;->Code([BI)V

    .line 92
    iget-object v0, p0, Lcq;->d:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 93
    iget-object v0, p0, Lcq;->d:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 94
    iget v0, p0, Lcq;->h:I

    iget-object v1, p0, Lcq;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcq;->h:I

    goto :goto_10

    .line 100
    :cond_29
    :goto_29
    if-lez p3, :cond_35

    .line 102
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lcq;->Code(B)V

    .line 104
    add-int/lit8 p2, p2, 0x1

    .line 105
    add-int/lit8 p3, p3, -0x1

    goto :goto_29

    .line 107
    :cond_35
    return-void
.end method
