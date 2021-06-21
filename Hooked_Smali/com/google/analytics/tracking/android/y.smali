.class final Lcom/google/analytics/tracking/android/y;
.super Ljava/lang/Thread;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/f;


# static fields
.field private static c:Lcom/google/analytics/tracking/android/y;


# instance fields
.field private volatile B:Ljava/util/List;

.field private volatile C:Lcom/google/analytics/tracking/android/ag;

.field private final Code:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile I:Z

.field private volatile J:Z

.field private volatile Z:Z

.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/String;

.field private volatile d:Lcom/google/analytics/tracking/android/an;

.field private final e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->Code:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->I:Z

    .line 53
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->Z:Z

    .line 74
    if-eqz p1, :cond_1d

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    .line 79
    :goto_19
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/y;->start()V

    .line 80
    return-void

    .line 77
    :cond_1d
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    goto :goto_19
.end method

.method static synthetic B(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/ag;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->C:Lcom/google/analytics/tracking/android/ag;

    return-object v0
.end method

.method static synthetic C(Lcom/google/analytics/tracking/android/y;)Ljava/util/List;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->B:Ljava/util/List;

    return-object v0
.end method

.method static Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/y;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/y;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcom/google/analytics/tracking/android/y;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/y;

    .line 68
    :cond_b
    sget-object v0, Lcom/google/analytics/tracking/android/y;->c:Lcom/google/analytics/tracking/android/y;

    return-object v0
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static Code(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 468
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 469
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 470
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;)V
    .registers 8

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_11
    iget-object v4, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_5d

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_27} :catch_46

    move-result-object v1

    :try_start_28
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_2a} :catch_5b

    :goto_2a
    const-string v4, "appName"

    invoke-static {p1, v4, v1}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appVersion"

    invoke-static {p1, v1, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p1, v0, v2}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appInstallerId"

    invoke-static {p1, v0, v3}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apiVersion"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_46
    move-exception v1

    move-object v1, v2

    :goto_48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error retrieving package info: appName set to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    goto :goto_2a

    :catch_5b
    move-exception v4

    goto :goto_48

    :cond_5d
    move-object v1, v2

    goto :goto_2a
.end method

.method private Code(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->Code:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method private static Code(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 233
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 234
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_9
    return-void
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/y;Z)Z
    .registers 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/y;->J:Z

    return p1
.end method

.method private Code(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v2, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 349
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_14} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1d

    .line 350
    const/4 v0, 0x1

    .line 356
    :goto_15
    return v0

    .line 352
    :catch_16
    move-exception v1

    const-string v1, "Error creating clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    goto :goto_15

    .line 355
    :catch_1d
    move-exception v1

    const-string v1, "Error writing to clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    goto :goto_15
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 427
    :try_start_1
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 432
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 433
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 434
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_26

    .line 437
    const-string v2, "Too much campaign data, ignoring it."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 438
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 439
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 461
    :goto_25
    return-object v0

    .line 442
    :cond_26
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 443
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 444
    if-gtz v3, :cond_3d

    .line 445
    const-string v1, "Campaign file is empty."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_57

    goto :goto_25

    .line 454
    :catch_36
    move-exception v1

    const-string v1, "No campaign data found."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->Z(Ljava/lang/String;)I

    goto :goto_25

    .line 448
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Campaign found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/af;->Z(Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_55} :catch_36
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_55} :catch_57

    move-object v0, v1

    .line 450
    goto :goto_25

    .line 459
    :catch_57
    move-exception v1

    const-string v1, "Error reading campaign data."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 460
    const-string v1, "gaInstallData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_25
.end method

.method static synthetic I(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 36
    const-string v0, "rawException"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_47

    const-string v1, "rawException"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ar;->B(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_18
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_47

    check-cast v0, Ljava/lang/Throwable;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2a} :catch_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_2a} :catch_4f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/analytics/tracking/android/p;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/google/analytics/tracking/android/p;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    const-string v3, "exDescription"

    const-string v1, "exceptionThreadName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/google/analytics/tracking/android/p;->Code(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v0

    const-string v0, "IOException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_47

    :catch_4f
    move-exception v0

    const-string v0, "ClassNotFoundException reading exception"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_47
.end method

.method static synthetic I(Lcom/google/analytics/tracking/android/y;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->J:Z

    return v0
.end method

.method static synthetic I(Ljava/util/Map;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 36
    const-string v0, "sampleRate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v0, "sampleRate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ar;->I(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1f

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    cmpg-double v0, v2, v6

    if-gez v0, :cond_3f

    const-string v0, "clientId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    int-to-double v4, v0

    mul-double/2addr v2, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_3f

    move v0, v1

    goto :goto_1e

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private J()Ljava/lang/String;
    .registers 7

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 385
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 386
    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 387
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_29

    .line 390
    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 391
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 392
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v5, "gaInstallData"

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 394
    :cond_29
    if-gtz v4, :cond_51

    .line 395
    const-string v1, "clientId file seems empty, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 396
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 397
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3a} :catch_7e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3a} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_3a} :catch_6a

    .line 412
    :goto_3a
    if-nez v0, :cond_50

    .line 413
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v0, "0"

    .line 415
    :cond_50
    return-object v0

    .line 399
    :cond_51
    :try_start_51
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_57} :catch_7e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_57} :catch_6a

    .line 400
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5a} :catch_80
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5a} :catch_78

    move-object v0, v1

    .line 410
    goto :goto_3a

    .line 404
    :catch_5c
    move-exception v1

    .line 405
    :goto_5d
    const-string v1, "Error reading clientId file, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_3a

    .line 407
    :catch_6a
    move-exception v1

    .line 408
    :goto_6b
    const-string v1, "cliendId file doesn\'t have long value, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v2, "gaInstallData"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_3a

    .line 407
    :catch_78
    move-exception v0

    move-object v0, v1

    goto :goto_6b

    .line 404
    :catch_7b
    move-exception v0

    move-object v0, v1

    goto :goto_5d

    .line 402
    :catch_7e
    move-exception v1

    goto :goto_3a

    :catch_80
    move-exception v0

    move-object v0, v1

    goto :goto_3a
.end method

.method static synthetic J(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Ljava/util/Map;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "internalHitUrl"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, "useSecure"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "useSecure"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ar;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "https://ssl.google-analytics.com/collect"

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    const-string v0, "http://www.google-analytics.com/collect"

    goto :goto_22

    :cond_26
    const-string v0, "https://ssl.google-analytics.com/collect"

    goto :goto_22
.end method

.method static synthetic Z(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Z(Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 36
    const-string v0, "campaign"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ar;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ar;->Code(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "campaignContent"

    const-string v2, "utm_content"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignMedium"

    const-string v2, "utm_medium"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignName"

    const-string v2, "utm_campaign"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignSource"

    const-string v2, "utm_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignKeyword"

    const-string v2, "utm_term"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignId"

    const-string v2, "utm_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    const-string v2, "gclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    const-string v2, "dclid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gmob_t"

    const-string v2, "gmob_t"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/an;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/an;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/y;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final Code()V
    .registers 2

    .prologue
    .line 264
    new-instance v0, Lcom/google/analytics/tracking/android/y$2;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/y$2;-><init>(Lcom/google/analytics/tracking/android/y;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public final Code(Lcom/google/analytics/tracking/android/g$Code;)V
    .registers 3

    .prologue
    .line 316
    new-instance v0, Lcom/google/analytics/tracking/android/y$5;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/y$5;-><init>(Lcom/google/analytics/tracking/android/y;Lcom/google/analytics/tracking/android/g$Code;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public final Code(Lcom/google/analytics/tracking/android/g$I;)V
    .registers 3

    .prologue
    .line 304
    new-instance v0, Lcom/google/analytics/tracking/android/y$4;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/y$4;-><init>(Lcom/google/analytics/tracking/android/y;Lcom/google/analytics/tracking/android/g$I;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public final Code(Ljava/util/Map;)V
    .registers 7

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 108
    const-string v3, "hitTime"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lcom/google/analytics/tracking/android/y$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/analytics/tracking/android/y$1;-><init>(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;J)V

    invoke-direct {p0, v3}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final Code(Z)V
    .registers 3

    .prologue
    .line 275
    new-instance v0, Lcom/google/analytics/tracking/android/y$3;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/y$3;-><init>(Lcom/google/analytics/tracking/android/y;Z)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public final I()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->Code:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public final Z()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 542
    return-object p0
.end method

.method public final run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 482
    const-wide/16 v0, 0x1388

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_ad

    .line 490
    :goto_7
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/an;

    if-nez v0, :cond_15

    .line 491
    new-instance v0, Lcom/google/analytics/tracking/android/s;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/analytics/tracking/android/s;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/an;

    .line 493
    :cond_15
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->d:Lcom/google/analytics/tracking/android/an;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/an;->B()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->B:Ljava/util/List;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->B:Ljava/util/List;

    new-instance v1, Laa;

    const-string v2, "appendVersion"

    const-string v3, "_v"

    const-string v4, "ma1b5"

    invoke-direct {v1, v2, v3, v4}, Laa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->B:Ljava/util/List;

    new-instance v1, Laa;

    const-string v2, "appendQueueTime"

    const-string v3, "qt"

    invoke-direct {v1, v2, v3, v6}, Laa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->B:Ljava/util/List;

    new-instance v1, Laa;

    const-string v2, "appendCacheBuster"

    const-string v3, "z"

    invoke-direct {v1, v2, v3, v6}, Laa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/analytics/tracking/android/ag;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/ag;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->C:Lcom/google/analytics/tracking/android/ag;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->C:Lcom/google/analytics/tracking/android/ag;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aj;->Code(Lcom/google/analytics/tracking/android/ag;)V

    .line 502
    :try_start_59
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/y;->J:Z

    .line 503
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/y;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->b:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_75} :catch_b5

    .line 512
    :cond_75
    :goto_75
    :try_start_75
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->Code:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 519
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y;->I:Z

    if-nez v1, :cond_75

    .line 520
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_84} :catch_85
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_84} :catch_8e

    goto :goto_75

    .line 522
    :catch_85
    move-exception v0

    :try_start_86
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->Z(Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8d} :catch_8e

    goto :goto_75

    .line 525
    :catch_8e
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error on GAThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 529
    const-string v0, "Google Analytics is shutting down."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 530
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/y;->I:Z

    goto :goto_75

    .line 485
    :catch_ad
    move-exception v0

    const-string v0, "sleep interrupted in GAThread initialize"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 505
    :catch_b5
    move-exception v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error initializing the GAThread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->Code(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 509
    const-string v0, "Google Analytics will not start up."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 510
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/y;->I:Z

    goto :goto_75
.end method
