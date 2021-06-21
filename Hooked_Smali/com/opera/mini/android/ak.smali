.class final Lcom/opera/mini/android/ak;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static B:[I

.field private static C:[I

.field private static Code:[C

.field private static I:[F

.field private static J:Lcom/opera/mini/android/B;

.field private static Z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x20

    .line 308
    const/16 v0, -0x40

    sput v0, Lcom/opera/mini/android/ak;->Z:I

    .line 311
    new-array v0, v1, [I

    sput-object v0, Lcom/opera/mini/android/ak;->B:[I

    .line 312
    new-array v0, v1, [I

    sput-object v0, Lcom/opera/mini/android/ak;->C:[I

    return-void
.end method

.method public static declared-synchronized Code(Lcom/opera/mini/android/B;C)I
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x40

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 374
    const-class v3, Lcom/opera/mini/android/ak;

    monitor-enter v3

    :try_start_8
    sget-object v2, Lcom/opera/mini/android/ak;->J:Lcom/opera/mini/android/B;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_8e

    if-eq v2, p0, :cond_f

    .line 375
    const/4 v0, -0x1

    .line 391
    :cond_d
    :goto_d
    monitor-exit v3

    return v0

    .line 377
    :cond_f
    :try_start_f
    sget v2, Lcom/opera/mini/android/ak;->Z:I

    add-int/lit8 v2, v2, 0x40

    .line 378
    sget v4, Lcom/opera/mini/android/ak;->Z:I

    if-lt p1, v4, :cond_19

    if-lt p1, v2, :cond_ac

    .line 379
    :cond_19
    sget-object v2, Lcom/opera/mini/android/ak;->J:Lcom/opera/mini/android/B;

    invoke-virtual {v2}, Lcom/opera/mini/android/B;->g()Landroid/text/TextPaint;

    move-result-object v4

    div-int/lit8 v2, p1, 0x40

    mul-int/lit8 v2, v2, 0x40

    sput v2, Lcom/opera/mini/android/ak;->Z:I

    move v2, v0

    :goto_26
    if-ge v2, v9, :cond_33

    sget-object v5, Lcom/opera/mini/android/ak;->Code:[C

    sget v6, Lcom/opera/mini/android/ak;->Z:I

    add-int/2addr v6, v2

    int-to-char v6, v6

    aput-char v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_33
    div-int/lit8 v2, p1, 0x40

    div-int/lit8 v5, v2, 0x20

    div-int/lit8 v2, p1, 0x40

    rem-int/lit8 v6, v2, 0x20

    sget-object v2, Lcom/opera/mini/android/ak;->B:[I

    aget v2, v2, v5

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_5b

    move v2, v1

    :goto_45
    if-eqz v2, :cond_5d

    move v1, v0

    :cond_48
    :goto_48
    if-eqz v1, :cond_a2

    move v1, v0

    :goto_4b
    if-ge v1, v9, :cond_ac

    sget-object v2, Lcom/opera/mini/android/ak;->I:[F

    sget-object v5, Lcom/opera/mini/android/ak;->Code:[C

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_5b
    move v2, v0

    goto :goto_45

    :cond_5d
    sget-object v2, Lcom/opera/mini/android/ak;->C:[I

    aget v2, v2, v5

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_91

    move v2, v1

    :goto_67
    if-nez v2, :cond_48

    move v2, v0

    :goto_6a
    if-ge v2, v9, :cond_96

    add-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v7, v1, :cond_82

    const/4 v8, 0x2

    if-eq v7, v8, :cond_82

    const/4 v8, 0x6

    if-eq v7, v8, :cond_82

    const/16 v8, 0x10

    if-eq v7, v8, :cond_82

    const/16 v8, 0x11

    if-ne v7, v8, :cond_93

    :cond_82
    sget-object v2, Lcom/opera/mini/android/ak;->C:[I

    sget-object v7, Lcom/opera/mini/android/ak;->C:[I

    aget v7, v7, v5

    shl-int v6, v1, v6

    or-int/2addr v6, v7

    aput v6, v2, v5
    :try_end_8d
    .catchall {:try_start_f .. :try_end_8d} :catchall_8e

    goto :goto_48

    .line 374
    :catchall_8e
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_91
    move v2, v0

    .line 379
    goto :goto_67

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_96
    :try_start_96
    sget-object v2, Lcom/opera/mini/android/ak;->B:[I

    sget-object v7, Lcom/opera/mini/android/ak;->B:[I

    aget v7, v7, v5

    shl-int/2addr v1, v6

    or-int/2addr v1, v7

    aput v1, v2, v5

    move v1, v0

    goto :goto_48

    :cond_a2
    sget-object v1, Lcom/opera/mini/android/ak;->Code:[C

    const/4 v2, 0x0

    const/16 v5, 0x40

    sget-object v6, Lcom/opera/mini/android/ak;->I:[F

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 381
    :cond_ac
    sget-object v1, Lcom/opera/mini/android/ak;->I:[F

    rem-int/lit8 v2, p1, 0x40

    aget v1, v1, v2
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_8e

    .line 384
    cmpg-float v2, v1, v10

    if-ltz v2, :cond_d

    .line 386
    const/high16 v0, 0x44800000    # 1024.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_c0

    .line 387
    const/16 v0, 0x400

    goto/16 :goto_d

    .line 388
    :cond_c0
    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_cd

    .line 389
    float-to-int v0, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 391
    :cond_cd
    float-to-int v0, v1

    goto/16 :goto_d
.end method

.method public static declared-synchronized Code()V
    .registers 2

    .prologue
    .line 396
    const-class v1, Lcom/opera/mini/android/ak;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/opera/mini/android/ak;->J:Lcom/opera/mini/android/B;

    .line 397
    const/16 v0, -0x40

    sput v0, Lcom/opera/mini/android/ak;->Z:I

    .line 398
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/ak;->Code:[C

    .line 399
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/ak;->I:[F
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    .line 400
    monitor-exit v1

    return-void

    .line 396
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized Code(Lcom/opera/mini/android/B;)V
    .registers 3

    .prologue
    .line 361
    const-class v1, Lcom/opera/mini/android/ak;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/opera/mini/android/ak;->J:Lcom/opera/mini/android/B;

    if-eq v0, p0, :cond_21

    .line 363
    sput-object p0, Lcom/opera/mini/android/ak;->J:Lcom/opera/mini/android/B;

    .line 364
    const/16 v0, -0x40

    sput v0, Lcom/opera/mini/android/ak;->Z:I

    .line 365
    sget-object v0, Lcom/opera/mini/android/ak;->Code:[C

    if-nez v0, :cond_17

    .line 366
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/opera/mini/android/ak;->Code:[C

    .line 367
    :cond_17
    sget-object v0, Lcom/opera/mini/android/ak;->I:[F

    if-nez v0, :cond_21

    .line 368
    const/16 v0, 0x40

    new-array v0, v0, [F

    sput-object v0, Lcom/opera/mini/android/ak;->I:[F
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 370
    :cond_21
    monitor-exit v1

    return-void

    .line 361
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method
