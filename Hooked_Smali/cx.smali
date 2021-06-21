.class Lcx;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Lbg;

.field private I:Lcw;

.field private J:I

.field private Z:I


# direct methods
.method constructor <init>(Lbg;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcx;->I:Lcw;

    .line 39
    iput-object p1, p0, Lcx;->Code:Lbg;

    .line 40
    const/high16 v0, -0x80000000

    iput v0, p0, Lcx;->J:I

    .line 41
    return-void
.end method

.method private constructor <init>(Lbg;Lcw;I)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcx;->I:Lcw;

    .line 45
    iput-object p1, p0, Lcx;->Code:Lbg;

    .line 46
    iput-object p2, p0, Lcx;->I:Lcw;

    .line 47
    iput p3, p0, Lcx;->Z:I

    .line 48
    return-void
.end method

.method constructor <init>(Lcx;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcx;->I:Lcw;

    .line 53
    invoke-virtual {p0, p1}, Lcx;->Code(Lcx;)V

    .line 54
    return-void
.end method

.method static Code(Lcx;Lcx;II)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 722
    invoke-static {p0, p1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v1

    .line 723
    iget-object v2, v1, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->Code()I

    move-result v2

    if-eq v2, p2, :cond_e

    .line 729
    :goto_d
    return v0

    :cond_e
    iget v1, v1, Lcx;->Z:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_d
.end method

.method static Code(Lcx;Lcx;)Lcx;
    .registers 4

    .prologue
    .line 635
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 656
    :cond_6
    :goto_6
    return-object p0

    .line 639
    :cond_7
    invoke-virtual {p1}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p0, p1

    .line 641
    goto :goto_6

    .line 643
    :cond_f
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->Code()I

    move-result v0

    iget-object v1, p1, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 647
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->Code()I

    move-result v0

    iget-object v1, p1, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-le v0, v1, :cond_2d

    move-object p0, p1

    .line 649
    goto :goto_6

    .line 652
    :cond_2d
    iget v0, p0, Lcx;->Z:I

    iget v1, p1, Lcx;->Z:I

    if-le v0, v1, :cond_6

    move-object p0, p1

    .line 656
    goto :goto_6
.end method

.method static Code(Lcx;Lcx;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcx;->Code()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 676
    :cond_d
    :goto_d
    return v0

    .line 673
    :cond_e
    invoke-static {p0, p1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v1

    .line 674
    if-eq v1, p0, :cond_26

    .line 676
    :goto_14
    iget-object v1, v1, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-gt v1, p2, :cond_d

    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-lt v1, p2, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_26
    move-object p0, p1

    .line 674
    goto :goto_14
.end method

.method static Code(Lcx;Lcx;III)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-static {p0, p1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v0

    .line 704
    if-eq v0, p0, :cond_23

    .line 705
    :goto_7
    add-int v3, p3, p4

    .line 706
    iget-object v2, v0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->Code()I

    move-result v2

    if-ne v2, p2, :cond_25

    iget v0, v0, Lcx;->Z:I

    .line 707
    :goto_13
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->Code()I

    move-result v2

    if-ne v2, p2, :cond_27

    iget v2, p0, Lcx;->Z:I

    .line 709
    :goto_1d
    if-gt v0, v3, :cond_22

    if-lt v2, p3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    :cond_23
    move-object p0, p1

    .line 704
    goto :goto_7

    :cond_25
    move v0, v1

    .line 706
    goto :goto_13

    :cond_27
    move v2, v3

    .line 707
    goto :goto_1d
.end method

.method static I(Lcx;Lcx;III)I
    .registers 6

    .prologue
    .line 742
    invoke-static {p0, p1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v0

    .line 743
    if-ne v0, p0, :cond_f

    .line 745
    :goto_6
    iget-object v0, p1, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->Code()I

    move-result v0

    if-eq v0, p2, :cond_11

    .line 749
    :goto_e
    return p4

    :cond_f
    move-object p1, p0

    .line 743
    goto :goto_6

    .line 749
    :cond_11
    iget v0, p1, Lcx;->Z:I

    sub-int/2addr v0, p3

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_e
.end method

.method static I(Lcx;Lcx;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Lcx;->Code()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 687
    :cond_d
    :goto_d
    return v0

    .line 686
    :cond_e
    invoke-static {p0, p1}, Lcx;->Code(Lcx;Lcx;)Lcx;

    move-result-object v1

    if-eq v1, p0, :cond_1e

    .line 687
    :goto_14
    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-ge p2, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_1e
    move-object p0, p1

    .line 686
    goto :goto_14
.end method

.method private Z(I)V
    .registers 9

    .prologue
    .line 343
    invoke-virtual {p0}, Lcx;->C()I

    move-result v2

    .line 344
    invoke-virtual {p0}, Lcx;->b()I

    move-result v3

    .line 345
    const v1, 0x7fffffff

    .line 346
    const/4 v0, 0x0

    .line 348
    new-instance v4, Lcx;

    invoke-direct {v4, p0}, Lcx;-><init>(Lcx;)V

    .line 350
    :goto_11
    invoke-virtual {v4}, Lcx;->C()I

    move-result v5

    invoke-virtual {v4}, Lcx;->b()I

    move-result v6

    invoke-static {v5, v6, v2, v3}, Lcw;->Code(IIII)Z

    move-result v5

    if-eqz v5, :cond_35

    if-nez v0, :cond_35

    .line 353
    invoke-virtual {v4}, Lcx;->B()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 354
    if-ge v0, v1, :cond_30

    .line 356
    invoke-virtual {p0, v4}, Lcx;->Code(Lcx;)V

    move v1, v0

    .line 351
    :cond_30
    invoke-virtual {v4}, Lcx;->J()Z

    move-result v0

    goto :goto_11

    .line 362
    :cond_35
    return-void
.end method

.method private e()I
    .registers 3

    .prologue
    .line 514
    iget v0, p0, Lcx;->J:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    .line 516
    invoke-virtual {p0}, Lcx;->B()I

    move-result v0

    iput v0, p0, Lcx;->J:I

    .line 518
    :cond_c
    iget v0, p0, Lcx;->J:I

    return v0
.end method


# virtual methods
.method final B()I
    .registers 7

    .prologue
    const/16 v4, 0xa

    .line 524
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 526
    const/4 v0, 0x0

    .line 550
    :goto_9
    return v0

    .line 528
    :cond_a
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->C()I

    move-result v1

    .line 529
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->b()[C

    move-result-object v2

    .line 530
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->c()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 533
    iget v0, p0, Lcx;->Z:I

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_2b

    .line 535
    aget-char v3, v2, v0

    if-eq v3, v4, :cond_2b

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 540
    :cond_2b
    iget-object v3, p0, Lcx;->I:Lcw;

    invoke-virtual {v3}, Lcw;->I()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcx;->Z:I

    add-int/lit8 v5, v5, -0x1

    sub-int v0, v5, v0

    invoke-static {v1, v2, v4, v0}, Ldb;->Code(I[CII)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_9

    .line 544
    :cond_3f
    iget v0, p0, Lcx;->Z:I

    .line 545
    :goto_41
    array-length v3, v2

    if-ge v0, v3, :cond_4b

    aget-char v3, v2, v0

    if-eq v3, v4, :cond_4b

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 550
    :cond_4b
    iget-object v3, p0, Lcx;->I:Lcw;

    invoke-virtual {v3}, Lcw;->I()I

    move-result v3

    iget v4, p0, Lcx;->Z:I

    iget v5, p0, Lcx;->Z:I

    sub-int/2addr v0, v5

    invoke-static {v1, v2, v4, v0}, Ldb;->Code(I[CII)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_9
.end method

.method final C()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 559
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 575
    :goto_7
    return v0

    .line 563
    :cond_8
    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Z()I

    move-result v1

    .line 564
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->C()I

    move-result v2

    .line 565
    iget-object v3, p0, Lcx;->I:Lcw;

    invoke-virtual {v3}, Lcw;->a()Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-static {v2}, Ldb;->C(I)I

    move-result v2

    .line 567
    :goto_1e
    iget v4, p0, Lcx;->Z:I

    if-ge v0, v4, :cond_2e

    .line 569
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 570
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2b

    .line 572
    add-int/2addr v1, v2

    .line 567
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    move v0, v1

    .line 575
    goto :goto_7
.end method

.method final Code(I)V
    .registers 11

    .prologue
    const/4 v2, -0x1

    const/high16 v4, -0x80000000

    const/16 v7, 0xa

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 500
    :cond_d
    :goto_d
    return-void

    .line 484
    :cond_e
    packed-switch p1, :pswitch_data_212

    goto :goto_d

    .line 488
    :pswitch_12
    iput v4, p0, Lcx;->J:I

    .line 489
    invoke-virtual {p0}, Lcx;->B()I

    move-result v5

    move v0, v1

    :cond_19
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->c()Z

    move-result v2

    if-eqz v2, :cond_63

    iget v2, p0, Lcx;->Z:I

    if-lez v2, :cond_34

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcx;->Z:I

    :goto_2b
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcx;->B()I

    move-result v2

    if-eq v2, v5, :cond_19

    goto :goto_d

    :cond_34
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->d()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->k()Lcw;

    move-result-object v2

    move-object v4, v2

    :goto_43
    if-eqz v4, :cond_61

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v4, v2}, Lcw;->Z(Lcw;)Z

    move-result v2

    if-nez v2, :cond_5f

    move v2, v1

    :goto_4e
    invoke-virtual {v4, v2}, Lcw;->Code(Z)I

    move-result v2

    iput v2, p0, Lcx;->Z:I

    iput-object v4, p0, Lcx;->I:Lcw;

    goto :goto_2b

    :cond_57
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->j()Lcw;

    move-result-object v2

    move-object v4, v2

    goto :goto_43

    :cond_5f
    move v2, v3

    goto :goto_4e

    :cond_61
    move v0, v3

    goto :goto_2b

    :cond_63
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_7a

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcx;->Z:I

    goto :goto_2b

    :cond_7a
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->d()Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->k()Lcw;

    move-result-object v2

    :goto_88
    iget v6, p0, Lcx;->Z:I

    add-int/lit8 v7, v4, -0x1

    if-ne v6, v7, :cond_a2

    if-eqz v2, :cond_98

    iget-object v6, p0, Lcx;->I:Lcw;

    invoke-virtual {v6, v2}, Lcw;->Z(Lcw;)Z

    move-result v6

    if-eqz v6, :cond_a2

    :cond_98
    iput v4, p0, Lcx;->Z:I

    goto :goto_2b

    :cond_9b
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->j()Lcw;

    move-result-object v2

    goto :goto_88

    :cond_a2
    if-eqz v2, :cond_bd

    iget v6, p0, Lcx;->Z:I

    if-ne v6, v4, :cond_bb

    iget-object v4, p0, Lcx;->I:Lcw;

    invoke-virtual {v4, v2}, Lcw;->Z(Lcw;)Z

    move-result v4

    if-nez v4, :cond_bb

    move v4, v1

    :goto_b1
    invoke-virtual {v2, v4}, Lcw;->Code(Z)I

    move-result v4

    iput v4, p0, Lcx;->Z:I

    iput-object v2, p0, Lcx;->I:Lcw;

    goto/16 :goto_2b

    :cond_bb
    move v4, v3

    goto :goto_b1

    :cond_bd
    move v0, v3

    goto/16 :goto_2b

    .line 492
    :pswitch_c0
    iput v4, p0, Lcx;->J:I

    .line 493
    invoke-virtual {p0}, Lcx;->B()I

    move-result v5

    move v0, v1

    :cond_c7
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->c()Z

    move-result v2

    if-eqz v2, :cond_133

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v6, v4, -0x1

    if-ge v2, v6, :cond_ef

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcx;->Z:I

    :goto_e5
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcx;->B()I

    move-result v2

    if-eq v2, v5, :cond_c7

    goto/16 :goto_d

    :cond_ef
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->d()Z

    move-result v2

    if-eqz v2, :cond_110

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->i()Lcw;

    move-result-object v2

    :goto_fd
    iget v6, p0, Lcx;->Z:I

    add-int/lit8 v7, v4, -0x1

    if-ne v6, v7, :cond_117

    if-eqz v2, :cond_10d

    iget-object v6, p0, Lcx;->I:Lcw;

    invoke-virtual {v6, v2}, Lcw;->Z(Lcw;)Z

    move-result v6

    if-eqz v6, :cond_117

    :cond_10d
    iput v4, p0, Lcx;->Z:I

    goto :goto_e5

    :cond_110
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->l()Lcw;

    move-result-object v2

    goto :goto_fd

    :cond_117
    if-eqz v2, :cond_131

    iget v6, p0, Lcx;->Z:I

    if-ne v6, v4, :cond_12f

    iget-object v4, p0, Lcx;->I:Lcw;

    invoke-virtual {v2, v4}, Lcw;->Z(Lcw;)Z

    move-result v4

    if-nez v4, :cond_12f

    move v4, v1

    :goto_126
    invoke-virtual {v2, v4}, Lcw;->I(Z)I

    move-result v4

    iput v4, p0, Lcx;->Z:I

    iput-object v2, p0, Lcx;->I:Lcw;

    goto :goto_e5

    :cond_12f
    move v4, v3

    goto :goto_126

    :cond_131
    move v0, v3

    goto :goto_e5

    :cond_133
    iget v2, p0, Lcx;->Z:I

    if-lez v2, :cond_13e

    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcx;->Z:I

    goto :goto_e5

    :cond_13e
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->d()Z

    move-result v2

    if-eqz v2, :cond_163

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->i()Lcw;

    move-result-object v2

    move-object v4, v2

    :goto_14d
    if-eqz v4, :cond_16d

    iget-object v2, p0, Lcx;->I:Lcw;

    iget-object v6, p0, Lcx;->I:Lcw;

    invoke-virtual {v2, v6}, Lcw;->Z(Lcw;)Z

    move-result v2

    if-nez v2, :cond_16b

    move v2, v1

    :goto_15a
    invoke-virtual {v4, v2}, Lcw;->I(Z)I

    move-result v2

    iput v2, p0, Lcx;->Z:I

    iput-object v4, p0, Lcx;->I:Lcw;

    goto :goto_e5

    :cond_163
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->l()Lcw;

    move-result-object v2

    move-object v4, v2

    goto :goto_14d

    :cond_16b
    move v2, v3

    goto :goto_15a

    :cond_16d
    move v0, v3

    goto/16 :goto_e5

    .line 496
    :pswitch_170
    invoke-direct {p0}, Lcx;->e()I

    move-result v4

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcx;->Z:I

    add-int/lit8 v0, v0, -0x1

    :goto_17e
    if-ltz v0, :cond_20e

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_19c

    :goto_186
    if-ne v0, v2, :cond_19f

    move v1, v3

    :cond_189
    if-nez v1, :cond_1d5

    const/4 v1, 0x0

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->g()Lcw;

    move-result-object v0

    :goto_192
    if-eqz v0, :cond_1b6

    invoke-virtual {v0}, Lcw;->h()Lcw;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_192

    :cond_19c
    add-int/lit8 v0, v0, -0x1

    goto :goto_17e

    :cond_19f
    iput v0, p0, Lcx;->Z:I

    :goto_1a1
    iget v0, p0, Lcx;->Z:I

    if-lez v0, :cond_189

    iget v0, p0, Lcx;->Z:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_189

    iget v0, p0, Lcx;->Z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcx;->Z:I

    goto :goto_1a1

    :cond_1b6
    if-eqz v1, :cond_d

    iput-object v1, p0, Lcx;->I:Lcw;

    iput v3, p0, Lcx;->Z:I

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1c2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_1d5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_1d2

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcx;->Z:I

    :cond_1d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c2

    :cond_1d5
    invoke-direct {p0, v4}, Lcx;->Z(I)V

    goto/16 :goto_d

    .line 499
    :pswitch_1da
    invoke-direct {p0}, Lcx;->e()I

    move-result v2

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcx;->Z:I

    :goto_1e6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_20c

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_209

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcx;->Z:I

    :goto_1f6
    if-nez v1, :cond_204

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->f()Lcw;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcx;->I:Lcw;

    iput v3, p0, Lcx;->Z:I

    :cond_204
    invoke-direct {p0, v2}, Lcx;->Z(I)V

    goto/16 :goto_d

    :cond_209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e6

    :cond_20c
    move v1, v3

    goto :goto_1f6

    :cond_20e
    move v0, v2

    goto/16 :goto_186

    .line 484
    nop

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_12
        :pswitch_c0
        :pswitch_170
        :pswitch_1da
    .end packed-switch
.end method

.method final Code(III)V
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lcx;->I:Lcw;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0, p2, p3}, Lcw;->Code(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 83
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {p0, v0, p2, p3}, Lcx;->Code(Lcw;II)V

    .line 89
    :goto_11
    return-void

    .line 87
    :cond_12
    iget-object v0, p0, Lcx;->Code:Lbg;

    invoke-virtual {v0, p1, p2, p3}, Lbg;->I(III)Lcw;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcx;->Code(Lcw;II)V

    goto :goto_11
.end method

.method final Code(Lcw;II)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 93
    if-nez p1, :cond_4

    .line 128
    :cond_3
    :goto_3
    return-void

    .line 97
    :cond_4
    const/high16 v0, -0x80000000

    iput v0, p0, Lcx;->J:I

    .line 98
    iput-object p1, p0, Lcx;->I:Lcw;

    .line 99
    iput v3, p0, Lcx;->Z:I

    .line 100
    const v0, 0x7fffffff

    .line 101
    new-instance v4, Lcx;

    invoke-direct {v4, p0}, Lcx;-><init>(Lcx;)V

    .line 104
    :cond_14
    iget-object v1, v4, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->C()I

    move-result v1

    invoke-static {v1}, Ldb;->C(I)I

    move-result v5

    .line 106
    iget-object v1, v4, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->e()Lcw;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_53

    new-instance v1, Lcx;

    iget-object v2, p0, Lcx;->Code:Lbg;

    invoke-direct {v1, v2, v6, v3}, Lcx;-><init>(Lbg;Lcw;I)V

    :goto_2d
    move v2, v3

    .line 112
    :goto_2e
    invoke-virtual {v4, v1}, Lcx;->Z(Lcx;)I

    move-result v7

    if-gtz v7, :cond_67

    if-nez v2, :cond_67

    .line 115
    invoke-virtual {v4}, Lcx;->B()I

    move-result v2

    sub-int/2addr v2, p2

    .line 116
    invoke-virtual {v4}, Lcx;->C()I

    move-result v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, p3

    .line 117
    mul-int/2addr v2, v2

    mul-int/2addr v7, v7

    add-int/2addr v2, v7

    .line 118
    if-ge v2, v0, :cond_7a

    .line 120
    invoke-virtual {p0, v4}, Lcx;->Code(Lcx;)V

    .line 113
    :goto_4b
    invoke-virtual {v4}, Lcx;->J()Z

    move-result v0

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_2e

    .line 107
    :cond_53
    new-instance v1, Lcx;

    iget-object v2, p0, Lcx;->Code:Lbg;

    iget-object v7, v4, Lcx;->I:Lcw;

    iget-object v8, v4, Lcx;->I:Lcw;

    invoke-virtual {v8}, Lcw;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v1, v2, v7, v8}, Lcx;-><init>(Lbg;Lcw;I)V

    goto :goto_2d

    .line 124
    :cond_67
    iput-object v6, v4, Lcx;->I:Lcw;

    .line 125
    iput v3, v4, Lcx;->Z:I

    .line 127
    iget-object v1, v4, Lcx;->I:Lcw;

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcx;->I:Lcw;

    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v1, v2}, Lcw;->J(Lcw;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_3

    :cond_7a
    move v2, v0

    goto :goto_4b
.end method

.method final Code(Lcx;)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p1, Lcx;->Code:Lbg;

    iput-object v0, p0, Lcx;->Code:Lbg;

    .line 70
    iget-object v0, p1, Lcx;->I:Lcw;

    iput-object v0, p0, Lcx;->I:Lcw;

    .line 71
    iget v0, p1, Lcx;->Z:I

    iput v0, p0, Lcx;->Z:I

    .line 72
    iget v0, p1, Lcx;->J:I

    iput v0, p0, Lcx;->J:I

    .line 73
    return-void
.end method

.method final Code()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcx;->I:Lcw;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final I()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcx;->I:Lcw;

    .line 65
    return-void
.end method

.method final I(III)V
    .registers 7

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2, p3}, Lcx;->Code(III)V

    .line 133
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_17

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcx;->Z:I

    .line 138
    :cond_17
    :goto_17
    iget v1, p0, Lcx;->Z:I

    if-lez v1, :cond_32

    .line 140
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    const/16 v2, 0x20

    if-eq v1, v2, :cond_32

    const/16 v2, 0xa

    if-eq v1, v2, :cond_32

    .line 143
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcx;->Z:I

    goto :goto_17

    .line 147
    :cond_32
    return-void
.end method

.method final I(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 610
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->Code()I

    move-result v1

    if-ne v1, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final I(Lcx;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Lcx;->Code()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 617
    :cond_e
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v2

    invoke-virtual {p1}, Lcx;->Code()Z

    move-result v3

    if-ne v2, v3, :cond_19

    .line 619
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 617
    goto :goto_18

    .line 619
    :cond_1b
    invoke-virtual {p0, p1}, Lcx;->Z(Lcx;)I

    move-result v2

    if-eqz v2, :cond_18

    move v0, v1

    goto :goto_18
.end method

.method final J()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1}, Lcw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 308
    iget v2, p0, Lcx;->Z:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_18

    .line 310
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcx;->Z:I

    .line 336
    :goto_17
    return v0

    .line 314
    :cond_18
    iget-object v2, p0, Lcx;->I:Lcw;

    invoke-virtual {v2}, Lcw;->e()Lcw;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_3a

    .line 317
    iget v3, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_35

    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1, v2}, Lcw;->Z(Lcw;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 319
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcx;->Z:I

    goto :goto_17

    .line 323
    :cond_35
    iput-object v2, p0, Lcx;->I:Lcw;

    .line 324
    iput v0, p0, Lcx;->Z:I

    goto :goto_17

    .line 327
    :cond_3a
    iget v2, p0, Lcx;->Z:I

    if-ge v2, v1, :cond_45

    .line 329
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcx;->Z:I

    goto :goto_17

    .line 333
    :cond_45
    const/4 v0, 0x1

    goto :goto_17
.end method

.method final Z()C
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 173
    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    :goto_14
    return v0

    .line 177
    :cond_15
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->e()Lcw;

    move-result-object v0

    .line 178
    if-nez v0, :cond_1f

    .line 180
    const/4 v0, 0x0

    goto :goto_14

    .line 182
    :cond_1f
    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v1, v0}, Lcw;->I(Lcw;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 184
    const/16 v0, 0x20

    goto :goto_14

    .line 188
    :cond_2a
    const/16 v0, 0xa

    goto :goto_14
.end method

.method final Z(Lcx;)I
    .registers 4

    .prologue
    .line 627
    iget-object v0, p0, Lcx;->I:Lcw;

    iget-object v1, p1, Lcx;->I:Lcw;

    invoke-virtual {v0, v1}, Lcw;->Code(Lcw;)I

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcx;->Z:I

    iget v1, p1, Lcx;->Z:I

    sub-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcx;->I:Lcw;

    iget-object v1, p1, Lcx;->I:Lcw;

    invoke-virtual {v0, v1}, Lcw;->Code(Lcw;)I

    move-result v0

    goto :goto_f
.end method

.method final Z(III)V
    .registers 7

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcx;->Code(III)V

    .line 152
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_9
    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 155
    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 156
    const/16 v2, 0x20

    if-eq v1, v2, :cond_26

    const/16 v2, 0xa

    if-eq v1, v2, :cond_26

    .line 158
    iget v1, p0, Lcx;->Z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcx;->Z:I

    goto :goto_9

    .line 162
    :cond_26
    return-void
.end method

.method final a()I
    .registers 2

    .prologue
    .line 580
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method final b()I
    .registers 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcx;->Code()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 587
    const/4 v0, 0x0

    .line 590
    :goto_7
    return v0

    .line 589
    :cond_8
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->C()I

    move-result v0

    .line 590
    invoke-static {v0}, Ldb;->C(I)I

    move-result v0

    goto :goto_7
.end method

.method c()I
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->Code()I

    move-result v0

    return v0
.end method

.method final d()I
    .registers 3

    .prologue
    .line 600
    iget-object v0, p0, Lcx;->I:Lcw;

    invoke-virtual {v0}, Lcw;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcx;->Z:I

    invoke-static {v0, v1}, Ldb;->Code(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "node="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcx;->I:Lcw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcx;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcx;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcx;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
