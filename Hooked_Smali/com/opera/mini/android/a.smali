.class public Lcom/opera/mini/android/a;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbr;


# static fields
.field private static B:Landroid/graphics/Paint;

.field private static C:Landroid/graphics/Rect;

.field private static Code:[C

.field private static I:Lcom/opera/mini/android/B;

.field private static J:Landroid/graphics/Paint$FontMetricsInt;

.field private static Z:F

.field private static a:Landroid/graphics/Canvas;

.field private static b:Landroid/graphics/Bitmap;

.field private static c:Ljava/nio/ByteBuffer;

.field private static d:[B

.field private static e:I

.field private static f:I


# instance fields
.field private g:J

.field private h:Lcom/opera/mini/android/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/opera/mini/android/a;->Code:[C

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    .line 351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    .line 352
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/opera/mini/android/a;->a:Landroid/graphics/Canvas;

    .line 362
    invoke-static {}, Lcom/opera/mini/android/a;->i()V

    .line 715
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method

.method private static Code(C)C
    .registers 4

    .prologue
    .line 452
    const-string v0, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 453
    if-ltz v0, :cond_14

    .line 455
    const-string v1, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_15

    add-int/lit8 v0, v0, 0x1

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 457
    :cond_14
    return p0

    .line 455
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method private static Code([CIIIIFLcom/opera/mini/android/B;Z)Landroid/graphics/Rect;
    .registers 19

    .prologue
    .line 517
    const/4 v1, 0x2

    new-array v7, v1, [I

    const/4 v1, 0x0

    aput p1, v7, v1

    const/4 v1, 0x1

    aput p2, v7, v1

    .line 518
    const/4 v1, 0x0

    aget v6, v7, v1

    const/4 v1, 0x1

    aget v8, v7, v1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v6

    :goto_12
    add-int v4, v6, v8

    if-ge v3, v4, :cond_155

    if-nez v1, :cond_149

    aget-char v4, p0, v3

    invoke-static {v4}, Ldb;->Code(C)Z

    move-result v4

    if-eqz v4, :cond_149

    const/4 v1, 0x1

    aget-char v4, p0, v3

    invoke-static {v4}, Ldb;->J(C)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 519
    :cond_29
    :goto_29
    const/4 v1, 0x0

    aget v10, v7, v1

    .line 520
    const/4 v1, 0x1

    aget v1, v7, v1

    .line 522
    sget-object v2, Lcom/opera/mini/android/a;->I:Lcom/opera/mini/android/B;

    move-object/from16 v0, p6

    if-eq v2, v0, :cond_53

    .line 524
    sget-object v2, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    invoke-virtual/range {p6 .. p6}, Lcom/opera/mini/android/B;->g()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 525
    sget-object v2, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sput v2, Lcom/opera/mini/android/a;->f:I

    .line 526
    sput-object p6, Lcom/opera/mini/android/a;->I:Lcom/opera/mini/android/B;

    .line 527
    const/4 v2, 0x0

    sput v2, Lcom/opera/mini/android/a;->Z:F

    .line 529
    :cond_53
    sget v2, Lcom/opera/mini/android/a;->Z:F

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_85

    .line 531
    sget-object v2, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    invoke-virtual/range {p6 .. p6}, Lcom/opera/mini/android/B;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 532
    sget-object v2, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sput v2, Lcom/opera/mini/android/a;->f:I

    .line 533
    sget-object v2, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 534
    sput-object v2, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 535
    sput p5, Lcom/opera/mini/android/a;->Z:F

    .line 540
    :cond_85
    const/16 v2, 0x800

    if-le v1, v2, :cond_1ab

    .line 542
    const/16 v1, 0x800

    move v8, v1

    .line 545
    :goto_8c
    sget-object v1, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    sget v2, Lcom/opera/mini/android/a;->f:I

    invoke-static {v1, v2, p0, v10, v8}, Lcom/opera/mini/android/B;->Code(Landroid/graphics/Paint;I[CII)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 546
    sget-object v1, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sget-object v2, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v5, v1, v2

    .line 549
    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b6

    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v9, :cond_b6

    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_f9

    .line 555
    :cond_b6
    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a7

    .line 557
    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 558
    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 559
    sget-object v3, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    :goto_d3
    const/4 v3, 0x0

    sput-object v3, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    .line 562
    const/4 v3, 0x0

    sput-object v3, Lcom/opera/mini/android/a;->c:Ljava/nio/ByteBuffer;

    .line 563
    const/4 v3, 0x0

    sput-object v3, Lcom/opera/mini/android/a;->d:[B

    .line 565
    sput v2, Lcom/opera/mini/android/a;->e:I

    .line 566
    mul-int v3, v2, v1

    new-array v3, v3, [B

    .line 567
    sput-object v3, Lcom/opera/mini/android/a;->d:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/a;->c:Ljava/nio/ByteBuffer;

    .line 568
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    .line 569
    sget-object v1, Lcom/opera/mini/android/a;->a:Landroid/graphics/Canvas;

    sget-object v2, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 572
    :cond_f9
    sget-object v1, Lcom/opera/mini/android/a;->a:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v9

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 573
    sget-object v1, Lcom/opera/mini/android/a;->a:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 576
    sget-object v1, Lcom/opera/mini/android/a;->a:Landroid/graphics/Canvas;

    neg-int v2, p3

    int-to-float v5, v2

    sget-object v2, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    int-to-float v6, v2

    sget-object v7, Lcom/opera/mini/android/a;->B:Landroid/graphics/Paint;

    move-object v2, p0

    move v3, v10

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 581
    if-eqz p7, :cond_12d

    .line 583
    sget-object v1, Lcom/opera/mini/android/a;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    sget-object v1, Lcom/opera/mini/android/a;->b:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/opera/mini/android/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 587
    :cond_12d
    sget-object v1, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    sget-object v2, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 588
    sget-object v1, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    sget-object v2, Lcom/opera/mini/android/a;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 589
    sget-object v1, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 590
    sget-object v1, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    iput v9, v1, Landroid/graphics/Rect;->right:I

    .line 591
    sget-object v1, Lcom/opera/mini/android/a;->C:Landroid/graphics/Rect;

    return-object v1

    .line 518
    :cond_149
    aget-char v4, p0, v3

    const/16 v5, 0x200f

    if-ne v4, v5, :cond_151

    add-int/lit8 v2, v2, 0x1

    :cond_151
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_155
    if-eqz v2, :cond_29

    sub-int v2, v8, v2

    new-array v3, v2, [C

    if-nez v1, :cond_17e

    const/4 v1, 0x2

    if-ne v8, v1, :cond_17e

    const/4 v2, 0x0

    const/4 v1, 0x0

    aget-char v1, p0, v1

    const/16 v4, 0x200f

    if-eq v1, v4, :cond_17c

    const/4 v1, 0x0

    :goto_169
    aget-char v1, p0, v1

    invoke-static {v1}, Lcom/opera/mini/android/a;->Code(C)C

    move-result v1

    aput-char v1, v3, v2

    :cond_171
    :goto_171
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v7, v1

    const/4 v1, 0x1

    array-length v2, v3

    aput v2, v7, v1

    move-object p0, v3

    goto/16 :goto_29

    :cond_17c
    const/4 v1, 0x1

    goto :goto_169

    :cond_17e
    const/4 v1, 0x0

    move v4, v1

    move v2, v6

    :goto_181
    add-int v1, v6, v8

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1a0

    add-int/lit8 v5, v4, 0x1

    aget-char v1, p0, v2

    const/16 v9, 0x200f

    if-ne v1, v9, :cond_19d

    add-int/lit8 v2, v2, 0x1

    aget-char v1, p0, v2

    invoke-static {v1}, Lcom/opera/mini/android/a;->Code(C)C

    move-result v1

    :goto_197
    aput-char v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_181

    :cond_19d
    aget-char v1, p0, v2

    goto :goto_197

    :cond_1a0
    if-ge v2, v8, :cond_171

    aget-char v1, p0, v2

    aput-char v1, v3, v4

    goto :goto_171

    :cond_1a7
    move v1, v5

    move v2, v9

    goto/16 :goto_d3

    :cond_1ab
    move v8, v1

    goto/16 :goto_8c
.end method

.method public static Code(I)Lcom/opera/mini/android/B;
    .registers 2

    .prologue
    .line 681
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    check-cast v0, Lcom/opera/mini/android/B;

    return-object v0
.end method

.method public static Code(Lcom/opera/mini/android/k;)Lcom/opera/mini/android/a;
    .registers 2

    .prologue
    .line 374
    new-instance v0, Lcom/opera/mini/android/a;

    invoke-direct {v0}, Lcom/opera/mini/android/a;-><init>()V

    .line 375
    invoke-virtual {v0, p0}, Lcom/opera/mini/android/a;->I(Lcom/opera/mini/android/k;)V

    .line 376
    return-object v0
.end method

.method public static native Code(Lcc;IIIIILan;I)V
.end method

.method private native Code([CIIIILcom/opera/mini/android/B;III)V
.end method

.method public static I(II)Lcom/opera/mini/android/a;
    .registers 4

    .prologue
    .line 423
    new-instance v0, Lcom/opera/mini/android/a;

    invoke-direct {v0}, Lcom/opera/mini/android/a;-><init>()V

    .line 424
    new-instance v1, Lcom/opera/mini/android/e;

    invoke-direct {v1}, Lcom/opera/mini/android/e;-><init>()V

    iput-object v1, v0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    .line 425
    invoke-virtual {v0, p0, p1}, Lcom/opera/mini/android/a;->Z(II)V

    .line 426
    return-object v0
.end method

.method public static I(Landroid/graphics/Bitmap;)Lcom/opera/mini/android/a;
    .registers 4

    .prologue
    .line 407
    new-instance v0, Lcom/opera/mini/android/a;

    invoke-direct {v0}, Lcom/opera/mini/android/a;-><init>()V

    .line 408
    invoke-static {}, Lcom/opera/mini/android/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 410
    new-instance v1, Lcom/opera/mini/android/g;

    invoke-direct {v1, v0, p0}, Lcom/opera/mini/android/g;-><init>(Lcom/opera/mini/android/a;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    .line 417
    :goto_12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/a;->Code(II)V

    .line 418
    return-object v0

    .line 414
    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 415
    new-instance v2, Lcom/opera/mini/android/f;

    invoke-direct {v2, v0, v1}, Lcom/opera/mini/android/f;-><init>(Lcom/opera/mini/android/a;Ljava/nio/ByteBuffer;)V

    iput-object v2, v0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    goto :goto_12
.end method

.method public static native I(Z)V
.end method

.method private native I([CIIIILbp;I)V
.end method

.method public static native Z(Z)V
.end method

.method public static native d()Z
.end method

.method private static h()Z
    .registers 2

    .prologue
    .line 708
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Mi-504"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static native i()V
.end method


# virtual methods
.method native B()V
.end method

.method native C()V
.end method

.method public native Code()I
.end method

.method public Code(CIILbp;I)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 700
    sget-object v0, Lcom/opera/mini/android/a;->Code:[C

    aput-char p1, v0, v2

    .line 701
    sget-object v1, Lcom/opera/mini/android/a;->Code:[C

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/opera/mini/android/a;->Code([CIIIILbp;I)V

    .line 702
    return-void
.end method

.method native Code(II)V
.end method

.method public native Code(IIII)V
.end method

.method public Code(IIIII)V
    .registers 8

    .prologue
    .line 631
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: drawLine"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public Code(IIIIII)V
    .registers 9

    .prologue
    .line 645
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: fillRectGradient"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public Code(IIIIIII)V
    .registers 10

    .prologue
    .line 651
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: fillArc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public Code(I[CIIIIIZIII)V
    .registers 22

    .prologue
    .line 674
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v6, v0, p1

    check-cast v6, Lcom/opera/mini/android/B;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p11

    .line 675
    invoke-direct/range {v0 .. v9}, Lcom/opera/mini/android/a;->Code([CIIIILcom/opera/mini/android/B;III)V

    .line 677
    return-void
.end method

.method public final Code(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    invoke-interface {v0, p1}, Lcom/opera/mini/android/d;->Code(Landroid/graphics/Bitmap;)V

    .line 370
    return-void
.end method

.method public native Code(Lbu;II)V
.end method

.method public native Code(Lbu;IIIIII)V
.end method

.method public native Code(Lbu;IIIIIIII)V
.end method

.method public Code(Lbu;IIIIIIIII)V
    .registers 11

    .prologue
    .line 610
    invoke-virtual/range {p0 .. p7}, Lcom/opera/mini/android/a;->I(Lbu;IIIIII)V

    .line 611
    return-void
.end method

.method public Code(Lbu;IIIIIIIIIII)V
    .registers 13

    .prologue
    .line 619
    invoke-virtual/range {p0 .. p9}, Lcom/opera/mini/android/a;->Code(Lbu;IIIIIIII)V

    .line 620
    return-void
.end method

.method public native Code(Lbu;IIIIZ)V
.end method

.method public native Code(Ljava/lang/String;IILbp;I)V
.end method

.method public native Code(Z)V
.end method

.method public Code([CIIIILbp;I)V
    .registers 8

    .prologue
    .line 660
    invoke-direct/range {p0 .. p7}, Lcom/opera/mini/android/a;->I([CIIIILbp;I)V

    .line 661
    return-void
.end method

.method public Code([IIIIIIIZ)V
    .registers 11

    .prologue
    .line 626
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: drawRGB"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public native I()I
.end method

.method public native I(IIII)V
.end method

.method public I(IIIII)V
    .registers 8

    .prologue
    .line 636
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TODO: drawRect"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public native I(Lbu;IIIIII)V
.end method

.method native I(Lcom/opera/mini/android/k;)V
.end method

.method public native J()I
.end method

.method native J(II)V
.end method

.method public native J(IIIII)V
.end method

.method public native Z()I
.end method

.method native Z(II)V
.end method

.method public native Z(IIIII)V
.end method

.method final a()Z
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    invoke-interface {v0}, Lcom/opera/mini/android/d;->Code()Z

    move-result v0

    if-nez v0, :cond_a

    .line 389
    const/4 v0, 0x0

    .line 392
    :goto_9
    return v0

    .line 391
    :cond_a
    invoke-virtual {p0}, Lcom/opera/mini/android/a;->B()V

    .line 392
    const/4 v0, 0x1

    goto :goto_9
.end method

.method final b()V
    .registers 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/opera/mini/android/a;->C()V

    .line 398
    iget-object v0, p0, Lcom/opera/mini/android/a;->h:Lcom/opera/mini/android/d;

    invoke-interface {v0}, Lcom/opera/mini/android/d;->I()V

    .line 399
    return-void
.end method

.method native c()V
.end method

.method native e()V
.end method

.method public native f()V
.end method

.method protected native finalize()V
.end method

.method public native g()V
.end method
