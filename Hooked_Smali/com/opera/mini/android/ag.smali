.class public Lcom/opera/mini/android/ag;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final B:[I

.field private static C:[I

.field public static final Code:Lcom/opera/mini/android/ag;

.field private static final J:[I

.field private static final Z:[I

.field private static final a:[[[I


# instance fields
.field private I:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/opera/mini/android/ag;

    invoke-direct {v0}, Lcom/opera/mini/android/ag;-><init>()V

    sput-object v0, Lcom/opera/mini/android/ag;->Code:Lcom/opera/mini/android/ag;

    .line 651
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_13a

    sput-object v0, Lcom/opera/mini/android/ag;->Z:[I

    .line 668
    const/16 v0, 0xe

    new-array v0, v0, [I

    aput v5, v0, v3

    aput v5, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    aput v5, v0, v4

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    const/16 v1, 0x9

    aput v5, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v5, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    .line 685
    const/16 v0, 0x10

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v5, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    aput v3, v0, v4

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v5, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v5, v0, v1

    .line 704
    new-array v0, v6, [C

    const v1, 0xfeef

    aput-char v1, v0, v3

    const v1, 0xfef0

    aput-char v1, v0, v5

    .line 710
    new-array v0, v4, [C

    const/16 v1, 0x622

    aput-char v1, v0, v3

    const/16 v1, 0x623

    aput-char v1, v0, v5

    const/16 v1, 0x625

    aput-char v1, v0, v6

    const/16 v1, 0x627

    aput-char v1, v0, v7

    .line 717
    const/16 v0, 0xb2

    new-array v0, v0, [I

    fill-array-data v0, :array_14e

    sput-object v0, Lcom/opera/mini/android/ag;->J:[I

    .line 795
    const/16 v0, 0x8d

    new-array v0, v0, [I

    fill-array-data v0, :array_2b6

    sput-object v0, Lcom/opera/mini/android/ag;->B:[I

    .line 836
    const/16 v0, 0x8d

    new-array v0, v0, [I

    fill-array-data v0, :array_3d4

    sput-object v0, Lcom/opera/mini/android/ag;->C:[I

    .line 849
    new-array v0, v4, [[[I

    new-array v1, v4, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_4f2

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_4fe

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_50a

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_516

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v4, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_522

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_52e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_53a

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_546

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v4, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_552

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_55e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_56a

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_576

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v4, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_582

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_58e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_59a

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_5a6

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Lcom/opera/mini/android/ag;->a:[[[I

    return-void

    .line 651
    nop

    :array_13a
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    .line 717
    :array_14e
    .array-data 4
        0x1121
        0x1321
        0x1501
        0x1721
        0x1903
        0x1d21
        0x1f03
        0x2301
        0x2503
        0x2903
        0x2d03
        0x3103
        0x3503
        0x3901
        0x3b01
        0x3d01
        0x3f01
        0x4103
        0x4503
        0x4903
        0x4d03
        0x5103
        0x5503
        0x5903
        0x5d03
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x6103
        0x6503
        0x6903
        0x6d13
        0x7103
        0x7503
        0x7903
        0x7d01
        0x7f01
        0x8103
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8501
        0x8701
        0x8901
        0x8b01
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x21
        0x21
        0x0
        0x21
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
    .end array-data

    .line 795
    :array_2b6
    .array-data 4
        0x3
        0x3
        0x3
        0x0
        0x3
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x20
        0x21
        0x20
        0x21
        0x0
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x10
        0x12
        0x13
        0x11
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    .line 836
    :array_3d4
    .array-data 4
        0x64b
        0x64b
        0x64c
        0x64c
        0x64d
        0x64d
        0x64e
        0x64e
        0x64f
        0x64f
        0x650
        0x650
        0x651
        0x651
        0x652
        0x652
        0x621
        0x622
        0x622
        0x623
        0x623
        0x624
        0x624
        0x625
        0x625
        0x626
        0x626
        0x626
        0x626
        0x627
        0x627
        0x628
        0x628
        0x628
        0x628
        0x629
        0x629
        0x62a
        0x62a
        0x62a
        0x62a
        0x62b
        0x62b
        0x62b
        0x62b
        0x62c
        0x62c
        0x62c
        0x62c
        0x62d
        0x62d
        0x62d
        0x62d
        0x62e
        0x62e
        0x62e
        0x62e
        0x62f
        0x62f
        0x630
        0x630
        0x631
        0x631
        0x632
        0x632
        0x633
        0x633
        0x633
        0x633
        0x634
        0x634
        0x634
        0x634
        0x635
        0x635
        0x635
        0x635
        0x636
        0x636
        0x636
        0x636
        0x637
        0x637
        0x637
        0x637
        0x638
        0x638
        0x638
        0x638
        0x639
        0x639
        0x639
        0x639
        0x63a
        0x63a
        0x63a
        0x63a
        0x641
        0x641
        0x641
        0x641
        0x642
        0x642
        0x642
        0x642
        0x643
        0x643
        0x643
        0x643
        0x644
        0x644
        0x644
        0x644
        0x645
        0x645
        0x645
        0x645
        0x646
        0x646
        0x646
        0x646
        0x647
        0x647
        0x647
        0x647
        0x648
        0x648
        0x649
        0x649
        0x64a
        0x64a
        0x64a
        0x64a
        0x65c
        0x65c
        0x65d
        0x65d
        0x65e
        0x65e
        0x65f
        0x65f
    .end array-data

    .line 849
    :array_4f2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4fe
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_50a
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_516
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_522
    .array-data 4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_52e
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_53a
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_546
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data

    :array_552
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_55e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_56a
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_576
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_582
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_58e
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_59a
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_5a6
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/ag;->I:Z

    .line 209
    return-void
.end method

.method private static Code(C)I
    .registers 3

    .prologue
    const v1, 0xfe70

    .line 954
    const/16 v0, 0x622

    if-lt p0, v0, :cond_12

    const/16 v0, 0x6d3

    if-gt p0, v0, :cond_12

    .line 955
    sget-object v0, Lcom/opera/mini/android/ag;->J:[I

    add-int/lit16 v1, p0, -0x622

    aget v0, v0, v1

    .line 963
    :goto_11
    return v0

    .line 956
    :cond_12
    const/16 v0, 0x200d

    if-ne p0, v0, :cond_18

    .line 957
    const/4 v0, 0x3

    goto :goto_11

    .line 958
    :cond_18
    const/16 v0, 0x206d

    if-lt p0, v0, :cond_22

    const/16 v0, 0x206f

    if-gt p0, v0, :cond_22

    .line 959
    const/4 v0, 0x4

    goto :goto_11

    .line 960
    :cond_22
    if-lt p0, v1, :cond_30

    const v0, 0xfefc

    if-gt p0, v0, :cond_30

    .line 961
    sget-object v0, Lcom/opera/mini/android/ag;->B:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    goto :goto_11

    .line 963
    :cond_30
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static Code([CI)V
    .registers 6

    .prologue
    .line 899
    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ge v0, v1, :cond_14

    .line 900
    aget-char v2, p0, v0

    .line 901
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 902
    aput-char v2, p0, v1

    .line 899
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 904
    :cond_14
    return-void
.end method

.method private static I(C)I
    .registers 2

    .prologue
    .line 1023
    const/16 v0, 0x633

    if-lt p0, v0, :cond_a

    const/16 v0, 0x636

    if-gt p0, v0, :cond_a

    .line 1024
    const/4 v0, 0x1

    .line 1026
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private I([CI)I
    .registers 20

    .prologue
    .line 1657
    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x0

    :goto_3
    if-ge v1, v2, :cond_1f

    aget-char v3, p1, v1

    const v4, 0xfe70

    if-lt v3, v4, :cond_1c

    const v4, 0xfefc

    if-gt v3, v4, :cond_1c

    sget-object v4, Lcom/opera/mini/android/ag;->C:[I

    const v5, 0xfe70

    sub-int/2addr v3, v5

    aget v3, v4, v3

    int-to-char v3, v3

    aput-char v3, p1, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1664
    :cond_1f
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1665
    const/4 v8, 0x0

    .line 1666
    add-int/lit8 v2, v2, -0x1

    .line 1667
    aget-char v1, p1, v2

    invoke-static {v1}, Lcom/opera/mini/android/ag;->Code(C)I

    move-result v9

    .line 1668
    const/4 v7, 0x0

    .line 1669
    const/4 v5, 0x0

    .line 1670
    const/4 v3, 0x0

    .line 1673
    const/4 v6, -0x2

    move v1, v2

    move v15, v7

    move v7, v3

    move v3, v8

    move v8, v15

    .line 1676
    :goto_33
    if-ltz v1, :cond_1b1

    .line 1678
    const v11, 0xff00

    and-int/2addr v11, v9

    if-gtz v11, :cond_48

    aget-char v11, p1, v1

    const/16 v12, 0x64b

    if-lt v11, v12, :cond_58

    const/16 v12, 0x652

    if-gt v11, v12, :cond_58

    const/4 v11, 0x1

    :goto_46
    if-eqz v11, :cond_1e7

    .line 1679
    :cond_48
    add-int/lit8 v6, v1, -0x1

    .line 1680
    const/4 v11, -0x2

    move v15, v6

    move v6, v11

    move v11, v15

    .line 1681
    :goto_4e
    if-gez v6, :cond_6c

    .line 1682
    const/4 v8, -0x1

    if-ne v11, v8, :cond_5a

    .line 1683
    const/4 v8, 0x0

    .line 1684
    const v6, 0x7fffffff

    goto :goto_4e

    .line 1678
    :cond_58
    const/4 v11, 0x0

    goto :goto_46

    .line 1686
    :cond_5a
    aget-char v8, p1, v11

    invoke-static {v8}, Lcom/opera/mini/android/ag;->Code(C)I

    move-result v12

    .line 1687
    and-int/lit8 v8, v12, 0x4

    if-nez v8, :cond_67

    move v6, v11

    move v8, v12

    .line 1688
    goto :goto_4e

    .line 1690
    :cond_67
    add-int/lit8 v8, v11, -0x1

    move v11, v8

    move v8, v12

    goto :goto_4e

    .line 1695
    :cond_6c
    and-int/lit8 v11, v9, 0x20

    if-lez v11, :cond_1e3

    and-int/lit8 v11, v7, 0x10

    if-lez v11, :cond_1e3

    .line 1696
    const/4 v10, 0x1

    .line 1697
    aget-char v7, p1, v1

    packed-switch v7, :pswitch_data_1f2

    :pswitch_7a
    const/4 v7, 0x0

    .line 1698
    :goto_7b
    if-eqz v7, :cond_85

    .line 1700
    const v9, 0xffff

    aput-char v9, p1, v1

    .line 1701
    aput-char v7, p1, v2

    move v1, v2

    .line 1706
    :cond_85
    invoke-static {v7}, Lcom/opera/mini/android/ag;->Code(C)I

    move-result v9

    move v7, v5

    move v11, v10

    move v10, v1

    .line 1708
    :goto_8c
    if-lez v10, :cond_120

    add-int/lit8 v1, v10, -0x1

    aget-char v1, p1, v1

    const/16 v12, 0x20

    if-ne v1, v12, :cond_120

    .line 1710
    aget-char v1, p1, v10

    invoke-static {v1}, Lcom/opera/mini/android/ag;->I(C)I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_117

    .line 1711
    const/4 v1, 0x1

    move v15, v3

    move v3, v1

    move v1, v15

    .line 1729
    :goto_a3
    aget-char v4, p1, v10

    const/16 v12, 0x621

    if-le v4, v12, :cond_ad

    const/16 v12, 0x626

    if-lt v4, v12, :cond_c5

    :cond_ad
    const/16 v12, 0x627

    if-eq v4, v12, :cond_c5

    const/16 v12, 0x62e

    if-le v4, v12, :cond_b9

    const/16 v12, 0x633

    if-lt v4, v12, :cond_c5

    :cond_b9
    const/16 v12, 0x647

    if-le v4, v12, :cond_c1

    const/16 v12, 0x64a

    if-lt v4, v12, :cond_c5

    :cond_c1
    const/16 v12, 0x629

    if-ne v4, v12, :cond_13b

    :cond_c5
    const/4 v4, 0x1

    .line 1731
    :goto_c6
    sget-object v12, Lcom/opera/mini/android/ag;->a:[[[I

    and-int/lit8 v13, v8, 0x3

    aget-object v12, v12, v13

    and-int/lit8 v13, v7, 0x3

    aget-object v12, v12, v13

    and-int/lit8 v13, v9, 0x3

    aget v12, v12, v13

    .line 1735
    const/4 v13, 0x1

    if-ne v4, v13, :cond_161

    .line 1736
    and-int/lit8 v12, v12, 0x1

    .line 1751
    :cond_d9
    :goto_d9
    const/4 v13, 0x2

    if-ne v4, v13, :cond_18a

    .line 1752
    const v4, 0xfe70

    sget-object v13, Lcom/opera/mini/android/ag;->Z:[I

    aget-char v14, p1, v10

    add-int/lit16 v14, v14, -0x64b

    aget v13, v13, v14

    add-int/2addr v4, v13

    add-int/2addr v4, v12

    int-to-char v4, v4

    aput-char v4, p1, v10

    move v4, v9

    move v9, v3

    move v3, v7

    move v7, v8

    move v8, v1

    move v1, v10

    move v10, v11

    .line 1766
    :goto_f3
    and-int/lit8 v11, v4, 0x4

    if-nez v11, :cond_fa

    move v2, v1

    move v5, v3

    move v3, v4

    .line 1773
    :cond_fa
    add-int/lit8 v1, v1, -0x1

    .line 1774
    if-ne v1, v6, :cond_19d

    .line 1776
    const/4 v6, -0x2

    move v4, v9

    move v9, v7

    move v15, v7

    move v7, v3

    move v3, v8

    move v8, v15

    goto/16 :goto_33

    .line 1697
    :pswitch_107
    const/16 v7, 0x65c

    goto/16 :goto_7b

    :pswitch_10b
    const/16 v7, 0x65d

    goto/16 :goto_7b

    :pswitch_10f
    const/16 v7, 0x65e

    goto/16 :goto_7b

    :pswitch_113
    const/16 v7, 0x65f

    goto/16 :goto_7b

    .line 1712
    :cond_117
    aget-char v1, p1, v10

    const/16 v12, 0x626

    if-ne v1, v12, :cond_1df

    .line 1713
    const/4 v1, 0x1

    move v3, v4

    goto :goto_a3

    .line 1716
    :cond_120
    if-nez v10, :cond_1df

    .line 1717
    aget-char v1, p1, v10

    invoke-static {v1}, Lcom/opera/mini/android/ag;->I(C)I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_131

    .line 1718
    const/4 v1, 0x1

    move v15, v3

    move v3, v1

    move v1, v15

    goto/16 :goto_a3

    .line 1719
    :cond_131
    aget-char v1, p1, v10

    const/16 v12, 0x626

    if-ne v1, v12, :cond_1df

    .line 1720
    const/4 v1, 0x1

    move v3, v4

    goto/16 :goto_a3

    .line 1729
    :cond_13b
    const/16 v12, 0x64b

    if-lt v4, v12, :cond_145

    const/16 v12, 0x652

    if-gt v4, v12, :cond_145

    const/4 v4, 0x2

    goto :goto_c6

    :cond_145
    const/16 v12, 0x653

    if-lt v4, v12, :cond_14d

    const/16 v12, 0x655

    if-le v4, v12, :cond_15b

    :cond_14d
    const/16 v12, 0x670

    if-eq v4, v12, :cond_15b

    const v12, 0xfe70

    if-lt v4, v12, :cond_15e

    const v12, 0xfe7f

    if-gt v4, v12, :cond_15e

    :cond_15b
    const/4 v4, 0x3

    goto/16 :goto_c6

    :cond_15e
    const/4 v4, 0x0

    goto/16 :goto_c6

    .line 1737
    :cond_161
    const/4 v13, 0x2

    if-ne v4, v13, :cond_d9

    .line 1738
    and-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_187

    and-int/lit8 v12, v8, 0x1

    if-eqz v12, :cond_187

    aget-char v12, p1, v10

    const/16 v13, 0x64c

    if-eq v12, v13, :cond_187

    aget-char v12, p1, v10

    const/16 v13, 0x64d

    if-eq v12, v13, :cond_187

    and-int/lit8 v12, v8, 0x20

    const/16 v13, 0x20

    if-ne v12, v13, :cond_184

    and-int/lit8 v12, v7, 0x10

    const/16 v13, 0x10

    if-eq v12, v13, :cond_187

    .line 1746
    :cond_184
    const/4 v12, 0x1

    goto/16 :goto_d9

    .line 1748
    :cond_187
    const/4 v12, 0x0

    goto/16 :goto_d9

    .line 1761
    :cond_18a
    const v4, 0xfe70

    shr-int/lit8 v13, v9, 0x8

    add-int/2addr v4, v13

    add-int/2addr v4, v12

    int-to-char v4, v4

    aput-char v4, p1, v10

    move v4, v9

    move v9, v3

    move v3, v7

    move v7, v8

    move v8, v1

    move v1, v10

    move v10, v11

    goto/16 :goto_f3

    .line 1777
    :cond_19d
    const/4 v11, -0x1

    if-eq v1, v11, :cond_1d4

    .line 1778
    aget-char v4, p1, v1

    invoke-static {v4}, Lcom/opera/mini/android/ag;->Code(C)I

    move-result v4

    move v15, v3

    move v3, v8

    move v8, v7

    move v7, v15

    move/from16 v16, v4

    move v4, v9

    move/from16 v9, v16

    goto/16 :goto_33

    .line 1785
    :cond_1b1
    if-eqz v10, :cond_1cb

    .line 1787
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/opera/mini/android/ag;->I:Z

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x0

    :goto_1ba
    if-ge v1, v2, :cond_1cb

    aget-char v5, p1, v1

    const v6, 0xffff

    if-ne v5, v6, :cond_1c8

    const v5, 0xfeff

    aput-char v5, p1, v1

    :cond_1c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ba

    .line 1789
    :cond_1cb
    if-nez v4, :cond_1cf

    if-eqz v3, :cond_1d3

    .line 1790
    :cond_1cf
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/opera/mini/android/ag;->I:Z

    .line 1792
    :cond_1d3
    return p2

    :cond_1d4
    move v15, v3

    move v3, v8

    move v8, v7

    move v7, v15

    move/from16 v16, v4

    move v4, v9

    move/from16 v9, v16

    goto/16 :goto_33

    :cond_1df
    move v1, v3

    move v3, v4

    goto/16 :goto_a3

    :cond_1e3
    move v11, v10

    move v10, v1

    goto/16 :goto_8c

    :cond_1e7
    move v15, v7

    move v7, v8

    move v8, v3

    move v3, v15

    move/from16 v16, v9

    move v9, v4

    move/from16 v4, v16

    goto/16 :goto_f3

    .line 1697
    :pswitch_data_1f2
    .packed-switch 0x622
        :pswitch_107
        :pswitch_10b
        :pswitch_7a
        :pswitch_10f
        :pswitch_7a
        :pswitch_113
    .end packed-switch
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 175
    array-length v0, v2

    array-length v3, v2

    if-nez v2, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-ltz v0, :cond_18

    add-int/lit8 v4, v0, 0x0

    array-length v5, v2

    if-le v4, v5, :cond_38

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad source start (0) or length ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") for buffer of length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    if-nez v2, :cond_44

    if-eqz v3, :cond_44

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null dest requires destSize == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    if-eqz v3, :cond_6d

    if-ltz v3, :cond_4d

    add-int/lit8 v4, v3, 0x0

    array-length v5, v2

    if-le v4, v5, :cond_6d

    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "bad dest start (0) or size ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") for buffer of length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    if-nez v0, :cond_76

    move v0, v1

    .line 182
    :cond_70
    :goto_70
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 175
    :cond_76
    if-eqz v3, :cond_70

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [C

    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v5, p0, Lcom/opera/mini/android/ag;->I:Z

    if-eqz v5, :cond_86

    invoke-static {v4, v0}, Lcom/opera/mini/android/ag;->Code([CI)V

    :cond_86
    invoke-direct {p0, v4, v0}, Lcom/opera/mini/android/ag;->I([CI)I

    move-result v0

    if-le v0, v3, :cond_94

    new-instance v0, Lcom/opera/mini/android/ah;

    const-string v1, "not enough room for result data"

    invoke-direct {v0, v1}, Lcom/opera/mini/android/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    iget-boolean v3, p0, Lcom/opera/mini/android/ag;->I:Z

    if-eqz v3, :cond_9b

    invoke-static {v4, v0}, Lcom/opera/mini/android/ag;->Code([CI)V

    :cond_9b
    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_70
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 572
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/opera/mini/android/ag;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 582
    const/16 v0, 0x9

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 590
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 592
    const-string v1, "LamAlef spaces at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    const-string v1, ", logical"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    const-string v1, ", shape letters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    const-string v1, ", no digit shaping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    const-string v1, ", standard Arabic-Indic digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
