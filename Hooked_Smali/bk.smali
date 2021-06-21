.class public final Lbk;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:I

.field private C:I

.field private Code:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:[Ljava/lang/Object;

.field private Z:Lbn;

.field private a:[Lbo;


# direct methods
.method public constructor <init>(Lbn;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lbk;->J:[Ljava/lang/Object;

    .line 194
    iput v1, p0, Lbk;->B:I

    .line 420
    iput v1, p0, Lbk;->C:I

    .line 421
    const/16 v0, 0xa

    new-array v0, v0, [Lbo;

    iput-object v0, p0, Lbk;->a:[Lbo;

    .line 397
    iput-object p1, p0, Lbk;->Z:Lbn;

    .line 398
    return-void
.end method

.method private C(II)[Ljava/lang/Object;
    .registers 13

    .prologue
    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 599
    iget v2, p0, Lbk;->B:I

    if-ne p1, v2, :cond_a

    .line 601
    iget-object v1, p0, Lbk;->J:[Ljava/lang/Object;

    .line 670
    :cond_9
    :goto_9
    return-object v1

    .line 603
    :cond_a
    invoke-static {p2}, Lbk;->Code(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 607
    iput p1, p0, Lbk;->B:I

    .line 608
    iput-object v1, p0, Lbk;->J:[Ljava/lang/Object;

    .line 609
    invoke-virtual {p0, p1, p2}, Lbk;->Code(II)Ljava/lang/String;

    move-result-object v2

    .line 616
    :try_start_18
    iget-object v3, p0, Lbk;->Z:Lbn;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v2, v4, v5}, Lbn;->Code(Ljava/lang/String;ZI)Lbm;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_c5
    .catchall {:try_start_18 .. :try_end_1f} :catchall_d4

    move-result-object v4

    .line 617
    :try_start_20
    invoke-interface {v4}, Lbm;->Code()Ljava/io/InputStream;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_eb
    .catchall {:try_start_20 .. :try_end_23} :catchall_e2

    move-result-object v3

    .line 618
    :try_start_24
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_f0
    .catchall {:try_start_24 .. :try_end_29} :catchall_e6

    .line 623
    const/4 v5, 0x4

    :try_start_2a
    new-array v5, v5, [B

    .line 627
    :cond_2c
    rsub-int/lit8 v6, v0, 0x4

    invoke-virtual {v2, v5, v0, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    .line 629
    if-lt v0, v7, :cond_2c

    .line 630
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lap;->J([BI)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_39} :catch_f5
    .catchall {:try_start_2a .. :try_end_39} :catchall_e9

    move-result v0

    const v5, 0x2d35510

    if-eq v0, v5, :cond_49

    .line 632
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v3}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 667
    invoke-static {v4}, Ldb;->Code(Lbm;)V

    goto :goto_9

    .line 634
    :cond_49
    const/4 v0, 0x3

    :try_start_4a
    invoke-static {v2, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 635
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_50} :catch_f5
    .catchall {:try_start_4a .. :try_end_50} :catchall_e9

    move-result v0

    .line 636
    if-eq v0, p2, :cond_5d

    .line 638
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v3}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 667
    invoke-static {v4}, Ldb;->Code(Lbm;)V

    goto :goto_9

    .line 640
    :cond_5d
    const/16 v0, 0xf

    if-ne p2, v0, :cond_c3

    const/16 v0, 0xa

    .line 641
    :goto_63
    :try_start_63
    invoke-static {v2, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 642
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 644
    new-array v0, v5, [B

    .line 645
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 646
    if-nez v5, :cond_fc

    move-object v6, v1

    .line 650
    :goto_77
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 651
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_fa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_fa

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v8, :cond_fa

    .line 655
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 657
    :goto_a9
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v0, v8

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const/4 v5, 0x2

    aput-object v6, v0, v5
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_b5} :catch_f5
    .catchall {:try_start_63 .. :try_end_b5} :catchall_e9

    .line 665
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v3}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 667
    invoke-static {v4}, Ldb;->Code(Lbm;)V

    .line 669
    :goto_be
    iput-object v0, p0, Lbk;->J:[Ljava/lang/Object;

    move-object v1, v0

    .line 670
    goto/16 :goto_9

    .line 640
    :cond_c3
    const/4 v0, 0x7

    goto :goto_63

    .line 659
    :catch_c5
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    .line 665
    :goto_c9
    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 667
    invoke-static {v3}, Ldb;->Code(Lbm;)V

    move-object v0, v1

    .line 668
    goto :goto_be

    .line 665
    :catchall_d4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_d8
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 666
    invoke-static {v3}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 667
    invoke-static {v4}, Ldb;->Code(Lbm;)V

    throw v0

    .line 665
    :catchall_e2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_d8

    :catchall_e6
    move-exception v0

    move-object v2, v1

    goto :goto_d8

    :catchall_e9
    move-exception v0

    goto :goto_d8

    .line 659
    :catch_eb
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v4

    goto :goto_c9

    :catch_f0
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_c9

    :catch_f5
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_c9

    :cond_fa
    move-object v5, v0

    goto :goto_a9

    :cond_fc
    move-object v6, v0

    goto/16 :goto_77
.end method

.method public static Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    if-nez p0, :cond_4

    .line 200
    const/4 p0, 0x0

    .line 210
    :cond_3
    :goto_3
    return-object p0

    .line 202
    :cond_4
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static Code(I)Z
    .registers 2

    .prologue
    .line 593
    const/16 v0, 0xf

    if-eq p0, v0, :cond_8

    const/16 v0, 0x10

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_2d

    const-string v0, ".obml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_2d

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    invoke-static {v0}, Lbk;->Code(I)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_28} :catch_2c

    move-result v1

    if-eqz v1, :cond_2d

    .line 490
    :goto_2b
    return v0

    :catch_2c
    move-exception v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lbk;->I:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbk;->I:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 312
    iget-object v0, p0, Lbk;->I:Ljava/lang/String;

    .line 319
    :goto_10
    invoke-static {v0}, Lbk;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbk;->I:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lbk;->I:Ljava/lang/String;

    return-object v0

    .line 316
    :cond_19
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static d(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-static {p0}, Lbk;->c(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 505
    :goto_7
    return v0

    .line 497
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 501
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    move-result v0

    goto :goto_7

    :catch_19
    move-exception v1

    goto :goto_7
.end method

.method private d()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 328
    .line 330
    iget-object v0, p0, Lbk;->Code:Ljava/lang/String;

    if-eqz v0, :cond_69

    const-string v0, ""

    iget-object v2, p0, Lbk;->Code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 332
    iget-object v0, p0, Lbk;->Code:Ljava/lang/String;

    .line 335
    :goto_11
    if-eqz v0, :cond_1b

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 337
    :cond_1b
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->Z()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_21
    if-eqz v0, :cond_2b

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 341
    :cond_2b
    iget-object v2, p0, Lbk;->Z:Lbn;

    .line 345
    invoke-virtual {p0}, Lbk;->B()[Lbo;

    move-result-object v2

    .line 346
    array-length v3, v2

    if-lez v3, :cond_37

    .line 348
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 351
    :cond_37
    if-eqz v1, :cond_54

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lbo;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldb;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OperaSavedPages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_54
    if-eqz v0, :cond_5e

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 358
    :cond_5e
    const-string v0, "OperaSavedPages/"

    .line 361
    :cond_60
    invoke-static {v0}, Lbk;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbk;->Code:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lbk;->Code:Ljava/lang/String;

    return-object v0

    :cond_69
    move-object v0, v1

    goto :goto_11
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->Code(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final B(II)[B
    .registers 5

    .prologue
    .line 548
    invoke-direct {p0, p1, p2}, Lbk;->C(II)[Ljava/lang/Object;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_c

    .line 550
    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [B

    .line 551
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final B()[Lbo;
    .registers 2

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->Code()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_8

    .line 415
    :goto_5
    iget-object v0, p0, Lbk;->a:[Lbo;

    return-object v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public final C(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 291
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->I(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method final C()[I
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->B()[I

    move-result-object v0

    return-object v0
.end method

.method final Code([BLjava/lang/String;)I
    .registers 4

    .prologue
    .line 232
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1, p2}, Lbn;->Code([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final Code(Ljava/lang/String;ZI)Lbm;
    .registers 5

    .prologue
    .line 270
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1, p2, p3}, Lbn;->Code(Ljava/lang/String;ZI)Lbm;

    move-result-object v0

    return-object v0
.end method

.method public final Code(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 511
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 513
    const/16 p2, 0x10

    .line 515
    :cond_5
    invoke-direct {p0}, Lbk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final Code()V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, Lbk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbk;->J(Ljava/lang/String;)Z

    .line 297
    return-void
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 425
    iget-object v0, p0, Lbk;->a:[Lbo;

    array-length v0, v0

    .line 426
    iget v1, p0, Lbk;->C:I

    if-lt v1, v0, :cond_1b

    .line 428
    add-int/lit8 v0, v0, 0x5

    new-array v1, v0, [Lbo;

    .line 429
    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Lbk;->C:I

    if-ge v0, v2, :cond_19

    .line 431
    iget-object v2, p0, Lbk;->a:[Lbo;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 433
    :cond_19
    iput-object v1, p0, Lbk;->a:[Lbo;

    .line 435
    :cond_1b
    iget-object v0, p0, Lbk;->a:[Lbo;

    iget v1, p0, Lbk;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbk;->C:I

    new-instance v2, Lbo;

    invoke-direct {v2, p1, p2}, Lbo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 436
    return-void
.end method

.method public final I(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 522
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 524
    const/16 p2, 0x10

    .line 526
    :cond_5
    invoke-direct {p0}, Lbk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final I()V
    .registers 2

    .prologue
    .line 301
    invoke-direct {p0}, Lbk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbk;->J(Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method final I(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->J(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final J(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 540
    invoke-direct {p0, p1, p2}, Lbk;->C(II)[Ljava/lang/Object;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_c

    .line 542
    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 543
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final J(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->C(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lbk;->Z:Lbn;

    const/4 v0, 0x0

    return-object v0
.end method

.method final Z(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lbk;->C(II)[Ljava/lang/Object;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_c

    .line 534
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 535
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final Z(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 241
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->B(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final a()Lbo;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lbk;->Z:Lbn;

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 367
    if-eqz p1, :cond_e

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 369
    iput-object p1, p0, Lbk;->Code:Ljava/lang/String;

    .line 382
    :goto_d
    return-object v0

    .line 373
    :cond_e
    iput-object v0, p0, Lbk;->Code:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lbk;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbk;->Code:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0}, Lbn;->Z()Ljava/lang/String;

    move-result-object v0

    .line 378
    if-nez v0, :cond_20

    .line 380
    const-string v0, ""

    .line 382
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbk;->Z:Lbn;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public final b(Ljava/lang/String;)Lbo;
    .registers 5

    .prologue
    .line 440
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lbk;->C:I

    if-ge v0, v1, :cond_14

    .line 442
    iget-object v1, p0, Lbk;->a:[Lbo;

    aget-object v1, v1, v0

    .line 443
    invoke-virtual {v1, p1}, Lbo;->Code(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v0, v1

    .line 448
    :goto_10
    return-object v0

    .line 440
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 448
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lbk;->Z:Lbn;

    const/4 v0, 0x0

    return v0
.end method

.method final e(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 564
    iget-object v0, p0, Lbk;->Z:Lbn;

    invoke-interface {v0, p1}, Lbn;->Z(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
