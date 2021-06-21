.class public final Lcz;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final B:Lda;

.field private static final C:Lda;

.field static Code:I

.field private static I:[Lda;

.field private static final J:Lda;

.field private static Z:[Lcp;

.field private static final a:Lcp;

.field private static b:Lcp;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 14
    sput v3, Lcz;->Code:I

    .line 32
    new-instance v0, Lda;

    const-string v1, "i"

    const-string v2, "*"

    const-string v4, "/firsttime/*"

    invoke-direct/range {v0 .. v5}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcz;->J:Lda;

    .line 39
    new-instance v0, Lda;

    const-string v1, "server"

    const-string v2, "*"

    const-string v4, "setup"

    invoke-direct/range {v0 .. v5}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcz;->B:Lda;

    .line 44
    new-instance v0, Lda;

    const-string v1, "probe"

    const-string v2, "*"

    const-string v4, "*"

    invoke-direct/range {v0 .. v5}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcz;->C:Lda;

    .line 54
    new-instance v2, Lcp;

    const-string v5, "server4.operamini.com"

    const/16 v6, 0x50

    const/16 v7, 0x438

    const-string v8, "c1dd7ab77e2c967746fe10681026c920f864811321bcb8be6bbfa5a03fda4e16c9c8db3af280f7703366e778e93c55e7159a8852d2b1381e521a337f22b1406cddf41a3114aecb4f4bfe79e0c5aa2ba8824fc989cb8bdcbf8ec5cef5176bfd4059f229b91bfa025126b295f9c409e75f6f6415ee094fd7f5dfd395a1f431668c5a08e88de891dc4dd38d4e9aa9b9c00dc604a0428e3aa5a28ccfa75af099147b"

    const-string v9, "server4.operamini.com"

    move v4, v3

    invoke-direct/range {v2 .. v9}, Lcp;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcz;->a:Lcp;

    return-void
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    :try_start_2
    invoke-static {p0}, Ldb;->e(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    move v5, v3

    .line 261
    :goto_7
    sget-object v0, Lcz;->I:[Lda;

    array-length v0, v0

    if-ge v5, v0, :cond_69

    .line 264
    sget-object v0, Lcz;->I:[Lda;

    aget-object v7, v0, v5

    const/4 v0, 0x0

    aget-object v0, v6, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v6, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v2, 0x3

    aget-object v2, v6, v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, v7, Lda;->Code:Ljava/lang/String;

    invoke-static {v9, v0}, Ldb;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v7, Lda;->I:Ljava/lang/String;

    invoke-static {v0, v1}, Ldb;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget v0, v7, Lda;->Z:I

    if-eqz v0, :cond_40

    iget v0, v7, Lda;->Z:I

    if-ne v8, v0, :cond_5b

    :cond_40
    iget-object v0, v7, Lda;->J:Ljava/lang/String;

    invoke-static {v0, v2}, Ldb;->I(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v4

    :goto_49
    if-eqz v0, :cond_64

    .line 268
    sget-object v0, Lcz;->I:[Lda;

    aget-object v0, v0, v5

    iget v0, v0, Lda;->B:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_5d

    .line 271
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcz;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 288
    :goto_5a
    return v0

    :cond_5b
    move v0, v3

    .line 264
    goto :goto_49

    .line 275
    :cond_5d
    sget-object v0, Lcz;->I:[Lda;

    aget-object v0, v0, v5

    iget v0, v0, Lda;->B:I
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_63} :catch_68

    goto :goto_5a

    .line 261
    :cond_64
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :catch_68
    move-exception v0

    :cond_69
    move v0, v3

    .line 288
    goto :goto_5a
.end method

.method public static Code(I)Lcp;
    .registers 14

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    .line 117
    new-array v8, v11, [Lcp;

    .line 118
    sget-object v0, Lcz;->a:Lcp;

    aput-object v0, v8, v1

    .line 119
    const/4 v0, 0x1

    sget-object v3, Lcz;->b:Lcp;

    aput-object v3, v8, v0

    move v0, v1

    .line 120
    :goto_10
    sget-object v3, Lcz;->Z:[Lcp;

    array-length v3, v3

    if-ge v0, v3, :cond_54

    sget-object v3, Lcz;->Z:[Lcp;

    aget-object v3, v3, v0

    iget v3, v3, Lcp;->Code:I

    if-ne v3, p0, :cond_51

    sget-object v3, Lcz;->Z:[Lcp;

    aget-object v0, v3, v0

    :goto_21
    aput-object v0, v8, v10

    move v7, v1

    move v0, v1

    move v5, v1

    move v4, v1

    move-object v6, v2

    move-object v3, v2

    move-object v12, v2

    move v2, v1

    move-object v1, v12

    .line 123
    :goto_2c
    if-ge v7, v11, :cond_56

    .line 125
    aget-object v9, v8, v7

    .line 126
    if-eqz v9, :cond_4e

    .line 128
    iget-object v2, v9, Lcp;->Z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 130
    iget-object v1, v9, Lcp;->Z:Ljava/lang/String;

    move v0, v7

    move-object v3, v1

    .line 133
    :cond_3e
    iget-object v2, v9, Lcp;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_48

    .line 135
    iget-object v6, v9, Lcp;->C:Ljava/lang/String;

    .line 137
    :cond_48
    iget v2, v9, Lcp;->I:I

    .line 138
    iget v4, v9, Lcp;->J:I

    .line 139
    iget v5, v9, Lcp;->B:I

    .line 123
    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 120
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_54
    move-object v0, v2

    goto :goto_21

    .line 143
    :cond_56
    if-ne v0, v10, :cond_64

    .line 146
    invoke-static {v1}, Lcz;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 154
    :goto_5d
    new-instance v0, Lcp;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcp;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 148
    :cond_64
    if-eqz p0, :cond_6c

    .line 151
    invoke-static {v3, p0}, Lcz;->Code(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v1

    goto :goto_5d

    :cond_6c
    move-object v7, v1

    goto :goto_5d
.end method

.method private static Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 165
    const/16 v1, 0x2d

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 168
    :try_start_e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 169
    const/16 v3, -0xff

    if-lt v2, v3, :cond_36

    if-gez v2, :cond_36

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_35} :catch_37

    move-result-object p0

    .line 180
    :cond_36
    :goto_36
    return-object p0

    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method private static Code(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 229
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 231
    if-lez v0, :cond_2c

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_2c
    return-object p0
.end method

.method static Code()V
    .registers 4

    .prologue
    .line 76
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "zerorating"

    invoke-virtual {v0, v1}, Lcn;->Z(Ljava/lang/String;)V

    .line 80
    :try_start_7
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "trafficrouting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lap;->J([BI)I

    move-result v0

    .line 81
    sget-object v1, Lcn;->Code:Lcn;

    const-string v2, "trafficrouting"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcz;->I(I[B)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_21} :catch_22

    .line 94
    :goto_21
    return-void

    .line 92
    :catch_22
    move-exception v0

    invoke-static {}, Lcz;->Z()V

    goto :goto_21
.end method

.method static declared-synchronized Code(I[B)V
    .registers 6

    .prologue
    .line 376
    const-class v1, Lcz;

    monitor-enter v1

    :try_start_3
    invoke-static {p0, p1}, Lcz;->I(I[B)V

    .line 378
    sget-object v0, Lcn;->Code:Lcn;

    const-string v2, "trafficrouting"

    invoke-virtual {v0, v2}, Lcn;->Z(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 380
    sget v2, Lcz;->Code:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lap;->Z(I[BI)V

    .line 381
    sget-object v2, Lcn;->Code:Lcn;

    const-string v3, "trafficrouting"

    invoke-virtual {v2, v3, v0}, Lcn;->Code(Ljava/lang/String;[B)I

    .line 383
    sget-object v0, Lcn;->Code:Lcn;

    const-string v2, "trafficrouting"

    invoke-virtual {v0, v2, p1}, Lcn;->Code(Ljava/lang/String;[B)I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_24} :catch_29
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 391
    :goto_24
    monitor-exit v1

    return-void

    .line 376
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    .line 391
    :catch_29
    move-exception v0

    goto :goto_24
.end method

.method public static I(I)Lcp;
    .registers 9

    .prologue
    .line 199
    new-instance v0, Lcp;

    sget-object v1, Lcz;->a:Lcp;

    iget v2, v1, Lcp;->I:I

    sget-object v1, Lcz;->a:Lcp;

    iget-object v1, v1, Lcp;->Z:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcz;->Code(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcz;->a:Lcp;

    iget v4, v1, Lcp;->J:I

    sget-object v1, Lcz;->a:Lcp;

    iget v5, v1, Lcp;->B:I

    sget-object v1, Lcz;->a:Lcp;

    iget-object v6, v1, Lcp;->C:Ljava/lang/String;

    sget-object v1, Lcz;->a:Lcp;

    iget-object v7, v1, Lcp;->Z:Ljava/lang/String;

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcp;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized I(I[B)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 299
    const-class v10, Lcz;

    monitor-enter v10

    :try_start_4
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_92

    .line 302
    :try_start_e
    invoke-static {}, Lcz;->Z()V

    .line 304
    const/4 v8, 0x0

    .line 305
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    .line 306
    new-array v13, v12, [Lcp;

    move v9, v0

    .line 308
    :goto_19
    if-ge v9, v12, :cond_4a

    .line 311
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 312
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 313
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 315
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 316
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 317
    new-instance v0, Lcp;

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcp;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v13, v9

    .line 320
    aget-object v0, v13, v9

    iget v0, v0, Lcp;->Code:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_95

    .line 322
    aget-object v0, v13, v9

    .line 308
    :goto_45
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v8, v0

    goto :goto_19

    .line 326
    :cond_4a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    .line 327
    add-int/lit8 v0, v7, 0x3

    new-array v9, v0, [Lda;

    .line 328
    const/4 v0, 0x0

    sget-object v1, Lcz;->B:Lda;

    aput-object v1, v9, v0

    .line 330
    const/4 v0, 0x1

    move v6, v0

    :goto_59
    if-gt v6, v7, :cond_7a

    .line 334
    new-instance v0, Lda;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v0, v9, v6

    .line 330
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_59

    .line 341
    :cond_7a
    add-int/lit8 v0, v7, 0x1

    sget-object v1, Lcz;->C:Lda;

    aput-object v1, v9, v0

    .line 342
    add-int/lit8 v0, v7, 0x2

    sget-object v1, Lcz;->J:Lda;

    aput-object v1, v9, v0

    .line 352
    sput-object v8, Lcz;->b:Lcp;

    .line 353
    sput-object v13, Lcz;->Z:[Lcp;

    .line 354
    sput-object v9, Lcz;->I:[Lda;

    .line 355
    sput p0, Lcz;->Code:I
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_8e} :catch_90
    .catchall {:try_start_e .. :try_end_8e} :catchall_92

    .line 361
    monitor-exit v10

    return-void

    .line 357
    :catch_90
    move-exception v0

    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 299
    :catchall_92
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_95
    move-object v0, v8

    goto :goto_45
.end method

.method public static declared-synchronized I()Z
    .registers 3

    .prologue
    .line 406
    const-class v1, Lcz;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn;->Code:Lcn;

    const-string v2, "trafficrouting"

    invoke-virtual {v0, v2}, Lcn;->Z(Ljava/lang/String;)V

    .line 407
    sget v0, Lcz;->Code:I

    if-eqz v0, :cond_14

    .line 409
    invoke-static {}, Lcz;->Z()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 406
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static Z()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lda;

    sget-object v1, Lcz;->J:Lda;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcz;->B:Lda;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcz;->C:Lda;

    aput-object v2, v0, v1

    sput-object v0, Lcz;->I:[Lda;

    .line 99
    new-array v0, v3, [Lcp;

    sput-object v0, Lcz;->Z:[Lcp;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcz;->b:Lcp;

    .line 101
    sput v3, Lcz;->Code:I

    .line 102
    return-void
.end method
