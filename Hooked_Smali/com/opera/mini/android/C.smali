.class public final Lcom/opera/mini/android/C;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbq;


# static fields
.field private static B:Lcom/opera/mini/android/C;

.field private static C:Ljava/util/Hashtable;

.field static Code:I

.field private static I:I

.field private static final J:[I

.field private static final Z:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/16 v0, 0x5f

    sput v0, Lcom/opera/mini/android/C;->I:I

    .line 26
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/opera/mini/android/C;->Z:[I

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/opera/mini/android/C;->J:[I

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    return-void

    .line 26
    :array_1e
    .array-data 4
        0x8
        0xa
        0xc
        0xd
        0xf
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x20
    .end array-data

    .line 30
    :array_3a
    .array-data 4
        0xa
        0xb
        0xc
        0xe
        0x10
        0x12
        0x14
        0x17
        0x1a
        0x1e
        0x22
        0x27
        0x2c
        0x32
        0x39
        0x41
    .end array-data
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/high16 v7, 0x3fa00000    # 1.25f

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/opera/mini/android/s;->m()F

    move-result v0

    invoke-static {}, Lcom/opera/mini/android/s;->n()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 53
    sget-object v1, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    sget-object v2, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 64
    const v3, 0x45663b8a

    div-float v0, v3, v0

    float-to-double v3, v0

    const-wide v5, 0x4090ed5300000000L    # 1083.3310546875

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v5, v0

    add-double/2addr v0, v3

    const-wide v2, -0x40013c3620000000L    # -1.9227999448776245

    add-double/2addr v0, v2

    .line 71
    const/16 v2, 0x1e

    const/16 v3, 0x5f

    double-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 73
    sput v0, Lcom/opera/mini/android/C;->I:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/opera/mini/android/C;->I:I

    .line 75
    const/4 v0, 0x0

    :goto_55
    sget-object v1, Lcom/opera/mini/android/C;->J:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6e

    .line 76
    sget-object v1, Lcom/opera/mini/android/C;->J:[I

    sget-object v2, Lcom/opera/mini/android/C;->J:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    sget v3, Lcom/opera/mini/android/C;->I:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    div-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 80
    :cond_6e
    sget v0, Lcom/opera/mini/android/C;->I:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    sput v0, Lcom/opera/mini/android/C;->I:I

    .line 81
    return-void
.end method

.method private Code([Lbp;IIIZ)I
    .registers 12

    .prologue
    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/opera/mini/android/C;->I([Lbp;IIIZ)I

    move-result v2

    .line 224
    or-int/lit8 v4, p4, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/C;->I([Lbp;IIIZ)I

    move-result v0

    return v0
.end method

.method private Code([Lbp;IIZ)I
    .registers 11

    .prologue
    .line 217
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/C;->Code([Lbp;IIIZ)I

    move-result v2

    .line 218
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/C;->Code([Lbp;IIIZ)I

    move-result v0

    return v0
.end method

.method private declared-synchronized Code(IIIZ)Lbp;
    .registers 9

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/Integer;

    mul-int/lit16 v0, p1, 0x400

    mul-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x2

    or-int/2addr v1, v0

    if-eqz p4, :cond_3a

    const/4 v0, 0x1

    :goto_e
    or-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 124
    const/4 v1, 0x0

    .line 125
    sget-object v0, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 126
    if-eqz v0, :cond_3f

    .line 128
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/B;

    .line 130
    :goto_23
    if-nez v0, :cond_29

    .line 132
    invoke-static {p1, p2, p3, p4}, Lcom/opera/mini/android/B;->Code(IIIZ)Lcom/opera/mini/android/B;

    move-result-object v0

    .line 134
    :cond_29
    if-eqz v0, :cond_38

    .line 136
    sget-object v1, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/opera/mini/android/C;->J()V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3c

    .line 139
    :cond_38
    monitor-exit p0

    return-object v0

    .line 123
    :cond_3a
    const/4 v0, 0x0

    goto :goto_e

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move-object v0, v1

    goto :goto_23
.end method

.method public static Code()Lcom/opera/mini/android/C;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/opera/mini/android/C;->B:Lcom/opera/mini/android/C;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/opera/mini/android/C;

    invoke-direct {v0}, Lcom/opera/mini/android/C;-><init>()V

    sput-object v0, Lcom/opera/mini/android/C;->B:Lcom/opera/mini/android/C;

    .line 88
    :cond_b
    sget-object v0, Lcom/opera/mini/android/C;->B:Lcom/opera/mini/android/C;

    return-object v0
.end method

.method public static I()I
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lcom/opera/mini/android/C;->J:[I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/opera/mini/android/C;->Z(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private I([Lbp;IIIZ)I
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    if-eqz p5, :cond_36

    sget-object v0, Lcom/opera/mini/android/C;->Z:[I

    move-object v1, v0

    .line 230
    :goto_7
    array-length v8, v1

    move v7, v3

    move v6, p2

    .line 231
    :goto_a
    if-ge v7, v8, :cond_40

    .line 234
    aget v4, v1, v7

    if-nez p5, :cond_3a

    move v0, v2

    :goto_11
    invoke-direct {p0, p3, p4, v4, v0}, Lcom/opera/mini/android/C;->Code(IIIZ)Lbp;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/B;

    .line 237
    if-eqz v0, :cond_43

    .line 239
    invoke-virtual {v0}, Lcom/opera/mini/android/B;->C()Z

    move-result v4

    if-eqz v4, :cond_3c

    move v4, v2

    :goto_20
    invoke-virtual {v0}, Lcom/opera/mini/android/B;->a()Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x2

    :goto_27
    or-int/2addr v4, v5

    .line 247
    :goto_28
    if-eqz v0, :cond_41

    if-ne v4, p4, :cond_41

    .line 249
    add-int/lit8 v4, v6, 0x1

    aput-object v0, p1, v6

    move v0, v4

    .line 231
    :goto_31
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v6, v0

    goto :goto_a

    .line 229
    :cond_36
    sget-object v0, Lcom/opera/mini/android/C;->J:[I

    move-object v1, v0

    goto :goto_7

    :cond_3a
    move v0, v3

    .line 234
    goto :goto_11

    :cond_3c
    move v4, v3

    .line 239
    goto :goto_20

    :cond_3e
    move v5, v3

    goto :goto_27

    .line 256
    :cond_40
    return v6

    :cond_41
    move v0, v6

    goto :goto_31

    :cond_43
    move v4, p4

    goto :goto_28
.end method

.method public static I(I)Z
    .registers 2

    .prologue
    .line 46
    sget v0, Lcom/opera/mini/android/C;->Code:I

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static J()V
    .registers 3

    .prologue
    .line 144
    sget-object v0, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 147
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    sget-object v1, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 151
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 154
    sget-object v1, Lcom/opera/mini/android/C;->C:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 157
    :cond_28
    return-void
.end method

.method public static Z(I)I
    .registers 2

    .prologue
    .line 171
    packed-switch p0, :pswitch_data_12

    .line 178
    :pswitch_3
    sget v0, Lcom/opera/mini/android/C;->Code:I

    add-int/lit8 v0, v0, 0x2

    :goto_7
    return v0

    .line 173
    :pswitch_8
    sget v0, Lcom/opera/mini/android/C;->Code:I

    add-int/lit8 v0, v0, 0x0

    goto :goto_7

    .line 175
    :pswitch_d
    sget v0, Lcom/opera/mini/android/C;->Code:I

    add-int/lit8 v0, v0, 0x4

    goto :goto_7

    .line 171
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final Code(I)I
    .registers 6

    .prologue
    const/16 v1, 0x34

    const/16 v0, 0x30

    const/high16 v3, 0x3fa00000    # 1.25f

    .line 261
    sget v2, Lcom/opera/mini/android/C;->I:I

    .line 262
    packed-switch p1, :pswitch_data_26

    .line 273
    :goto_b
    :pswitch_b
    if-le v2, v0, :cond_24

    if-ge v2, v1, :cond_24

    .line 274
    const/16 v3, 0x32

    if-gt v2, v3, :cond_22

    .line 275
    :goto_13
    const/16 v1, 0x5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 265
    :pswitch_1a
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 266
    goto :goto_b

    .line 268
    :pswitch_1e
    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_b

    :cond_22
    move v0, v1

    .line 274
    goto :goto_13

    :cond_24
    move v0, v2

    goto :goto_13

    .line 262
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_b
        :pswitch_1e
    .end packed-switch
.end method

.method public final Code(II)Lbp;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 105
    sparse-switch p2, :sswitch_data_24

    sget-object v0, Lcom/opera/mini/android/C;->J:[I

    aget v0, v0, v2

    .line 108
    :goto_8
    invoke-virtual {p0, p1, v2, v0}, Lcom/opera/mini/android/C;->Code(III)Lbp;

    move-result-object v1

    .line 109
    if-nez v1, :cond_21

    .line 111
    const/16 v1, 0x40

    invoke-virtual {p0, v1, v2, v0}, Lcom/opera/mini/android/C;->Code(III)Lbp;

    move-result-object v0

    .line 113
    :goto_14
    return-object v0

    .line 105
    :sswitch_15
    sget-object v0, Lcom/opera/mini/android/C;->J:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_8

    :sswitch_1b
    sget-object v0, Lcom/opera/mini/android/C;->J:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_8

    :cond_21
    move-object v0, v1

    goto :goto_14

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_15
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public final declared-synchronized Code(III)Lbp;
    .registers 5

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/opera/mini/android/C;->Code(IIIZ)Lbp;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Z()[Lbp;
    .registers 8

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/16 v4, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    sget-object v0, Lcom/opera/mini/android/C;->Z:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0xc

    sget-object v1, Lcom/opera/mini/android/C;->J:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    new-array v1, v0, [Lbp;

    .line 192
    invoke-direct {p0, v1, v3, v5, v2}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v0

    .line 195
    invoke-direct {p0, v1, v0, v6, v2}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v0

    .line 196
    invoke-direct {p0, v1, v0, v4, v2}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v0

    .line 198
    sput v0, Lcom/opera/mini/android/C;->Code:I

    .line 199
    invoke-direct {p0, v1, v0, v5, v3}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v0

    .line 200
    invoke-direct {p0, v1, v0, v6, v3}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v0

    .line 201
    invoke-direct {p0, v1, v0, v4, v3}, Lcom/opera/mini/android/C;->Code([Lbp;IIZ)I

    move-result v2

    .line 203
    array-length v0, v1

    if-ge v2, v0, :cond_38

    .line 205
    new-array v0, v2, [Lbp;

    .line 206
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :goto_37
    return-object v0

    :cond_38
    move-object v0, v1

    goto :goto_37
.end method
