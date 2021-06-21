.class public final Lcom/opera/mini/android/I;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
.implements Lbn;


# static fields
.field static Code:Landroid/media/MediaScannerConnection;


# instance fields
.field private I:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    .line 174
    sget-object v0, Lcom/opera/mini/android/I;->Code:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_1b

    .line 177
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 178
    sput-object v0, Lcom/opera/mini/android/I;->Code:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 181
    :cond_1b
    return-void
.end method

.method static a(Ljava/lang/String;)J
    .registers 5

    .prologue
    .line 252
    invoke-static {p0}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 356
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 362
    :cond_d
    :goto_d
    return-object p0

    .line 358
    :cond_e
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 360
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 333
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 341
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public final B()[I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 423
    .line 424
    iget-object v0, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 425
    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_23

    .line 427
    aget-object v4, v3, v0

    invoke-static {v4}, Lbk;->c(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Lar;->c:Lbk;

    aget-object v4, v3, v0

    invoke-static {v4}, Lbk;->d(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_20

    .line 430
    add-int/lit8 v2, v2, 0x2

    .line 425
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 433
    :cond_23
    new-array v0, v2, [I

    .line 434
    :goto_25
    array-length v4, v3

    if-ge v1, v4, :cond_45

    .line 438
    aget-object v4, v3, v1

    invoke-static {v4}, Lbk;->c(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_42

    sget-object v5, Lar;->c:Lbk;

    aget-object v5, v3, v1

    invoke-static {v5}, Lbk;->d(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_42

    .line 441
    add-int/lit8 v2, v2, -0x1

    aput v4, v0, v2

    .line 442
    add-int/lit8 v2, v2, -0x1

    aput v5, v0, v2

    .line 434
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 445
    :cond_45
    return-object v0
.end method

.method public final C(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 346
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public final Code([BLjava/lang/String;)I
    .registers 8

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    invoke-static {p2}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    if-eqz p1, :cond_4f

    .line 303
    :try_start_7
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_2c
    .catchall {:try_start_7 .. :try_end_11} :catchall_40

    .line 305
    const v1, 0x2d35510

    :try_start_14
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 306
    array-length v1, p1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 307
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 308
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 310
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_27} :catch_4a
    .catchall {:try_start_14 .. :try_end_27} :catchall_45

    .line 326
    :goto_27
    invoke-static {v0}, Ldb;->Code(Ljava/io/OutputStream;)V

    .line 328
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 314
    :catch_2c
    move-exception v0

    :goto_2d
    :try_start_2d
    instance-of v0, v0, Ljava/lang/SecurityException;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_40

    if-eqz v0, :cond_36

    .line 319
    invoke-static {v1}, Ldb;->Code(Ljava/io/OutputStream;)V

    const/4 v0, 0x2

    goto :goto_2b

    .line 321
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_40

    .line 322
    invoke-static {v1}, Ldb;->Code(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    goto :goto_2b

    :catchall_40
    move-exception v0

    :goto_41
    invoke-static {v1}, Ldb;->Code(Ljava/io/OutputStream;)V

    throw v0

    :catchall_45
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_41

    .line 314
    :catch_4a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2d

    :cond_4f
    move-object v0, v1

    goto :goto_27
.end method

.method public final Code(Ljava/lang/String;ZI)Lbm;
    .registers 6

    .prologue
    .line 196
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    if-eqz p2, :cond_20

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_20

    .line 208
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 212
    :cond_20
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_30

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_30

    .line 216
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 219
    :cond_30
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_40

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_40

    .line 223
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 226
    :cond_40
    new-instance v0, Lcom/opera/mini/android/Z;

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/Z;-><init>(Lcom/opera/mini/android/I;Ljava/io/File;)V

    return-object v0
.end method

.method public final Code()V
    .registers 5

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string v0, "sdcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    .line 372
    const-string v0, "SD Card"

    .line 374
    :goto_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lar;->c:Lbk;

    invoke-virtual {v2, v1}, Lbk;->b(Ljava/lang/String;)Lbo;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 377
    sget-object v2, Lar;->c:Lbk;

    invoke-virtual {v2, v0, v1}, Lbk;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2c
    return-void

    :cond_2d
    move-object v0, v1

    goto :goto_13
.end method

.method public final Code(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 231
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final I(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 239
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()Ljava/lang/String;
    .registers 4

    .prologue
    .line 401
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/io/File;

    const-string v2, "download"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    .line 406
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 408
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J(Ljava/lang/String;)[B
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 259
    .line 262
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    :try_start_7
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_59
    .catchall {:try_start_7 .. :try_end_11} :catchall_5f

    .line 267
    :try_start_11
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_68
    .catchall {:try_start_11 .. :try_end_14} :catchall_66

    move-result v1

    const v4, 0x2d35510

    if-eq v1, v4, :cond_1e

    .line 269
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    .line 291
    :goto_1d
    return-object v0

    .line 271
    :cond_1e
    const/4 v1, 0x3

    :try_start_1f
    new-array v4, v1, [B

    move v1, v3

    .line 273
    :goto_22
    if-ge v1, v6, :cond_2d

    .line 274
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v4, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 275
    :cond_2d
    const/4 v1, 0x0

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v1

    .line 276
    new-array v1, v4, [B

    .line 278
    :goto_44
    if-ge v3, v4, :cond_54

    .line 280
    const/16 v5, 0x400

    sub-int v6, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v1, v3, v5}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_51} :catch_68
    .catchall {:try_start_1f .. :try_end_51} :catchall_66

    move-result v5

    add-int/2addr v3, v5

    goto :goto_44

    .line 289
    :cond_54
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 291
    goto :goto_1d

    .line 285
    :catch_59
    move-exception v1

    move-object v1, v0

    :goto_5b
    invoke-static {v1}, Ldb;->Code(Ljava/io/InputStream;)V

    goto :goto_1d

    :catchall_5f
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_62
    invoke-static {v2}, Ldb;->Code(Ljava/io/InputStream;)V

    throw v0

    :catchall_66
    move-exception v0

    goto :goto_62

    :catch_68
    move-exception v1

    move-object v1, v2

    goto :goto_5b
.end method

.method public final Z(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 247
    invoke-static {p1}, Lcom/opera/mini/android/I;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/opera/mini/android/I;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMediaScannerConnected()V
    .registers 1

    .prologue
    .line 186
    return-void
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 191
    return-void
.end method
