.class public Ldb;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field public static A:Z

.field public static B:J

.field public static C:J

.field public static Code:Z

.field public static D:I

.field public static E:Z

.field public static F:I

.field protected static G:[B

.field protected static H:[B

.field public static I:Z

.field protected static J:Z

.field static K:Z

.field static L:[Ljava/lang/String;

.field static M:Z

.field static N:Z

.field static O:Z

.field static P:I

.field static Q:Ljava/lang/String;

.field static R:Ljava/lang/String;

.field static S:Ljava/lang/String;

.field static T:I

.field static U:I

.field static V:Z

.field static W:Z

.field static X:B

.field static Y:Ljava/lang/Object;

.field protected static Z:Z

.field public static a:I

.field private static final aA:[B

.field private static aB:I

.field private static aC:I

.field private static final aD:Ljava/util/Hashtable;

.field private static aE:Ljava/lang/Integer;

.field static aa:[B

.field static ab:[B

.field static ac:[B

.field protected static ad:I

.field protected static ae:I

.field public static af:[Lbp;

.field static ag:I

.field private static ah:I

.field private static ai:I

.field private static aj:Z

.field private static ak:Lcq;

.field private static al:Z

.field private static am:I

.field private static an:I

.field private static ao:J

.field private static ap:J

.field private static aq:J

.field private static ar:Ljava/lang/Object;

.field private static as:[I

.field private static at:I

.field private static au:Lbf;

.field private static av:I

.field private static aw:I

.field private static ax:I

.field private static ay:I

.field private static final az:[B

.field public static b:I

.field public static c:Z

.field public static d:I

.field public static e:I

.field public static f:I

.field protected static g:I

.field public static h:Z

.field public static i:Ljava/lang/String;

.field public static j:I

.field protected static k:I

.field public static l:Z

.field public static m:Z

.field protected static n:I

.field protected static o:Z

.field protected static p:Z

.field protected static q:Z

.field protected static r:I

.field public static s:I

.field static t:Z

.field static u:I

.field protected static v:I

.field public static w:Z

.field public static x:C

.field public static y:Z

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 84
    const-wide/32 v0, 0x7a120

    sput-wide v0, Ldb;->C:J

    .line 90
    sput v2, Ldb;->a:I

    .line 96
    sput v4, Ldb;->b:I

    .line 103
    sput-boolean v3, Ldb;->c:Z

    .line 110
    sput v2, Ldb;->f:I

    .line 230
    sput v2, Ldb;->j:I

    .line 254
    sput v2, Ldb;->n:I

    .line 311
    const/4 v0, 0x0

    sput v0, Ldb;->r:I

    .line 381
    sput-boolean v3, Ldb;->t:Z

    .line 399
    sput v5, Ldb;->u:I

    .line 405
    sput v5, Ldb;->v:I

    .line 428
    const/16 v0, 0x2a

    sput-char v0, Ldb;->x:C

    .line 449
    sput v2, Ldb;->ah:I

    .line 450
    sput v2, Ldb;->ai:I

    .line 455
    const/16 v0, 0x200

    sput v0, Ldb;->D:I

    .line 1207
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    sput-object v0, Ldb;->ak:Lcq;

    .line 1209
    sput-boolean v3, Ldb;->al:Z

    .line 1396
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    aput v3, v0, v3

    aput v5, v0, v5

    const/4 v1, 0x3

    aput v4, v0, v1

    aput v6, v0, v4

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v5, v0, v1

    aput v4, v0, v6

    const/16 v1, 0x9

    aput v6, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v6, v0, v1

    .line 1402
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Ldb;->L:[Ljava/lang/String;

    .line 2164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldb;->ar:Ljava/lang/Object;

    .line 2269
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldb;->Y:Ljava/lang/Object;

    .line 3369
    new-array v0, v6, [B

    fill-array-data v0, :array_ca

    sput-object v0, Ldb;->az:[B

    .line 3941
    const/16 v0, 0x75

    new-array v0, v0, [B

    fill-array-data v0, :array_d2

    sput-object v0, Ldb;->aA:[B

    .line 4005
    sput v2, Ldb;->aB:I

    .line 4006
    sput v2, Ldb;->aC:I

    .line 4425
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 4429
    sput-object v0, Ldb;->aD:Ljava/util/Hashtable;

    const-string v1, "http"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4430
    sget-object v0, Ldb;->aD:Ljava/util/Hashtable;

    const-string v1, "https"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1bb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4431
    sget-object v0, Ldb;->aD:Ljava/util/Hashtable;

    const-string v1, "ftp"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4432
    sget-object v0, Ldb;->aD:Ljava/util/Hashtable;

    const-string v1, "rtsp"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x22a

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4435
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Ldb;->aE:Ljava/lang/Integer;

    return-void

    .line 3369
    nop

    :array_ca
    .array-data 1
        0x22t
        0x22t
        0x23t
        0x23t
        0x25t
        0x25t
        0x27t
        0x27t
    .end array-data

    .line 3941
    :array_d2
    .array-data 1
        0x21t
        0x22t
        0x22t
        0x23t
        0x23t
        0x24t
        0x24t
        0x25t
        0x25t
        0x26t
        0x26t
        0x26t
        0x26t
        0x27t
        0x27t
        0x28t
        0x28t
        0x28t
        0x28t
        0x29t
        0x29t
        0x2at
        0x2at
        0x2at
        0x2at
        0x2bt
        0x2bt
        0x2bt
        0x2bt
        0x2ct
        0x2ct
        0x2ct
        0x2ct
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2et
        0x2et
        0x2et
        0x2et
        0x2ft
        0x2ft
        0x30t
        0x30t
        0x31t
        0x31t
        0x32t
        0x32t
        0x33t
        0x33t
        0x33t
        0x33t
        0x34t
        0x34t
        0x34t
        0x34t
        0x35t
        0x35t
        0x35t
        0x35t
        0x36t
        0x36t
        0x36t
        0x36t
        0x37t
        0x37t
        0x37t
        0x37t
        0x38t
        0x38t
        0x38t
        0x38t
        0x39t
        0x39t
        0x39t
        0x39t
        0x3at
        0x3at
        0x3at
        0x3at
        0x41t
        0x41t
        0x41t
        0x41t
        0x42t
        0x42t
        0x42t
        0x42t
        0x43t
        0x43t
        0x43t
        0x43t
        0x44t
        0x44t
        0x44t
        0x44t
        0x45t
        0x45t
        0x45t
        0x45t
        0x46t
        0x46t
        0x46t
        0x46t
        0x47t
        0x47t
        0x47t
        0x47t
        0x48t
        0x48t
        0x49t
        0x49t
        0x4at
        0x4at
        0x4at
        0x4at
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static B(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 1979
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0, p0}, Lci;->Z(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1980
    return-object v0
.end method

.method static declared-synchronized B()V
    .registers 4

    .prologue
    const/16 v3, 0xa0

    .line 2214
    const-class v1, Ldb;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Ldb;->C()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2216
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 2217
    sget-object v0, Lar;->Z:Lan;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lan;->c(I)V

    .line 2218
    sget-object v0, Lar;->Z:Lan;

    sget v2, Ldb;->F:I

    invoke-virtual {v0, v2}, Lan;->c(I)V

    .line 2219
    sget-object v0, Lar;->Z:Lan;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lan;->c(I)V

    .line 2220
    sget-object v0, Lar;->I:Lar;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lar;->Z(I)V

    .line 2222
    :goto_2b
    sget v0, Ldb;->F:I

    if-ge v0, v3, :cond_3a

    .line 2228
    sget-object v0, Ldb;->ak:Lcq;

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Ldb;->Code(Ljava/lang/Object;I)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    goto :goto_2b

    .line 2214
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2230
    :cond_3a
    :try_start_3a
    const-string v0, "mc"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 2231
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 2234
    :cond_44
    sget v0, Ldb;->F:I

    if-lt v0, v3, :cond_60

    sget-object v0, Ldb;->L:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_60

    .line 2237
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 2238
    invoke-static {v0}, Ldb;->I([B)Lch;

    .line 2239
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v0, v3}, Ldb;->Code([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Ldb;->Code(ILjava/lang/String;Z)V
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_37

    .line 2241
    :cond_60
    monitor-exit v1

    return-void
.end method

.method public static B(C)Z
    .registers 3

    .prologue
    .line 4540
    const v0, 0xf800

    and-int/2addr v0, p0

    const v1, 0xd800

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static B(I)[B
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2380
    sget-object v7, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v7

    .line 2382
    :try_start_6
    sget-object v1, Ldb;->aa:[B

    if-nez v1, :cond_c

    .line 2384
    monitor-exit v7

    .line 2488
    :goto_b
    return-object v0

    .line 2386
    :cond_c
    const/4 v1, -0x1

    move v2, v3

    .line 2387
    :goto_e
    sget-object v5, Ldb;->aa:[B

    array-length v5, v5

    if-ge v2, v5, :cond_12d

    .line 2389
    sget-object v5, Ldb;->aa:[B

    aget-byte v5, v5, v2

    int-to-byte v6, p0

    if-ne v5, v6, :cond_24

    .line 2391
    div-int/lit8 v1, v2, 0x3

    move v6, v1

    .line 2395
    :goto_1d
    if-gez v6, :cond_27

    .line 2397
    monitor-exit v7
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    goto :goto_b

    .line 2489
    :catchall_21
    move-exception v0

    monitor-exit v7

    throw v0

    .line 2387
    :cond_24
    add-int/lit8 v2, v2, 0x3

    goto :goto_e

    :cond_27
    move v2, v3

    .line 2403
    :goto_28
    :try_start_28
    sget-object v1, Lcn;->Code:Lcn;

    const-string v5, "mo"

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v1, v5, v8}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2404
    const/4 v5, 0x0

    aget-byte v5, v1, v5
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_35} :catch_f1
    .catchall {:try_start_28 .. :try_end_35} :catchall_21

    if-eq v5, v4, :cond_39

    .line 2407
    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_21

    goto :goto_b

    .line 2409
    :cond_39
    const/4 v5, 0x1

    :try_start_3a
    aget-byte v5, v1, v5
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3c} :catch_f1
    .catchall {:try_start_3a .. :try_end_3c} :catchall_21

    const/16 v8, 0x10

    if-eq v5, v8, :cond_42

    .line 2412
    :try_start_40
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_21

    goto :goto_b

    .line 2414
    :cond_42
    :try_start_42
    sget-object v5, Ldb;->ab:[B

    if-nez v5, :cond_7e

    sget-object v5, Ldb;->aa:[B

    mul-int/lit8 v8, v6, 0x3

    aget-byte v5, v5, v8

    const/4 v8, 0x2

    aget-byte v8, v1, v8

    if-ne v5, v8, :cond_6b

    sget-object v5, Ldb;->aa:[B

    mul-int/lit8 v8, v6, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v5, v5, v8

    const/4 v8, 0x3

    aget-byte v8, v1, v8

    if-ne v5, v8, :cond_6b

    sget-object v5, Ldb;->aa:[B

    mul-int/lit8 v8, v6, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v5, v5, v8

    const/4 v8, 0x4

    aget-byte v8, v1, v8

    if-eq v5, v8, :cond_7e

    .line 2422
    :cond_6b
    sget-object v5, Ldb;->aa:[B

    array-length v5, v5

    new-array v5, v5, [B

    sput-object v5, Ldb;->ab:[B

    .line 2423
    sget-object v5, Ldb;->aa:[B

    const/4 v8, 0x0

    sget-object v9, Ldb;->ab:[B

    const/4 v10, 0x0

    sget-object v11, Ldb;->aa:[B

    array-length v11, v11

    invoke-static {v5, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2427
    :cond_7e
    sget-object v5, Ldb;->ab:[B

    if-eqz v5, :cond_a1

    .line 2429
    sget-object v5, Ldb;->ab:[B

    mul-int/lit8 v8, v6, 0x3

    const/4 v9, 0x2

    aget-byte v9, v1, v9

    aput-byte v9, v5, v8

    .line 2430
    sget-object v5, Ldb;->ab:[B

    mul-int/lit8 v8, v6, 0x3

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x3

    aget-byte v9, v1, v9

    aput-byte v9, v5, v8

    .line 2431
    sget-object v5, Ldb;->ab:[B

    mul-int/lit8 v8, v6, 0x3

    add-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    aget-byte v9, v1, v9

    aput-byte v9, v5, v8

    .line 2433
    :cond_a1
    sget-object v5, Ldb;->ac:[B

    const/4 v8, 0x5

    aget-byte v8, v1, v8

    aput-byte v8, v5, v6

    .line 2434
    array-length v5, v1

    const/4 v8, 0x6

    if-ne v5, v8, :cond_b2

    .line 2436
    const/4 v1, 0x0

    new-array v0, v1, [B
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_af} :catch_f1
    .catchall {:try_start_42 .. :try_end_af} :catchall_21

    :try_start_af
    monitor-exit v7
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_21

    goto/16 :goto_b

    .line 2438
    :cond_b2
    :try_start_b2
    new-instance v5, Ldd;

    invoke-direct {v5}, Ldd;-><init>()V

    .line 2439
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    const/4 v10, 0x6

    array-length v11, v1

    add-int/lit8 v11, v11, -0x6

    invoke-direct {v9, v1, v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v8}, Ldd;->Code(Ljava/io/DataInputStream;)V

    .line 2440
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2441
    invoke-static {v8}, Lbg;->Code(Ljava/io/DataInput;)I

    move-result v9

    move v5, v3

    .line 2443
    :cond_d2
    if-ge v5, v9, :cond_115

    .line 2445
    invoke-virtual {v8}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 2447
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_10d

    .line 2449
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 2450
    add-int/lit8 v10, v1, 0x3

    add-int/2addr v5, v10

    .line 2456
    :goto_e5
    invoke-virtual {v8, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    if-ge v10, v1, :cond_d2

    .line 2462
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_f1} :catch_f1
    .catchall {:try_start_b2 .. :try_end_f1} :catchall_21

    .line 2473
    :catch_f1
    move-exception v1

    :try_start_f2
    sget v1, Lar;->b:I

    if-ge v2, v1, :cond_124

    .line 2475
    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    .line 2476
    sget-object v5, Lar;->I:Lar;

    if-lez v2, :cond_122

    move v1, v4

    :goto_100
    invoke-virtual {v5, v1}, Lar;->Code(Z)V

    .line 2477
    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->i()V
    :try_end_108
    .catchall {:try_start_f2 .. :try_end_108} :catchall_21

    .line 2399
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_28

    .line 2454
    :cond_10d
    :try_start_10d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 2455
    add-int/lit8 v10, v1, 0x5

    add-int/2addr v5, v10

    goto :goto_e5

    .line 2465
    :cond_115
    invoke-static {v8}, Lbg;->Code(Ljava/io/DataInput;)I

    move-result v1

    .line 2466
    new-array v1, v1, [B

    .line 2467
    invoke-virtual {v8, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_11e} :catch_f1
    .catchall {:try_start_10d .. :try_end_11e} :catchall_21

    .line 2468
    :try_start_11e
    monitor-exit v7

    move-object v0, v1

    goto/16 :goto_b

    :cond_122
    move v1, v3

    .line 2476
    goto :goto_100

    .line 2486
    :cond_124
    invoke-static {}, Ldb;->a()V

    .line 2487
    invoke-static {}, Ldb;->e()V

    .line 2488
    monitor-exit v7
    :try_end_12b
    .catchall {:try_start_11e .. :try_end_12b} :catchall_21

    goto/16 :goto_b

    :cond_12d
    move v6, v1

    goto/16 :goto_1d
.end method

.method static C(I)I
    .registers 2

    .prologue
    .line 3210
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lbp;->I()I

    move-result v0

    return v0
.end method

.method protected static C(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 2006
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    if-eqz v0, :cond_15

    .line 2009
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Ldb;->ak:Lcq;

    monitor-enter v2

    :try_start_d
    sget-object v3, Ldb;->ak:Lcq;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Lcq;->Code([BII)V

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    .line 2011
    :cond_15
    return-object v0

    .line 2009
    :catchall_16
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static C()Z
    .registers 2

    .prologue
    .line 2245
    invoke-static {}, Lcs;->b()Z

    sget v0, Ldb;->F:I

    const/16 v1, 0xa0

    if-ge v0, v1, :cond_f

    sget-boolean v0, Ldb;->E:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static C(C)Z
    .registers 2

    .prologue
    .line 3169
    const/16 v0, 0x600

    if-gt v0, p0, :cond_a

    const/16 v0, 0x6ff

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static Code(IC)I
    .registers 3

    .prologue
    .line 3281
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0, p1}, Lbp;->Code(C)I

    move-result v0

    return v0
.end method

.method public static Code(III)I
    .registers 4

    .prologue
    .line 649
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static Code(ILjava/io/DataInputStream;)I
    .registers 4

    .prologue
    .line 1992
    and-int/lit16 v0, p0, 0x7fff

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 1993
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1994
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v0

    .line 1995
    invoke-static {p1, v0}, Ldb;->Code(Ljava/io/InputStream;I)V

    .line 1996
    return v1
.end method

.method static Code(ILjava/lang/String;)I
    .registers 3

    .prologue
    .line 3267
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0, p1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static Code(I[CII)I
    .registers 5

    .prologue
    .line 3235
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0, p1, p2, p3}, Lbp;->Code([CII)I

    move-result v0

    return v0
.end method

.method public static Code(I[CIII)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 4550
    if-gtz p4, :cond_5

    move v0, v1

    .line 4605
    :goto_4
    return v0

    .line 4555
    :cond_5
    if-lez p3, :cond_5c

    .line 4557
    add-int v0, p2, p3

    .line 4561
    invoke-static {p0, p1, p2, p3}, Ldb;->Code(I[CII)I

    move-result v2

    .line 4562
    if-gt v2, p4, :cond_11

    .line 4605
    :cond_f
    :goto_f
    sub-int/2addr v0, p2

    goto :goto_4

    .line 4568
    :cond_11
    add-int/lit8 v0, v0, -0x1

    aget-char v2, p1, v0

    invoke-static {v2}, Ldb;->b(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4572
    add-int/lit8 v0, v0, -0x1

    :cond_1d
    move v3, v0

    move v4, p2

    move v0, p2

    .line 4576
    :goto_20
    if-ge v4, v3, :cond_4d

    .line 4578
    add-int v0, v4, v3

    div-int/lit8 v0, v0, 0x2

    .line 4579
    aget-char v1, p1, v0

    invoke-static {v1}, Ldb;->b(C)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4581
    add-int/lit8 v0, v0, -0x1

    .line 4583
    :cond_30
    sub-int v1, v0, p2

    invoke-static {p0, p1, p2, v1}, Ldb;->Code(I[CII)I

    move-result v2

    .line 4585
    if-ge v2, p4, :cond_47

    .line 4587
    aget-char v1, p1, v0

    invoke-static {v1}, Ldb;->B(C)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x2

    :goto_41
    add-int/2addr v1, v0

    move v4, v1

    move v1, v2

    goto :goto_20

    :cond_45
    const/4 v1, 0x1

    goto :goto_41

    .line 4590
    :cond_47
    if-eq v2, p4, :cond_4c

    move v3, v0

    move v1, v2

    .line 4592
    goto :goto_20

    :cond_4c
    move v1, v2

    .line 4599
    :cond_4d
    if-le v1, p4, :cond_f

    .line 4601
    add-int/lit8 v0, v0, -0x1

    aget-char v1, p1, v0

    invoke-static {v1}, Ldb;->b(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4603
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_5c
    move v0, p2

    goto :goto_f
.end method

.method private static Code(Lbp;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3702
    invoke-interface {p0}, Lbp;->C()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_8
    invoke-interface {p0}, Lbp;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    :goto_f
    or-int/2addr v2, v0

    invoke-interface {p0}, Lbp;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x4

    :goto_17
    or-int/2addr v0, v2

    invoke-interface {p0}, Lbp;->c()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v1, 0x8

    :cond_20
    or-int/2addr v0, v1

    return v0

    :cond_22
    move v0, v1

    goto :goto_8

    :cond_24
    move v2, v1

    goto :goto_f

    :cond_26
    move v0, v1

    goto :goto_17
.end method

.method static Code(Ljava/lang/String;I)I
    .registers 3

    .prologue
    .line 4676
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lap;->Code(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 2634
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_12

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2637
    :cond_12
    const/4 v0, -0x1

    .line 2639
    :goto_13
    return v0

    :cond_14
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    mul-int/lit8 v1, v1, 0x1a

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v0, v1

    goto :goto_13
.end method

.method public static Code([CZIILbp;)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 4623
    array-length v1, p0

    invoke-interface {p4, p0, v0, v1}, Lbp;->Code([CII)I

    move-result v1

    if-gt v1, p2, :cond_c

    .line 4625
    if-eqz p1, :cond_b

    array-length v0, p0

    .line 4664
    :cond_b
    :goto_b
    return v0

    .line 4630
    :cond_c
    array-length v2, p0

    .line 4631
    if-eqz p1, :cond_2f

    move v1, v2

    .line 4633
    :goto_10
    if-lez v1, :cond_1f

    .line 4635
    div-int/lit8 v2, v1, 0x2

    .line 4636
    add-int/lit8 v3, v2, 0x0

    invoke-interface {p4, p0, v0, v3}, Lbp;->Code([CII)I

    move-result v3

    add-int/2addr v3, p3

    if-le v3, p2, :cond_1f

    move v1, v2

    .line 4641
    goto :goto_10

    .line 4642
    :cond_1f
    :goto_1f
    if-lez v1, :cond_2d

    add-int/lit8 v2, v1, 0x0

    invoke-interface {p4, p0, v0, v2}, Lbp;->Code([CII)I

    move-result v2

    add-int/2addr v2, p3

    if-le v2, p2, :cond_2d

    .line 4644
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_2d
    move v0, v1

    .line 4646
    goto :goto_b

    .line 4651
    :cond_2f
    :goto_2f
    if-ge v0, v2, :cond_43

    .line 4653
    sub-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 4654
    sub-int v3, v2, v1

    invoke-interface {p4, p0, v1, v3}, Lbp;->Code([CII)I

    move-result v3

    add-int/2addr v3, p3

    if-le v3, p2, :cond_43

    move v0, v1

    .line 4659
    goto :goto_2f

    .line 4660
    :cond_43
    :goto_43
    if-ge v0, v2, :cond_b

    sub-int v1, v2, v0

    invoke-interface {p4, p0, v0, v1}, Lbp;->Code([CII)I

    move-result v1

    add-int/2addr v1, p3

    if-le v1, p2, :cond_b

    .line 4662
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method

.method public static Code([IIII)I
    .registers 10

    .prologue
    .line 640
    const/4 v1, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Ldb;->Code([IIIIII)I

    move-result v0

    return v0
.end method

.method public static Code([IIIIII)I
    .registers 9

    .prologue
    .line 608
    const/4 v0, -0x1

    .line 609
    :goto_1
    sub-int v1, p2, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_18

    .line 611
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 612
    mul-int v2, v1, p3

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v2, p0, v2

    and-int/2addr v2, p4

    if-ge v2, p5, :cond_16

    move v0, v1

    .line 614
    goto :goto_1

    :cond_16
    move p2, v1

    .line 620
    goto :goto_1

    .line 621
    :cond_18
    return p2
.end method

.method static Code(IZ)Lbu;
    .registers 5

    .prologue
    .line 4038
    invoke-static {p0}, Ldb;->b(I)[B

    move-result-object v0

    .line 4039
    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->q()Lbv;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v2, p1}, Lbv;->Code([BIZ)Lbu;

    move-result-object v0

    return-object v0
.end method

.method static Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 863
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 864
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 866
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 867
    if-nez v2, :cond_1a

    .line 869
    const-string v2, "%00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 871
    :cond_1a
    const-string v3, "%&=;"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_32

    .line 873
    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 877
    :cond_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_17

    .line 880
    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Code([B)Ljava/lang/String;
    .registers 4

    .prologue
    .line 654
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    .line 655
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcq;->Code([BII)V

    .line 656
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 657
    invoke-virtual {v0, v1}, Lcq;->Code([B)V

    .line 658
    array-length v0, v1

    invoke-static {v1, v0}, Ldb;->Code([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static Code([BI)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v4, 0x10

    .line 548
    const/16 v0, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 549
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 551
    const/4 v0, 0x0

    :goto_e
    add-int/lit8 v3, v1, 0x0

    if-ge v0, v3, :cond_2b

    .line 553
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v4, :cond_1d

    .line 555
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 557
    :cond_1d
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 559
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Code()V
    .registers 2

    .prologue
    .line 721
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 726
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static Code(I)V
    .registers 3

    .prologue
    .line 1214
    sget v0, Ldb;->F:I

    add-int/2addr v0, p0

    sput v0, Ldb;->F:I

    .line 1215
    sget-boolean v0, Ldb;->al:Z

    if-eqz v0, :cond_1c

    .line 1217
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->j()V

    .line 1218
    sget v0, Ldb;->F:I

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_1c

    .line 1220
    const/4 v0, 0x0

    sput-boolean v0, Ldb;->al:Z

    .line 1221
    sget-object v0, Ldb;->ak:Lcq;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 1224
    :cond_1c
    return-void
.end method

.method private static Code(II)V
    .registers 5

    .prologue
    .line 3907
    sget v0, Ldb;->aw:I

    shl-int/2addr v0, p1

    .line 3908
    sput v0, Ldb;->aw:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    sput v0, Ldb;->aw:I

    .line 3909
    sget v0, Ldb;->av:I

    add-int/2addr v0, p1

    sput v0, Ldb;->av:I

    .line 3910
    :goto_12
    sget v0, Ldb;->av:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_29

    .line 3912
    sget v0, Ldb;->av:I

    add-int/lit8 v0, v0, -0x8

    sput v0, Ldb;->av:I

    .line 3913
    sget-object v0, Ldb;->au:Lbf;

    sget v1, Ldb;->aw:I

    sget v2, Ldb;->av:I

    shr-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbf;->write(I)V

    goto :goto_12

    .line 3917
    :cond_29
    return-void
.end method

.method public static Code(ILjava/lang/String;Z)V
    .registers 4

    .prologue
    .line 2059
    sget-object v0, Ldb;->L:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-eqz v0, :cond_10

    sget-object v0, Ldb;->L:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2061
    :cond_10
    sget-object v0, Ldb;->L:[Ljava/lang/String;

    aput-object p1, v0, p0

    .line 2062
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1f

    if-eqz p2, :cond_1f

    .line 2064
    const-string v0, "mc"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 2072
    :cond_1e
    :goto_1e
    return-void

    .line 2066
    :cond_1f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 2068
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static Code(JJJ)V
    .registers 10

    .prologue
    .line 2204
    sget-object v1, Ldb;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 2206
    :try_start_3
    sget-wide v2, Ldb;->ap:J

    add-long/2addr v2, p0

    sput-wide v2, Ldb;->ap:J

    .line 2207
    sget-wide v2, Ldb;->aq:J

    add-long/2addr v2, p2

    sput-wide v2, Ldb;->aq:J

    .line 2208
    sget-wide v2, Ldb;->ao:J

    add-long/2addr v2, p4

    sput-wide v2, Ldb;->ao:J

    .line 2209
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static Code(Lbm;)V
    .registers 2

    .prologue
    .line 489
    :try_start_0
    invoke-interface {p0}, Lbm;->C()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 494
    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static Code(Lbr;I[CIIIIIIII)V
    .registers 23

    .prologue
    .line 3333
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lbp;->Z()I

    move-result v0

    add-int v6, p6, v0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Lbr;->Code(I[CIIIIIZIII)V

    .line 3338
    return-void
.end method

.method private static Code(Ljava/io/ByteArrayOutputStream;IIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 3686
    invoke-static {p4}, Lap;->Code(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 3687
    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Lap;->Code(Ljava/lang/String;[BI)I

    move-result v1

    .line 3690
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3691
    and-int/lit16 v2, p1, 0xff

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3692
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3693
    and-int/lit16 v2, p2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3694
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3696
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3697
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3698
    return-void
.end method

.method private static Code(Ljava/io/DataInputStream;I)V
    .registers 4

    .prologue
    .line 1252
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_d

    .line 1254
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ldb;->I(I)V

    move p1, v0

    goto :goto_0

    .line 1256
    :cond_d
    return-void
.end method

.method static Code(Ljava/io/DataOutputStream;[I)V
    .registers 3

    .prologue
    .line 512
    if-eqz p1, :cond_e

    .line 515
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 516
    invoke-static {p1}, Ldb;->Code([I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 522
    :goto_d
    return-void

    .line 520
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_d
.end method

.method public static Code(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 466
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 471
    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static Code(Ljava/io/InputStream;I)V
    .registers 6

    .prologue
    .line 1099
    :goto_0
    if-lez p1, :cond_b

    .line 1101
    int-to-long v0, p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_0

    .line 1103
    :cond_b
    return-void
.end method

.method public static Code(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 477
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 482
    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static Code(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 711
    monitor-enter p0

    .line 713
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 714
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static Code(Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 692
    monitor-enter p0

    .line 696
    int-to-long v0, p1

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_a
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 702
    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_a
    move-exception v0

    goto :goto_5
.end method

.method public static Code(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 734
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 735
    return-void
.end method

.method static declared-synchronized Code(Z)V
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/16 v1, 0x20

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 3526
    const-class v10, Ldb;

    monitor-enter v10

    const/4 v0, 0x0

    :try_start_9
    sput v0, Ldb;->ag:I

    .line 3528
    if-nez p0, :cond_18

    sget-object v0, Ldb;->G:[B

    if-eqz v0, :cond_18

    sget-object v0, Ldb;->G:[B

    array-length v0, v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1c9

    if-ne v0, v1, :cond_18

    .line 3678
    :cond_16
    :goto_16
    monitor-exit v10

    return-void

    .line 3534
    :cond_18
    :try_start_18
    new-instance v3, Lcq;

    invoke-direct {v3}, Lcq;-><init>()V

    .line 3536
    const/16 v0, 0xd

    new-array v4, v0, [C

    fill-array-data v4, :array_268

    .line 3545
    new-instance v0, Lbf;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lbf;-><init>(I)V

    sput-object v0, Ldb;->au:Lbf;

    .line 3546
    sget v0, Ldb;->ad:I

    sget v1, Ldb;->ae:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x4046

    sput v0, Ldb;->at:I

    .line 3547
    if-eqz p0, :cond_4b

    .line 3549
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 3550
    sget-object v0, Lar;->Z:Lan;

    sget v1, Ldb;->at:I

    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 3551
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    :cond_4b
    move v1, v2

    .line 3555
    :goto_4c
    sget v0, Ldb;->ad:I

    if-ge v1, v0, :cond_d1

    .line 3558
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0, v1}, Lci;->a(I)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 3559
    const/4 v0, 0x0

    sget-object v5, Ldb;->af:[Lbp;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lbp;->I()I

    move-result v5

    invoke-static {v1}, Ldb;->c(I)I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Ldb;->af:[Lbp;

    aget-object v6, v6, v1

    invoke-interface {v6}, Lbp;->Z()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3566
    sget-object v5, Ldb;->af:[Lbp;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lbp;->I()I

    move-result v5

    sub-int v0, v5, v0

    .line 3567
    sget-object v5, Ldb;->au:Lbf;

    invoke-virtual {v5, v0}, Lbf;->write(I)V

    .line 3568
    sget-object v0, Ldb;->au:Lbf;

    sget-object v5, Ldb;->af:[Lbp;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lbp;->I()I

    move-result v5

    invoke-virtual {v0, v5}, Lbf;->write(I)V

    move v0, v2

    .line 3570
    :goto_90
    array-length v5, v4

    if-ge v0, v5, :cond_a1

    .line 3575
    sget-object v5, Ldb;->au:Lbf;

    aget-char v6, v4, v0

    invoke-static {v1, v6}, Ldb;->Code(IC)I

    move-result v6

    invoke-virtual {v5, v6}, Lbf;->write(I)V

    .line 3570
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 3579
    :cond_a1
    sget-object v0, Ldb;->au:Lbf;

    const/4 v5, 0x1

    sget-object v6, Ldb;->af:[Lbp;

    aget-object v6, v6, v1

    invoke-static {v6}, Ldb;->Code(Lbp;)I

    move-result v6

    sget-object v7, Ldb;->af:[Lbp;

    aget-object v7, v7, v1

    invoke-interface {v7}, Lbp;->B()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v5, v6, v7}, Ldb;->Code(Ljava/io/ByteArrayOutputStream;IIILjava/lang/String;)V

    .line 3582
    sget-object v0, Ldb;->au:Lbf;

    invoke-virtual {v0}, Lbf;->Code()[B

    move-result-object v0

    const/4 v5, 0x0

    sget-object v6, Ldb;->au:Lbf;

    invoke-virtual {v6}, Lbf;->size()I

    move-result v6

    invoke-virtual {v3, v0, v5, v6}, Lcq;->Code([BII)V

    .line 3583
    sget-object v0, Ldb;->au:Lbf;

    invoke-virtual {v0}, Lbf;->reset()V

    .line 3555
    :cond_cc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4c

    .line 3606
    :cond_d1
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcq;->Code(I)V

    .line 3609
    sget-object v0, Ldb;->au:Lbf;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lbf;->Code(I)V

    .line 3610
    sget-object v0, Ldb;->au:Lbf;

    invoke-virtual {v0}, Lbf;->Code()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcq;->Code([B)V

    .line 3612
    if-eqz p0, :cond_245

    move v5, v2

    .line 3614
    :goto_e8
    sget v0, Ldb;->ad:I

    if-ge v5, v0, :cond_240

    .line 3617
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0, v5}, Lci;->a(I)Z

    move-result v0

    if-nez v0, :cond_23b

    .line 3618
    const/4 v0, 0x0

    sget-object v1, Ldb;->af:[Lbp;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lbp;->I()I

    move-result v1

    invoke-static {v5}, Ldb;->c(I)I

    move-result v3

    sub-int/2addr v1, v3

    sget-object v3, Ldb;->af:[Lbp;

    aget-object v3, v3, v5

    invoke-interface {v3}, Lbp;->Z()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3621
    sget-object v1, Ldb;->af:[Lbp;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lbp;->I()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3624
    sget-object v3, Ldb;->au:Lbf;

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lbf;->write(I)V

    .line 3625
    sget-object v3, Ldb;->au:Lbf;

    and-int/lit16 v4, v5, 0xff

    invoke-virtual {v3, v4}, Lbf;->write(I)V

    .line 3630
    sget-object v3, Ldb;->au:Lbf;

    invoke-virtual {v3, v1}, Lbf;->write(I)V

    .line 3631
    sget-object v1, Ldb;->au:Lbf;

    invoke-virtual {v1, v0}, Lbf;->write(I)V

    .line 3635
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lbp;->d()V

    .line 3637
    const/4 v0, 0x0

    sput v0, Ldb;->av:I

    const/4 v0, 0x4

    sput v0, Ldb;->ax:I

    sget v0, Ldb;->ax:I

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v9, v0

    sput v0, Ldb;->ay:I

    const v1, 0x7fffffff

    const/16 v0, 0x11

    new-array v11, v0, [I

    fill-array-data v11, :array_27a

    move v0, v2

    move v3, v2

    move v7, v1

    move v6, v9

    move v1, v2

    :goto_156
    const v4, 0xffff

    if-gt v6, v4, :cond_204

    add-int/lit8 v4, v6, 0x1

    int-to-char v6, v6

    invoke-static {v5, v6}, Ldb;->Code(IC)I

    move-result v8

    sget v6, Ldb;->ag:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Ldb;->ag:I

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ne v1, v7, :cond_17b

    add-int/lit8 v6, v4, -0x1

    aget v13, v11, v0

    if-eq v6, v13, :cond_17b

    add-int/lit8 v3, v3, 0x1

    move v1, v8

    move v6, v4

    goto :goto_156

    :cond_17b
    if-lez v3, :cond_1a3

    if-ge v3, v14, :cond_18a

    move v6, v2

    :goto_180
    if-ge v6, v3, :cond_1a2

    sget v13, Ldb;->ax:I

    invoke-static {v7, v13}, Ldb;->Code(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_180

    :cond_18a
    sget v6, Ldb;->ay:I

    sget v7, Ldb;->ax:I

    invoke-static {v6, v7}, Ldb;->Code(II)V

    sget v6, Ldb;->ax:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    shl-int v6, v9, v6

    if-gt v3, v6, :cond_1cc

    sget v6, Ldb;->ax:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v3, v6}, Ldb;->Code(II)V

    :cond_1a2
    :goto_1a2
    move v3, v2

    :cond_1a3
    :goto_1a3
    sget v6, Ldb;->ax:I

    add-int/lit8 v6, v6, -0x1

    ushr-int v6, v12, v6

    if-eqz v6, :cond_1da

    sget v6, Ldb;->ay:I

    sget v7, Ldb;->ax:I

    invoke-static {v6, v7}, Ldb;->Code(II)V

    const/4 v6, 0x1

    sget v7, Ldb;->ax:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ldb;->Code(II)V

    sget v6, Ldb;->ax:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Ldb;->ax:I

    sget v6, Ldb;->ax:I

    add-int/lit8 v6, v6, -0x1

    shl-int v6, v9, v6

    sput v6, Ldb;->ay:I
    :try_end_1c8
    .catchall {:try_start_18 .. :try_end_1c8} :catchall_1c9

    goto :goto_1a3

    .line 3526
    :catchall_1c9
    move-exception v0

    monitor-exit v10

    throw v0

    .line 3637
    :cond_1cc
    const/4 v6, 0x2

    :try_start_1cd
    sget v7, Ldb;->ax:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ldb;->Code(II)V

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ldb;->Code(II)V

    goto :goto_1a2

    :cond_1da
    sget v6, Ldb;->ax:I

    invoke-static {v1, v6}, Ldb;->Code(II)V

    add-int/lit8 v6, v4, -0x1

    aget v7, v11, v0

    if-ne v6, v7, :cond_1ff

    const/4 v1, 0x0

    sget v3, Ldb;->ax:I

    invoke-static {v1, v3}, Ldb;->Code(II)V

    add-int/lit8 v1, v0, 0x1

    aget v1, v11, v1

    aget v3, v11, v0

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v0, 0x1

    aget v3, v11, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    move v4, v3

    move v3, v1

    move v1, v2

    :cond_1ff
    move v7, v1

    move v6, v4

    move v1, v8

    goto/16 :goto_156

    :cond_204
    if-lez v3, :cond_21a

    sget v0, Ldb;->ay:I

    sget v1, Ldb;->ax:I

    invoke-static {v0, v1}, Ldb;->Code(II)V

    const/4 v0, 0x2

    sget v1, Ldb;->ax:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ldb;->Code(II)V

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ldb;->Code(II)V

    :cond_21a
    sget v0, Ldb;->ay:I

    sget v1, Ldb;->ax:I

    invoke-static {v0, v1}, Ldb;->Code(II)V

    const/4 v0, 0x3

    sget v1, Ldb;->ax:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ldb;->Code(II)V

    sget v0, Ldb;->av:I

    if-eqz v0, :cond_239

    sget-object v0, Ldb;->au:Lbf;

    sget v1, Ldb;->aw:I

    sget v3, Ldb;->av:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lbf;->write(I)V

    :cond_239
    sget-object v0, Ldb;->au:Lbf;

    .line 3614
    :cond_23b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_e8

    .line 3640
    :cond_240
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->ab()V

    .line 3659
    :cond_245
    sget-object v0, Ldb;->au:Lbf;

    invoke-virtual {v0}, Lbf;->toByteArray()[B

    move-result-object v0

    sput-object v0, Ldb;->G:[B

    .line 3660
    const/4 v0, 0x0

    sput-object v0, Ldb;->au:Lbf;

    .line 3666
    const/4 v0, 0x0

    sput-object v0, Ldb;->H:[B

    .line 3667
    if-eqz p0, :cond_258

    .line 3669
    invoke-static {}, Ldb;->m()V

    .line 3673
    :cond_258
    if-eqz p0, :cond_16

    .line 3675
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 3676
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lar;->Z(I)V
    :try_end_266
    .catchall {:try_start_1cd .. :try_end_266} :catchall_1c9

    goto/16 :goto_16

    .line 3536
    :array_268
    .array-data 2
        0x20s
        0x6ds
        0x69s
        0x30s
        0x58s
        0xe5s
        0x627s
        0x5dfs
        0x3a8s
        0x3042s
        0x44es
        0x4e00s
        0x330fs
    .end array-data

    .line 3637
    nop

    :array_27a
    .array-data 4
        0x1
        0x1f
        0x7fb
        0x8ff
        0x1b7d
        0x1cff
        0x3400
        0x4dbf
        0x4e00
        0x9fbf
        0xa4c7
        0xa6ff
        0xac00
        0xd7a3
        0xd800
        0xfaff
        0x10000
    .end array-data
.end method

.method static Code([BIII)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 2298
    const/4 v0, 0x0

    aput-byte v1, p0, v0

    .line 2299
    const/16 v0, 0x10

    aput-byte v0, p0, v1

    .line 2300
    const/4 v0, 0x2

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 2301
    const/4 v0, 0x3

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 2302
    const/4 v0, 0x4

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 2303
    const/4 v0, 0x5

    int-to-byte v1, p3

    aput-byte v1, p0, v0

    .line 2304
    return-void
.end method

.method static Code([BIIIII[I)V
    .registers 16

    .prologue
    const/16 v8, 0x100

    const/4 v5, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 4168
    if-eq p4, v7, :cond_57

    if-eq p5, v7, :cond_57

    move v1, v6

    .line 4169
    :goto_b
    const/4 v0, 0x4

    if-lt p2, v0, :cond_14

    aget-byte v0, p0, p1

    const/16 v3, 0x52

    if-eq v0, v3, :cond_20

    :cond_14
    aget-byte v0, p0, p1

    const/16 v3, 0x43

    if-eq v0, v3, :cond_20

    aget-byte v0, p0, p1

    const/16 v3, 0x58

    if-ne v0, v3, :cond_68

    .line 4180
    :cond_20
    aget-byte v0, p0, p1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_59

    .line 4182
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    mul-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    ushr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    sget v3, Ldb;->b:I

    mul-int/2addr v1, v3

    or-int/2addr v0, v1

    aput v0, p6, v2

    .line 4193
    :goto_4c
    aget v0, p6, v2

    aput v0, p6, v5

    aput v0, p6, v6

    .line 4194
    sput v2, Ldb;->aB:I

    .line 4195
    sput v2, Ldb;->aC:I

    .line 4277
    :goto_56
    return-void

    :cond_57
    move v1, v2

    .line 4168
    goto :goto_b

    .line 4190
    :cond_59
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    mul-int/2addr v0, v1

    sget v1, Ldb;->b:I

    mul-int/2addr v0, v1

    aput v0, p6, v2

    goto :goto_4c

    .line 4200
    :cond_68
    const/16 v0, 0x17

    if-lt p2, v0, :cond_b0

    aget-byte v0, p0, p1

    const/16 v3, -0x77

    if-ne v0, v3, :cond_b0

    .line 4203
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Lap;->J([BI)I

    move-result v1

    .line 4204
    add-int/lit8 v0, p1, 0x14

    invoke-static {p0, v0}, Lap;->J([BI)I

    move-result v0

    move v3, v1

    move v1, v2

    .line 4256
    :goto_80
    sput p5, Ldb;->aB:I

    .line 4257
    sput p4, Ldb;->aC:I

    .line 4258
    mul-int v4, p5, p4

    sget v7, Ldb;->b:I

    mul-int/2addr v4, v7

    aput v4, p6, v6

    .line 4259
    if-eq p3, v8, :cond_134

    .line 4261
    mul-int v4, p5, p3

    add-int/lit8 v4, v4, -0x1

    div-int/lit16 v4, v4, 0x100

    add-int/lit8 v4, v4, 0x1

    mul-int v7, p4, p3

    add-int/lit8 v7, v7, -0x1

    div-int/lit16 v7, v7, 0x100

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v4, v7

    sget v7, Ldb;->b:I

    mul-int/2addr v4, v7

    aput v4, p6, v2

    .line 4264
    if-lez v1, :cond_12b

    .line 4266
    aget v2, p6, v2

    mul-int/2addr v0, v3

    sget v3, Ldb;->b:I

    mul-int/2addr v0, v3

    div-int/2addr v0, v1

    add-int/2addr v0, v2

    aput v0, p6, v5

    goto :goto_56

    .line 4206
    :cond_b0
    aget-byte v0, p0, p1

    if-ne v0, v7, :cond_148

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v3, -0x28

    if-ne v0, v3, :cond_148

    move v0, v5

    .line 4210
    :cond_bd
    :goto_bd
    if-ge v0, p2, :cond_145

    .line 4212
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-ne v3, v7, :cond_145

    .line 4214
    add-int/lit8 v0, v0, 0x1

    .line 4217
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-eq v3, v7, :cond_bd

    .line 4220
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-eqz v3, :cond_145

    .line 4225
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-eq v3, v6, :cond_e9

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x30

    if-lt v3, v4, :cond_ec

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x29

    if-gt v3, v4, :cond_ec

    .line 4231
    :cond_e9
    add-int/lit8 v0, v0, 0x1

    .line 4232
    goto :goto_bd

    .line 4234
    :cond_ec
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x40

    if-eq v3, v4, :cond_fc

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x3e

    if-ne v3, v4, :cond_11f

    .line 4237
    :cond_fc
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x6

    invoke-static {p0, v3}, Lap;->Z([BI)I

    move-result v4

    .line 4238
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lap;->Z([BI)I

    move-result v3

    .line 4245
    :goto_10b
    if-eqz v1, :cond_129

    mul-int/lit16 v0, p5, 0x100

    div-int/2addr v0, v4

    .line 4246
    :goto_110
    sget-boolean v1, Ldb;->t:Z

    if-nez v1, :cond_140

    if-ge v0, v8, :cond_140

    .line 4248
    const/16 v1, 0x8

    .line 4249
    :goto_118
    div-int v7, v8, v1

    if-gt v7, v0, :cond_13c

    .line 4251
    div-int/lit8 v1, v1, 0x2

    goto :goto_118

    .line 4241
    :cond_11f
    add-int/lit8 v0, v0, 0x1

    .line 4242
    add-int v3, p1, v0

    invoke-static {p0, v3}, Lap;->Z([BI)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_bd

    :cond_129
    move v0, p3

    .line 4245
    goto :goto_110

    .line 4270
    :cond_12b
    aget v0, p6, v2

    aget v1, p6, v6

    add-int/2addr v0, v1

    aput v0, p6, v5

    goto/16 :goto_56

    .line 4275
    :cond_134
    aget v0, p6, v6

    aput v0, p6, v5

    aput v0, p6, v2

    goto/16 :goto_56

    :cond_13c
    move v0, v3

    move v3, v4

    goto/16 :goto_80

    :cond_140
    move v1, v2

    move v0, v3

    move v3, v4

    goto/16 :goto_80

    :cond_145
    move v3, v2

    move v4, v2

    goto :goto_10b

    :cond_148
    move v1, v2

    move v0, v2

    move v3, v2

    goto/16 :goto_80
.end method

.method static Code([BII[I)V
    .registers 11

    .prologue
    const/16 v4, 0x58

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 4059
    const/4 v0, 0x4

    if-lt p2, v0, :cond_f

    aget-byte v0, p0, p1

    const/16 v2, 0x52

    if-eq v0, v2, :cond_19

    :cond_f
    aget-byte v0, p0, p1

    const/16 v2, 0x43

    if-eq v0, v2, :cond_19

    aget-byte v0, p0, p1

    if-ne v0, v4, :cond_5d

    .line 4069
    :cond_19
    aget-byte v0, p0, p1

    if-ne v0, v4, :cond_4e

    .line 4071
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    ushr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    mul-int/2addr v2, v4

    or-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    ushr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    sget v4, Ldb;->b:I

    mul-int/2addr v2, v4

    or-int/2addr v0, v2

    aput v0, p3, v1

    .line 4082
    :goto_43
    aget v0, p3, v1

    aput v0, p3, v3

    aput v0, p3, v6

    .line 4083
    sput v1, Ldb;->aB:I

    .line 4084
    sput v1, Ldb;->aC:I

    .line 4163
    :goto_4d
    return-void

    .line 4079
    :cond_4e
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    mul-int/2addr v0, v2

    sget v2, Ldb;->b:I

    mul-int/2addr v0, v2

    aput v0, p3, v1

    goto :goto_43

    .line 4088
    :cond_5d
    const/16 v0, 0x17

    if-lt p2, v0, :cond_85

    aget-byte v0, p0, p1

    const/16 v2, -0x77

    if-ne v0, v2, :cond_85

    .line 4092
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Lap;->J([BI)I

    move-result v2

    .line 4093
    add-int/lit8 v0, p1, 0x14

    invoke-static {p0, v0}, Lap;->J([BI)I

    move-result v0

    .line 4136
    :goto_73
    mul-int v4, v2, v0

    sget v5, Ldb;->b:I

    mul-int/2addr v4, v5

    aput v4, p3, v6

    .line 4145
    sput v2, Ldb;->aB:I

    .line 4146
    sput v0, Ldb;->aC:I

    .line 4147
    aget v0, p3, v6

    aput v0, p3, v3

    aput v0, p3, v1

    goto :goto_4d

    .line 4095
    :cond_85
    aget-byte v0, p0, p1

    if-ne v0, v5, :cond_f0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    const/16 v2, -0x28

    if-ne v0, v2, :cond_f0

    move v0, v3

    .line 4099
    :cond_92
    :goto_92
    if-ge v0, p2, :cond_ed

    .line 4101
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_ed

    .line 4103
    add-int/lit8 v0, v0, 0x1

    .line 4106
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eq v2, v5, :cond_92

    .line 4109
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_ed

    .line 4114
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eq v2, v6, :cond_be

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    const/16 v4, -0x30

    if-lt v2, v4, :cond_c1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    const/16 v4, -0x29

    if-gt v2, v4, :cond_c1

    .line 4120
    :cond_be
    add-int/lit8 v0, v0, 0x1

    .line 4121
    goto :goto_92

    .line 4123
    :cond_c1
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    const/16 v4, -0x40

    if-eq v2, v4, :cond_d1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    const/16 v4, -0x3e

    if-ne v2, v4, :cond_e3

    .line 4126
    :cond_d1
    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x6

    invoke-static {p0, v2}, Lap;->Z([BI)I

    move-result v2

    .line 4127
    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lap;->Z([BI)I

    move-result v0

    .line 4134
    :goto_e0
    sget-boolean v4, Ldb;->t:Z

    goto :goto_73

    .line 4130
    :cond_e3
    add-int/lit8 v0, v0, 0x1

    .line 4131
    add-int v2, p1, v0

    invoke-static {p0, v2}, Lap;->Z([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_92

    :cond_ed
    move v0, v1

    move v2, v1

    goto :goto_e0

    :cond_f0
    move v0, v1

    move v2, v1

    goto :goto_73
.end method

.method public static Code(C)Z
    .registers 2

    .prologue
    .line 3154
    invoke-static {p0}, Ldb;->I(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ldb;->Z(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static Code(IIIIIIII)Z
    .registers 9

    .prologue
    .line 1178
    add-int v0, p4, p6

    if-ge p0, v0, :cond_12

    add-int v0, p0, p2

    if-le v0, p4, :cond_12

    add-int v0, p5, p7

    if-ge p1, v0, :cond_12

    add-int v0, p1, p3

    if-le v0, p5, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static Code(I[B)Z
    .registers 10

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2310
    sget-object v4, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v4

    .line 2316
    :try_start_6
    sget-object v0, Lcn;->Code:Lcn;

    const-string v5, "mo"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2317
    array-length v5, v0

    if-ne v5, v2, :cond_6f

    .line 2319
    const/4 v5, 0x0

    aget-byte v0, v0, v5
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_15} :catch_2c
    .catchall {:try_start_6 .. :try_end_15} :catchall_6c

    .line 2328
    :goto_15
    if-ne v0, v1, :cond_1e

    .line 2335
    :try_start_17
    sget-object v5, Lcn;->Code:Lcn;

    const-string v6, "mo"

    invoke-virtual {v5, v6}, Lcn;->Z(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_6c

    .line 2339
    :cond_1e
    if-ge p0, v0, :cond_2f

    .line 2341
    :try_start_20
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "mo"

    add-int/lit8 v5, p0, 0x2

    invoke-virtual {v0, v1, v5, p1}, Lcn;->Code(Ljava/lang/String;I[B)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_5a
    .catchall {:try_start_20 .. :try_end_29} :catchall_6c

    .line 2366
    :goto_29
    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_6c

    move v0, v2

    .line 2373
    :goto_2b
    return v0

    .line 2326
    :catch_2c
    move-exception v0

    move v0, v1

    goto :goto_15

    .line 2345
    :cond_2f
    const/4 v5, 0x1

    :try_start_30
    new-array v5, v5, [B

    .line 2346
    const/4 v6, 0x0

    add-int/lit8 v7, p0, 0x1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2347
    if-ne v0, v1, :cond_51

    .line 2350
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "mo"

    invoke-virtual {v0, v1, v5}, Lcn;->Code(Ljava/lang/String;[B)I

    move v0, v3

    .line 2357
    :goto_42
    if-ge v0, p0, :cond_64

    .line 2360
    sget-object v1, Lcn;->Code:Lcn;

    const-string v5, "mo"

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-virtual {v1, v5, v6}, Lcn;->Code(Ljava/lang/String;[B)I

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 2354
    :cond_51
    sget-object v1, Lcn;->Code:Lcn;

    const-string v6, "mo"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7, v5}, Lcn;->Code(Ljava/lang/String;I[B)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_59} :catch_5a
    .catchall {:try_start_30 .. :try_end_59} :catchall_6c

    goto :goto_42

    .line 2371
    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-static {}, Ldb;->c()V

    .line 2372
    invoke-static {}, Ldb;->a()V

    .line 2373
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_6c

    move v0, v3

    goto :goto_2b

    .line 2364
    :cond_64
    :try_start_64
    sget-object v0, Lcn;->Code:Lcn;

    const-string v1, "mo"

    invoke-virtual {v0, v1, p1}, Lcn;->Code(Ljava/lang/String;[B)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6b} :catch_5a
    .catchall {:try_start_64 .. :try_end_6b} :catchall_6c

    goto :goto_29

    .line 2375
    :catchall_6c
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6f
    move v0, v1

    goto :goto_15
.end method

.method public static Code([B[B)Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 968
    if-ne p0, p1, :cond_6

    move v1, v2

    .line 983
    :cond_5
    :goto_5
    return v1

    .line 972
    :cond_6
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 976
    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    .line 978
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_5

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    move v1, v2

    .line 983
    goto :goto_5
.end method

.method static Code([I)[B
    .registers 5

    .prologue
    .line 538
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 539
    array-length v0, v1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 541
    div-int/lit8 v2, v0, 0x4

    aget v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_6

    .line 543
    :cond_19
    return-object v1
.end method

.method static Code(Ljava/io/DataInputStream;)[I
    .registers 4

    .prologue
    .line 526
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 527
    if-nez v0, :cond_8

    .line 529
    const/4 v0, 0x0

    .line 533
    :goto_7
    return-object v0

    .line 531
    :cond_8
    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 532
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 533
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ldb;->Code([BII)[I

    move-result-object v0

    goto :goto_7
.end method

.method static Code([BII)[I
    .registers 7

    .prologue
    .line 1107
    div-int/lit8 v0, p2, 0x4

    new-array v1, v0, [I

    .line 1108
    array-length v0, v1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_35

    .line 1110
    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_5

    .line 1115
    :cond_35
    return-object v1
.end method

.method static Code([II)[I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1072
    new-array v0, p1, [I

    .line 1073
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1074
    return-object v0
.end method

.method static Code([Lbu;I)[Lbu;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4306
    new-array v0, p1, [Lbu;

    .line 4307
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4308
    return-object v0
.end method

.method static I([B)Lch;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1268
    sget-object v1, Ldb;->ak:Lcq;

    monitor-enter v1

    .line 1274
    :try_start_4
    sget v0, Ldb;->am:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ldb;->am:I

    invoke-static {v0}, Ldb;->I(I)V

    .line 1275
    sget-object v0, Ldb;->ak:Lcq;

    invoke-virtual {v0, p0}, Lcq;->Code([B)V

    .line 1276
    sget-object v0, Ldb;->ak:Lcq;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, p0, v2, v3}, Lcq;->Code([BII)V

    .line 1277
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2d

    .line 1278
    new-instance v0, Lch;

    invoke-direct {v0}, Lch;-><init>()V

    .line 1279
    invoke-virtual {v0, p0, v4}, Lch;->Code([BI)V

    .line 1280
    sget-object v1, Lbe;->c:[B

    .line 1281
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lch;->I([BI)V

    .line 1282
    invoke-virtual {v0, p0, v4}, Lch;->Z([BI)V

    .line 1283
    return-object v0

    .line 1277
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static I(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 889
    :goto_c
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 890
    if-ltz v1, :cond_1c

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_25

    .line 892
    :cond_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 894
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 896
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static I()V
    .registers 2

    .prologue
    .line 1228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ldb;->I(I)V

    .line 1229
    return-void
.end method

.method public static I(I)V
    .registers 3

    .prologue
    .line 1233
    sget-object v1, Ldb;->ak:Lcq;

    monitor-enter v1

    .line 1235
    :try_start_3
    sget-object v0, Ldb;->ak:Lcq;

    invoke-virtual {v0, p0}, Lcq;->Code(I)V

    .line 1236
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static I(C)Z
    .registers 2

    .prologue
    .line 3159
    const/16 v0, 0x590

    if-gt v0, p0, :cond_a

    const/16 v0, 0x5ff

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/16 v10, 0x2a

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 4388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 4389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 4393
    if-nez v9, :cond_13

    if-nez v8, :cond_13

    move v4, v6

    .line 4421
    :cond_12
    :goto_12
    return v4

    .line 4394
    :cond_13
    if-eqz v9, :cond_12

    move v0, v1

    move v3, v4

    .line 4398
    :goto_17
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 4399
    if-eq v2, v1, :cond_44

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4400
    :goto_25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_4b

    move v7, v3

    .line 4403
    :goto_32
    if-eq v7, v1, :cond_12

    .line 4408
    if-nez v3, :cond_3e

    if-lez v7, :cond_3e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_12

    .line 4413
    :cond_3e
    add-int/lit8 v3, v9, -0x1

    if-ne v0, v3, :cond_50

    move v4, v6

    .line 4415
    goto :goto_12

    .line 4399
    :cond_44
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_25

    .line 4400
    :cond_4b
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    goto :goto_32

    .line 4418
    :cond_50
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    .line 4420
    if-lt v0, v8, :cond_5b

    if-ne v2, v1, :cond_5b

    move v4, v6

    .line 4421
    goto :goto_12

    :cond_5b
    move v3, v0

    move v0, v2

    goto :goto_17
.end method

.method static I([BII)Z
    .registers 8

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 4343
    const/16 v1, 0x8

    if-gt p2, v1, :cond_8

    .line 4359
    :cond_7
    :goto_7
    return v0

    .line 4347
    :cond_8
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    const/16 v3, -0x77

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0x50

    if-ne v1, v3, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_7

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_7

    .line 4359
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static J(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2053
    sget-object v0, Ldb;->L:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-eqz v0, :cond_b

    sget-object v0, Ldb;->L:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method static J()V
    .registers 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x20

    .line 2170
    sget-object v1, Ldb;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 2172
    :try_start_6
    sget-wide v2, Ldb;->ap:J

    .line 2173
    sget-wide v4, Ldb;->aq:J

    .line 2174
    sget-wide v6, Ldb;->ao:J

    .line 2175
    const-wide/16 v8, 0x0

    sput-wide v8, Ldb;->ao:J

    sput-wide v8, Ldb;->aq:J

    sput-wide v8, Ldb;->ap:J

    .line 2176
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_b1

    .line 2181
    sub-long v0, v2, v6

    .line 2183
    sget-object v8, Lar;->I:Lar;

    invoke-virtual {v8}, Lar;->h()V

    .line 2185
    sget-object v8, Lar;->Z:Lan;

    sget-object v9, Lar;->Z:Lan;

    const/16 v10, 0xa

    const/16 v11, 0x3f

    invoke-virtual {v9, v10, v11}, Lan;->I(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lan;->Z(I)V

    .line 2187
    sget-object v8, Lar;->Z:Lan;

    sget-object v9, Lar;->Z:Lan;

    invoke-virtual {v9}, Lan;->Z()I

    move-result v9

    long-to-int v10, v2

    invoke-virtual {v8, v9, v13, v10}, Lan;->B(III)V

    .line 2188
    sget-object v8, Lar;->Z:Lan;

    sget-object v9, Lar;->Z:Lan;

    invoke-virtual {v9}, Lan;->Z()I

    move-result v9

    const/4 v10, 0x1

    shr-long/2addr v2, v12

    long-to-int v2, v2

    invoke-virtual {v8, v9, v10, v2}, Lan;->B(III)V

    .line 2189
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3}, Lan;->Z()I

    move-result v3

    const/4 v8, 0x2

    long-to-int v9, v4

    invoke-virtual {v2, v3, v8, v9}, Lan;->B(III)V

    .line 2190
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3}, Lan;->Z()I

    move-result v3

    const/4 v8, 0x3

    shr-long/2addr v4, v12

    long-to-int v4, v4

    invoke-virtual {v2, v3, v8, v4}, Lan;->B(III)V

    .line 2191
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3}, Lan;->Z()I

    move-result v3

    const/4 v4, 0x4

    long-to-int v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lan;->B(III)V

    .line 2192
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3}, Lan;->Z()I

    move-result v3

    const/4 v4, 0x5

    shr-long/2addr v0, v12

    long-to-int v0, v0

    invoke-virtual {v2, v3, v4, v0}, Lan;->B(III)V

    .line 2193
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->Z()I

    move-result v1

    const/16 v2, 0x8

    long-to-int v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lan;->B(III)V

    .line 2194
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->Z()I

    move-result v1

    const/16 v2, 0x9

    shr-long v3, v6, v12

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lan;->B(III)V

    .line 2196
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->Z()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 2197
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, v13}, Lan;->Z(I)V

    .line 2199
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 2200
    return-void

    .line 2176
    :catchall_b1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static J(C)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3199
    invoke-static {p0}, Ldb;->I(C)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    :goto_8
    sget v2, Ldb;->s:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    invoke-static {p0}, Ldb;->C(C)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x4

    goto :goto_8

    :cond_17
    invoke-static {p0}, Ldb;->a(C)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x8

    goto :goto_8

    :cond_20
    move v0, v1

    goto :goto_8
.end method

.method static J(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 1120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1121
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1123
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1125
    :cond_22
    return-object v1
.end method

.method static Z()Ljava/io/DataInputStream;
    .registers 2

    .prologue
    .line 1985
    new-instance v0, Ljava/io/DataInputStream;

    const-string v1, "/t"

    invoke-static {v1}, Ldb;->B(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1986
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ldb;->Code(ILjava/io/DataInputStream;)I

    .line 1987
    return-object v0
.end method

.method static Z(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 902
    if-eqz p0, :cond_1d

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 904
    :cond_1d
    return-object p0
.end method

.method static Z(I)V
    .registers 6

    .prologue
    .line 1931
    const/4 v1, 0x0

    .line 1935
    const v0, 0x8000

    and-int/2addr v0, p0

    if-nez v0, :cond_29

    .line 1937
    :try_start_7
    new-instance v0, Ljava/io/DataInputStream;

    const-string v2, "/t"

    invoke-static {v2}, Ldb;->B(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_37
    .catchall {:try_start_7 .. :try_end_12} :catchall_3f

    .line 1938
    :try_start_12
    invoke-static {p0, v0}, Ldb;->Code(ILjava/io/DataInputStream;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_57
    .catchall {:try_start_12 .. :try_end_15} :catchall_48

    move-result v1

    .line 1946
    :goto_16
    :try_start_16
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v1}, Lan;->r(I)V

    .line 1947
    sget-object v2, Lar;->Z:Lan;

    iget-object v2, v2, Lan;->Code:[B

    sget-object v3, Lar;->Z:Lan;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_57
    .catchall {:try_start_16 .. :try_end_25} :catchall_52

    .line 1955
    :try_start_25
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_44

    .line 1956
    :goto_28
    return-void

    .line 1942
    :cond_29
    :try_start_29
    invoke-static {p0}, Lax;->Code(I)Lax;

    move-result-object v2

    .line 1943
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_37
    .catchall {:try_start_29 .. :try_end_32} :catchall_3f

    .line 1944
    :try_start_32
    invoke-virtual {v2}, Lax;->Code()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_57
    .catchall {:try_start_32 .. :try_end_35} :catchall_4d

    move-result v1

    goto :goto_16

    :catch_37
    move-exception v0

    move-object v0, v1

    .line 1955
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_28

    .line 1956
    :catch_3d
    move-exception v0

    goto :goto_28

    .line 1955
    :catchall_3f
    move-exception v0

    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_46

    :goto_43
    throw v0

    .line 1956
    :catch_44
    move-exception v0

    goto :goto_28

    :catch_46
    move-exception v1

    goto :goto_43

    .line 1955
    :catchall_48
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_40

    :catchall_4d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_40

    :catchall_52
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_40

    :catch_57
    move-exception v1

    goto :goto_39
.end method

.method public static Z(C)Z
    .registers 2

    .prologue
    .line 3164
    invoke-static {p0}, Ldb;->C(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ldb;->a(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 2279
    sget-byte v0, Ldb;->X:B

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    .line 2282
    sget-byte v0, Ldb;->X:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Ldb;->X:B

    .line 2283
    invoke-static {}, Ldb;->c()V

    .line 2285
    :cond_f
    return-void
.end method

.method static a(I)V
    .registers 6

    .prologue
    .line 3375
    sget-object v0, Ldb;->as:[I

    if-eqz v0, :cond_b

    sget-object v0, Ldb;->as:[I

    array-length v0, v0

    mul-int/lit8 v1, p0, 0x2

    if-ge v0, v1, :cond_43

    .line 3378
    :cond_b
    const/4 v0, 0x0

    sput-object v0, Ldb;->as:[I

    .line 3381
    mul-int/lit8 v0, p0, 0x2

    new-array v0, v0, [I

    .line 3382
    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldb;->as:[I

    .line 3384
    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x1267

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 3387
    const/4 v0, 0x0

    :goto_1f
    sget-object v2, Ldb;->as:[I

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_43

    .line 3392
    sget-object v2, Ldb;->as:[I

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    aput v3, v2, v0

    .line 3393
    sget-object v2, Ldb;->as:[I

    sget-object v3, Ldb;->as:[I

    array-length v3, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    sget-object v4, Ldb;->as:[I

    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x40

    aput v4, v2, v3

    .line 3387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3397
    :cond_43
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2685
    :try_start_2
    new-instance v2, Lbf;

    invoke-direct {v2}, Lbf;-><init>()V

    .line 2686
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2687
    const-string v4, "mc"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2689
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ldb;->J(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2695
    :cond_24
    :goto_24
    invoke-virtual {v2}, Lbf;->toByteArray()[B

    move-result-object v0

    .line 2696
    sget-object v1, Lcn;->Code:Lcn;

    invoke-virtual {v1, p0}, Lcn;->Z(Ljava/lang/String;)V

    .line 2697
    sget-object v1, Lcn;->Code:Lcn;

    invoke-virtual {v1, p0, v0}, Lcn;->Code(Ljava/lang/String;[B)I

    .line 2705
    :goto_32
    return-void

    .line 2691
    :cond_33
    const-string v4, "md"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2693
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write(I)V

    const/16 v4, 0x20

    new-array v4, v4, [B

    sget-object v5, Ldb;->ak:Lcq;

    monitor-enter v5
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_47} :catch_aa

    :try_start_47
    sget-object v6, Ldb;->ak:Lcq;

    invoke-virtual {v6, v4}, Lcq;->Code([B)V

    sget-object v6, Ldb;->ak:Lcq;

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-virtual {v6, v4, v7, v8}, Lcq;->Code([BII)V

    monitor-exit v5
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_ac

    :try_start_55
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    sget v4, Ldb;->F:I

    const/16 v5, 0xa0

    if-lt v4, v5, :cond_af

    :goto_5e
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {v3}, Lcs;->Code(Ljava/io/DataOutputStream;)V

    sget-boolean v0, Ldb;->O:Z

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget v0, Ldb;->an:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v0, Ldb;->u:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget v0, Ldb;->ah:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v0, Ldb;->ai:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0, v3}, Lci;->Code(Ljava/io/DataOutputStream;)V

    sget v0, Ldb;->P:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Ldb;->Q:Ljava/lang/String;

    if-eqz v0, :cond_b1

    sget-object v0, Ldb;->Q:Ljava/lang/String;

    :goto_8d
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-byte v0, Ldb;->X:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-boolean v0, Ldb;->E:Z

    if-eqz v0, :cond_b4

    sget-object v0, Ldb;->L:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_b4

    sget-object v0, Ldb;->L:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    :goto_a5
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 2705
    :catch_aa
    move-exception v0

    goto :goto_32

    .line 2693
    :catchall_ac
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_af
    move v0, v1

    goto :goto_5e

    :cond_b1
    const-string v0, ""

    goto :goto_8d

    :cond_b4
    const-string v0, ""
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_b6} :catch_aa

    goto :goto_a5
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 3174
    const v0, 0xfb50

    if-gt v0, p0, :cond_a

    const v0, 0xfdff

    if-le p0, v0, :cond_14

    :cond_a
    const v0, 0xfe70

    if-gt v0, p0, :cond_16

    const v0, 0xfefe

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static b()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2494
    sget-object v5, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v5

    .line 2496
    :try_start_5
    sget-object v0, Ldb;->aa:[B

    if-eqz v0, :cond_d

    sget-object v0, Ldb;->ac:[B

    if-nez v0, :cond_3f

    .line 2498
    :cond_d
    sget-object v0, Lcn;->Code:Lcn;

    const-string v3, "mo"

    invoke-virtual {v0, v3}, Lcn;->Code(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2500
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_2f

    .line 2571
    :goto_18
    return-void

    .line 2506
    :cond_19
    :try_start_19
    sget-object v0, Lcn;->Code:Lcn;

    const-string v3, "mo"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2507
    array-length v3, v0

    if-ne v3, v2, :cond_cb

    .line 2509
    const/4 v3, 0x0

    aget-byte v0, v0, v3
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_28} :catch_32
    .catchall {:try_start_19 .. :try_end_28} :catchall_2f

    .line 2515
    :goto_28
    if-nez v0, :cond_35

    .line 2517
    :try_start_2a
    invoke-static {}, Ldb;->c()V

    .line 2518
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2f

    goto :goto_18

    .line 2571
    :catchall_2f
    move-exception v0

    monitor-exit v5

    throw v0

    .line 2512
    :catch_32
    move-exception v0

    move v0, v1

    goto :goto_28

    .line 2520
    :cond_35
    mul-int/lit8 v3, v0, 0x3

    :try_start_37
    new-array v3, v3, [B

    sput-object v3, Ldb;->ab:[B

    .line 2521
    new-array v0, v0, [B

    sput-object v0, Ldb;->ac:[B

    .line 2523
    :cond_3f
    sget-object v0, Ldb;->ab:[B

    if-nez v0, :cond_56

    .line 2525
    sget-object v0, Ldb;->aa:[B

    array-length v0, v0

    new-array v0, v0, [B

    sput-object v0, Ldb;->ab:[B

    .line 2526
    sget-object v0, Ldb;->aa:[B

    const/4 v3, 0x0

    sget-object v4, Ldb;->ab:[B

    const/4 v6, 0x0

    sget-object v7, Ldb;->aa:[B

    array-length v7, v7

    invoke-static {v0, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    move v4, v1

    .line 2529
    :goto_57
    sget-object v0, Ldb;->ab:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_2f

    if-ge v4, v0, :cond_c5

    move v3, v1

    .line 2535
    :goto_5f
    :try_start_5f
    sget-object v0, Lcn;->Code:Lcn;

    const-string v6, "mo"

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v0, v6, v7}, Lcn;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2536
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    if-eq v6, v2, :cond_73

    .line 2539
    invoke-static {}, Ldb;->c()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_71} :catch_a9
    .catchall {:try_start_5f .. :try_end_71} :catchall_2f

    .line 2540
    :try_start_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_2f

    goto :goto_18

    .line 2542
    :cond_73
    const/4 v6, 0x1

    :try_start_74
    aget-byte v6, v0, v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_7f

    .line 2545
    invoke-static {}, Ldb;->c()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_a9
    .catchall {:try_start_74 .. :try_end_7d} :catchall_2f

    .line 2546
    :try_start_7d
    monitor-exit v5
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_2f

    goto :goto_18

    .line 2548
    :cond_7f
    :try_start_7f
    sget-object v6, Ldb;->ab:[B

    mul-int/lit8 v7, v4, 0x3

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    aput-byte v8, v6, v7

    .line 2549
    sget-object v6, Ldb;->ab:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    aput-byte v8, v6, v7

    .line 2550
    sget-object v6, Ldb;->ab:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x4

    aget-byte v8, v0, v8

    aput-byte v8, v6, v7

    .line 2551
    sget-object v6, Ldb;->ac:[B

    const/4 v7, 0x5

    aget-byte v0, v0, v7

    aput-byte v0, v6, v4
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_a5} :catch_a9
    .catchall {:try_start_7f .. :try_end_a5} :catchall_2f

    .line 2529
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_57

    .line 2556
    :catch_a9
    move-exception v0

    :try_start_aa
    sget v0, Lar;->b:I

    if-ge v3, v0, :cond_bc

    .line 2558
    sget-object v6, Lar;->I:Lar;

    if-lez v3, :cond_ba

    move v0, v2

    :goto_b3
    invoke-virtual {v6, v0}, Lar;->Code(Z)V

    .line 2531
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5f

    :cond_ba
    move v0, v1

    .line 2558
    goto :goto_b3

    .line 2563
    :cond_bc
    invoke-static {}, Ldb;->a()V

    .line 2564
    invoke-static {}, Ldb;->c()V

    .line 2565
    monitor-exit v5

    goto/16 :goto_18

    .line 2570
    :cond_c5
    invoke-static {}, Ldb;->e()V

    .line 2571
    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_aa .. :try_end_c9} :catchall_2f

    goto/16 :goto_18

    :cond_cb
    move v0, v1

    goto/16 :goto_28
.end method

.method public static b(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    .line 2720
    :try_start_3
    sget-object v0, Lcn;->Code:Lcn;

    invoke-virtual {v0, p0}, Lcn;->I(Ljava/lang/String;)[B

    move-result-object v0

    .line 2721
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2722
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2724
    const-string v1, "mc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2726
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_38

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_32

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ldb;->Code(ILjava/lang/String;Z)V

    :cond_32
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    sput-boolean v0, Ldb;->aj:Z

    .line 2740
    :cond_38
    :goto_38
    return-void

    .line 2728
    :cond_39
    const-string v1, "md"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2730
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_44} :catch_ae

    move-result v1

    if-gt v1, v3, :cond_38

    const/16 v2, 0x8

    :try_start_49
    invoke-static {v0, v2}, Ldb;->Code(Ljava/io/DataInputStream;I)V

    if-lt v1, v3, :cond_54

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    sput-boolean v2, Ldb;->aj:Z

    :cond_54
    sget-boolean v2, Ldb;->aj:Z

    if-eqz v2, :cond_5c

    const/16 v2, 0xa0

    sput v2, Ldb;->F:I

    :cond_5c
    invoke-static {v0, v1}, Lcs;->Code(Ljava/io/DataInputStream;I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    sput-boolean v2, Ldb;->O:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sput v2, Ldb;->an:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sput v2, Ldb;->u:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_80

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    sput v2, Ldb;->ah:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    sput v2, Ldb;->ai:I

    :cond_80
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2, v0, v1}, Lci;->Code(Ljava/io/DataInputStream;I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    sput v1, Ldb;->P:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldb;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    sput-byte v1, Ldb;->X:B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ldb;->Code(ILjava/lang/String;Z)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_ab} :catch_ae

    goto :goto_38

    :catch_ac
    move-exception v0

    goto :goto_38

    .line 2736
    :catch_ae
    move-exception v0

    goto :goto_38
.end method

.method private static b(C)Z
    .registers 3

    .prologue
    .line 4545
    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xdc00

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(I)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1898
    .line 1902
    const v1, 0x8000

    and-int/2addr v1, p0

    if-nez v1, :cond_23

    .line 1904
    :try_start_7
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "/t"

    invoke-static {v2}, Ldb;->B(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_33
    .catchall {:try_start_7 .. :try_end_12} :catchall_3b

    .line 1905
    :try_start_12
    invoke-static {p0, v1}, Ldb;->Code(ILjava/io/DataInputStream;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_4c
    .catchall {:try_start_12 .. :try_end_15} :catchall_47

    move-result v2

    move v3, v2

    move-object v2, v1

    .line 1913
    :goto_18
    :try_start_18
    new-array v1, v3, [B

    .line 1914
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_4e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_49

    .line 1924
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_43

    :goto_21
    move-object v0, v1

    :goto_22
    return-object v0

    .line 1909
    :cond_23
    :try_start_23
    invoke-static {p0}, Lax;->Code(I)Lax;

    move-result-object v2

    .line 1910
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_33
    .catchall {:try_start_23 .. :try_end_2c} :catchall_3b

    .line 1911
    :try_start_2c
    invoke-virtual {v2}, Lax;->Code()I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_4c
    .catchall {:try_start_2c .. :try_end_2f} :catchall_47

    move-result v2

    move v3, v2

    move-object v2, v1

    goto :goto_18

    :catch_33
    move-exception v1

    move-object v1, v0

    .line 1920
    :goto_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_22

    :catch_39
    move-exception v1

    goto :goto_22

    :catchall_3b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_45

    :goto_42
    throw v0

    :catch_43
    move-exception v0

    goto :goto_21

    :catch_45
    move-exception v1

    goto :goto_42

    :catchall_47
    move-exception v0

    goto :goto_3f

    :catchall_49
    move-exception v0

    move-object v1, v2

    goto :goto_3f

    :catch_4c
    move-exception v2

    goto :goto_35

    :catch_4e
    move-exception v1

    move-object v1, v2

    goto :goto_35
.end method

.method private static c(I)I
    .registers 3

    .prologue
    .line 3222
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lbp;->J()I

    move-result v0

    if-lez v0, :cond_13

    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lbp;->J()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    sget-object v0, Ldb;->af:[Lbp;

    aget-object v0, v0, p0

    invoke-interface {v0}, Lbp;->I()I

    move-result v0

    sget-object v1, Ldb;->af:[Lbp;

    aget-object v1, v1, p0

    invoke-interface {v1}, Lbp;->Z()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_12
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const v5, 0xfef5

    const v4, 0xfe80

    .line 3972
    const/4 v1, 0x0

    .line 3974
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 3976
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3977
    if-gt v4, v2, :cond_2f

    const v3, 0xfefc

    if-gt v2, v3, :cond_2f

    .line 3979
    if-nez v1, :cond_20

    .line 3981
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3983
    :cond_20
    if-ge v2, v5, :cond_32

    .line 3985
    sget-object v3, Ldb;->aA:[B

    sub-int/2addr v2, v4

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x600

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 3974
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3990
    :cond_32
    const/16 v3, 0x644

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 3991
    add-int/lit8 v0, v0, 0x1

    .line 3992
    sget-object v3, Ldb;->az:[B

    sub-int/2addr v2, v5

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x600

    int-to-char v2, v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2f

    .line 3997
    :cond_47
    if-nez v1, :cond_4a

    :goto_49
    return-object p0

    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49
.end method

.method public static c()V
    .registers 3

    .prologue
    .line 2580
    sget-object v1, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v1

    .line 2582
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Ldb;->aa:[B

    .line 2583
    const/4 v0, 0x0

    sput-object v0, Ldb;->ab:[B

    .line 2584
    const/4 v0, 0x0

    sput-object v0, Ldb;->ac:[B

    .line 2585
    sget-object v0, Lcn;->Code:Lcn;

    const-string v2, "mo"

    invoke-virtual {v0, v2}, Lcn;->Z(Ljava/lang/String;)V

    .line 2586
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2595
    const/4 v0, 0x0

    .line 2597
    sget-object v5, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v5

    .line 2599
    :try_start_5
    sget-object v1, Ldb;->ac:[B

    if-eqz v1, :cond_6d

    .line 2601
    const/4 v0, 0x6

    new-array v6, v0, [B

    .line 2602
    sget-object v0, Ldb;->ac:[B

    array-length v0, v0

    new-array v3, v0, [B

    move v4, v2

    move v1, v2

    .line 2603
    :goto_13
    sget-object v0, Ldb;->ac:[B

    array-length v0, v0

    if-ge v4, v0, :cond_6a

    .line 2605
    sget-object v0, Ldb;->ac:[B

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_68

    .line 2607
    add-int/lit8 v0, v1, 0x1

    sget-object v7, Ldb;->aa:[B

    mul-int/lit8 v8, v4, 0x3

    aget-byte v7, v7, v8

    aput-byte v7, v3, v1

    .line 2609
    sget-object v1, Ldb;->aa:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v1, v7

    .line 2610
    sget-object v1, Ldb;->aa:[B

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v1, v7

    .line 2611
    sget-object v1, Ldb;->aa:[B

    mul-int/lit8 v7, v4, 0x3

    aget-byte v1, v1, v7

    const/4 v7, 0x0

    sget-object v8, Ldb;->ac:[B

    aget-byte v8, v8, v4

    invoke-static {v6, v1, v7, v8}, Ldb;->Code([BIII)V

    .line 2615
    invoke-static {v4, v6}, Ldb;->Code(I[B)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2618
    :goto_50
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_13

    :cond_55
    move-object v1, v3

    .line 2623
    :goto_56
    invoke-static {}, Ldb;->e()V

    .line 2624
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_63

    .line 2625
    if-lez v0, :cond_66

    .line 2627
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v1, v2, v0}, Lan;->I([BII)I

    move-result v0

    .line 2629
    :goto_62
    return v0

    .line 2624
    :catchall_63
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_66
    move v0, v2

    .line 2629
    goto :goto_62

    :cond_68
    move v0, v1

    goto :goto_50

    :cond_6a
    move v0, v1

    move-object v1, v3

    goto :goto_56

    :cond_6d
    move-object v1, v0

    move v0, v2

    goto :goto_56
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4324
    if-eqz p0, :cond_1c

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "&url=rtsp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    .line 4326
    const-string v0, "rtsp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4328
    :cond_1c
    return-object p0
.end method

.method public static e()V
    .registers 2

    .prologue
    .line 2644
    sget-object v1, Ldb;->Y:Ljava/lang/Object;

    monitor-enter v1

    .line 2646
    :try_start_3
    sget-object v0, Ldb;->ab:[B

    if-eqz v0, :cond_e

    .line 2648
    sget-object v0, Ldb;->ab:[B

    sput-object v0, Ldb;->aa:[B

    .line 2649
    const/4 v0, 0x0

    sput-object v0, Ldb;->ab:[B

    .line 2651
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 11

    .prologue
    const/16 v4, 0x3a

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 4452
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4456
    :goto_a
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4458
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 4462
    :cond_1f
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_53

    .line 4464
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4465
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_53

    .line 4468
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4483
    :goto_37
    sget-object v2, Ldb;->aD:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 4485
    const-string v3, ""

    .line 4486
    sget-object v2, Ldb;->aE:Ljava/lang/Integer;

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 4534
    :goto_46
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v3, v4, v1

    aput-object v0, v4, v7

    const/4 v0, 0x3

    aput-object v2, v4, v0

    return-object v4

    .line 4479
    :cond_53
    const-string v1, "http"

    goto :goto_37

    .line 4491
    :cond_56
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 4493
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4496
    :cond_62
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_6e

    .line 4498
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4501
    :cond_6e
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_b1

    .line 4503
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4504
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 4513
    :goto_81
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_8f

    .line 4515
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4518
    :cond_8f
    const-string v3, "www."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 4520
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4523
    :goto_9c
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_b4

    .line 4525
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 4526
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    .line 4509
    :cond_b1
    const-string v2, ""

    goto :goto_81

    .line 4530
    :cond_b4
    sget-object v0, Ldb;->aD:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_46

    :cond_bd
    move-object v3, v0

    goto :goto_9c
.end method

.method static declared-synchronized f()I
    .registers 3

    .prologue
    .line 2885
    const-class v1, Ldb;

    monitor-enter v1

    :try_start_3
    sget v0, Ldb;->an:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ldb;->an:I

    .line 2886
    const-string v2, "md"

    invoke-static {v2}, Ldb;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 2887
    monitor-exit v1

    return v0

    .line 2885
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static g()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2919
    invoke-static {}, Ldb;->k()I

    move-result v1

    .line 2920
    invoke-static {}, Ldb;->l()I

    move-result v0

    .line 2921
    if-eq v1, v2, :cond_44

    if-eq v0, v2, :cond_44

    .line 2923
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2924
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_28

    .line 2926
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 2928
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2930
    :goto_43
    return-object v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method static h()I
    .registers 1

    .prologue
    .line 4284
    sget v0, Ldb;->aB:I

    return v0
.end method

.method static i()I
    .registers 1

    .prologue
    .line 4292
    sget v0, Ldb;->aC:I

    return v0
.end method

.method static j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opera Mini/7.6.35766/hifi/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lay;->Code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()I
    .registers 2

    .prologue
    .line 2897
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->M()I

    move-result v0

    .line 2898
    sget v1, Ldb;->ah:I

    if-eq v0, v1, :cond_14

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 2900
    sput v0, Ldb;->ah:I

    .line 2901
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 2903
    :cond_14
    sget v0, Ldb;->ah:I

    return v0
.end method

.method private static l()I
    .registers 2

    .prologue
    .line 2908
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->N()I

    move-result v0

    .line 2909
    sget v1, Ldb;->ai:I

    if-eq v0, v1, :cond_14

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 2911
    sput v0, Ldb;->ai:I

    .line 2912
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 2914
    :cond_14
    sget v0, Ldb;->ai:I

    return v0
.end method

.method private static declared-synchronized m()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 3714
    const-class v7, Ldb;

    monitor-enter v7

    :try_start_5
    new-instance v8, Lbf;

    const/16 v0, 0x20

    invoke-direct {v8, v0}, Lbf;-><init>(I)V

    move v0, v1

    move v3, v1

    move-object v5, v6

    .line 3720
    :goto_f
    sget v2, Ldb;->ad:I

    if-ge v1, v2, :cond_40

    .line 3723
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2, v1}, Lci;->a(I)Z

    move-result v2

    if-nez v2, :cond_53

    .line 3724
    sget-object v2, Ldb;->af:[Lbp;

    aget-object v2, v2, v1

    .line 3727
    invoke-interface {v2}, Lbp;->B()Ljava/lang/String;

    move-result-object v4

    .line 3728
    invoke-static {v2}, Ldb;->Code(Lbp;)I

    move-result v2

    .line 3729
    if-eqz v5, :cond_37

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    if-eq v2, v3, :cond_37

    .line 3731
    :cond_31
    sub-int v9, v1, v0

    invoke-static {v8, v0, v9, v3, v5}, Ldb;->Code(Ljava/io/ByteArrayOutputStream;IIILjava/lang/String;)V

    move-object v5, v6

    .line 3735
    :cond_37
    if-nez v5, :cond_53

    move v0, v1

    move-object v3, v4

    .line 3720
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    move-object v5, v3

    move v3, v2

    goto :goto_f

    .line 3743
    :cond_40
    if-eqz v5, :cond_48

    .line 3745
    sget v1, Ldb;->ad:I

    sub-int/2addr v1, v0

    invoke-static {v8, v0, v1, v3, v5}, Ldb;->Code(Ljava/io/ByteArrayOutputStream;IIILjava/lang/String;)V

    .line 3748
    :cond_48
    invoke-virtual {v8}, Lbf;->toByteArray()[B

    move-result-object v0

    sput-object v0, Ldb;->H:[B
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_50

    .line 3750
    monitor-exit v7

    return-void

    .line 3714
    :catchall_50
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_53
    move v2, v3

    move-object v3, v5

    goto :goto_3b
.end method
