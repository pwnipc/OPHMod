.class final Lcom/opera/mini/android/bk;
.super Landroid/os/AsyncTask;
.source "Source"


# instance fields
.field private final Code:[Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private final J:[Ljava/lang/String;

.field private final Z:[Lcom/opera/mini/android/bj;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/opera/mini/android/bk;->I:Ljava/lang/String;

    .line 260
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/bk;->Code:[Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/opera/mini/android/bk;->Code:[Ljava/lang/String;

    array-length v0, v0

    .line 262
    new-array v1, v0, [Lcom/opera/mini/android/bj;

    iput-object v1, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    .line 263
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opera/mini/android/bk;->J:[Ljava/lang/String;

    .line 264
    return-void
.end method

.method private varargs Code()Ljava/lang/Void;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 271
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "p"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0x10001

    rem-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dnsecho.opera.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/bk;->I:Ljava/lang/String;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_29} :catch_94

    :goto_29
    move v0, v1

    .line 275
    :goto_2a
    iget-object v2, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    array-length v2, v2

    if-ge v0, v2, :cond_92

    .line 277
    :try_start_2f
    iget-object v3, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    iget-object v2, p0, Lcom/opera/mini/android/bk;->Code:[Ljava/lang/String;

    aget-object v4, v2, v0

    const-string v2, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_66

    new-instance v2, Lcom/opera/mini/android/bh;

    invoke-direct {v2, v4}, Lcom/opera/mini/android/bh;-><init>(Ljava/lang/String;)V

    :goto_49
    aput-object v2, v3, v0

    .line 278
    iget-object v2, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/opera/mini/android/bj;->I()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_52} :catch_70

    .line 282
    :goto_52
    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/opera/mini/android/bk;->publishProgress([Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/opera/mini/android/bk;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_92

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 277
    :cond_66
    if-ne v5, v6, :cond_7a

    :try_start_68
    new-instance v2, Lcom/opera/mini/android/bh;

    const-string v5, "HEAD"

    invoke-direct {v2, v4, v5}, Lcom/opera/mini/android/bh;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_49

    .line 279
    :catch_70
    move-exception v2

    .line 280
    iget-object v3, p0, Lcom/opera/mini/android/bk;->J:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    goto :goto_52

    .line 277
    :cond_7a
    :try_start_7a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown test type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_92} :catch_70

    .line 287
    :cond_92
    const/4 v0, 0x0

    return-object v0

    .line 273
    :catch_94
    move-exception v0

    goto :goto_29
.end method

.method private Code(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "probe:/send_result/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "X-Connection-Type"

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-static {}, Lcom/opera/mini/android/bf;->Z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "X-Signal-Quality"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/opera/mini/android/bf;->J()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "X-DNS-Resolver-IP"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/opera/mini/android/bk;->I:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "X-Test-Type"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "X-Probe-Failure"

    aput-object v4, v3, v0

    const/16 v4, 0x9

    if-eqz p3, :cond_6b

    const-string v0, "1"

    :goto_5b
    aput-object v0, v3, v4

    .line 338
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 330
    :cond_6b
    const-string v0, "0"

    goto :goto_5b

    .line 342
    :cond_6e
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 343
    sget-object v0, Lar;->Z:Lan;

    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lan;->b(I)V

    .line 344
    sget-object v0, Lar;->Z:Lan;

    array-length v2, v3

    invoke-virtual {v0, v2}, Lan;->l(I)V

    move v0, v1

    .line 345
    :goto_85
    array-length v1, v3

    if-ge v0, v1, :cond_98

    .line 347
    sget-object v1, Lar;->Z:Lan;

    sget-object v2, Lar;->Z:Lan;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lan;->m(I)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 349
    :cond_98
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1}, Lan;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 350
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p4}, Lan;->Code(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 351
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 352
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/opera/mini/android/bk;->Code()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 251
    check-cast p1, [Ljava/lang/Integer;

    :try_start_4
    array-length v5, p1

    move v4, v1

    :goto_6
    if-ge v4, v5, :cond_7a

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    aget-object v2, v2, v0

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/opera/mini/android/bk;->Z:[Lcom/opera/mini/android/bj;

    aget-object v6, v2, v0

    iget v7, v6, Lcom/opera/mini/android/bj;->B:I

    iget-object v8, v6, Lcom/opera/mini/android/bj;->J:Ljava/lang/String;

    iget-object v0, v6, Lcom/opera/mini/android/bj;->Z:Ljava/lang/String;

    if-eqz v0, :cond_2e

    move v2, v3

    :goto_21
    iget-object v0, v6, Lcom/opera/mini/android/bj;->Z:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, v6, Lcom/opera/mini/android/bj;->Z:Ljava/lang/String;

    :goto_27
    invoke-direct {p0, v7, v8, v2, v0}, Lcom/opera/mini/android/bk;->Code(ILjava/lang/String;ZLjava/lang/String;)V

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_2e
    move v2, v1

    goto :goto_21

    :cond_30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_36
    iget-object v10, v6, Lcom/opera/mini/android/bj;->I:[I

    array-length v10, v10

    if-ge v0, v10, :cond_4c

    if-lez v0, :cond_42

    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    iget-object v10, v6, Lcom/opera/mini/android/bj;->I:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_51
    iget-object v2, p0, Lcom/opera/mini/android/bk;->Code:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v6, p0, Lcom/opera/mini/android/bk;->J:[Ljava/lang/String;

    aget-object v0, v6, v0

    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_5e} :catch_76

    move-result v6

    if-nez v6, :cond_2a

    :try_start_61
    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v2, v2, v7
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_71} :catch_76

    const/4 v7, 0x1

    :try_start_72
    invoke-direct {p0, v6, v2, v7, v0}, Lcom/opera/mini/android/bk;->Code(ILjava/lang/String;ZLjava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_2a

    :catch_76
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/opera/mini/android/bk;->cancel(Z)Z

    :cond_7a
    return-void

    :catch_7b
    move-exception v0

    goto :goto_2a
.end method
