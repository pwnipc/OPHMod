.class final Lau;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final B:Ljava/util/Vector;

.field private Code:[C

.field private I:B

.field private J:[B

.field private final Z:Lbp;


# direct methods
.method constructor <init>([CIIILjava/lang/String;Lbp;)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput-byte v0, p0, Lau;->I:B

    .line 121
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lau;->B:Ljava/util/Vector;

    .line 126
    iput-object p1, p0, Lau;->Code:[C

    .line 127
    iput-object p6, p0, Lau;->Z:Lbp;

    move v0, v2

    .line 134
    :goto_14
    iget-object v1, p0, Lau;->Code:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 136
    iget-object v1, p0, Lau;->Code:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lau;->I(C)B

    move-result v1

    .line 137
    if-ne v1, v3, :cond_28

    .line 139
    iput-byte v2, p0, Lau;->I:B

    .line 134
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 141
    :cond_28
    and-int/lit8 v1, v1, 0x6

    if-lez v1, :cond_25

    .line 143
    iget-byte v0, p0, Lau;->I:B

    if-gez v0, :cond_32

    .line 145
    iput-byte v3, p0, Lau;->I:B

    .line 153
    :cond_32
    iget-byte v0, p0, Lau;->I:B

    invoke-direct {p0, v0}, Lau;->I(B)[B

    move-result-object v0

    iput-object v0, p0, Lau;->J:[B

    .line 157
    :cond_3a
    iget-byte v0, p0, Lau;->I:B

    if-gez v0, :cond_43

    .line 160
    iput-byte v2, p0, Lau;->I:B

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lau;->J:[B

    .line 165
    :cond_43
    if-nez p2, :cond_a3

    .line 167
    const v1, 0x7fffffff

    .line 170
    :goto_48
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_7f

    .line 173
    iget-object v0, p0, Lau;->Code:[C

    array-length v5, v0

    .line 174
    and-int/lit8 v0, p4, 0x6

    if-eqz v0, :cond_a0

    .line 176
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_7a

    move v0, v3

    .line 177
    :goto_58
    iget-object v3, p0, Lau;->Code:[C

    invoke-interface {p6, p5}, Lbp;->Code(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v0, v1, v4, p6}, Ldb;->Code([CZIILbp;)I

    move-result v4

    .line 180
    if-eqz v0, :cond_7c

    move v3, v2

    .line 189
    :goto_65
    if-lez v3, :cond_6a

    .line 191
    invoke-virtual {p0, v2}, Lau;->Code(I)V

    .line 193
    :cond_6a
    iget-object v1, p0, Lau;->Code:[C

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lau;->Code([CIIII)V

    .line 194
    iget-object v0, p0, Lau;->Code:[C

    array-length v0, v0

    if-ge v4, v0, :cond_79

    .line 196
    invoke-virtual {p0, v2}, Lau;->Code(I)V

    .line 207
    :cond_79
    :goto_79
    return-void

    :cond_7a
    move v0, v2

    .line 176
    goto :goto_58

    :cond_7c
    move v3, v4

    move v4, v5

    .line 186
    goto :goto_65

    .line 201
    :cond_7f
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_9a

    .line 202
    :goto_83
    iget-object v0, p0, Lau;->Code:[C

    if-eqz v3, :cond_9c

    invoke-interface {p6}, Lbp;->I()I

    move-result v4

    div-int v4, p3, v4

    :goto_8d
    if-eqz v3, :cond_9e

    invoke-interface {p6, p5}, Lbp;->Code(Ljava/lang/String;)I

    move-result v3

    :goto_93
    move v2, v4

    move-object v4, p6

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcb;->Code([CIIILbp;Lau;)V

    goto :goto_79

    :cond_9a
    move v3, v2

    .line 201
    goto :goto_83

    :cond_9c
    move v4, v2

    .line 202
    goto :goto_8d

    :cond_9e
    move v3, v2

    goto :goto_93

    :cond_a0
    move v4, v5

    move v3, v2

    goto :goto_65

    :cond_a3
    move v1, p2

    goto :goto_48
.end method

.method private static Code(B)B
    .registers 2

    .prologue
    .line 397
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public static Code([CI)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 701
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_27

    move v0, v1

    .line 703
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 705
    const-string v2, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    aget-char v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 706
    if-ltz v2, :cond_21

    .line 708
    const-string v3, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_24

    add-int/lit8 v2, v2, 0x1

    :goto_1b
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p0, v0

    .line 703
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 708
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 714
    :cond_27
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_44

    .line 722
    array-length v2, p0

    .line 723
    div-int/lit8 v3, v2, 0x2

    move v0, v1

    .line 725
    :goto_2f
    if-ge v0, v3, :cond_44

    .line 727
    aget-char v4, p0, v0

    .line 728
    sub-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-char v5, p0, v5

    aput-char v5, p0, v0

    .line 729
    sub-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput-char v4, p0, v5

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 734
    :cond_44
    array-length v0, p0

    .line 735
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_64

    move v0, v1

    .line 739
    :goto_4a
    array-length v2, p0

    if-ge v1, v2, :cond_64

    .line 741
    aget-char v2, p0, v0

    invoke-static {v2}, Lau;->Code(C)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 743
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    invoke-static {p0, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 747
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 753
    :cond_64
    return v0
.end method

.method private static Code([BBIIBB)V
    .registers 13

    .prologue
    const/16 v5, -0x80

    const/4 v2, 0x1

    .line 635
    move v1, p2

    :goto_4
    if-ge v1, p3, :cond_48

    .line 637
    aget-byte v0, p0, v1

    if-ne v0, v5, :cond_44

    move v0, v1

    .line 644
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 645
    if-ge v0, p3, :cond_13

    aget-byte v3, p0, v0

    if-eq v3, v5, :cond_b

    .line 648
    :cond_13
    if-le v1, p2, :cond_2b

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    move v4, v3

    .line 649
    :goto_1a
    if-ge v0, p3, :cond_2d

    aget-byte v3, p0, v0

    .line 651
    :goto_1e
    if-ne v4, v2, :cond_2f

    if-ne v3, v2, :cond_2f

    move v3, v1

    move v1, v2

    .line 664
    :goto_24
    if-ge v3, v0, :cond_45

    .line 666
    aput-byte v1, p0, v3

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_2b
    move v4, p4

    .line 648
    goto :goto_1a

    :cond_2d
    move v3, p5

    .line 649
    goto :goto_1e

    .line 655
    :cond_2f
    and-int/lit8 v4, v4, 0x1a

    if-eqz v4, :cond_3c

    and-int/lit8 v3, v3, 0x1a

    if-eqz v3, :cond_3c

    .line 657
    const/4 v3, 0x2

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_24

    .line 661
    :cond_3c
    invoke-static {p1}, Lau;->Code(B)B

    move-result v3

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_24

    :cond_44
    move v0, v1

    .line 635
    :cond_45
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    .line 671
    :cond_48
    return-void
.end method

.method private static Code([B[BII)V
    .registers 11

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 682
    move v2, p2

    :goto_3
    if-ge v2, p3, :cond_41

    .line 685
    aget-byte v0, p0, v2

    if-ne v0, v5, :cond_f

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_19

    :cond_f
    aget-byte v0, p0, v2

    if-ne v0, v4, :cond_28

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_28

    .line 688
    :cond_19
    aget-byte v0, p1, v2

    move v1, v2

    move-object v3, p1

    :goto_1d
    move-object v6, v3

    move v3, v1

    move v1, v0

    move v0, v5

    .line 692
    :goto_21
    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    .line 682
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 690
    :cond_28
    aget-byte v0, p0, v2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_34

    aget-byte v0, p0, v2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_25

    .line 692
    :cond_34
    aget-byte v0, p1, v2

    aget-byte v1, p1, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_42

    move v1, v0

    move v3, v2

    move-object v6, p1

    move v0, v4

    goto :goto_21

    .line 696
    :cond_41
    return-void

    :cond_42
    move v1, v2

    move-object v3, p1

    goto :goto_1d
.end method

.method private static Code(C)Z
    .registers 2

    .prologue
    .line 214
    invoke-static {p0}, Lcb;->Code(C)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x200e

    if-eq p0, v0, :cond_e

    const/16 v0, 0x200f

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static I(C)B
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 759
    const-string v1, " -=_/|\\:;.,\u060c!?&$#\'`\u00b4\"\t\n"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_11

    const-string v1, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_14

    .line 760
    :cond_11
    const/16 v0, -0x80

    .line 777
    :cond_13
    :goto_13
    return v0

    .line 761
    :cond_14
    const/16 v1, 0x202a

    if-gt v1, p0, :cond_1f

    const/16 v1, 0x202e

    if-gt p0, v1, :cond_1f

    .line 762
    const/16 v0, 0x40

    goto :goto_13

    .line 763
    :cond_1f
    const/16 v1, 0x200f

    if-eq p0, v1, :cond_13

    .line 768
    invoke-static {p0}, Ldb;->I(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 770
    const/16 v0, 0x660

    if-gt v0, p0, :cond_34

    const/16 v0, 0x669

    if-gt p0, v0, :cond_34

    .line 771
    const/16 v0, 0x10

    goto :goto_13

    .line 772
    :cond_34
    invoke-static {p0}, Ldb;->Z(C)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 773
    const/4 v0, 0x4

    goto :goto_13

    .line 774
    :cond_3c
    const/16 v0, 0x30

    if-gt v0, p0, :cond_47

    const/16 v0, 0x39

    if-gt p0, v0, :cond_47

    .line 775
    const/16 v0, 0x8

    goto :goto_13

    .line 777
    :cond_47
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private I(B)[B
    .registers 14

    .prologue
    const/16 v5, -0x80

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lau;->Code:[C

    array-length v0, v0

    new-array v10, v0, [B

    .line 420
    iget-object v0, p0, Lau;->Code:[C

    array-length v0, v0

    new-array v9, v0, [B

    move v0, v1

    .line 428
    :goto_10
    iget-object v2, p0, Lau;->Code:[C

    array-length v2, v2

    if-ge v0, v2, :cond_28

    .line 430
    iget-object v2, p0, Lau;->Code:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lau;->I(C)B

    move-result v2

    .line 432
    const/4 v4, 0x4

    if-ne v2, v4, :cond_21

    move v2, v3

    :cond_21
    aput-byte v2, v9, v0

    .line 433
    aput-byte p1, v10, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 445
    :cond_28
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    move v2, v1

    move v4, v1

    move v0, v5

    move v6, p1

    .line 447
    :goto_31
    iget-object v7, p0, Lau;->Code:[C

    array-length v7, v7

    if-ge v2, v7, :cond_b4

    .line 451
    iget-object v7, p0, Lau;->Code:[C

    aget-char v7, v7, v2

    packed-switch v7, :pswitch_data_12a

    .line 489
    aput-byte v6, v10, v2

    .line 490
    if-eq v0, v5, :cond_43

    .line 491
    aput-byte v0, v9, v2

    .line 492
    :cond_43
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    move v6, v0

    .line 447
    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v6

    move v6, v7

    goto :goto_31

    .line 454
    :pswitch_4d
    new-array v7, v3, [B

    aput-byte v6, v7, v1

    aput-byte v0, v7, v8

    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_60

    move v0, v8

    :goto_5b
    add-int/2addr v0, v6

    int-to-byte v6, v0

    move v7, v6

    move v6, v5

    .line 457
    goto :goto_47

    :cond_60
    move v0, v3

    .line 455
    goto :goto_5b

    .line 459
    :pswitch_62
    new-array v7, v3, [B

    aput-byte v6, v7, v1

    aput-byte v0, v7, v8

    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_75

    move v0, v3

    :goto_70
    add-int/2addr v0, v6

    int-to-byte v6, v0

    move v7, v6

    move v6, v5

    .line 462
    goto :goto_47

    :cond_75
    move v0, v8

    .line 460
    goto :goto_70

    .line 470
    :pswitch_77
    new-array v7, v3, [B

    aput-byte v6, v7, v1

    aput-byte v0, v7, v8

    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_8a

    move v0, v8

    :goto_85
    add-int/2addr v0, v6

    int-to-byte v6, v0

    move v7, v6

    move v6, v3

    .line 473
    goto :goto_47

    :cond_8a
    move v0, v3

    .line 471
    goto :goto_85

    .line 475
    :pswitch_8c
    new-array v7, v3, [B

    aput-byte v6, v7, v1

    aput-byte v0, v7, v8

    invoke-virtual {v11, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_9f

    move v0, v3

    :goto_9a
    add-int/2addr v0, v6

    int-to-byte v6, v0

    move v7, v6

    move v6, v8

    .line 478
    goto :goto_47

    :cond_9f
    move v0, v8

    .line 476
    goto :goto_9a

    .line 480
    :pswitch_a1
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_126

    .line 482
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 483
    aget-byte v6, v0, v1

    .line 484
    aget-byte v0, v0, v8

    move v7, v6

    move v6, v0

    .line 485
    goto :goto_47

    .line 505
    :cond_b4
    iget-object v0, p0, Lau;->Code:[C

    array-length v0, v0

    if-ge v4, v0, :cond_123

    .line 507
    new-array v6, v4, [C

    .line 508
    new-array v5, v4, [B

    .line 509
    new-array v3, v4, [B

    move v0, v1

    move v2, v1

    .line 510
    :goto_c1
    iget-object v4, p0, Lau;->Code:[C

    array-length v4, v4

    if-ge v2, v4, :cond_e9

    .line 514
    iget-object v4, p0, Lau;->Code:[C

    aget-char v4, v4, v2

    const/16 v7, 0x202a

    if-lt v4, v7, :cond_d6

    iget-object v4, p0, Lau;->Code:[C

    aget-char v4, v4, v2

    const/16 v7, 0x202e

    if-le v4, v7, :cond_e6

    .line 516
    :cond_d6
    iget-object v4, p0, Lau;->Code:[C

    aget-char v4, v4, v2

    aput-char v4, v6, v0

    .line 517
    aget-byte v4, v10, v2

    aput-byte v4, v5, v0

    .line 518
    aget-byte v4, v9, v2

    aput-byte v4, v3, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    .line 510
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 522
    :cond_e9
    iput-object v6, p0, Lau;->Code:[C

    move-object v0, v3

    move-object v6, v5

    :goto_ed
    move v4, p1

    move v2, v1

    .line 536
    :goto_ef
    array-length v1, v6

    if-ge v2, v1, :cond_122

    .line 539
    aget-byte v1, v6, v2

    move v3, v8

    .line 542
    :goto_f5
    array-length v5, v6

    if-ge v3, v5, :cond_ff

    aget-byte v5, v6, v3

    if-ne v5, v1, :cond_ff

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    .line 546
    :cond_ff
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lau;->Code(B)B

    move-result v4

    .line 547
    array-length v5, v6

    if-ge v3, v5, :cond_120

    aget-byte v5, v6, v3

    :goto_10d
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Lau;->Code(B)B

    move-result v5

    .line 556
    invoke-static/range {v0 .. v5}, Lau;->Code([BBIIBB)V

    .line 557
    invoke-static {v0, v6, v2, v3}, Lau;->Code([B[BII)V

    move v4, v1

    move v8, v3

    move v2, v3

    .line 537
    goto :goto_ef

    :cond_120
    move v5, p1

    .line 547
    goto :goto_10d

    .line 561
    :cond_122
    return-object v6

    :cond_123
    move-object v0, v9

    move-object v6, v10

    goto :goto_ed

    :cond_126
    move v7, v6

    move v6, v0

    goto/16 :goto_47

    .line 451
    :pswitch_data_12a
    .packed-switch 0x202a
        :pswitch_62
        :pswitch_4d
        :pswitch_a1
        :pswitch_8c
        :pswitch_77
    .end packed-switch
.end method

.method private d(I)I
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->Z:I

    return v0
.end method


# virtual methods
.method public final B(I)I
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->J:I

    return v0
.end method

.method public final C(I)I
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->B:I

    return v0
.end method

.method public final Code()I
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final Code(I)V
    .registers 4

    .prologue
    .line 310
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    new-instance v1, Lav;

    invoke-direct {v1, p1}, Lav;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public final Code([CIIII)V
    .registers 14

    .prologue
    .line 226
    if-ne p3, p4, :cond_13

    .line 232
    iget-object v7, p0, Lau;->B:Ljava/util/Vector;

    new-instance v0, Law;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, p3

    move v3, p4

    move v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Law;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 299
    :cond_12
    :goto_12
    return-void

    .line 236
    :cond_13
    iget-object v0, p0, Lau;->J:[B

    if-nez v0, :cond_39

    .line 239
    if-ge p3, p4, :cond_12

    .line 243
    const/4 v5, 0x0

    move v0, p3

    .line 244
    :goto_1b
    if-ge v0, p4, :cond_26

    .line 246
    aget-char v1, p1, v0

    invoke-static {v1}, Lau;->Code(C)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 248
    const/4 v5, 0x2

    .line 252
    :cond_26
    iget-object v7, p0, Lau;->B:Ljava/util/Vector;

    new-instance v0, Law;

    const/4 v1, 0x0

    move v2, p3

    move v3, p4

    move v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Law;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_12

    .line 244
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_39
    move v2, p3

    .line 258
    :goto_3a
    if-ge v2, p4, :cond_12

    .line 261
    iget-object v0, p0, Lau;->J:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_85

    const/4 v0, 0x1

    move v1, v0

    .line 264
    :goto_47
    const/4 v0, 0x0

    .line 265
    const/4 v4, 0x1

    .line 266
    const/4 v5, 0x0

    move v3, v2

    .line 267
    :goto_4b
    if-ge v3, p4, :cond_88

    iget-object v6, p0, Lau;->J:[B

    aget-byte v6, v6, v3

    iget-object v7, p0, Lau;->J:[B

    aget-byte v7, v7, v2

    if-ne v6, v7, :cond_88

    .line 272
    if-nez v5, :cond_68

    if-eqz v1, :cond_68

    const-string v6, "()<>[]{}\u00ab\u00bb\u2018\u2019\u201c\u201d\u2039\u203a"

    iget-object v7, p0, Lau;->Code:[C

    aget-char v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_68

    .line 275
    const/4 v5, 0x1

    .line 281
    :cond_68
    if-eqz v4, :cond_75

    iget-object v6, p0, Lau;->Code:[C

    aget-char v6, v6, v3

    invoke-static {v6}, Ldb;->J(C)Z

    move-result v6

    if-ne v1, v6, :cond_75

    .line 283
    const/4 v4, 0x0

    .line 286
    :cond_75
    if-nez v0, :cond_82

    iget-object v6, p0, Lau;->Code:[C

    aget-char v6, v6, v3

    invoke-static {v6}, Lau;->Code(C)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 288
    const/4 v0, 0x1

    .line 267
    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 261
    :cond_85
    const/4 v0, 0x0

    move v1, v0

    goto :goto_47

    .line 293
    :cond_88
    if-eqz v0, :cond_a8

    const/4 v0, 0x2

    move v1, v0

    :goto_8c
    if-eqz v4, :cond_ab

    const/4 v0, 0x4

    :goto_8f
    or-int/2addr v1, v0

    if-eqz v5, :cond_ad

    const/16 v0, 0x8

    :goto_94
    or-int v5, v1, v0

    .line 297
    iget-object v7, p0, Lau;->B:Ljava/util/Vector;

    new-instance v0, Law;

    iget-object v1, p0, Lau;->J:[B

    aget-byte v1, v1, v2

    move v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Law;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    .line 298
    goto :goto_3a

    .line 293
    :cond_a8
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8c

    :cond_ab
    const/4 v0, 0x0

    goto :goto_8f

    :cond_ad
    const/4 v0, 0x0

    goto :goto_94
.end method

.method public final I(I)I
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->Code:I

    return v0
.end method

.method public final I()[C
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lau;->Code:[C

    return-object v0
.end method

.method public final J(I)I
    .registers 4

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lau;->d(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lau;->Z(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final Z(I)I
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->I:I

    return v0
.end method

.method public final Z()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 387
    iget-byte v1, p0, Lau;->I:B

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(I)I
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law;

    iget v0, v0, Law;->C:I

    return v0
.end method

.method public final b(I)I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lau;->C(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 363
    iget-object v0, p0, Lau;->Code:[C

    array-length v0, v0

    new-array v4, v0, [C

    .line 365
    invoke-virtual {p0, p1}, Lau;->Z(I)I

    move-result v0

    move v1, v2

    :goto_13
    invoke-direct {p0, p1}, Lau;->d(I)I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 366
    iget-object v3, p0, Lau;->Code:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Lau;->Code(C)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 367
    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lau;->Code:[C

    aget-char v5, v5, v0

    aput-char v5, v4, v1

    move v1, v3

    .line 365
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 368
    :cond_2f
    iget-object v0, p0, Lau;->Z:Lbp;

    invoke-interface {v0, v4, v2, v1}, Lbp;->Code([CII)I

    move-result v0

    .line 371
    :goto_35
    return v0

    :cond_36
    iget-object v0, p0, Lau;->Z:Lbp;

    iget-object v1, p0, Lau;->Code:[C

    invoke-virtual {p0, p1}, Lau;->Z(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lau;->J(I)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lbp;->Code([CII)I

    move-result v0

    goto :goto_35
.end method

.method public final c(I)Z
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lau;->B:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lav;

    return v0
.end method
