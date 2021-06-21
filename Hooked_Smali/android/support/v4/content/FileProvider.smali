.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "Source"


# static fields
.field private static final Code:[Ljava/lang/String;

.field private static final I:Ljava/io/File;

.field private static Z:Ljava/util/HashMap;


# instance fields
.field private J:Landroid/support/v4/content/Code;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/content/FileProvider;->Code:[Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->I:Ljava/io/File;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->Z:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 630
    return-void
.end method

.method private static Code(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/Code;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 530
    sget-object v3, Landroid/support/v4/content/FileProvider;->Z:Ljava/util/HashMap;

    monitor-enter v3

    .line 531
    :try_start_5
    sget-object v0, Landroid/support/v4/content/FileProvider;->Z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/Code;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_3b

    .line 532
    if-nez v0, :cond_c6

    .line 534
    :try_start_f
    new-instance v0, Landroid/support/v4/content/Code;

    invoke-direct {v0}, Landroid/support/v4/content/Code;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_32} :catch_73
    .catchall {:try_start_f .. :try_end_32} :catchall_3b

    .line 535
    :catch_32
    move-exception v0

    .line 536
    :try_start_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 544
    :catchall_3b
    move-exception v0

    monitor-exit v3

    throw v0

    .line 534
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v9, :cond_c1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3e

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "path"

    invoke-interface {v4, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "root-path"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    sget-object v1, Landroid/support/v4/content/FileProvider;->I:Ljava/io/File;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->Code(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_6d
    if-eqz v1, :cond_3e

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/content/Code;->Code(Ljava/lang/String;Ljava/io/File;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_72} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_72} :catch_73
    .catchall {:try_start_3e .. :try_end_72} :catchall_3b

    goto :goto_3e

    .line 538
    :catch_73
    move-exception v0

    .line 539
    :try_start_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_3b

    .line 534
    :cond_7c
    :try_start_7c
    const-string v7, "files-path"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->Code(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_6d

    :cond_93
    const-string v7, "cache-path"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->Code(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_6d

    :cond_aa
    const-string v7, "external-path"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->Code(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_bf} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_bf} :catch_73
    .catchall {:try_start_7c .. :try_end_bf} :catchall_3b

    move-result-object v1

    goto :goto_6d

    .line 542
    :cond_c1
    :try_start_c1
    sget-object v1, Landroid/support/v4/content/FileProvider;->Z:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_3b

    .line 545
    return-object v0

    :cond_c8
    move-object v1, v2

    goto :goto_6d
.end method

.method private static varargs Code(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 753
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v1, p0

    :goto_4
    if-ge v2, v3, :cond_14

    aget-object v4, p1, v2

    .line 755
    if-eqz v4, :cond_15

    .line 756
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 754
    :goto_f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_4

    .line 759
    :cond_14
    return-object v1

    :cond_15
    move-object v0, v1

    goto :goto_f
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 345
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_f

    .line 346
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_f
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1b

    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_1b
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->Code(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/Code;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->J:Landroid/support/v4/content/Code;

    .line 353
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 497
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->J:Landroid/support/v4/content/Code;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/Code;->Code(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->J:Landroid/support/v4/content/Code;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/Code;->Code(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 454
    if-ltz v1, :cond_27

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_27

    .line 462
    :goto_26
    return-object v0

    :cond_27
    const-string v0, "application/octet-stream"

    goto :goto_26
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->J:Landroid/support/v4/content/Code;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/Code;->Code(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 520
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x10000000

    .line 521
    :goto_10
    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 520
    :cond_15
    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "wt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_25
    const/high16 v0, 0x2c000000

    goto :goto_10

    :cond_28
    const-string v0, "wa"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/high16 v0, 0x2a000000

    goto :goto_10

    :cond_33
    const-string v0, "rw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/high16 v0, 0x38000000

    goto :goto_10

    :cond_3e
    const-string v0, "rwt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/high16 v0, 0x3c000000    # 0.0078125f

    goto :goto_10

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->J:Landroid/support/v4/content/Code;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/Code;->Code(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 414
    if-nez p2, :cond_b

    .line 415
    sget-object p2, Landroid/support/v4/content/FileProvider;->Code:[Ljava/lang/String;

    .line 418
    :cond_b
    array-length v0, p2

    new-array v5, v0, [Ljava/lang/String;

    .line 419
    array-length v0, p2

    new-array v6, v0, [Ljava/lang/Object;

    .line 421
    array-length v7, p2

    move v2, v3

    move v1, v3

    :goto_14
    if-ge v2, v7, :cond_4a

    aget-object v0, p2, v2

    .line 422
    const-string v8, "_display_name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 423
    const-string v0, "_display_name"

    aput-object v0, v5, v1

    .line 424
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 421
    :goto_2c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_14

    .line 425
    :cond_31
    const-string v8, "_size"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 426
    const-string v0, "_size"

    aput-object v0, v5, v1

    .line 427
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v1

    goto :goto_2c

    .line 431
    :cond_4a
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v5, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 435
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 436
    return-object v1

    :cond_5e
    move v0, v1

    goto :goto_2c
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
