.class public final Lcom/opera/mini/android/l;
.super Lbv;
.source "Source"


# static fields
.field private static Code:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/opera/mini/android/l;->Code:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 139
    invoke-direct {p0}, Lbv;-><init>()V

    .line 140
    sget-object v0, Lcom/opera/mini/android/l;->Code:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 141
    return-void
.end method

.method private static Code(Landroid/graphics/Bitmap;Z)Lbu;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 246
    if-eqz p1, :cond_2b

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/opera/mini/android/l;->Code([III)V

    .line 250
    :cond_2b
    new-instance v0, Lcom/opera/mini/android/k;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/k;-><init>([IIIZ)V

    return-object v0
.end method

.method public static Code(Ljava/io/InputStream;)Lbu;
    .registers 3

    .prologue
    .line 255
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/opera/mini/android/l;->Code(Landroid/graphics/Bitmap;Z)Lbu;

    move-result-object v0

    return-object v0
.end method

.method private static Code([III)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 160
    move v3, v1

    move v0, v1

    .line 161
    :goto_3
    if-ge v3, p2, :cond_5b

    move v2, v0

    move v0, v1

    .line 163
    :goto_7
    if-ge v0, p1, :cond_56

    .line 165
    aget v4, p0, v2

    .line 166
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 167
    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 168
    and-int/lit16 v7, v4, 0xff

    .line 169
    and-int/lit8 v8, v5, -0x8

    .line 170
    and-int/lit8 v9, v6, -0x4

    .line 171
    and-int/lit8 v10, v7, -0x8

    .line 172
    shr-int/lit8 v11, v8, 0x5

    or-int/2addr v8, v11

    .line 173
    shr-int/lit8 v11, v9, 0x6

    or-int/2addr v9, v11

    .line 174
    shr-int/lit8 v11, v10, 0x5

    or-int/2addr v10, v11

    .line 175
    const/high16 v11, -0x1000000

    and-int/2addr v4, v11

    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v4, v11

    shl-int/lit8 v11, v9, 0x8

    or-int/2addr v4, v11

    or-int/2addr v4, v10

    aput v4, p0, v2

    .line 176
    sub-int v4, v5, v8

    .line 177
    sub-int v5, v6, v9

    .line 178
    sub-int v6, v7, v10

    .line 180
    div-int/lit8 v7, v4, 0x2

    .line 181
    div-int/lit8 v8, v5, 0x2

    .line 182
    div-int/lit8 v9, v6, 0x2

    .line 183
    add-int/lit8 v10, p1, -0x1

    if-ge v0, v10, :cond_48

    .line 185
    add-int/lit8 v10, v2, 0x1

    sub-int/2addr v4, v7

    sub-int/2addr v5, v8

    sub-int/2addr v6, v9

    invoke-static {p0, v10, v4, v5, v6}, Lcom/opera/mini/android/l;->Code([IIIII)V

    .line 187
    :cond_48
    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_51

    .line 189
    add-int v4, v2, p1

    invoke-static {p0, v4, v7, v8, v9}, Lcom/opera/mini/android/l;->Code([IIIII)V

    .line 191
    :cond_51
    add-int/lit8 v2, v2, 0x1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 161
    :cond_56
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3

    .line 194
    :cond_5b
    return-void
.end method

.method private static Code([IIIII)V
    .registers 11

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 198
    if-nez p2, :cond_a

    if-nez p3, :cond_a

    if-nez p4, :cond_a

    .line 231
    :goto_9
    return-void

    .line 202
    :cond_a
    aget v3, p0, p1

    .line 203
    shr-int/lit8 v0, v3, 0x10

    and-int/lit16 v2, v0, 0xff

    .line 204
    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v1, v0, 0xff

    .line 205
    and-int/lit16 v0, v3, 0xff

    .line 206
    if-lez p2, :cond_38

    .line 208
    add-int/2addr v2, p2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 214
    :cond_1d
    :goto_1d
    if-lez p3, :cond_40

    .line 216
    add-int/2addr v1, p3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 222
    :cond_24
    :goto_24
    if-lez p4, :cond_48

    .line 224
    add-int/2addr v0, p4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 230
    :cond_2b
    :goto_2b
    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    aput v0, p0, p1

    goto :goto_9

    .line 210
    :cond_38
    if-gez p2, :cond_1d

    .line 212
    add-int/2addr v2, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1d

    .line 218
    :cond_40
    if-gez p3, :cond_24

    .line 220
    add-int/2addr v1, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_24

    .line 226
    :cond_48
    if-gez p4, :cond_2b

    .line 228
    add-int/2addr v0, p4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2b
.end method


# virtual methods
.method public final Code(II)Lbu;
    .registers 4

    .prologue
    .line 145
    new-instance v0, Lcom/opera/mini/android/k;

    invoke-direct {v0, p1, p2}, Lcom/opera/mini/android/k;-><init>(II)V

    return-object v0
.end method

.method protected final Code([BIIZ)Lbu;
    .registers 6

    .prologue
    .line 260
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/opera/mini/android/l;->Code(Landroid/graphics/Bitmap;Z)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public final Code([IIIIII)Lbu;
    .registers 14

    .prologue
    .line 238
    new-instance v0, Lcom/opera/mini/android/k;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/opera/mini/android/k;-><init>([IIIIII)V

    return-object v0
.end method

.method public final Code([IIIZZ)Lbu;
    .registers 7

    .prologue
    .line 151
    if-eqz p5, :cond_5

    .line 153
    invoke-static {p1, p2, p3}, Lcom/opera/mini/android/l;->Code([III)V

    .line 155
    :cond_5
    new-instance v0, Lcom/opera/mini/android/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/opera/mini/android/k;-><init>([IIIZ)V

    return-object v0
.end method

.method protected final Code()Ldc;
    .registers 2

    .prologue
    .line 317
    new-instance v0, Lcom/opera/mini/android/u;

    invoke-direct {v0}, Lcom/opera/mini/android/u;-><init>()V

    return-object v0
.end method

.method public final Code([BII)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 265
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_8

    move-object v0, v2

    .line 310
    :goto_7
    return-object v0

    .line 271
    :cond_8
    sget-boolean v0, Ldb;->w:Z

    if-eqz v0, :cond_31

    invoke-static {p1, p2, p3}, Lcom/opera/mini/android/l;->I([BII)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 273
    new-instance v0, Lcom/opera/mini/android/u;

    invoke-direct {v0}, Lcom/opera/mini/android/u;-><init>()V

    check-cast v0, Lcom/opera/mini/android/u;

    .line 277
    invoke-virtual {v0, p1, p2, p3}, Lcom/opera/mini/android/u;->Code([BII)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 282
    invoke-virtual {v0}, Lcom/opera/mini/android/u;->Z()J

    move-result-wide v1

    .line 283
    invoke-virtual {v0}, Lcom/opera/mini/android/u;->Code()I

    .line 284
    invoke-virtual {v0}, Lcom/opera/mini/android/u;->I()I

    .line 286
    new-instance v0, Lcom/opera/mini/android/n;

    invoke-direct {v0, v1, v2}, Lcom/opera/mini/android/n;-><init>(J)V

    goto :goto_7

    :cond_2f
    move-object v0, v2

    .line 291
    goto :goto_7

    .line 295
    :cond_31
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    if-nez v1, :cond_39

    move-object v0, v2

    .line 299
    goto :goto_7

    .line 302
    :cond_39
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_56

    .line 305
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 307
    :goto_47
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    :goto_4c
    new-instance v1, Lcom/opera/mini/android/n;

    invoke-direct {v1, v0}, Lcom/opera/mini/android/n;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto :goto_7

    .line 305
    :cond_53
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_47

    :cond_56
    move-object v0, v1

    goto :goto_4c
.end method
