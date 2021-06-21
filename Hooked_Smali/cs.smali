.class public final Lcs;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static Code:B

.field private static W:Z

.field private static final X:Ljava/lang/Object;

.field private static Y:I

.field static Z:Ljava/util/Hashtable;

.field private static aa:Z

.field private static ae:Ljava/util/Vector;

.field private static af:Lbp;

.field static b:Z

.field private static f:B

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static j:I

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:I

.field private static p:B

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static y:Lct;


# instance fields
.field private A:J

.field B:Lbs;

.field C:Lcl;

.field private D:J

.field private E:I

.field private final F:Z

.field private G:Lby;

.field private H:Lby;

.field I:[B

.field J:Lbs;

.field private K:[B

.field private L:[Ljava/lang/Object;

.field private M:[I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Lbc;

.field private S:Lbe;

.field private T:[Ljava/lang/Object;

.field private U:I

.field private V:I

.field a:Lcl;

.field private final ab:I

.field private ac:Z

.field private final ad:Z

.field private c:[Ljava/lang/String;

.field private d:Lcp;

.field private e:B

.field private i:I

.field private s:Z

.field private t:Ljava/util/Vector;

.field private u:Ljava/io/DataInputStream;

.field private v:Ljava/io/DataOutputStream;

.field private w:Ljava/io/DataInputStream;

.field private x:Ljava/io/DataOutputStream;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 102
    sput-byte v1, Lcs;->f:B

    .line 111
    sput-object v3, Lcs;->g:Ljava/lang/String;

    .line 136
    sput v2, Lcs;->j:I

    .line 137
    sput-boolean v2, Lcs;->k:Z

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcs;->n:Z

    .line 143
    sput v2, Lcs;->o:I

    .line 173
    sput-byte v1, Lcs;->Code:B

    .line 174
    sput-byte v1, Lcs;->p:B

    .line 175
    const-string v0, ""

    sput-object v0, Lcs;->q:Ljava/lang/String;

    .line 176
    const-string v0, ""

    sput-object v0, Lcs;->r:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcs;->Z:Ljava/util/Hashtable;

    .line 299
    sput-boolean v2, Lcs;->W:Z

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcs;->X:Ljava/lang/Object;

    .line 303
    sput v1, Lcs;->Y:I

    .line 345
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcs;->ae:Ljava/util/Vector;

    .line 3109
    sput-object v3, Lcs;->af:Lbp;

    return-void
.end method

.method public constructor <init>(IBZZ)V
    .registers 13

    .prologue
    const/16 v7, 0xa0

    const/16 v2, 0x7c

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v4, p0, Lcs;->i:I

    .line 190
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcs;->t:Ljava/util/Vector;

    .line 214
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcs;->I:[B

    .line 234
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcs;->L:[Ljava/lang/Object;

    .line 239
    new-array v0, v2, [I

    iput-object v0, p0, Lcs;->M:[I

    .line 314
    iput-boolean v4, p0, Lcs;->ac:Z

    .line 350
    iput p1, p0, Lcs;->ab:I

    .line 351
    iput-boolean p4, p0, Lcs;->ad:Z

    .line 353
    if-eqz p3, :cond_d4

    .line 355
    invoke-static {p1}, Lcz;->I(I)Lcp;

    move-result-object v0

    iput-object v0, p0, Lcs;->d:Lcp;

    .line 356
    iput-boolean v3, p0, Lcs;->ac:Z

    .line 365
    :goto_31
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->L()Z

    move-result v2

    if-eqz v2, :cond_dc

    const/4 v0, 0x3

    :goto_3a
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcs;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->I()Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "socket://server4.operamini.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcs;->d:Lcp;

    iget-object v6, v6, Lcp;->Z:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcs;->d:Lcp;

    iget v6, v6, Lcp;->B:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    :goto_6b
    if-eqz v2, :cond_73

    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    const-string v2, "http://10.0.0.172:80/"

    aput-object v2, v0, v3

    :cond_73
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcs;->c:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0}, Lcs;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 366
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    array-length v0, v0

    sget v2, Lcs;->h:I

    if-eq v0, v2, :cond_12c

    .line 369
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcs;->h:I

    .line 370
    invoke-static {}, Lcs;->J()V

    move v2, v3

    .line 375
    :goto_90
    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->Z()Ljava/lang/String;

    move-result-object v5

    .line 376
    sget-object v0, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 377
    if-eqz v0, :cond_e6

    .line 379
    iput-object v0, p0, Lcs;->T:[Ljava/lang/Object;

    .line 380
    aget-object v0, v0, v4

    check-cast v0, Lbe;

    iput-object v0, p0, Lcs;->S:Lbe;

    .line 396
    :goto_a8
    if-eqz v2, :cond_af

    .line 398
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 401
    :cond_af
    const/4 v0, -0x1

    if-eq p2, v0, :cond_112

    :goto_b2
    iput-byte p2, p0, Lcs;->e:B

    .line 404
    sget v0, Ldb;->F:I

    if-lt v0, v7, :cond_12a

    :goto_b8
    iput-boolean v3, p0, Lcs;->F:Z

    .line 413
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_c9

    .line 415
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 417
    :cond_c9
    if-eqz p4, :cond_d0

    .line 419
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v0, p0, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 421
    :cond_d0
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Runnable;)V

    .line 422
    return-void

    .line 360
    :cond_d4
    invoke-static {p1}, Lcz;->Code(I)Lcp;

    move-result-object v0

    iput-object v0, p0, Lcs;->d:Lcp;

    goto/16 :goto_31

    :cond_dc
    move v0, v1

    .line 365
    goto/16 :goto_3a

    :cond_df
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    const-string v5, "socket://do_not_use_me:0"

    aput-object v5, v0, v4

    goto :goto_6b

    .line 384
    :cond_e6
    new-instance v0, Lbe;

    iget-object v2, p0, Lcs;->d:Lcp;

    iget-object v2, v2, Lcp;->C:Ljava/lang/String;

    invoke-static {v2}, Ldb;->J(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4, v7}, Ldb;->Code([BII)[I

    move-result-object v2

    invoke-direct {v0, v2}, Lbe;-><init>([I)V

    iput-object v0, p0, Lcs;->S:Lbe;

    .line 389
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcs;->T:[Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcs;->T:[Ljava/lang/Object;

    iget-object v1, p0, Lcs;->S:Lbe;

    aput-object v1, v0, v4

    .line 391
    iget-object v0, p0, Lcs;->T:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 392
    sget-object v0, Lcs;->Z:Ljava/util/Hashtable;

    iget-object v1, p0, Lcs;->T:[Ljava/lang/Object;

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 393
    goto :goto_a8

    .line 401
    :cond_112
    sget-byte v0, Lcs;->Code:B

    if-ltz v0, :cond_121

    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->I()Z

    move-result v0

    if-nez v0, :cond_121

    sget-byte p2, Lcs;->Code:B

    goto :goto_b2

    :cond_121
    sget-byte v0, Lcs;->p:B

    if-ltz v0, :cond_128

    sget-byte p2, Lcs;->p:B

    goto :goto_b2

    :cond_128
    move p2, v3

    goto :goto_b2

    :cond_12a
    move v3, v4

    .line 404
    goto :goto_b8

    :cond_12c
    move v2, v4

    goto/16 :goto_90
.end method

.method private B(Lct;)V
    .registers 16

    .prologue
    const/16 v9, 0xf

    const/16 v3, 0x16

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1345
    if-nez p1, :cond_9

    .line 1410
    :cond_8
    :goto_8
    return-void

    .line 1349
    :cond_9
    invoke-virtual {p1, v2}, Lct;->Code(Z)Ljava/util/Hashtable;

    move-result-object v5

    .line 1350
    if-eqz v5, :cond_8

    .line 1354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    .line 1355
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1357
    new-instance v7, Lbf;

    const/16 v0, 0x1008

    invoke-direct {v7, v0}, Lbf;-><init>(I)V

    .line 1358
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1359
    invoke-virtual {p1}, Lct;->C()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v7, v3, v0, v1}, Lcs;->Code(Lbf;III)V

    .line 1360
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1361
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1362
    invoke-static {v5}, Lcs;->Code(Ljava/util/Hashtable;)I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    .line 1363
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1364
    invoke-virtual {v7}, Lbf;->Code()[B

    move-result-object v0

    invoke-direct {p0, v0, v4, v9}, Lcs;->Code([BII)V

    .line 1365
    invoke-virtual {v7}, Lbf;->Code()[B

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcs;->Code([BI)V

    .line 1366
    invoke-virtual {v7, v4}, Lbf;->Code(I)V

    .line 1369
    const/4 v1, 0x0

    .line 1372
    :try_start_55
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_f2

    move-result-object v9

    move-object v3, v1

    :goto_5a
    :try_start_5a
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 1374
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1375
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1377
    invoke-static {v0}, Lap;->Code(Ljava/lang/String;)I

    move-result v10

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lap;->Code(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x8

    .line 1380
    const/16 v10, 0x16

    invoke-virtual {p1}, Lct;->C()I

    move-result v11

    invoke-static {v7, v10, v11, v2}, Lcs;->Code(Lbf;III)V

    .line 1381
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1382
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1384
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1385
    invoke-virtual {v7}, Lbf;->Code()[B

    move-result-object v0

    const/4 v11, 0x0

    add-int/lit8 v12, v2, 0x8

    invoke-direct {p0, v0, v11, v12}, Lcs;->Code([BII)V

    .line 1386
    invoke-virtual {v7}, Lbf;->Code()[B

    move-result-object v0

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v2}, Lcs;->Code([BI)V

    .line 1387
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lbf;->Code(I)V

    .line 1389
    sget-object v2, Lar;->c:Lbk;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2, v0, v1, v11}, Lbk;->Code(Ljava/lang/String;ZI)Lbm;

    move-result-object v0

    invoke-interface {v0}, Lbm;->Code()Ljava/io/InputStream;
    :try_end_c3
    .catchall {:try_start_5a .. :try_end_c3} :catchall_110

    move-result-object v1

    .line 1391
    :try_start_c4
    invoke-virtual {v7}, Lbf;->Code()[B

    move-result-object v2

    move v0, v4

    .line 1396
    :goto_c9
    invoke-virtual {p1}, Lct;->k()Z

    move-result v3

    if-nez v3, :cond_fe

    const/16 v3, 0x8

    const/16 v11, 0x1000

    invoke-virtual {v1, v2, v3, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_fe

    if-ge v0, v10, :cond_fe

    .line 1398
    add-int/2addr v0, v3

    .line 1399
    const/4 v11, 0x0

    const/16 v12, 0x16

    invoke-virtual {p1}, Lct;->C()I

    move-result v13

    invoke-static {v2, v11, v12, v13, v3}, Lcs;->Code([BIIII)V

    .line 1400
    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x8

    invoke-direct {p0, v2, v11, v12}, Lcs;->Code([BII)V

    .line 1401
    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v2, v3}, Lcs;->Code([BI)V
    :try_end_f1
    .catchall {:try_start_c4 .. :try_end_f1} :catchall_f2

    goto :goto_c9

    .line 1408
    :catchall_f2
    move-exception v0

    :goto_f3
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 1409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Thread;->setPriority(I)V

    throw v0

    .line 1403
    :cond_fe
    :try_start_fe
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_f2

    move-object v3, v1

    .line 1404
    goto/16 :goto_5a

    .line 1408
    :cond_104
    invoke-static {v3}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 1409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_8

    .line 1408
    :catchall_110
    move-exception v0

    move-object v1, v3

    goto :goto_f3
.end method

.method private B(I)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 895
    sget-object v5, Lcs;->X:Ljava/lang/Object;

    monitor-enter v5

    .line 897
    :try_start_5
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    iget v1, p0, Lcs;->ab:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 899
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    const/4 v1, 0x0

    iget v4, p0, Lcs;->ab:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 902
    :cond_17
    sget-boolean v0, Lcs;->n:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcs;->s:Z

    if-eqz v0, :cond_54

    :cond_1f
    move v1, v3

    :goto_20
    move v4, v2

    .line 903
    :goto_21
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_5d

    .line 905
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 906
    invoke-virtual {v0}, Lct;->k()Z

    move-result v6

    if-nez v6, :cond_56

    invoke-virtual {v0}, Lct;->g()Z

    move-result v6

    if-nez v6, :cond_56

    if-nez v1, :cond_45

    invoke-virtual {v0}, Lct;->h()Z

    move-result v6

    if-nez v6, :cond_56

    .line 910
    :cond_45
    if-nez v1, :cond_4a

    .line 912
    invoke-virtual {v0}, Lct;->i()V

    .line 914
    :cond_4a
    invoke-virtual {v0}, Lct;->J()V

    .line 915
    invoke-static {v0}, Lcs;->I(Lct;)V

    .line 903
    :goto_50
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_21

    :cond_54
    move v1, v2

    .line 902
    goto :goto_20

    .line 919
    :cond_56
    invoke-virtual {v0, p1}, Lct;->I(I)V
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    goto :goto_50

    .line 936
    :catchall_5a
    move-exception v0

    monitor-exit v5

    throw v0

    .line 922
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 924
    iget-boolean v0, p0, Lcs;->P:Z

    if-nez v0, :cond_79

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcs;->P:Z

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    .line 929
    invoke-static {}, Lcs;->f()V

    .line 932
    sget-object v0, Lcs;->X:Ljava/lang/Object;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 933
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_5a

    .line 935
    :goto_78
    return v3

    :cond_79
    monitor-exit v5

    move v3, v2

    goto :goto_78
.end method

.method public static C()V
    .registers 1

    .prologue
    .line 1818
    sget-boolean v0, Lcs;->n:Z

    if-nez v0, :cond_7

    .line 1821
    invoke-static {}, Lcs;->J()V

    .line 1823
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private declared-synchronized C(I)V
    .registers 4

    .prologue
    .line 941
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcs;->D:J

    .line 942
    iput p1, p0, Lcs;->E:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 943
    monitor-exit p0

    return-void

    .line 941
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private C(Lct;)Z
    .registers 10

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x4

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2285
    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v2

    const/16 v3, 0x48

    if-ne v0, v3, :cond_29

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v1

    const/16 v3, 0x54

    if-ne v0, v3, :cond_29

    iget-object v0, p0, Lcs;->I:[B

    const/4 v3, 0x2

    aget-byte v0, v0, v3

    const/16 v3, 0x54

    if-ne v0, v3, :cond_29

    iget-object v0, p0, Lcs;->I:[B

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2b

    :cond_29
    move v0, v2

    .line 2414
    :goto_2a
    return v0

    .line 2290
    :cond_2b
    const/4 v0, 0x5

    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcs;->Code(II)V

    .line 2297
    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->Code()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0x8

    aget-byte v0, v0, v3

    if-ne v0, v7, :cond_d0

    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    const/16 v3, 0x33

    if-ne v0, v3, :cond_d0

    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0xa

    aget-byte v0, v0, v3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_d0

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v4

    const/16 v3, 0x31

    if-eq v0, v3, :cond_74

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v4

    const/16 v3, 0x32

    if-eq v0, v3, :cond_74

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v4

    const/16 v3, 0x33

    if-eq v0, v3, :cond_74

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v4

    const/16 v3, 0x37

    if-ne v0, v3, :cond_d0

    .line 2303
    :cond_74
    iput v1, p0, Lcs;->i:I

    .line 2304
    const/4 v0, 0x0

    .line 2307
    :try_start_77
    const-string v3, "location"

    invoke-direct {p0, v3}, Lcs;->Code(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7c} :catch_88

    move-result-object v0

    move-object v3, v0

    .line 2313
    :goto_7e
    if-eqz v3, :cond_86

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8b

    :cond_86
    move v0, v2

    .line 2317
    goto :goto_2a

    :catch_88
    move-exception v3

    move-object v3, v0

    goto :goto_7e

    .line 2324
    :cond_8b
    if-eqz p1, :cond_99

    .line 2326
    invoke-virtual {p1, v3}, Lct;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2328
    invoke-direct {p0, p1}, Lcs;->J(Lct;)V

    .line 2329
    invoke-static {}, Lcs;->f()V

    .line 2343
    :cond_99
    :goto_99
    sget-object v4, Lcs;->X:Ljava/lang/Object;

    monitor-enter v4

    .line 2345
    :try_start_9c
    sget-object v0, Lcs;->y:Lct;

    .line 2346
    :goto_9e
    if-eqz v0, :cond_c9

    .line 2348
    invoke-virtual {v0}, Lct;->Code()I

    move-result v5

    iget v6, p0, Lcs;->ab:I

    if-ne v5, v6, :cond_b9

    invoke-virtual {v0}, Lct;->k()Z

    move-result v5

    if-nez v5, :cond_b9

    if-eq v0, p1, :cond_b9

    .line 2350
    invoke-virtual {v0, v3}, Lct;->Code(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 2352
    invoke-static {}, Lcs;->f()V

    .line 2359
    :cond_b9
    :goto_b9
    invoke-virtual {v0}, Lct;->B()Lct;
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_c6

    move-result-object v0

    goto :goto_9e

    .line 2334
    :cond_be
    invoke-virtual {p1}, Lct;->close()V

    goto :goto_99

    .line 2356
    :cond_c2
    :try_start_c2
    invoke-virtual {v0}, Lct;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_b9

    .line 2361
    :catchall_c6
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_c9
    :try_start_c9
    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c6

    .line 2362
    invoke-direct {p0, v2, v2}, Lcs;->Code(ZI)V

    move v0, v1

    .line 2363
    goto/16 :goto_2a

    .line 2365
    :cond_d0
    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0x8

    aget-byte v0, v0, v3

    if-ne v0, v7, :cond_146

    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0x9

    aget-byte v0, v0, v3

    const/16 v3, 0x34

    if-ne v0, v3, :cond_146

    iget-object v0, p0, Lcs;->I:[B

    const/16 v3, 0xa

    aget-byte v0, v0, v3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_146

    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v4

    const/16 v3, 0x33

    if-ne v0, v3, :cond_146

    .line 2373
    const/4 v0, 0x2

    iput v0, p0, Lcs;->i:I

    .line 2374
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2377
    const/4 v0, 0x0

    :try_start_fd
    invoke-direct {p0, v0}, Lcs;->Code(Ljava/lang/String;)Ljava/lang/String;

    move v0, v2

    .line 2384
    :cond_101
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x100

    if-gt v0, v4, :cond_132

    .line 2386
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcs;->Code(II)V

    .line 2388
    iget-object v4, p0, Lcs;->I:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    if-le v4, v7, :cond_132

    .line 2390
    iget-object v4, p0, Lcs;->I:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2393
    if-ne v0, v6, :cond_101

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_101

    .line 2397
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_132} :catch_149

    .line 2407
    :cond_132
    :goto_132
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v6, :cond_144

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13c
    sput-object v0, Lcs;->g:Ljava/lang/String;

    .line 2411
    invoke-direct {p0, v2, v6}, Lcs;->Code(ZI)V

    move v0, v1

    .line 2412
    goto/16 :goto_2a

    .line 2407
    :cond_144
    const/4 v0, 0x0

    goto :goto_13c

    :cond_146
    move v0, v2

    .line 2414
    goto/16 :goto_2a

    :catch_149
    move-exception v0

    goto :goto_132
.end method

.method private static Code(Ljava/util/Hashtable;)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1324
    if-nez p0, :cond_5

    move v2, v3

    .line 1339
    :cond_4
    return v2

    .line 1329
    :cond_5
    const/4 v0, 0x7

    .line 1331
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    move v2, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1333
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1334
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1335
    invoke-static {v0}, Lap;->Code(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 1336
    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lap;->Code(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 1337
    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    move v2, v0

    .line 1338
    goto :goto_b
.end method

.method static Code([Ljava/lang/Object;[IIZ)Lct;
    .registers 5

    .prologue
    .line 526
    new-instance v0, Lct;

    invoke-direct {v0, p0, p1, p2, p3}, Lct;-><init>([Ljava/lang/Object;[IIZ)V

    .line 528
    invoke-static {v0}, Lcs;->I(Lct;)V

    invoke-static {}, Lcs;->f()V

    .line 529
    return-object v0
.end method

.method private Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2434
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2437
    :goto_7
    invoke-direct {p0, v4, v5}, Lcs;->Code(II)V

    .line 2438
    iget-object v1, p0, Lcs;->I:[B

    aget-byte v1, v1, v4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_15

    .line 2441
    invoke-direct {p0, v4, v5}, Lcs;->Code(II)V

    .line 2443
    :cond_15
    iget-object v1, p0, Lcs;->I:[B

    aget-byte v1, v1, v4

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4e

    .line 2446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_27

    .line 2448
    if-eqz p1, :cond_25

    .line 2486
    :cond_25
    const/4 v0, 0x0

    :goto_26
    return-object v0

    .line 2458
    :cond_27
    if-eqz p1, :cond_4a

    .line 2461
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2462
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2468
    if-ltz v2, :cond_4a

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2470
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2471
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 2478
    :cond_4a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_7

    .line 2483
    :cond_4e
    iget-object v1, p0, Lcs;->I:[B

    aget-byte v1, v1, v4

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7
.end method

.method private static Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v9, 0x25

    const/4 v2, 0x1

    const/16 v8, 0x7e

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 2710
    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 2711
    :cond_a
    :goto_a
    if-nez p0, :cond_4b

    .line 2713
    const-string v0, ""

    .line 2767
    :goto_e
    return-object v0

    .line 2710
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, ":/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v3, :cond_25

    const/16 v5, 0xa

    if-le v3, v5, :cond_a

    :cond_25
    if-eq v4, v7, :cond_3b

    if-ne v3, v7, :cond_3b

    add-int/lit8 v3, v4, 0x1

    if-eq v3, v0, :cond_a

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_a

    const/16 v3, 0x39

    if-gt v0, v3, :cond_a

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://server4.operamini.com/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 2716
    :cond_4b
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2717
    const/16 v3, 0x2f

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 2718
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2720
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_75

    if-ne v0, v7, :cond_75

    .line 2722
    invoke-static {p1}, Lcs;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2723
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2726
    :cond_75
    if-eq v0, v7, :cond_80

    if-eq v3, v7, :cond_80

    .line 2727
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 2732
    :cond_80
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v3, v1

    move v0, v1

    :goto_89
    if-ltz v4, :cond_c3

    .line 2734
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    .line 2735
    const/16 v7, 0x21

    if-lt v6, v7, :cond_9d

    if-gt v6, v8, :cond_9d

    const-string v7, "\"#;<>[]^`{|}~\\"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_a3

    .line 2738
    :cond_9d
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2732
    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, -0x1

    goto :goto_89

    .line 2741
    :cond_a3
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_b6

    move v3, v2

    .line 2754
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_a0

    if-eqz v3, :cond_a0

    if-eqz v0, :cond_a0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_a0

    .line 2745
    :cond_b6
    const/16 v7, 0x26

    if-ne v6, v7, :cond_bd

    move v0, v1

    move v3, v1

    .line 2747
    goto :goto_a8

    .line 2749
    :cond_bd
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_a8

    move v0, v2

    .line 2751
    goto :goto_a8

    .line 2757
    :cond_c3
    const/16 v0, 0x7f

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2758
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_db

    .line 2760
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2767
    :cond_d1
    :goto_d1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 2762
    :cond_db
    const/16 v0, 0x7d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d1

    .line 2764
    const/16 v0, 0x7d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_d1
.end method

.method private static Code(BLjava/lang/String;)V
    .registers 2

    .prologue
    .line 1789
    sput-byte p0, Lcs;->Code:B

    .line 1790
    sput-object p1, Lcs;->q:Ljava/lang/String;

    .line 1796
    return-void
.end method

.method public static Code(I)V
    .registers 2

    .prologue
    .line 497
    sget v0, Lcs;->j:I

    if-eq p0, v0, :cond_d

    .line 501
    const/4 v0, 0x0

    invoke-static {v0}, Lcs;->J(I)V

    .line 502
    sput p0, Lcs;->j:I

    .line 503
    const/4 v0, 0x1

    sput-boolean v0, Lcs;->k:Z

    .line 505
    :cond_d
    return-void
.end method

.method private Code(II)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1502
    iget-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcs;->I:[B

    invoke-virtual {v0, v1, p1, p2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1508
    int-to-long v0, p2

    move-wide v4, v2

    invoke-static/range {v0 .. v5}, Ldb;->Code(JJJ)V

    .line 1510
    return-void
.end method

.method private static Code(Lbf;III)V
    .registers 6

    .prologue
    .line 1435
    invoke-virtual {p0}, Lbf;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lbf;->Code(I)V

    .line 1436
    invoke-virtual {p0}, Lbf;->Code()[B

    move-result-object v0

    invoke-virtual {p0}, Lbf;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v0, v1, p1, p2, p3}, Lcs;->Code([BIIII)V

    .line 1438
    return-void
.end method

.method static Code(Lbr;)V
    .registers 7

    .prologue
    .line 3116
    sget-boolean v0, Lcs;->b:Z

    if-nez v0, :cond_5

    .line 3143
    :goto_4
    return-void

    .line 3120
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcs;->aa:Z

    if-eqz v0, :cond_5b

    const-string v0, "*"

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcs;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Ldb;->q:Z

    if-eqz v0, :cond_5e

    const/16 v0, 0x31

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3124
    sget-object v0, Lcs;->af:Lbp;

    if-nez v0, :cond_41

    .line 3126
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->s()Lbq;

    move-result-object v0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lbq;->Code(II)Lbp;

    move-result-object v0

    sput-object v0, Lcs;->af:Lbp;

    .line 3129
    :cond_41
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->J()I

    move-result v0

    sget-object v2, Lcs;->af:Lbp;

    invoke-interface {v2, v1}, Lbp;->Code(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    .line 3142
    const/4 v3, 0x1

    sget-object v4, Lcs;->af:Lbp;

    const v5, 0xffff80

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lbr;->Code(Ljava/lang/String;IILbp;I)V

    goto :goto_4

    .line 3120
    :cond_5b
    const-string v0, ""

    goto :goto_10

    :cond_5e
    const/16 v0, 0x30

    goto :goto_26
.end method

.method static Code(Lct;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 685
    sget-object v4, Lcs;->X:Ljava/lang/Object;

    monitor-enter v4

    .line 688
    :try_start_4
    invoke-virtual {p0}, Lct;->k()Z

    move-result v0

    if-nez v0, :cond_53

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lct;->I(I)V

    .line 691
    invoke-virtual {p0}, Lct;->Z()Lcs;

    move-result-object v5

    .line 692
    if-eqz v5, :cond_60

    .line 694
    invoke-direct {v5}, Lcs;->g()Z

    move-result v2

    move v3, v1

    .line 695
    :goto_19
    if-eqz v2, :cond_3d

    iget-object v0, v5, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_3d

    .line 697
    iget-object v0, v5, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 698
    invoke-virtual {v0}, Lct;->k()Z

    move-result v6

    if-nez v6, :cond_6d

    invoke-virtual {v0}, Lct;->g()Z

    move-result v0

    if-eqz v0, :cond_6d

    move v0, v1

    .line 695
    :goto_38
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_19

    .line 703
    :cond_3d
    if-nez v2, :cond_57

    invoke-virtual {v5}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcs;->Q:Z

    .line 706
    if-eqz p1, :cond_55

    const/4 v0, 0x7

    :goto_4b
    invoke-virtual {p0, v0}, Lct;->Z(I)V

    .line 707
    sget-object v0, Lcs;->X:Ljava/lang/Object;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 720
    :cond_53
    :goto_53
    monitor-exit v4

    return-void

    .line 706
    :cond_55
    const/4 v0, 0x6

    goto :goto_4b

    .line 711
    :cond_57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcs;->Code(ZI)V
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5d

    goto :goto_53

    .line 720
    :catchall_5d
    move-exception v0

    monitor-exit v4

    throw v0

    .line 714
    :cond_60
    :try_start_60
    sget-object v0, Lcs;->y:Lct;

    if-eqz v0, :cond_53

    .line 717
    sget-object v0, Lcs;->y:Lct;

    invoke-virtual {v0, p0}, Lct;->I(Lct;)Lct;

    move-result-object v0

    sput-object v0, Lcs;->y:Lct;
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_5d

    goto :goto_53

    :cond_6d
    move v0, v2

    goto :goto_38
.end method

.method private Code(Lct;[B)V
    .registers 13

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1843
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    iget-byte v1, p0, Lcs;->e:B

    aget-object v1, v0, v1

    .line 1845
    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1846
    if-ltz v2, :cond_58

    .line 1849
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1850
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    .line 1857
    :goto_1d
    iget v0, p0, Lcs;->ab:I

    sput v0, Lcs;->Y:I

    .line 1858
    iget-boolean v0, p0, Lcs;->ac:Z

    sput-boolean v0, Lcs;->aa:Z

    .line 1868
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1875
    iget-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    if-nez v0, :cond_4b

    .line 1878
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0, v3, v2}, Lci;->Code(Ljava/lang/String;Ljava/lang/String;)Lbc;

    move-result-object v0

    .line 1879
    iput-object v0, p0, Lcs;->R:Lbc;

    .line 1880
    invoke-interface {v0}, Lbc;->I()Ljava/io/DataOutputStream;

    move-result-object v1

    iput-object v1, p0, Lcs;->v:Ljava/io/DataOutputStream;

    .line 1881
    iget-object v1, p0, Lcs;->v:Ljava/io/DataOutputStream;

    iput-object v1, p0, Lcs;->x:Ljava/io/DataOutputStream;

    .line 1882
    invoke-interface {v0}, Lbc;->Z()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    .line 1883
    iget-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcs;->w:Ljava/io/DataInputStream;

    .line 1885
    :cond_4b
    array-length v0, p2

    invoke-direct {p0, p2, v0}, Lcs;->Code([BI)V

    .line 1890
    if-eqz p1, :cond_54

    .line 1892
    invoke-virtual {p1}, Lct;->p()V

    .line 1894
    :cond_54
    invoke-direct {p0, p1}, Lcs;->B(Lct;)V

    .line 2080
    :cond_57
    :goto_57
    return-void

    .line 1854
    :cond_58
    const-string v0, ""

    move-object v2, v0

    move-object v3, v1

    goto :goto_1d

    .line 1899
    :cond_5d
    const-string v1, ""

    .line 1903
    if-eqz p1, :cond_15c

    .line 1905
    invoke-virtual {p1}, Lct;->a()[Ljava/lang/Object;

    move-result-object v1

    .line 1906
    const/16 v0, 0x35

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 1907
    const/16 v6, 0x2a

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/String;

    .line 1914
    :goto_71
    iget-object v6, p0, Lcs;->d:Lcp;

    iget v6, v6, Lcp;->I:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_160

    move v6, v7

    :goto_7a
    if-eqz v6, :cond_b1

    .line 1916
    invoke-static {v0, v1}, Lcs;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1919
    if-eqz v0, :cond_163

    const-string v6, "b:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_92

    const-string v6, "javascript:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_163

    .line 1923
    :cond_92
    invoke-virtual {p1}, Lct;->a()[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x26

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Lcs;->Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    :cond_a0
    :goto_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1938
    :cond_b1
    sget-object v0, Lar;->Code:Lci;

    const-string v1, "POST"

    invoke-interface {v0, v3, v2, v1}, Lci;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbc;

    move-result-object v1

    .line 1939
    iput-object v1, p0, Lcs;->R:Lbc;

    .line 1941
    const-string v0, "http://10.0.0.172"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1943
    invoke-direct {p0}, Lcs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldb;->e(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1944
    if-eqz v0, :cond_ef

    .line 1946
    const-string v2, "X-Online-Host"

    invoke-interface {v1, v2, v0}, Lbc;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    :cond_ef
    const-string v0, "Content-Type"

    const-string v2, "application/xml"

    invoke-interface {v1, v0, v2}, Lbc;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-interface {v1}, Lbc;->I()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    .line 1970
    iget-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcs;->x:Ljava/io/DataOutputStream;

    .line 1971
    array-length v0, p2

    invoke-direct {p0, p2, v0}, Lcs;->Code([BI)V

    .line 1972
    invoke-direct {p0, p1}, Lcs;->B(Lct;)V

    .line 1973
    iget-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1978
    if-eqz p1, :cond_111

    .line 1980
    invoke-virtual {p1}, Lct;->p()V

    .line 1982
    :cond_111
    iput-object v4, p0, Lcs;->v:Ljava/io/DataOutputStream;

    .line 1983
    invoke-interface {v1}, Lbc;->Z()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    .line 1984
    iget-object v0, p0, Lcs;->u:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcs;->w:Ljava/io/DataInputStream;

    .line 1986
    invoke-interface {v1}, Lbc;->J()I

    move-result v0

    .line 1991
    const/16 v2, 0x12d

    if-eq v0, v2, :cond_131

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_131

    const/16 v2, 0x12f

    if-eq v0, v2, :cond_131

    const/16 v2, 0x133

    if-ne v0, v2, :cond_175

    .line 1997
    :cond_131
    iput v7, p0, Lcs;->i:I

    .line 1998
    if-eqz p1, :cond_157

    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->Code()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 2001
    const-string v0, "Location"

    invoke-interface {v1, v0}, Lbc;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2008
    if-eqz v0, :cond_157

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_157

    .line 2010
    invoke-virtual {p1, v0}, Lct;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 2012
    invoke-direct {p0, p1}, Lcs;->J(Lct;)V

    .line 2013
    invoke-static {}, Lcs;->f()V

    .line 2026
    :cond_157
    :goto_157
    invoke-direct {p0, v5}, Lcs;->Z(Z)V

    goto/16 :goto_57

    .line 1911
    :cond_15c
    const-string v0, "server:test"

    goto/16 :goto_71

    :cond_160
    move v6, v5

    .line 1914
    goto/16 :goto_7a

    .line 1925
    :cond_163
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0

    .line 1927
    if-nez v0, :cond_a0

    const-string v0, "internal"

    goto/16 :goto_a0

    .line 2018
    :cond_171
    invoke-virtual {p1}, Lct;->close()V

    goto :goto_157

    .line 2028
    :cond_175
    const/16 v1, 0x193

    if-ne v0, v1, :cond_57

    .line 2036
    iput v8, p0, Lcs;->i:I

    .line 2039
    :try_start_17b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v5

    .line 2043
    :cond_181
    iget-object v2, p0, Lcs;->u:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1ab

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x100

    if-gt v0, v3, :cond_1ab

    .line 2045
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2046
    if-ne v0, v9, :cond_181

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181

    .line 2050
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2051
    :cond_1ab
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1bc

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b5
    sput-object v0, Lcs;->g:Ljava/lang/String;
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_1b7} :catch_1be

    .line 2061
    :goto_1b7
    invoke-direct {p0, v5, v9}, Lcs;->Code(ZI)V

    goto/16 :goto_57

    :cond_1bc
    move-object v0, v4

    .line 2051
    goto :goto_1b5

    :catch_1be
    move-exception v0

    goto :goto_1b7

    :cond_1c0
    move-object v0, v1

    goto/16 :goto_a0
.end method

.method static declared-synchronized Code(Ljava/io/DataInputStream;I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2930
    const-class v3, Lcs;

    monitor-enter v3

    const/4 v2, 0x5

    if-gt p1, v2, :cond_43

    .line 2932
    :try_start_8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 2933
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 2934
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 2935
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2936
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2939
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 2940
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 2941
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 2942
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 2943
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 2944
    const/4 v0, 0x4

    if-lt p1, v0, :cond_41

    .line 2946
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_f9

    .line 3023
    :cond_41
    monitor-exit v3

    return-void

    .line 2953
    :cond_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    sput-boolean v2, Lcs;->n:Z

    .line 2954
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 2955
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sput-byte v2, Lcs;->Code:B

    .line 2956
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    sput-byte v2, Lcs;->p:B

    .line 2957
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2958
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_63

    move-object v2, v1

    :cond_63
    sput-object v2, Lcs;->r:Ljava/lang/String;

    .line 2959
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2960
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f6

    :goto_6f
    sput-object v1, Lcs;->q:Ljava/lang/String;

    .line 2961
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    sput v1, Lcs;->h:I

    .line 2971
    const/4 v1, 0x7

    if-lt p1, v1, :cond_80

    .line 2973
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcs;->W:Z

    .line 2976
    :cond_80
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const-string v2, "server4.operamini.com"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_8f

    .line 2983
    invoke-static {}, Lcz;->I()Z

    .line 2987
    :cond_8f
    const/4 v1, 0x1

    sput-boolean v1, Lbe;->e:Z

    .line 2988
    const/16 v1, 0x8

    if-lt p1, v1, :cond_a2

    .line 2990
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lbe;->e:Z

    .line 2991
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    sput-wide v1, Lbe;->d:J

    .line 2994
    :cond_a2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 2996
    :goto_a6
    if-ge v0, v1, :cond_41

    .line 2998
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 2999
    new-instance v4, Lbe;

    invoke-static {p0}, Ldb;->Code(Ljava/io/DataInputStream;)[I

    move-result-object v5

    invoke-direct {v4, v5}, Lbe;-><init>([I)V

    .line 3000
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, v4, Lbe;->I:J

    .line 3001
    iget-object v5, v4, Lbe;->a:[B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 3002
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 3003
    if-eqz v5, :cond_d1

    .line 3005
    new-array v5, v5, [B

    iput-object v5, v4, Lbe;->C:[B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 3006
    iget-object v5, v4, Lbe;->C:[B

    sput-object v5, Lbe;->c:[B

    .line 3008
    :cond_d1
    invoke-static {p0}, Ldb;->Code(Ljava/io/DataInputStream;)[I

    move-result-object v5

    iput-object v5, v4, Lbe;->Z:[I

    .line 3009
    invoke-static {p0}, Ldb;->Code(Ljava/io/DataInputStream;)[I

    move-result-object v5

    iput-object v5, v4, Lbe;->J:[I

    .line 3010
    invoke-virtual {v4}, Lbe;->I()Z

    move-result v5

    if-nez v5, :cond_f3

    .line 3013
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 3014
    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 3015
    const/4 v4, 0x1

    const-string v6, ""

    aput-object v6, v5, v4

    .line 3016
    sget-object v4, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f3
    .catchall {:try_start_43 .. :try_end_f3} :catchall_f9

    .line 2996
    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_f6
    move-object v1, v2

    .line 2960
    goto/16 :goto_6f

    .line 2930
    :catchall_f9
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized Code(Ljava/io/DataOutputStream;)V
    .registers 6

    .prologue
    .line 2869
    const-class v1, Lcs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcs;->n:Z

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2870
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2871
    sget-byte v0, Lcs;->Code:B

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2872
    sget-byte v0, Lcs;->p:B

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2873
    sget-object v0, Lcs;->r:Ljava/lang/String;

    if-nez v0, :cond_99

    const-string v0, ""

    :goto_1c
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2874
    sget-object v0, Lcs;->q:Ljava/lang/String;

    if-nez v0, :cond_9c

    const-string v0, ""

    :goto_25
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2875
    sget v0, Lcs;->h:I

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2886
    sget-boolean v0, Lcs;->W:Z

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2889
    const-string v0, "server4.operamini.com"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2898
    sget-boolean v0, Lbe;->e:Z

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2899
    sget-wide v2, Lbe;->d:J

    invoke-virtual {p0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2901
    sget-object v0, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2902
    sget-object v0, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2904
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2905
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2906
    sget-object v3, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2907
    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Lbe;

    .line 2909
    iget-object v3, v0, Lbe;->Code:[I

    invoke-static {p0, v3}, Ldb;->Code(Ljava/io/DataOutputStream;[I)V

    .line 2910
    iget-wide v3, v0, Lbe;->I:J

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2911
    iget-object v3, v0, Lbe;->a:[B

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 2912
    iget-object v3, v0, Lbe;->C:[B

    array-length v3, v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 2913
    iget-object v3, v0, Lbe;->C:[B

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 2914
    sget-object v3, Ldb;->L:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_9f

    .line 2918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_96

    goto :goto_54

    .line 2869
    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2873
    :cond_99
    :try_start_99
    sget-object v0, Lcs;->r:Ljava/lang/String;

    goto :goto_1c

    .line 2874
    :cond_9c
    sget-object v0, Lcs;->q:Ljava/lang/String;

    goto :goto_25

    .line 2922
    :cond_9f
    iget-object v3, v0, Lbe;->Z:[I

    invoke-static {p0, v3}, Ldb;->Code(Ljava/io/DataOutputStream;[I)V

    .line 2923
    iget-object v0, v0, Lbe;->J:[I

    invoke-static {p0, v0}, Ldb;->Code(Ljava/io/DataOutputStream;[I)V
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_96

    goto :goto_54

    .line 2926
    :cond_aa
    monitor-exit v1

    return-void
.end method

.method public static Code(Z)V
    .registers 3

    .prologue
    .line 1828
    sget-object v1, Lcs;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 1830
    :try_start_3
    sget-boolean v0, Lcs;->W:Z

    if-eq v0, p0, :cond_11

    .line 1832
    sput-boolean p0, Lcs;->W:Z

    .line 1833
    invoke-static {}, Lcs;->J()V

    .line 1834
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 1836
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private Code(ZI)V
    .registers 4

    .prologue
    .line 765
    invoke-direct {p0, p2}, Lcs;->B(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 767
    if-eqz p1, :cond_c

    .line 770
    invoke-virtual {p0}, Lcs;->run()V

    .line 778
    :cond_b
    :goto_b
    return-void

    .line 775
    :cond_c
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method private Code([BI)V
    .registers 5

    .prologue
    .line 1458
    iget-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1464
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1466
    iget-object v0, p0, Lcs;->v:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 1468
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcs;->A:J

    .line 1469
    return-void
.end method

.method private Code([BII)V
    .registers 9

    .prologue
    .line 3051
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_27

    .line 3053
    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Lap;->Z([BI)I

    move-result v1

    .line 3054
    iget-object v2, p0, Lcs;->J:Lbs;

    iget v3, p0, Lcs;->V:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcs;->V:I

    invoke-virtual {v2, v3}, Lbs;->Code(I)V

    .line 3055
    iget-object v2, p0, Lcs;->J:Lbs;

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, p1, v3, v4}, Lbs;->Code([BII)V

    .line 3056
    iget-object v2, p0, Lcs;->J:Lbs;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v0, v3}, Lbs;->I([BII)V

    .line 3058
    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 3059
    goto :goto_1

    .line 3060
    :cond_27
    iget-object v0, p0, Lcs;->C:Lcl;

    sub-int v1, p3, p2

    invoke-virtual {v0, p1, p2, v1}, Lcl;->Code([BII)V

    .line 3062
    return-void
.end method

.method private static Code([BIIII)V
    .registers 7

    .prologue
    .line 1443
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p4, 0x2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1444
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p4, 0x2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1445
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 1446
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x3

    int-to-byte v1, p3

    aput-byte v1, p0, v0

    .line 1447
    return-void
.end method

.method private Code(Lct;I)[B
    .registers 18

    .prologue
    .line 1011
    sget-object v7, Lcs;->X:Ljava/lang/Object;

    monitor-enter v7

    .line 1013
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lct;->a()[Ljava/lang/Object;

    move-result-object v8

    .line 1014
    invoke-virtual/range {p1 .. p1}, Lct;->b()[I

    move-result-object v9

    .line 1016
    const/4 v2, 0x0

    .line 1019
    iget-object v1, p0, Lcs;->T:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    .line 1021
    iget-boolean v3, p0, Lcs;->O:Z

    if-nez v3, :cond_431

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lar;->Code:Lci;

    invoke-interface {v3}, Lci;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1026
    array-length v2, v2

    add-int/lit8 v2, v2, 0x29

    iget-object v3, p0, Lcs;->S:Lbe;

    iget-object v3, v3, Lbe;->C:[B

    array-length v3, v3

    add-int/2addr v3, v2

    iget-boolean v2, p0, Lcs;->F:Z

    if-eqz v2, :cond_151

    const/4 v2, 0x1

    invoke-static {v2}, Ldb;->J(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_54
    add-int/2addr v3, v2

    iget-object v2, p0, Lcs;->v:Ljava/io/DataOutputStream;

    if-nez v2, :cond_154

    const/4 v2, 0x2

    :goto_5a
    add-int/2addr v2, v3

    iget-object v3, p0, Lcs;->S:Lbe;

    iget-object v3, v3, Lbe;->B:[B

    array-length v3, v3

    add-int/2addr v2, v3

    .line 1037
    iget-object v3, p0, Lcs;->H:Lby;

    iput-object v3, p0, Lcs;->G:Lby;

    .line 1038
    const/4 v3, 0x0

    iput-object v3, p0, Lcs;->H:Lby;

    .line 1039
    iget v3, p0, Lcs;->N:I

    if-lez v3, :cond_75

    .line 1041
    const/4 v3, 0x0

    iput-object v3, p0, Lcs;->K:[B

    .line 1042
    const/4 v3, 0x0

    iput-object v3, p0, Lcs;->G:Lby;

    .line 1043
    const/4 v3, 0x0

    iput v3, p0, Lcs;->N:I

    .line 1045
    :cond_75
    iget-object v3, p0, Lcs;->K:[B

    if-eqz v3, :cond_157

    .line 1047
    iget-object v3, p0, Lcs;->K:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1059
    :goto_7f
    iget-object v3, p0, Lcs;->G:Lby;

    if-nez v3, :cond_431

    .line 1061
    add-int/lit8 v2, v2, 0x8

    move v6, v2

    .line 1065
    :goto_86
    iget-object v2, p0, Lcs;->d:Lcp;

    iget v2, v2, Lcp;->I:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_171

    const/4 v2, 0x1

    :goto_8f
    if-eqz v2, :cond_be

    .line 1069
    const/16 v2, 0x4d

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1071
    const/16 v2, 0x49

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1072
    const/16 v2, 0x4f

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1073
    const/16 v2, 0x75

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1074
    const/16 v2, 0x76

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1076
    const/16 v2, 0x63

    const/4 v3, 0x0

    aput v3, v9, v2

    .line 1079
    const/16 v2, 0x56

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1080
    const/16 v2, 0x5e

    const/4 v3, 0x0

    aput-object v3, v8, v2

    .line 1081
    const/16 v2, 0x55

    const/4 v3, 0x0

    aput v3, v9, v2

    .line 1085
    :cond_be
    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v9, v2

    .line 1086
    const/16 v2, 0x28

    aput-object v1, v8, v2

    .line 1087
    const/16 v2, 0x21

    const/4 v3, 0x2

    invoke-static {v3}, Ldb;->J(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1093
    sget-object v2, Ldb;->G:[B

    if-nez v2, :cond_d8

    .line 1095
    const/4 v2, 0x0

    invoke-static {v2}, Ldb;->Code(Z)V

    .line 1097
    :cond_d8
    const/4 v2, 0x6

    sget-object v3, Ldb;->G:[B

    aput-object v3, v8, v2

    .line 1099
    sget-object v2, Ldb;->H:[B

    if-eqz v2, :cond_e7

    .line 1101
    const/16 v2, 0x1c

    sget-object v3, Ldb;->H:[B

    aput-object v3, v8, v2

    .line 1105
    :cond_e7
    sget-object v2, Lar;->Code:Lci;

    const-string v3, "OM-Install-Referrer"

    invoke-interface {v2, v3}, Lci;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1106
    const/16 v3, 0x64

    if-eqz v2, :cond_174

    :goto_f3
    aput-object v2, v8, v3

    .line 1108
    const/16 v2, 0x78

    sget-object v3, Lar;->Code:Lci;

    const-string v4, "OM-Facebook-Attribution-Id"

    invoke-interface {v3, v4}, Lci;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1111
    const/16 v3, 0x32

    sget-boolean v2, Ldb;->O:Z

    if-eqz v2, :cond_178

    const/4 v2, 0x1

    :goto_108
    aput v2, v9, v3

    .line 1113
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 1117
    const/16 v2, 0x18

    aget v3, v9, v2

    const v4, -0x20001

    and-int/2addr v3, v4

    aput v3, v9, v2

    .line 1120
    :cond_11a
    const/4 v4, 0x4

    .line 1121
    const/4 v2, 0x0

    move v5, v2

    :goto_11d
    const/16 v2, 0x7c

    if-ge v5, v2, :cond_1be

    .line 1123
    aget-object v2, v8, v5

    if-eqz v2, :cond_1a4

    .line 1126
    aget-object v2, v8, v5

    instance-of v2, v2, [B

    if-eqz v2, :cond_17a

    iget-object v2, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v2, v5

    instance-of v2, v2, [B

    if-eqz v2, :cond_143

    aget-object v2, v8, v5

    check-cast v2, [B

    iget-object v3, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v3, v3, v5

    check-cast v3, [B

    invoke-static {v2, v3}, Ldb;->Code([B[B)Z

    move-result v2

    if-nez v2, :cond_17a

    .line 1131
    :cond_143
    aget-object v2, v8, v5

    check-cast v2, [B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x7

    move v3, v4

    .line 1146
    :goto_14b
    add-int v4, v3, v2

    .line 1121
    :cond_14d
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_11d

    .line 1026
    :cond_151
    const/4 v2, 0x0

    goto/16 :goto_54

    :cond_154
    const/4 v2, 0x0

    goto/16 :goto_5a

    .line 1051
    :cond_157
    const/4 v3, 0x0

    :goto_158
    const/16 v4, 0x7c

    if-ge v3, v4, :cond_169

    .line 1053
    iget-object v4, p0, Lcs;->L:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 1054
    iget-object v4, p0, Lcs;->M:[I

    const/4 v5, 0x0

    aput v5, v4, v3

    .line 1051
    add-int/lit8 v3, v3, 0x1

    goto :goto_158

    .line 1056
    :cond_169
    const/4 v3, 0x0

    iput-object v3, p0, Lcs;->G:Lby;
    :try_end_16c
    .catchall {:try_start_3 .. :try_end_16c} :catchall_16e

    goto/16 :goto_7f

    .line 1304
    :catchall_16e
    move-exception v1

    monitor-exit v7

    throw v1

    .line 1065
    :cond_171
    const/4 v2, 0x0

    goto/16 :goto_8f

    .line 1106
    :cond_174
    :try_start_174
    const-string v2, ""

    goto/16 :goto_f3

    .line 1111
    :cond_178
    const/4 v2, 0x0

    goto :goto_108

    .line 1133
    :cond_17a
    iget-object v2, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_18c

    aget-object v2, v8, v5

    iget-object v3, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14d

    .line 1136
    :cond_18c
    aget-object v2, v8, v5

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_14d

    .line 1138
    aget-object v2, v8, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lap;->Code(Ljava/lang/String;)I

    move-result v3

    .line 1139
    const/16 v2, 0xfe

    if-gt v3, v2, :cond_1a2

    const/4 v2, 0x4

    :goto_19f
    add-int/2addr v2, v3

    move v3, v4

    .line 1140
    goto :goto_14b

    .line 1139
    :cond_1a2
    const/4 v2, 0x7

    goto :goto_19f

    .line 1143
    :cond_1a4
    iget-object v2, p0, Lcs;->M:[I

    aget v2, v2, v5

    aget v3, v9, v5

    if-ne v2, v3, :cond_1b2

    iget-object v2, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v2, v5

    if-eqz v2, :cond_14d

    .line 1146
    :cond_1b2
    aget v2, v9, v5

    const/16 v3, 0xfe

    if-gt v2, v3, :cond_1bb

    const/4 v2, 0x4

    move v3, v4

    goto :goto_14b

    :cond_1bb
    const/4 v2, 0x7

    move v3, v4

    goto :goto_14b

    .line 1154
    :cond_1be
    add-int/lit8 v2, v4, 0x10

    const v3, 0xfff9

    div-int v3, v4, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int v10, v6, v2

    .line 1158
    new-instance v11, Lbf;

    invoke-direct {v11, v10}, Lbf;-><init>(I)V

    .line 1159
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1160
    const/4 v2, 0x0

    .line 1162
    iget-boolean v3, p0, Lcs;->O:Z

    if-nez v3, :cond_2b6

    .line 1166
    const/4 v2, 0x0

    .line 1167
    iget-object v3, p0, Lcs;->v:Ljava/io/DataOutputStream;

    if-nez v3, :cond_42e

    .line 1169
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1170
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1171
    const/4 v2, 0x2

    move v3, v2

    .line 1173
    :goto_1e8
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1174
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->b:[B

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v12, v2, v5, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1175
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->Code:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1176
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->C:[B

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 1177
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1178
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->B:[B

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 1179
    invoke-virtual {v11}, Lbf;->size()I

    move-result v5

    .line 1181
    iget-boolean v2, p0, Lcs;->F:Z

    if-eqz v2, :cond_335

    const/4 v2, 0x1

    invoke-static {v2}, Ldb;->J(I)Ljava/lang/String;

    move-result-object v2

    :goto_220
    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcs;->J:Lbs;

    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v6

    invoke-virtual {v11}, Lbf;->size()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v2, v6, v3, v13}, Lbs;->Code([BII)V

    .line 1184
    iget-object v2, p0, Lcs;->B:Lbs;

    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v6

    invoke-virtual {v11}, Lbf;->size()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v2, v6, v3, v13}, Lbs;->Code([BII)V

    .line 1185
    iget-object v2, p0, Lcs;->J:Lbs;

    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v3

    invoke-virtual {v11}, Lbf;->size()I

    move-result v6

    const/16 v13, 0x10

    invoke-virtual {v2, v3, v6, v13}, Lbs;->I([BII)V

    .line 1186
    invoke-virtual {v11}, Lbf;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v11, v2}, Lbf;->Code(I)V

    .line 1187
    iget-object v2, p0, Lcs;->C:Lcl;

    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v3

    invoke-virtual {v11}, Lbf;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v3, v5, v6}, Lcl;->Code([BII)V

    .line 1188
    invoke-virtual {v11}, Lbf;->size()I

    move-result v2

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lar;->Code:Lci;

    invoke-interface {v3}, Lci;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1197
    const/16 v3, 0x80

    const/4 v5, 0x3

    array-length v6, v1

    invoke-static {v11, v3, v5, v6}, Lcs;->Code(Lbf;III)V

    .line 1198
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1199
    iget-object v1, p0, Lcs;->K:[B

    if-eqz v1, :cond_2ab

    .line 1202
    const/16 v1, 0xf

    const/4 v3, 0x0

    const/16 v5, 0x8

    invoke-static {v11, v1, v3, v5}, Lcs;->Code(Lbf;III)V

    .line 1203
    iget-object v1, p0, Lcs;->K:[B

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1205
    :cond_2ab
    iget-object v1, p0, Lcs;->G:Lby;

    if-nez v1, :cond_2b6

    .line 1208
    const/16 v1, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v11, v1, v3, v5}, Lcs;->Code(Lbf;III)V

    :cond_2b6
    move v6, v2

    .line 1212
    iget v1, p0, Lcs;->N:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcs;->N:I

    .line 1214
    const/4 v1, 0x5

    invoke-virtual/range {p1 .. p1}, Lct;->C()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v11, v1, v2, v3}, Lcs;->Code(Lbf;III)V

    .line 1216
    const/16 v1, 0x16

    invoke-virtual/range {p1 .. p1}, Lct;->C()I

    move-result v2

    const v3, 0xfff9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v11, v1, v2, v3}, Lcs;->Code(Lbf;III)V

    .line 1217
    add-int/lit8 v1, v4, -0x4

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lct;->Code(Z)Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lcs;->Code(Ljava/util/Hashtable;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1218
    const/4 v1, 0x0

    move v3, v1

    :goto_2e9
    const/16 v1, 0x7c

    if-ge v3, v1, :cond_3d2

    .line 1220
    aget-object v1, v8, v3

    if-eqz v1, :cond_3a6

    .line 1222
    aget-object v1, v8, v3

    instance-of v1, v1, [B

    if-eqz v1, :cond_339

    iget-object v1, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v1, v1, v3

    instance-of v1, v1, [B

    if-eqz v1, :cond_30f

    aget-object v1, v8, v3

    check-cast v1, [B

    iget-object v2, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, [B

    invoke-static {v1, v2}, Ldb;->Code([B[B)Z

    move-result v1

    if-nez v1, :cond_339

    .line 1227
    :cond_30f
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1228
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1229
    aget-object v1, v8, v3

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1230
    aget-object v1, v8, v3

    check-cast v1, [B

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1282
    :cond_325
    :goto_325
    iget-object v1, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v8, v3

    aput-object v2, v1, v3

    .line 1283
    iget-object v1, p0, Lcs;->M:[I

    aget v2, v9, v3

    aput v2, v1, v3

    .line 1218
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2e9

    .line 1181
    :cond_335
    const-string v2, ""

    goto/16 :goto_220

    .line 1232
    :cond_339
    iget-object v1, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v1, v1, v3

    if-eqz v1, :cond_34b

    aget-object v1, v8, v3

    iget-object v2, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_325

    .line 1235
    :cond_34b
    aget-object v1, v8, v3

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_325

    .line 1238
    aget-object v1, v8, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lap;->Code(Ljava/lang/String;)I

    move-result v1

    .line 1239
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_379

    .line 1241
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1242
    shr-int/lit8 v1, v3, 0x10

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1243
    invoke-virtual {v11}, Lbf;->size()I

    move-result v2

    .line 1244
    aget-object v1, v8, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v1

    int-to-byte v5, v3

    aput-byte v5, v1, v2

    goto :goto_325

    .line 1249
    :cond_379
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 1250
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1251
    aget-object v1, v8, v3

    check-cast v1, Ljava/lang/String;

    .line 1252
    invoke-static {v1}, Lap;->Code(Ljava/lang/String;)I

    move-result v2

    new-array v13, v2, [B

    .line 1253
    const/4 v5, 0x0

    .line 1254
    const/4 v2, 0x0

    :goto_38c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v2, v14, :cond_39e

    .line 1256
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v13, v5}, Lap;->Code(I[BI)I

    move-result v14

    add-int/2addr v5, v14

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_38c

    .line 1258
    :cond_39e
    array-length v1, v13

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1259
    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_325

    .line 1264
    :cond_3a6
    iget-object v1, p0, Lcs;->M:[I

    aget v1, v1, v3

    aget v2, v9, v3

    if-ne v1, v2, :cond_3b4

    iget-object v1, p0, Lcs;->L:[Ljava/lang/Object;

    aget-object v1, v1, v3

    if-eqz v1, :cond_325

    .line 1267
    :cond_3b4
    aget v1, v9, v3

    .line 1269
    const/16 v2, 0xfe

    if-gt v1, v2, :cond_3c6

    .line 1271
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1272
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1273
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto/16 :goto_325

    .line 1277
    :cond_3c6
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1278
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1279
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_325

    .line 1285
    :cond_3d2
    invoke-virtual {v11}, Lbf;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1286
    :goto_3d7
    const v2, 0xfff9

    if-le v4, v2, :cond_41e

    .line 1288
    invoke-virtual {v11}, Lbf;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v11, v2}, Lbf;->Code(I)V

    .line 1289
    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v2

    const v3, 0xfff9

    add-int/2addr v3, v1

    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v5

    const v8, 0xfff9

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x8

    const v9, 0xfff9

    sub-int v9, v4, v9

    invoke-static {v2, v3, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1292
    const v2, 0x10001

    add-int/2addr v1, v2

    .line 1293
    const v2, 0xfff9

    sub-int/2addr v4, v2

    .line 1294
    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v2

    add-int/lit8 v3, v1, -0x8

    const/16 v5, 0x16

    invoke-virtual/range {p1 .. p1}, Lct;->C()I

    move-result v8

    const v9, 0xfff9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v3, v5, v8, v9}, Lcs;->Code([BIIII)V

    goto :goto_3d7

    .line 1299
    :cond_41e
    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v1

    invoke-direct {p0, v1, v6, v10}, Lcs;->Code([BII)V

    .line 1300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcs;->O:Z

    .line 1303
    invoke-virtual {v11}, Lbf;->Code()[B

    move-result-object v1

    monitor-exit v7
    :try_end_42d
    .catchall {:try_start_174 .. :try_end_42d} :catchall_16e

    return-object v1

    :cond_42e
    move v3, v2

    goto/16 :goto_1e8

    :cond_431
    move v6, v2

    goto/16 :goto_86
.end method

.method private static I(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2829
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2830
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 2832
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2834
    const/16 v3, 0x2f

    if-le v2, v3, :cond_19

    const/16 v3, 0x3a

    if-lt v2, v3, :cond_4b

    :cond_19
    const/16 v3, 0x40

    if-le v2, v3, :cond_21

    const/16 v3, 0x5b

    if-lt v2, v3, :cond_4b

    :cond_21
    const/16 v3, 0x60

    if-le v2, v3, :cond_29

    const/16 v3, 0x7b

    if-lt v2, v3, :cond_4b

    :cond_29
    const-string v3, "-_.~"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_4b

    const-string v3, "%&="

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_4b

    .line 2839
    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2830
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2843
    :cond_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_48

    .line 2846
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static I()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 782
    sget-object v1, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_23

    .line 786
    :try_start_a
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    .line 787
    if-eqz v0, :cond_1f

    .line 789
    iget-boolean v3, v0, Lcs;->s:Z

    or-int/lit8 v3, v3, 0x0

    iput-boolean v3, v0, Lcs;->s:Z

    .line 790
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcs;->Code(ZI)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1f} :catch_24

    .line 782
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 795
    :cond_23
    return-void

    .line 793
    :catch_24
    move-exception v0

    goto :goto_1f
.end method

.method private static I(BLjava/lang/String;)V
    .registers 2

    .prologue
    .line 1801
    sput-byte p0, Lcs;->p:B

    .line 1802
    sput-object p1, Lcs;->r:Ljava/lang/String;

    .line 1808
    return-void
.end method

.method private declared-synchronized I(I)V
    .registers 3

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcs;->Z(I)Lct;

    move-result-object v0

    invoke-direct {p0, v0}, Lcs;->Z(Lct;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 726
    monitor-exit p0

    return-void

    .line 725
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static I(Lct;)V
    .registers 3

    .prologue
    .line 602
    sget-object v1, Lcs;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_3
    sget-object v0, Lcs;->y:Lct;

    invoke-virtual {p0, v0}, Lct;->Code(Lct;)V

    .line 607
    sput-object p0, Lcs;->y:Lct;

    .line 608
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static J()V
    .registers 3

    .prologue
    .line 1536
    sget-object v1, Lcs;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 1538
    :try_start_3
    sget-boolean v0, Lcs;->m:Z

    if-nez v0, :cond_1d

    .line 1541
    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcs;->Code(BLjava/lang/String;)V

    .line 1542
    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcs;->I(BLjava/lang/String;)V

    .line 1544
    sget v0, Lcs;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcs;->o:I

    .line 1545
    const/4 v0, 0x1

    sput-boolean v0, Lcs;->n:Z

    .line 1546
    invoke-static {}, Lcs;->Z()V

    .line 1552
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static J(I)V
    .registers 3

    .prologue
    .line 844
    sget-object v1, Lcs;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :goto_3
    :try_start_3
    sget-object v0, Lcs;->y:Lct;

    if-eqz v0, :cond_18

    .line 848
    sget-object v0, Lcs;->y:Lct;

    invoke-virtual {v0, p0}, Lct;->I(I)V

    .line 849
    sget-object v0, Lcs;->y:Lct;

    invoke-virtual {v0}, Lct;->B()Lct;

    move-result-object v0

    sput-object v0, Lcs;->y:Lct;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    goto :goto_3

    .line 851
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_18
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    return-void
.end method

.method private declared-synchronized J(Lct;)V
    .registers 3

    .prologue
    .line 888
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcs;->Z(Lct;)V

    .line 889
    invoke-virtual {p1}, Lct;->J()V

    .line 890
    invoke-static {p1}, Lcs;->I(Lct;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 891
    monitor-exit p0

    return-void

    .line 888
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized Z(I)Lct;
    .registers 5

    .prologue
    .line 742
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 744
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 745
    invoke-virtual {v0}, Lct;->C()I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_21

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 750
    :goto_19
    monitor-exit p0

    return-object v0

    .line 742
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 750
    :cond_1f
    const/4 v0, 0x0

    goto :goto_19

    .line 742
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static Z()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 818
    sget-object v2, Lcs;->X:Ljava/lang/Object;

    monitor-enter v2

    .line 820
    :try_start_4
    sget-object v1, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_36

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_34

    .line 824
    :try_start_d
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    .line 825
    if-eqz v0, :cond_30

    .line 827
    sget-object v4, Lcs;->ae:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 828
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcs;->s:Z

    .line 829
    invoke-direct {v0}, Lcs;->h()V

    .line 830
    iget-object v4, v0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 833
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcs;->Code(ZI)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_30} :catch_39
    .catchall {:try_start_d .. :try_end_30} :catchall_36

    .line 820
    :cond_30
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 839
    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v2

    throw v0

    .line 837
    :catch_39
    move-exception v0

    goto :goto_30
.end method

.method private declared-synchronized Z(Lct;)V
    .registers 3

    .prologue
    .line 730
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 732
    :try_start_3
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 734
    :cond_8
    monitor-exit p0

    return-void

    .line 730
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Z(Z)V
    .registers 3

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcs;->Code(ZI)V

    .line 756
    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2491
    sget-object v0, Lcs;->g:Ljava/lang/String;

    .line 2492
    const/4 v1, 0x0

    sput-object v1, Lcs;->g:Ljava/lang/String;

    .line 2496
    return-object v0
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 3032
    const/4 v0, 0x1

    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://server4.operamini.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcs;->d:Lcp;

    iget-object v1, v1, Lcp;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcs;->d:Lcp;

    iget v1, v1, Lcp;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Lct;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 541
    sget-object v4, Lcs;->X:Ljava/lang/Object;

    monitor-enter v4

    .line 543
    :try_start_5
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    iget v2, p0, Lcs;->ab:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1d

    .line 545
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    const/4 v2, 0x0

    iget v5, p0, Lcs;->ab:I

    invoke-virtual {v0, v2, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 547
    :cond_1d
    sget-object v0, Lcs;->y:Lct;

    if-eqz v0, :cond_43

    sget-object v0, Lcs;->y:Lct;

    if-eqz v0, :cond_77

    iget v0, p0, Lcs;->ab:I

    sget-object v2, Lcs;->y:Lct;

    invoke-virtual {v2}, Lct;->Code()I

    move-result v2

    if-ne v0, v2, :cond_43

    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-direct {p0}, Lcs;->g()Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcs;->y:Lct;

    invoke-virtual {v0}, Lct;->Z()Lcs;

    move-result-object v0

    if-eq p0, v0, :cond_77

    .line 558
    :cond_43
    iget-boolean v0, p0, Lcs;->Q:Z

    if-eqz v0, :cond_64

    move v2, v3

    .line 560
    :goto_48
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_64

    .line 562
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 563
    invoke-virtual {v0}, Lct;->l()I

    move-result v5

    if-eqz v5, :cond_60

    .line 565
    monitor-exit v4

    .line 596
    :goto_5f
    return-object v0

    .line 560
    :cond_60
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_48

    .line 569
    :cond_64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcs;->Q:Z

    .line 571
    sget-object v0, Lcs;->X:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldb;->Code(Ljava/lang/Object;I)V

    .line 572
    iget-boolean v0, p0, Lcs;->P:Z

    if-eqz v0, :cond_1d

    .line 575
    invoke-static {}, Lcs;->f()V

    .line 576
    monitor-exit v4

    move-object v0, v1

    goto :goto_5f

    .line 579
    :cond_77
    iget-boolean v0, p0, Lcs;->P:Z

    if-eqz v0, :cond_81

    .line 582
    invoke-static {}, Lcs;->f()V

    .line 583
    monitor-exit v4

    move-object v0, v1

    goto :goto_5f

    .line 586
    :cond_81
    sget-object v0, Lcs;->y:Lct;

    .line 587
    invoke-virtual {v0}, Lct;->B()Lct;

    move-result-object v1

    sput-object v1, Lcs;->y:Lct;

    .line 590
    const/4 v1, 0x1

    :goto_8a
    invoke-direct {p0, v1}, Lcs;->Z(I)Lct;

    move-result-object v2

    if-eqz v2, :cond_93

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 593
    :cond_93
    iget-object v2, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {v0, p0, v1}, Lct;->Code(Lcs;I)V

    .line 595
    invoke-static {}, Lcs;->f()V

    .line 596
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_5 .. :try_end_9f} :catchall_a0

    goto :goto_5f

    .line 597
    :catchall_a0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static f()V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v8, -0x2

    const/4 v1, -0x1

    .line 613
    sget-object v2, Lcs;->X:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_6
    sget-boolean v3, Lcs;->m:Z

    if-eqz v3, :cond_c

    .line 617
    monitor-exit v2

    .line 680
    :goto_b
    return-void

    .line 620
    :cond_c
    sget-boolean v3, Lcs;->k:Z

    if-eqz v3, :cond_16

    .line 623
    const/4 v3, 0x0

    sput-boolean v3, Lcs;->k:Z

    .line 625
    invoke-static {}, Lcs;->J()V

    .line 631
    :cond_16
    sget-object v3, Lcs;->y:Lct;

    if-nez v3, :cond_1f

    .line 634
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    goto :goto_b

    .line 680
    :catchall_1c
    move-exception v0

    monitor-exit v2

    throw v0

    .line 637
    :cond_1f
    :try_start_1f
    sget-object v3, Lcs;->y:Lct;

    invoke-virtual {v3}, Lct;->Code()I

    move-result v3

    .line 638
    sget-object v4, Lcs;->y:Lct;

    invoke-virtual {v4}, Lct;->I()Z

    move-result v4

    .line 639
    invoke-static {v3}, Lcz;->Code(I)Lcp;

    move-result-object v5

    .line 644
    sget-byte v6, Lcs;->Code:B

    if-ne v6, v8, :cond_41

    sget-byte v6, Lcs;->p:B

    if-ne v6, v8, :cond_41

    .line 646
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcs;->Code(BLjava/lang/String;)V

    .line 647
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcs;->I(BLjava/lang/String;)V

    .line 649
    :cond_41
    invoke-virtual {v5}, Lcp;->I()Z

    move-result v6

    if-eqz v6, :cond_50

    sget-byte v6, Lcs;->p:B

    if-ne v6, v8, :cond_50

    .line 651
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcs;->I(BLjava/lang/String;)V

    .line 654
    :cond_50
    invoke-virtual {v5}, Lcp;->I()Z

    move-result v6

    if-eqz v6, :cond_5a

    sget-byte v6, Lcs;->p:B

    if-eq v6, v1, :cond_6c

    :cond_5a
    invoke-virtual {v5}, Lcp;->I()Z

    move-result v5

    if-nez v5, :cond_7f

    sget-byte v5, Lcs;->Code:B

    if-eq v5, v1, :cond_6c

    sget-byte v5, Lcs;->Code:B

    if-ne v5, v8, :cond_7f

    sget-byte v5, Lcs;->p:B

    if-ne v5, v1, :cond_7f

    .line 658
    :cond_6c
    sget-boolean v5, Lcs;->l:Z

    if-nez v5, :cond_7f

    .line 660
    sget v5, Lcs;->o:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcs;->o:I

    .line 662
    const/4 v5, -0x1

    sput-byte v5, Lcs;->f:B

    .line 663
    const/4 v5, 0x1

    sput-boolean v5, Lcs;->n:Z

    .line 664
    const/4 v5, 0x1

    sput-boolean v5, Lcs;->l:Z

    .line 670
    :cond_7f
    sget-object v5, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le v5, v3, :cond_97

    sget-object v5, Lcs;->ae:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_97

    .line 673
    sget-object v0, Lcs;->X:Ljava/lang/Object;

    invoke-static {v0}, Ldb;->Code(Ljava/lang/Object;)V

    .line 680
    :goto_94
    monitor-exit v2

    goto/16 :goto_b

    .line 678
    :cond_97
    sget-object v5, Lar;->Code:Lci;

    sget-boolean v6, Lcs;->n:Z

    if-eqz v6, :cond_a2

    :goto_9d
    const/4 v1, 0x0

    invoke-interface {v5, v3, v0, v1, v4}, Lci;->Code(IBZZ)Lcs;
    :try_end_a1
    .catchall {:try_start_1f .. :try_end_a1} :catchall_1c

    goto :goto_94

    :cond_a2
    move v0, v1

    goto :goto_9d
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 807
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    iget v1, p0, Lcs;->ab:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private declared-synchronized h()V
    .registers 4

    .prologue
    .line 865
    monitor-enter p0

    const/4 v1, 0x0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 867
    iget-object v0, p0, Lcs;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 868
    invoke-virtual {v0}, Lct;->g()Z

    move-result v2

    if-nez v2, :cond_25

    .line 870
    invoke-direct {p0, v0}, Lcs;->J(Lct;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_22

    .line 871
    add-int/lit8 v0, v1, -0x1

    .line 865
    :goto_1d
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    .line 874
    :cond_20
    monitor-exit p0

    return-void

    .line 865
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    move v0, v1

    goto :goto_1d
.end method

.method private declared-synchronized i()V
    .registers 2

    .prologue
    .line 957
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcs;->j()V

    .line 958
    const/4 v0, 0x0

    iput v0, p0, Lcs;->E:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 959
    monitor-exit p0

    return-void

    .line 957
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .registers 3

    .prologue
    .line 963
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcs;->P:Z

    if-eqz v0, :cond_e

    .line 965
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 963
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 967
    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcs;->z:J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    .line 968
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized k()Z
    .registers 5

    .prologue
    .line 972
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcs;->E:I

    if-lez v0, :cond_3d

    iget-wide v0, p0, Lcs;->z:J

    iget-wide v2, p0, Lcs;->D:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    iget-wide v0, p0, Lcs;->z:J

    iget-wide v2, p0, Lcs;->A:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_3f

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3d

    const/4 v0, 0x1

    :goto_25
    monitor-exit p0

    return v0

    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-wide v0, p0, Lcs;->D:J

    :goto_2f
    iget v2, p0, Lcs;->E:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_19

    :cond_34
    iget-wide v0, p0, Lcs;->D:J

    iget-wide v2, p0, Lcs;->A:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_3f

    move-result-wide v0

    goto :goto_2f

    :cond_3d
    const/4 v0, 0x0

    goto :goto_25

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1567
    sget-object v7, Lcs;->X:Ljava/lang/Object;

    monitor-enter v7

    .line 1569
    :try_start_6
    sget-boolean v0, Lcs;->l:Z

    if-nez v0, :cond_d

    .line 1571
    monitor-exit v7

    move v0, v1

    .line 1717
    :goto_c
    return v0

    .line 1574
    :cond_d
    sget v8, Lcs;->o:I

    .line 1576
    const/4 v0, 0x0

    sput-boolean v0, Lcs;->l:Z

    .line 1577
    const/4 v0, 0x1

    sput-boolean v0, Lcs;->m:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_103

    .line 1581
    :try_start_15
    sget-byte v0, Lcs;->f:B

    iget-object v3, p0, Lcs;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_21

    .line 1583
    const/4 v0, -0x1

    sput-byte v0, Lcs;->f:B

    :cond_21
    move v0, v1

    move v5, v1

    move-object v3, p0

    .line 1590
    :goto_24
    if-nez v5, :cond_2d

    .line 1592
    sget-byte v4, Lcs;->f:B

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    sput-byte v4, Lcs;->f:B

    .line 1596
    :cond_2d
    sget-byte v4, Lcs;->f:B

    iget-object v9, p0, Lcs;->c:[Ljava/lang/String;

    array-length v9, v9

    if-lt v4, v9, :cond_17c

    .line 1598
    if-eqz v0, :cond_42

    .line 1601
    invoke-static {}, Lcs;->m()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_39} :catch_8f
    .catchall {:try_start_15 .. :try_end_39} :catchall_fb

    .line 1602
    const/4 v0, 0x0

    :try_start_3a
    sput-boolean v0, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_103

    move v0, v2

    goto :goto_c

    .line 1604
    :cond_42
    :try_start_42
    iget v0, p0, Lcs;->ab:I

    invoke-static {v0}, Lcz;->I(I)Lcp;

    move-result-object v0

    .line 1605
    iget-object v4, p0, Lcs;->d:Lcp;

    iget-object v4, v4, Lcp;->a:Ljava/lang/String;

    iget-object v9, v0, Lcp;->a:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcs;->d:Lcp;

    iget-object v4, v4, Lcp;->C:Ljava/lang/String;

    iget-object v9, v0, Lcp;->C:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcs;->d:Lcp;

    iget v4, v4, Lcp;->J:I

    iget v0, v0, Lcp;->J:I

    if-ne v4, v0, :cond_74

    .line 1610
    invoke-static {}, Lcs;->m()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_6b} :catch_8f
    .catchall {:try_start_42 .. :try_end_6b} :catchall_fb

    .line 1611
    const/4 v0, 0x0

    :try_start_6c
    sput-boolean v0, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    monitor-exit v7
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_103

    move v0, v2

    goto :goto_c

    .line 1616
    :cond_74
    :try_start_74
    sget-object v0, Lcs;->Z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v0, v0, v9

    check-cast v0, Lbe;

    invoke-virtual {v0}, Lbe;->Code()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_8e} :catch_8f
    .catchall {:try_start_74 .. :try_end_8e} :catchall_fb

    goto :goto_7a

    .line 1711
    :catch_8f
    move-exception v0

    :try_start_90
    invoke-static {}, Lcs;->m()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_fb

    .line 1712
    const/4 v0, 0x0

    :try_start_94
    sput-boolean v0, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_103

    move v0, v2

    goto/16 :goto_c

    .line 1617
    :cond_9d
    const/4 v0, 0x0

    :try_start_9e
    sput-byte v0, Lcs;->f:B

    move v4, v2

    .line 1620
    :goto_a1
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    sget-byte v9, Lcs;->f:B

    aget-object v0, v0, v9

    const-string v9, "socket://server4.operamini.com/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    sget-byte v0, Lcs;->Code:B

    if-gez v0, :cond_bf

    sget-boolean v0, Lcs;->W:Z

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcs;->d:Lcp;

    invoke-virtual {v0}, Lcp;->I()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1629
    :cond_bf
    sget-boolean v0, Lcs;->W:Z

    if-eqz v0, :cond_c8

    .line 1631
    const/4 v0, -0x2

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcs;->Code(BLjava/lang/String;)V

    :cond_c8
    move v0, v4

    move v5, v1

    .line 1634
    goto/16 :goto_24

    .line 1641
    :cond_cc
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Code()V

    .line 1643
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 1645
    if-nez v3, :cond_106

    .line 1647
    sget-object v0, Lar;->Code:Lci;

    iget v3, p0, Lcs;->ab:I

    sget-byte v9, Lcs;->f:B

    iget-boolean v10, p0, Lcs;->ad:Z

    invoke-interface {v0, v3, v9, v4, v10}, Lci;->Code(IBZZ)Lcs;

    move-result-object v0

    move-object v3, v0

    .line 1661
    :goto_e5
    sget-boolean v0, Lcs;->n:Z

    if-eqz v0, :cond_11f

    iget-boolean v0, v3, Lcs;->P:Z

    if-nez v0, :cond_11f

    invoke-direct {v3}, Lcs;->k()Z

    move-result v0

    if-nez v0, :cond_11f

    .line 1663
    sget-object v0, Lcs;->X:Ljava/lang/Object;

    const/16 v9, 0x3e8

    invoke-static {v0, v9}, Ldb;->Code(Ljava/lang/Object;I)V
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_fa} :catch_8f
    .catchall {:try_start_9e .. :try_end_fa} :catchall_fb

    goto :goto_e5

    .line 1716
    :catchall_fb
    move-exception v0

    const/4 v1, 0x0

    :try_start_fd
    sput-boolean v1, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    throw v0

    .line 1719
    :catchall_103
    move-exception v0

    monitor-exit v7
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_103

    throw v0

    .line 1652
    :cond_106
    const/4 v0, 0x0

    :try_start_107
    iput-object v0, v3, Lcs;->K:[B

    .line 1653
    const/4 v0, 0x0

    iput-object v0, v3, Lcs;->H:Lby;

    .line 1654
    sget-byte v0, Lcs;->f:B

    iput-byte v0, v3, Lcs;->e:B

    .line 1655
    iget-boolean v0, v3, Lcs;->ad:Z

    if-eqz v0, :cond_11b

    .line 1657
    sget-object v0, Lcs;->ae:Ljava/util/Vector;

    iget v9, p0, Lcs;->ab:I

    invoke-virtual {v0, v3, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1659
    :cond_11b
    invoke-static {v3}, Ldb;->Code(Ljava/lang/Runnable;)V

    goto :goto_e5

    .line 1666
    :cond_11f
    sget-boolean v0, Lcs;->n:Z

    if-eqz v0, :cond_127

    sget v0, Lcs;->o:I
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_125} :catch_8f
    .catchall {:try_start_107 .. :try_end_125} :catchall_fb

    if-eq v8, v0, :cond_131

    .line 1675
    :cond_127
    const/4 v0, 0x0

    :try_start_128
    sput-boolean v0, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    monitor-exit v7
    :try_end_12e
    .catchall {:try_start_128 .. :try_end_12e} :catchall_103

    move v0, v2

    goto/16 :goto_c

    .line 1678
    :cond_131
    :try_start_131
    iget v0, v3, Lcs;->i:I

    if-ne v0, v2, :cond_153

    if-nez v5, :cond_153

    move v0, v2

    .line 1689
    :goto_138
    iget v5, v3, Lcs;->i:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_155

    .line 1692
    const/4 v0, 0x4

    invoke-static {v0}, Lcs;->J(I)V

    .line 1693
    const/4 v0, -0x1

    sput-byte v0, Lcs;->f:B

    .line 1694
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_149} :catch_8f
    .catchall {:try_start_131 .. :try_end_149} :catchall_fb

    .line 1695
    const/4 v0, 0x0

    :try_start_14a
    sput-boolean v0, Lcs;->m:Z

    .line 1717
    invoke-static {}, Lcs;->f()V

    monitor-exit v7
    :try_end_150
    .catchall {:try_start_14a .. :try_end_150} :catchall_103

    move v0, v2

    goto/16 :goto_c

    :cond_153
    move v0, v1

    .line 1686
    goto :goto_138

    .line 1698
    :cond_155
    :try_start_155
    invoke-virtual {v3}, Lcs;->B()Z

    move-result v5

    if-eqz v5, :cond_172

    if-nez v0, :cond_172

    iget-object v5, p0, Lcs;->c:[Ljava/lang/String;

    sget-byte v9, Lcs;->f:B

    add-int/lit8 v9, v9, 0x1

    aget-object v5, v5, v9

    const-string v9, "socket://server4.operamini.com/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_172

    .line 1702
    const/4 v5, -0x2

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcs;->Code(BLjava/lang/String;)V

    .line 1704
    :cond_172
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v5, v9}, Lcs;->Code(ZI)V
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_177} :catch_8f
    .catchall {:try_start_155 .. :try_end_177} :catchall_fb

    move v5, v0

    move-object v3, v6

    move v0, v4

    .line 1705
    goto/16 :goto_24

    :cond_17c
    move v4, v0

    goto/16 :goto_a1
.end method

.method private static m()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 1730
    const/4 v0, 0x0

    invoke-static {v0}, Lcs;->J(I)V

    .line 1731
    invoke-static {v1, v2}, Lcs;->Code(BLjava/lang/String;)V

    .line 1732
    invoke-static {v1, v2}, Lcs;->I(BLjava/lang/String;)V

    .line 1733
    const/4 v0, -0x1

    sput-byte v0, Lcs;->f:B

    .line 1734
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 1736
    return-void
.end method

.method private n()V
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    .line 3067
    invoke-direct {p0}, Lcs;->j()V

    .line 3068
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Code()V

    .line 3069
    iget-object v0, p0, Lcs;->I:[B

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x80

    .line 3070
    iget-object v1, p0, Lcs;->I:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    .line 3072
    const/4 v2, 0x5

    add-int/lit16 v3, v1, 0xa6

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3}, Lcs;->Code(II)V

    .line 3073
    invoke-direct {p0}, Lcs;->i()V

    .line 3074
    iget-object v2, p0, Lcs;->S:Lbe;

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lbe;->C:[B

    .line 3075
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->C:[B

    sput-object v2, Lbe;->c:[B

    .line 3076
    iget-object v2, p0, Lcs;->I:[B

    iget-object v3, p0, Lcs;->S:Lbe;

    iget-object v3, v3, Lbe;->C:[B

    const/4 v4, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3077
    iget-object v2, p0, Lcs;->I:[B

    add-int/lit8 v3, v1, 0x3

    const/16 v4, 0xa0

    invoke-static {v2, v3, v4}, Ldb;->Code([BII)[I

    move-result-object v2

    .line 3078
    iget-object v3, p0, Lcs;->I:[B

    add-int/lit16 v4, v1, 0xa3

    invoke-static {v3, v4, v0}, Ldb;->Code([BII)[I

    move-result-object v3

    .line 3079
    iget-object v4, p0, Lcs;->S:Lbe;

    iget-object v5, p0, Lcs;->I:[B

    add-int/lit16 v1, v1, 0xa3

    add-int/2addr v0, v1

    invoke-static {v5, v0}, Lao;->J([BI)I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v5, v0}, Lao;->J([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v0, v8

    or-long/2addr v0, v6

    iput-wide v0, v4, Lbe;->I:J

    .line 3080
    iget-object v0, p0, Lcs;->S:Lbe;

    iput-object v2, v0, Lbe;->Z:[I

    .line 3081
    iget-object v0, p0, Lcs;->S:Lbe;

    iput-object v3, v0, Lbe;->J:[I

    .line 3082
    sget-boolean v0, Lbe;->e:Z

    if-nez v0, :cond_8c

    .line 3084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcs;->S:Lbe;

    iget-wide v2, v2, Lbe;->I:J

    const-wide/32 v4, 0x48190800

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    sput-wide v0, Lbe;->d:J

    .line 3086
    sput-boolean v10, Lbe;->e:Z

    .line 3089
    :cond_8c
    return-void
.end method


# virtual methods
.method public final B()Z
    .registers 3

    .prologue
    .line 1561
    iget-object v0, p0, Lcs;->c:[Ljava/lang/String;

    iget-byte v1, p0, Lcs;->e:B

    aget-object v0, v0, v1

    const-string v1, "socket://server4.operamini.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final Code()Lcp;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcs;->d:Lcp;

    return-object v0
.end method

.method final declared-synchronized Code(Lct;)V
    .registers 4

    .prologue
    .line 984
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcs;->k()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 987
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    .line 988
    invoke-virtual {p1}, Lct;->k()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 990
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_18

    .line 984
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1007
    :cond_1b
    monitor-exit p0

    return-void
.end method

.method final I(Z)V
    .registers 16

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x6

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2535
    :cond_6
    :goto_6
    :pswitch_6
    invoke-direct {p0, v2, v11}, Lcs;->Code(II)V

    .line 2538
    iget-object v0, p0, Lcs;->a:Lcl;

    iget-object v3, p0, Lcs;->I:[B

    invoke-virtual {v0, v3, v2, v11}, Lcl;->Code([BII)V

    .line 2540
    iget-object v0, p0, Lcs;->I:[B

    invoke-static {v0, v12}, Lap;->Z([BI)I

    move-result v0

    .line 2541
    const/16 v3, 0x3f6

    if-le v0, v3, :cond_20

    .line 2544
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 2546
    :cond_20
    invoke-direct {p0, v11, v0}, Lcs;->Code(II)V

    .line 2547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcs;->z:J

    .line 2550
    iget-object v3, p0, Lcs;->a:Lcl;

    iget-object v4, p0, Lcs;->I:[B

    invoke-virtual {v3, v4, v11, v0}, Lcl;->Code([BII)V

    .line 2551
    iget-object v3, p0, Lcs;->B:Lbs;

    iget v4, p0, Lcs;->U:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcs;->U:I

    invoke-virtual {v3, v4}, Lbs;->Code(I)V

    .line 2552
    iget-object v3, p0, Lcs;->B:Lbs;

    iget-object v4, p0, Lcs;->I:[B

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v4, v12, v5}, Lbs;->Code([BII)V

    .line 2553
    iget-object v3, p0, Lcs;->B:Lbs;

    iget-object v4, p0, Lcs;->I:[B

    const/16 v5, 0x3fc

    invoke-virtual {v3, v4, v5, v12}, Lbs;->I([BII)V

    .line 2554
    iget-object v3, p0, Lcs;->I:[B

    const/16 v4, 0x3fc

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcs;->I:[B

    aget-byte v4, v4, v2

    if-ne v3, v4, :cond_7f

    iget-object v3, p0, Lcs;->I:[B

    const/16 v4, 0x3fd

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcs;->I:[B

    aget-byte v4, v4, v1

    if-ne v3, v4, :cond_7f

    iget-object v3, p0, Lcs;->I:[B

    const/16 v4, 0x3fe

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcs;->I:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_7f

    iget-object v3, p0, Lcs;->I:[B

    const/16 v4, 0x3ff

    aget-byte v3, v3, v4

    iget-object v4, p0, Lcs;->I:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_85

    .line 2560
    :cond_7f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 2566
    :cond_85
    iget-object v3, p0, Lcs;->I:[B

    aget-byte v8, v3, v11

    .line 2567
    iget-object v3, p0, Lcs;->I:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    .line 2568
    add-int/lit8 v6, v0, -0x2

    .line 2571
    packed-switch v8, :pswitch_data_1b8

    :pswitch_93
    goto/16 :goto_6

    .line 2658
    :pswitch_95
    invoke-direct {p0, v1}, Lcs;->Z(Z)V

    goto/16 :goto_6

    .line 2574
    :pswitch_9a
    iget-object v0, p0, Lcs;->G:Lby;

    invoke-interface {v0, p0}, Lby;->Code(Lcs;)V

    .line 2575
    iget-object v0, p0, Lcs;->G:Lby;

    iget-object v4, p0, Lcs;->I:[B

    invoke-interface {v0, v4, v7, v6}, Lby;->setInput([BII)V

    .line 2576
    if-eqz p1, :cond_a9

    .line 2668
    :goto_a8
    return-void

    .line 2584
    :cond_a9
    :pswitch_a9
    invoke-direct {p0, v3}, Lcs;->Z(I)Lct;

    move-result-object v5

    move v0, v2

    move v4, v7

    .line 2590
    :goto_af
    if-nez v5, :cond_c6

    .line 2592
    const/16 v0, 0xb

    if-ne v8, v0, :cond_6

    .line 2594
    :goto_b5
    iget-object v0, p0, Lcs;->G:Lby;

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-interface {v0, v3, v2, v4}, Lby;->read([BII)I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_b5

    .line 2613
    :cond_c1
    const/16 v3, 0x3e8

    invoke-static {v5, v3}, Ldb;->Code(Ljava/lang/Object;I)V

    .line 2606
    :cond_c6
    invoke-virtual {v5}, Lct;->c()[B

    move-result-object v3

    if-nez v3, :cond_dd

    .line 2608
    invoke-virtual {v5}, Lct;->k()Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 2610
    const/4 v3, 0x0

    move v5, v6

    move-object v13, v3

    move v3, v4

    move-object v4, v13

    .line 2641
    :goto_d7
    if-nez v0, :cond_6

    move v6, v5

    move-object v5, v4

    move v4, v3

    goto :goto_af

    .line 2616
    :cond_dd
    invoke-virtual {v5}, Lct;->e()I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2617
    packed-switch v8, :pswitch_data_1de

    :pswitch_e8
    move v13, v3

    move v3, v0

    move v0, v13

    .line 2637
    :goto_eb
    invoke-virtual {v5, v0}, Lct;->Code(I)V

    .line 2638
    add-int/2addr v4, v0

    .line 2639
    sub-int v0, v6, v0

    move v13, v3

    move v3, v4

    move-object v4, v5

    move v5, v0

    move v0, v13

    goto :goto_d7

    .line 2620
    :pswitch_f7
    iget-object v0, p0, Lcs;->I:[B

    invoke-virtual {v5}, Lct;->c()[B

    move-result-object v9

    invoke-virtual {v5}, Lct;->d()I

    move-result v10

    invoke-static {v0, v4, v9, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2621
    if-ne v3, v6, :cond_10e

    move v0, v1

    .line 2622
    :goto_107
    invoke-virtual {v5, v3}, Lct;->J(I)V

    move v13, v3

    move v3, v0

    move v0, v13

    .line 2623
    goto :goto_eb

    :cond_10e
    move v0, v2

    .line 2621
    goto :goto_107

    .line 2625
    :pswitch_110
    iget-object v0, p0, Lcs;->G:Lby;

    invoke-virtual {v5}, Lct;->c()[B

    move-result-object v3

    invoke-virtual {v5}, Lct;->d()I

    move-result v9

    invoke-virtual {v5}, Lct;->e()I

    move-result v10

    invoke-interface {v0, v3, v9, v10}, Lby;->read([BII)I

    move-result v3

    .line 2626
    if-nez v3, :cond_132

    move v0, v1

    .line 2627
    :goto_125
    iget-object v9, p0, Lcs;->G:Lby;

    invoke-interface {v9}, Lby;->I()I

    move-result v9

    invoke-virtual {v5, v9}, Lct;->J(I)V

    move v13, v3

    move v3, v0

    move v0, v13

    .line 2628
    goto :goto_eb

    :cond_132
    move v0, v2

    .line 2626
    goto :goto_125

    .line 2631
    :pswitch_134
    invoke-virtual {v5}, Lct;->j()V

    .line 2632
    invoke-static {v5, v1}, Lcs;->Code(Lct;Z)V

    .line 2633
    iget-boolean v0, p0, Lcs;->F:Z

    if-eqz v0, :cond_148

    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, p0, Lcs;->G:Lby;

    iput-object v0, p0, Lcs;->H:Lby;

    :cond_148
    iget-object v0, p0, Lcs;->M:[I

    const/16 v3, 0x32

    aget v0, v0, v3

    if-ne v0, v1, :cond_6

    sput-boolean v2, Ldb;->O:Z

    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2645
    :pswitch_159
    invoke-direct {p0, v3}, Lcs;->I(I)V

    goto/16 :goto_6

    .line 2652
    :pswitch_15e
    iget v0, p0, Lcs;->N:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcs;->N:I

    .line 2653
    invoke-direct {p0, v3}, Lcs;->Z(I)Lct;

    move-result-object v0

    invoke-virtual {v0}, Lct;->f()V

    .line 2654
    invoke-static {v2}, Ldb;->Code(Z)V

    goto/16 :goto_6

    .line 2661
    :pswitch_174
    iget-boolean v0, p0, Lcs;->F:Z

    if-eqz v0, :cond_6

    .line 2663
    iget-object v0, p0, Lcs;->K:[B

    if-eqz v0, :cond_18a

    .line 2665
    iget-object v0, p0, Lcs;->I:[B

    iget-object v3, p0, Lcs;->K:[B

    invoke-static {v0, v7, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2666
    iput-boolean v1, p0, Lcs;->s:Z

    .line 2667
    invoke-direct {p0, v1}, Lcs;->Z(Z)V

    goto/16 :goto_a8

    .line 2672
    :cond_18a
    new-array v0, v7, [B

    iput-object v0, p0, Lcs;->K:[B

    .line 2673
    iget-object v0, p0, Lcs;->I:[B

    iget-object v3, p0, Lcs;->K:[B

    invoke-static {v0, v7, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .line 2680
    :pswitch_197
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->x()Lby;

    move-result-object v0

    iput-object v0, p0, Lcs;->G:Lby;

    .line 2681
    iget-object v0, p0, Lcs;->G:Lby;

    invoke-interface {v0}, Lby;->Code()V

    goto/16 :goto_6

    .line 2684
    :pswitch_1a6
    iget-object v0, p0, Lcs;->I:[B

    add-int/lit8 v3, v6, 0x8

    invoke-static {v0, v7, v3}, Lap;->Code([BII)Ljava/lang/String;

    move-result-object v0

    .line 2686
    new-instance v3, Lbt;

    invoke-direct {v3, v0}, Lbt;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ldb;->Code(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 2571
    :pswitch_data_1b8
    .packed-switch 0x4
        :pswitch_95
        :pswitch_93
        :pswitch_a9
        :pswitch_159
        :pswitch_93
        :pswitch_15e
        :pswitch_a9
        :pswitch_9a
        :pswitch_6
        :pswitch_93
        :pswitch_93
        :pswitch_174
        :pswitch_93
        :pswitch_197
        :pswitch_93
        :pswitch_93
        :pswitch_1a6
    .end packed-switch

    .line 2617
    :pswitch_data_1de
    .packed-switch 0x6
        :pswitch_134
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_f7
        :pswitch_110
    .end packed-switch
.end method

.method final c()Z
    .registers 2

    .prologue
    .line 3102
    iget-boolean v0, p0, Lcs;->F:Z

    return v0
.end method

.method public final run()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 2087
    :try_start_1
    iget-boolean v0, p0, Lcs;->P:Z

    if-eqz v0, :cond_15

    .line 2089
    iget-object v0, p0, Lcs;->x:Ljava/io/DataOutputStream;

    invoke-static {v0}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 2090
    iget-object v0, p0, Lcs;->w:Ljava/io/DataInputStream;

    invoke-static {v0}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 2091
    iget-object v0, p0, Lcs;->R:Lbc;

    invoke-interface {v0}, Lbc;->Code()V

    .line 2268
    :cond_14
    :goto_14
    return-void

    .line 2094
    :cond_15
    invoke-direct {p0}, Lcs;->l()Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_59

    move-result v0

    if-nez v0, :cond_14

    .line 2100
    :try_start_1b
    iget-boolean v0, p0, Lcs;->O:Z

    if-eqz v0, :cond_6f

    .line 2102
    const/16 v0, 0x8

    new-array v0, v0, [B

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcs;->e()Lct;

    move-result-object v1

    invoke-virtual {v1}, Lct;->k()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Lct;->l()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lct;->Z(I)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lct;->C()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v4, v5}, Lcs;->Code([BIIII)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {p0, v0, v3, v4}, Lcs;->Code([BII)V

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcs;->Code([BI)V

    const/4 v3, 0x7

    if-ne v2, v3, :cond_23

    invoke-direct {p0, v1}, Lcs;->Z(Lct;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_4f} :catch_50

    goto :goto_23

    .line 2258
    :catch_50
    move-exception v0

    :try_start_51
    iget-boolean v0, p0, Lcs;->P:Z

    .line 2262
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_59

    goto :goto_14

    .line 2268
    :catch_59
    move-exception v0

    goto :goto_14

    .line 2102
    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Lct;->g()Z

    move-result v2

    if-nez v2, :cond_23

    const/16 v2, 0x2710

    invoke-direct {p0, v2}, Lcs;->C(I)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcs;->Code(Lct;I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcs;->Code(Lct;[B)V

    goto :goto_23

    .line 2103
    :cond_6f
    sget-boolean v0, Lcs;->n:Z

    .line 2111
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Z()V

    .line 2112
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0, p0}, Lbe;->Code(Lcs;)I

    move-result v0

    .line 2114
    if-gez v0, :cond_171

    .line 2117
    const/16 v1, 0xf

    new-array v1, v1, [B

    .line 2118
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 2119
    const/4 v2, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 2120
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 2121
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->b:[B

    invoke-static {v2}, Ldb;->I([B)Lch;

    .line 2122
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->b:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcs;->S:Lbe;

    iget-object v4, v4, Lbe;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2123
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/16 v5, 0x8

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2126
    iget-object v2, p0, Lcs;->S:Lbe;

    iget-object v2, v2, Lbe;->Code:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0xb

    invoke-static {v2, v1, v3}, Lap;->Z(I[BI)V

    .line 2128
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcs;->C(I)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_c0} :catch_50

    .line 2131
    const/4 v2, 0x0

    :try_start_c1
    invoke-direct {p0, v2, v1}, Lcs;->Code(Lct;[B)V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_e4

    .line 2159
    const/4 v1, 0x0

    const/4 v2, 0x5

    :try_start_c6
    invoke-direct {p0, v1, v2}, Lcs;->Code(II)V

    .line 2160
    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-eq v1, v7, :cond_e9

    .line 2163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcs;->C(Lct;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2169
    const/4 v0, 0x1

    iput v0, p0, Lcs;->i:I

    .line 2170
    invoke-direct {p0}, Lcs;->e()Lct;

    .line 2171
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    goto/16 :goto_14

    .line 2133
    :catch_e4
    move-exception v0

    .line 2156
    invoke-direct {p0}, Lcs;->e()Lct;

    .line 2157
    throw v0

    .line 2174
    :cond_e9
    invoke-direct {p0}, Lcs;->n()V

    .line 2176
    sget-object v2, Lcs;->X:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_ef} :catch_50

    :try_start_ef
    sget-boolean v1, Lcs;->n:Z

    if-eqz v1, :cond_13f

    const/4 v1, 0x0

    sput-boolean v1, Lcs;->n:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcs;->m:Z

    iget-object v1, p0, Lcs;->c:[Ljava/lang/String;

    iget-byte v3, p0, Lcs;->e:B

    aget-object v3, v1, v3

    const/4 v1, 0x0

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_112

    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_112
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v3

    if-eqz v3, :cond_158

    iget-byte v3, p0, Lcs;->e:B

    invoke-static {v3, v1}, Lcs;->Code(BLjava/lang/String;)V

    :goto_11d
    iget-boolean v1, p0, Lcs;->ac:Z

    if-eqz v1, :cond_131

    invoke-static {}, Lcz;->I()Z

    move-result v1

    if-eqz v1, :cond_131

    sget-object v1, Lar;->I:Lar;

    invoke-static {}, Lar;->v()V

    sget v1, Lcz;->Code:I

    invoke-static {v1}, Lcs;->Code(I)V

    :cond_131
    const/4 v1, -0x1

    sput-byte v1, Lcs;->f:B

    const/4 v1, 0x1

    sput-boolean v1, Ldb;->M:Z

    const/4 v1, 0x1

    sput-boolean v1, Ldb;->N:Z

    const-string v1, "md"

    invoke-static {v1}, Ldb;->a(Ljava/lang/String;)V

    :cond_13f
    monitor-exit v2
    :try_end_140
    .catchall {:try_start_ef .. :try_end_140} :catchall_15e

    .line 2177
    :try_start_140
    iget-object v1, p0, Lcs;->S:Lbe;

    invoke-virtual {v1}, Lbe;->I()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 2179
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Code()V

    .line 2180
    const/4 v0, 0x1

    invoke-static {v0}, Lcs;->J(I)V

    .line 2181
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_156} :catch_50

    goto/16 :goto_14

    .line 2176
    :cond_158
    :try_start_158
    iget-byte v3, p0, Lcs;->e:B

    invoke-static {v3, v1}, Lcs;->I(BLjava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_158 .. :try_end_15d} :catchall_15e

    goto :goto_11d

    :catchall_15e
    move-exception v0

    :try_start_15f
    monitor-exit v2

    throw v0

    .line 2184
    :cond_161
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v1

    if-nez v1, :cond_171

    .line 2186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcs;->s:Z

    .line 2187
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    goto/16 :goto_14

    .line 2193
    :cond_171
    if-gez v0, :cond_17e

    .line 2195
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Z()V

    .line 2196
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0, p0}, Lbe;->Code(Lcs;)I

    move-result v0

    .line 2198
    :cond_17e
    invoke-direct {p0}, Lcs;->e()Lct;

    move-result-object v1

    .line 2199
    const v2, 0x3a980

    invoke-direct {p0, v2}, Lcs;->C(I)V

    .line 2200
    invoke-direct {p0, v1, v0}, Lcs;->Code(Lct;I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcs;->Code(Lct;[B)V

    .line 2203
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcs;->Code(II)V

    .line 2204
    iget-object v0, p0, Lcs;->I:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    packed-switch v0, :pswitch_data_230

    .line 2236
    invoke-direct {p0, v1}, Lcs;->C(Lct;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2242
    const/4 v0, 0x1

    iput v0, p0, Lcs;->i:I

    .line 2243
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    goto/16 :goto_14

    .line 2207
    :pswitch_1ac
    invoke-direct {p0}, Lcs;->n()V

    .line 2208
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->I()Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 2210
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Code()V

    .line 2211
    const/4 v0, 0x1

    invoke-static {v0}, Lcs;->J(I)V

    .line 2213
    :cond_1c0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    goto/16 :goto_14

    .line 2217
    :pswitch_1c7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcs;->z:J

    .line 2218
    iget-boolean v0, p0, Lcs;->F:Z

    if-nez v0, :cond_1d6

    .line 2220
    iget-object v0, p0, Lcs;->S:Lbe;

    invoke-virtual {v0}, Lbe;->Code()V

    .line 2222
    :cond_1d6
    iget-object v0, p0, Lcs;->a:Lcl;

    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcl;->Code([BII)V

    .line 2223
    iget-object v0, p0, Lcs;->B:Lbs;

    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lbs;->I([BII)V

    .line 2224
    iget-object v0, p0, Lcs;->I:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_219

    iget-object v0, p0, Lcs;->I:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_219

    iget-object v0, p0, Lcs;->I:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcs;->I:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_219

    iget-object v0, p0, Lcs;->I:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcs;->I:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_220

    .line 2230
    :cond_219
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcs;->Code(ZI)V

    goto/16 :goto_14

    .line 2250
    :cond_220
    invoke-virtual {p0}, Lcs;->B()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 2252
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Runnable;)V

    .line 2254
    :cond_229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcs;->I(Z)V
    :try_end_22d
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_22d} :catch_50

    goto/16 :goto_14

    .line 2204
    nop

    :pswitch_data_230
    .packed-switch 0x2
        :pswitch_1ac
        :pswitch_1c7
    .end packed-switch
.end method
