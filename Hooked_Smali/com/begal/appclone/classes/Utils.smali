.class public Lcom/begal/appclone/classes/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final APP_CLONER_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "AppCloner"

.field private static final APP_CLONER_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "App Cloner"

.field private static final TAG:Ljava/lang/String;

.field private static sApplication:Landroid/app/Application;

.field private static sNotificationChannelCreated:Z

.field private static sNotificationIcon:Landroid/graphics/drawable/Icon;

.field private static secondaryClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const-class v0, Lcom/begal/appclone/classes/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 66
    sget-object v0, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkCaller(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 846
    .local v0, "callingUid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    array-length v4, v1

    if-ne v4, v3, :cond_1f

    const-string v4, "com.begal.appclone"

    aget-object v5, v1, v2

    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 847
    const/4 v2, 0x1

    goto :goto_20

    .line 848
    :cond_1f
    nop

    .line 847
    :goto_20
    return v2
.end method

.method public static closeAndroidPieApiCompatibilityDialog()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 829
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2c

    .line 830
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 831
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 832
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 833
    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 834
    .local v2, "activityThread":Ljava/lang/Object;
    const-string v4, "mHiddenApiWarningShown"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 835
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 836
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 840
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    .end local v2    # "activityThread":Ljava/lang/Object;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_2c
    goto :goto_33

    .line 838
    :catch_2d
    move-exception v0

    .line 839
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_33
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 406
    .local v0, "buf":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 407
    .local v1, "r":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 408
    nop

    .line 412
    .end local v1    # "r":I
    return-void

    .line 410
    .restart local v1    # "r":I
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 411
    .end local v1    # "r":I
    goto :goto_4
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .registers 8
    .param p0, "directory"    # Ljava/io/File;

    .line 326
    const/4 v0, 0x1

    .line 329
    .local v0, "res":Z
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/cache/oat/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 331
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 333
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_41

    .line 334
    array-length v3, v1

    move v4, v0

    const/4 v0, 0x0

    .line 334
    .end local v0    # "res":Z
    .local v4, "res":Z
    :goto_23
    if-ge v0, v3, :cond_40

    aget-object v5, v1, v0

    .line 335
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 336
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 337
    const/4 v4, 0x0

    goto :goto_3d

    .line 340
    :cond_35
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->deleteFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 340
    .end local v5    # "file":Ljava/io/File;
    goto :goto_3d

    .line 344
    .restart local v5    # "file":Ljava/io/File;
    :cond_3c
    const/4 v4, 0x0

    .line 334
    .end local v5    # "file":Ljava/io/File;
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 351
    .end local v1    # "files":[Ljava/io/File;
    :cond_40
    move v0, v4

    .line 351
    .end local v4    # "res":Z
    .restart local v0    # "res":Z
    :cond_41
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_5d

    .line 354
    :cond_48
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 355
    .restart local v1    # "files":[Ljava/io/File;
    if-eqz v1, :cond_5d

    array-length v3, v1

    if-lez v3, :cond_5d

    .line 357
    array-length v3, v1

    :goto_52
    if-ge v2, v3, :cond_5c

    aget-object v4, v1, v2

    .line 359
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 357
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 361
    :cond_5c
    const/4 v0, 0x0

    .line 366
    .end local v1    # "files":[Ljava/io/File;
    :cond_5d
    :goto_5d
    return v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .line 372
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 373
    .local v1, "length":I
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rws"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_29

    .line 375
    .local v2, "raf":Ljava/io/RandomAccessFile;
    const v3, 0x19000

    :try_start_10
    new-array v3, v3, [B

    .line 376
    .local v3, "buffer":[B
    :goto_12
    if-lez v1, :cond_1f

    .line 377
    array-length v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 378
    .local v4, "size":I
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 379
    array-length v5, v3
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_24

    sub-int/2addr v1, v5

    .line 380
    .end local v4    # "size":I
    goto :goto_12

    .line 382
    .end local v3    # "buffer":[B
    :cond_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 383
    nop

    .line 386
    .end local v1    # "length":I
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2f

    .line 382
    .restart local v1    # "length":I
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_24
    move-exception v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 383
    throw v3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_29

    .line 384
    .end local v1    # "length":I
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_29
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 389
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v2, "b":Ljava/lang/StringBuilder;
    nop

    .line 390
    .local v0, "n":I
    :goto_3d
    if-ge v0, v1, :cond_47

    .line 391
    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 394
    .end local v0    # "n":I
    :cond_47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v0, "renamedFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    return v3

    .line 398
    :cond_5f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    return v3
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/util/DisplayMetrics;F)I

    move-result v0

    return v0
.end method

.method public static dp2px(Landroid/util/DisplayMetrics;F)I
    .registers 4
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "dp"    # F

    .line 243
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static forceMkdir(Ljava/io/File;)V
    .registers 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 417
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " exists and is not a directory. Unable to create directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    .end local v0    # "message":Ljava/lang/String;
    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 429
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0    # "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    .end local v0    # "message":Ljava/lang/String;
    :cond_4b
    return-void
.end method

.method public static getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_14

    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_14

    .line 294
    move-object v0, p0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/Utils;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 296
    :cond_14
    return-object p0
.end method

.method public static getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "defaultText"    # Ljava/lang/CharSequence;

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.begal.appclone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "string"

    const-string v2, "com.begal.appclone"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "resId":I
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    .line 269
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resId":I
    :catch_17
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    const-string v0, "app"

    .line 201
    .local v0, "name":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_a

    move-object v0, v1

    .line 204
    goto :goto_10

    .line 202
    :catch_a
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 209
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 210
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_28

    move-object v0, v2

    .line 214
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_27
    goto :goto_2e

    .line 212
    :catch_28
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt, PrivateApi"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 141
    sget-object v0, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;

    return-object v0

    .line 145
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    const-string v1, "android.app.ActivityThread"

    .line 146
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2a

    .line 148
    const-string v2, "currentApplication"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 149
    .local v2, "m1":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    sput-object v3, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;

    .line 150
    sget-object v3, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;

    return-object v3

    .line 152
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_6f

    aget-object v6, v2, v5

    .line 153
    .local v6, "method":Ljava/lang/reflect/Method;
    const-string v7, "currentActivityThread"

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 154
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 155
    .local v7, "currentActivityThread":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_4c
    if-ge v10, v9, :cond_6c

    aget-object v11, v8, v10

    .line 156
    .local v11, "m2":Ljava/lang/reflect/Method;
    const-string v12, "getApplication"

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_69

    .line 157
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v11, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    sput-object v2, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;

    .line 158
    sget-object v2, Lcom/begal/appclone/classes/Utils;->sApplication:Landroid/app/Application;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_68} :catch_70

    return-object v2

    .line 155
    .end local v11    # "m2":Ljava/lang/reflect/Method;
    :cond_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 152
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "currentActivityThread":Ljava/lang/Object;
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 166
    .end local v1    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6f
    goto :goto_76

    .line 164
    :catch_70
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_76
    return-object v0
.end method

.method public static getBuildSerial()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 622
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 623
    .local v0, "buildSerial":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 626
    :try_start_a
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    .line 625
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 629
    goto :goto_20

    .line 627
    :catch_1a
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_26

    .line 80
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getRunningActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "runningActivity":Landroid/app/Activity;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialogBuilder; runningActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v0, :cond_22

    .line 83
    move-object p0, v0

    goto :goto_26

    .line 85
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 88
    .end local v0    # "runningActivity":Landroid/app/Activity;
    :cond_26
    :goto_26
    sget-object v0, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogBuilder; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    .line 92
    .local v0, "isActivity":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_52

    .line 93
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    goto :goto_5b

    .line 96
    :cond_52
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030128

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    .line 100
    :goto_5b
    new-instance v1, Lcom/begal/appclone/classes/Utils$1;

    invoke-direct {v1, p0, v0}, Lcom/begal/appclone/classes/Utils$1;-><init>(Landroid/content/Context;Z)V

    return-object v1
.end method

.method public static getDouble(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 481
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 483
    .end local v0    # "s":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    return-object v1

    .line 486
    :catch_1b
    move-exception v1

    .line 487
    .local v1, "e1":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getFallbackLaunchIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 788
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_12

    .line 791
    const/4 v1, 0x0

    return-object v1

    .line 793
    :cond_12
    return-object v0
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 771
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 772
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 775
    .local v1, "i":Landroid/content/Intent;
    if-nez v1, :cond_1a

    .line 776
    invoke-static {v0, p1}, Lcom/begal/appclone/classes/Utils;->getFallbackLaunchIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 778
    if-nez v1, :cond_1a

    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->isAndroidTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 779
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 783
    :cond_1a
    return-object v1
.end method

.method private static getNotificationIcon()Landroid/graphics/drawable/Icon;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 717
    sget-object v0, Lcom/begal/appclone/classes/Utils;->sNotificationIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1d

    .line 719
    :try_start_4
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAABGdBTUEAALGPC/xhBQAAACBjSFJN\nAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QAAAAAAAD5Q7t/AAAA\nCXBIWXMAAC4jAAAuIwF4pT92AAAHk0lEQVR42u2dW6wdUxjHf98pirqURElc6tIihKZOL0rqLiEl\nJBUhcameExFCkEhow4NEJCIST32oW4TEg3ogbg+NklAaSl1KFG2lNGlJimqU0/P3sGZ0nLNn9qx9\nZmbN3md+SXPO7H6z1re+/1nXWbM2NATFQjtQNyRdBlwCHAWsA942s89D+zUukPS4pN/0f9ZLujK0\nbz2PpFXK5obQPvYskh5WPqaG9rXnkDRR0q6cAjxZdP59oQNQA84ADshpO6vozBsB4DAP2/2KzrwR\nAP7xsB0qOvNGAL+5kIrOvBGghKD60AgQmEYAONDD9oSiM98ndOlrwNdAPL4fjn7G/UKyedoX+C60\nsw0NDQ0NDQ0FUesnYpIOBE4BTsKt2ewLTEyYDCfK0MfeUYzYO8ROjmQsca3o2lrYFJm2AXuAL81s\n5cgy1k4ASf3A5cAFuJXKKaF9KpBPgDvM7KP4g1oIIGkCMADcBJwb2p8KOMvMPoUaCCBpALgfmBba\nlwr5ETjezBRsKULS6ZJWAU8xvoIPcBxwGQRaC5I0iNvycX7oSARkPgQQQNKjwHJgQugIBGYiVLwY\nJ2k5MBi65DXhQ6iwE5b0BHBP6FLXhB3AUWa2u5ImSNKdNMFPcp2Z7YYKaoCkmcDa0CWuCVuBu8zs\n5fiDKgTYjBt2dcowsAbYCGwBduMGD0PA/sDdpG8X+RV4EDgSt4yRxKK0jgMW5/RlG7BiROziJQi1\n+AxcP7sT90e4wsx2lRLoVkh6KOeOs1Z8IekeSce3yWOWpL9T0tglaWGb+w/x8OmdyoJXQPCPkDTc\nYfAXeebVnyGCJC3JuHeGh1/vFx2nMjvh++m8iTvax9jMPgHOBv5OMXlE0tICyhR86SYXchted46h\n+ZGkpzrId6ak3RlpLm1xz5kePn0QOrZ5A3H9GIMf80wHeZ+l7OZo6Qh7HwFWh45t3iCsKEiATkXo\nV3ZNWJKwnenhS/1rgFzz87tHoV6XWxndmmHzbAd+ZI2OJOmByG5arwkwz/Mv/NLovqmStmXYdVIT\n2olwU2SXZdN1AtzmEfwtI+49oSQRspqj1yT9EUqAMoahx3rYvpW8MLONwFzglxT7WyQ97eOMmX0M\nnEP6ewBXAAflTa7oYJUhwJEetmtGlXCvCL+m3LNYblk7NznmCXnpivcDfARoGWQz+wH3PlZaTRjs\noCasBeYxdhEKpQwBfJ50pb7yY2abgNmki7C4F0QoQ4DC2slIhFm4VchWLJb0nGeaa3F9QicidEUf\n4EPbNtXMNgNzgO0pJjfLc54Q9QnnUoOaUIYAPh3VtjxGkQhzM+wXdSDCxzgR/iipbLkIXQNuy2sY\njY7OJr0mLOpwiHpt4BgUi6Q3PCZi8h1SSjpR0vaM9LxEkHSMh69dMRHz7agGfUSIhqhzKG50dHiJ\nZWtL6D4gxleEjTgRsiZreZ8nNC9qRwx6BC0WIWuyNpCzY/YJalfUgLEw4LPgFs0T+snumNuJ4BOD\nYQ/bXNRNAHALbj414UfcjDlriPpcRhI+i4eFbykJ2Qln/TUNeIoQT9bSRMiarPnsWfqtsChFhOyE\nh3E7J9al/P+AZ8e8GTdPyKoJrZq3+R5l21xwrIrHcx4wVdIkjT6pMInX7gi5hzq55gmSDpb0p4e/\neXfQdY0AC6N7TmkjQieTtV/aiSppkYevknRq6PjmKfybHgW6KnFf0SK0qwnPS/rGw9f6Nz9jESC6\nd7qkHRn2vssMU5VdE3xYVka86jITBsDMNuBGM2mjDa9lhqhj7ifnqmsbvLfG5CH0PGDUkNXMvqV4\nEWYD347Bz/VmtmYM96cSWoCWRCLMJVsE38naNXQ+k30gdExyI+kVj3Z1fpu0Jssdnp1GWxEkHSTp\nDklr1Nl2+fVlxiv1LUlJ04FDcQdNjDzQgpTPhoAjPPI/TdIG3LltSqRLdP0zcC/wCq1Ptx2QBPBo\n5GdfdP8U4GTgPGABfjs1RnLLGGOcyag2WG7j6s1RAargH0a/PhQzjFvtPCzD5j/XKX61cpmZ3V5m\n4f9zWJIBK4ELy8ywi1hvZqeXnUmyE15GE/yYncDFVWRk4CYswKbQpa4JQ8BsM/usisziGlCJ2l3A\n78C8qoIPewXwOcK9V1kHzIi2qlRGLEB3LDSVx3KgP3rEWSlxHzAZt8OgljPjEvkcWGJmr4dyoA/A\nzHYAd4WORoWsA241sxkhgw8jJi6SHgPuC+lQifwMvAu8ZGavhnYmptVM+CLc4RUzgEm42eiehP2E\n6DpeOojfB9iTuJ4Q3ZdcXuhL2JBIxydtS6QdL6zFyw/xOZ9/4YaSO4CvgO9xx0V+aGbBd0NXQjSr\nbmhoaGhoaMig8M5S0hTgENxxYMk8kg9v+nAPg34ys79CB6GnkDt8Q5KGon97Er8nPxu1LWU8UsbB\nrZOin3neFy78uxm7jTLWfny2cBf+3YzdxnhbfKsdoV/SC/o9jnUgtADjvgaWEQCfNBsBSkhzk4ft\nxtAB6Dkkzc+55W9DaF97Fkkv5BBgPHxbUjgkvZgS+F2SbgztX10o9cGJpAXA1cB03BOr94DlZvZT\n6ILXhSq+P2Ae7qsIh4HV0REDDQ314F/QQmVQhaYmuwAAAABJRU5ErkJggg==\n"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 759
    .local v0, "data":[B
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 760
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    sput-object v2, Lcom/begal/appclone/classes/Utils;->sNotificationIcon:Landroid/graphics/drawable/Icon;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    .line 763
    .end local v0    # "data":[B
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1d

    .line 761
    :catch_17
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/begal/appclone/classes/Utils;->sNotificationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public static getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 812
    const-string v0, "%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/begal/appclone/classes/Utils;->longHash(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningActivity()Landroid/app/Activity;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 176
    .local v1, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "activityThread":Ljava/lang/Object;
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 178
    .local v3, "activitiesField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 180
    .local v5, "activities":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 181
    .local v7, "activityRecord":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 182
    .local v8, "activityRecordClass":Ljava/lang/Class;
    const-string v9, "paused"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 183
    .local v9, "pausedField":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 184
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 185
    const-string v6, "activity"

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 186
    .local v6, "activityField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5a} :catch_5d

    return-object v4

    .line 189
    .end local v6    # "activityField":Ljava/lang/reflect/Field;
    .end local v7    # "activityRecord":Ljava/lang/Object;
    .end local v8    # "activityRecordClass":Ljava/lang/Class;
    .end local v9    # "pausedField":Ljava/lang/reflect/Field;
    :cond_5b
    goto :goto_2e

    .line 192
    .end local v1    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "activityThread":Ljava/lang/Object;
    .end local v3    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v5    # "activities":Ljava/util/Map;
    :cond_5c
    goto :goto_63

    .line 190
    :catch_5d
    move-exception v1

    .line 191
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_63
    return-object v0
.end method

.method static declared-synchronized getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/begal/appclone/classes/Utils;

    monitor-enter v0

    .line 555
    :try_start_3
    sget-object v1, Lcom/begal/appclone/classes/Utils;->secondaryClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_fc

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 558
    .local v1, "cacheDir":Ljava/io/File;
    const-string v2, "natives_sec_blob"

    const-string v3, ".dex"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_100

    .line 561
    .local v2, "tempFile":Ljava/io/File;
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_f7

    .line 564
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    move-object v5, v4

    .line 569
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    :try_start_1b
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->isDevDevice()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "Y29tLmFwcGxpc3RvLmFwcGNsb25lci5jbGFzc2VzLnNlY29uZGFyeQ=="

    .line 571
    invoke-static {v9, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const/16 v9, 0x40

    .line 570
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 573
    .local v7, "_":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const v9, 0xa789abf

    if-ne v8, v9, :cond_93

    .line 574
    new-instance v8, Ljava/util/zip/ZipFile;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 575
    .local v8, "zf":Ljava/util/zip/ZipFile;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 576
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v10, "classes.dex"

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/begal/appclone/classes/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 577
    new-instance v10, Ljava/io/ByteArrayInputStream;

    new-instance v11, Lcom/begal/appclone/classes/util/SimpleCrypt;

    const-string v12, "veXR89fv5n8vdJRVbc8hNsrpJsNQfGyZ"

    invoke-direct {v11, v12}, Lcom/begal/appclone/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/begal/appclone/classes/util/SimpleCrypt;->encrypt([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v10

    .line 579
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 580
    sget-object v10, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    const-string v11, "WARNING: Loaded non-bundled secondary classes for testing"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v10, "WARNING: Loaded non-bundled secondary classes for testing"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 582
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_93} :catch_96
    .catchall {:try_start_1b .. :try_end_93} :catchall_94

    .line 586
    .end local v7    # "_":Landroid/content/pm/PackageInfo;
    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_93
    goto :goto_97

    .line 601
    .end local v5    # "in":Ljava/io/InputStream;
    :catchall_94
    move-exception v4

    goto :goto_f3

    .line 585
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_96
    move-exception v7

    .line 588
    :goto_97
    if-nez v5, :cond_a4

    .line 589
    :try_start_99
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "natives_sec_blob.dat"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_94

    move-object v5, v7

    .line 592
    :cond_a4
    :try_start_a4
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 593
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v5, v7}, Lcom/begal/appclone/classes/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 594
    new-instance v8, Ljava/io/ByteArrayInputStream;

    new-instance v9, Lcom/begal/appclone/classes/util/SimpleCrypt;

    const-string v10, "veXR89fv5n8vdJRVbc8hNsrpJsNQfGyZ"

    invoke-direct {v9, v10}, Lcom/begal/appclone/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/begal/appclone/classes/util/SimpleCrypt;->decrypt([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 594
    invoke-static {v8, v3}, Lcom/begal/appclone/classes/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_c3
    .catchall {:try_start_a4 .. :try_end_c3} :catchall_ee

    .line 598
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_c3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_94

    .line 599
    nop

    .line 601
    .end local v5    # "in":Ljava/io/InputStream;
    :try_start_c7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 602
    nop

    .line 604
    const-string v5, "opt"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 605
    .local v5, "optimizedDirectory":Ljava/io/File;
    invoke-static {v5}, Lcom/begal/appclone/classes/Utils;->deleteDirectory(Ljava/io/File;)Z

    .line 606
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 607
    new-instance v6, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 608
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v6, v7, v8, v4, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lcom/begal/appclone/classes/Utils;->secondaryClassLoader:Ljava/lang/ClassLoader;
    :try_end_ea
    .catchall {:try_start_c7 .. :try_end_ea} :catchall_f7

    .line 611
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "optimizedDirectory":Ljava/io/File;
    :try_start_ea
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_100

    .line 612
    goto :goto_fc

    .line 598
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .local v5, "in":Ljava/io/InputStream;
    :catchall_ee
    move-exception v4

    :try_start_ef
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 599
    throw v4
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_94

    .line 601
    .end local v5    # "in":Ljava/io/InputStream;
    :goto_f3
    :try_start_f3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 602
    throw v4
    :try_end_f7
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_f7

    .line 611
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_f7
    move-exception v3

    :try_start_f8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 612
    throw v3

    .line 615
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_fc
    :goto_fc
    sget-object v1, Lcom/begal/appclone/classes/Utils;->secondaryClassLoader:Ljava/lang/ClassLoader;
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_100

    monitor-exit v0

    return-object v1

    .line 554
    .end local p0    # "context":Landroid/content/Context;
    :catchall_100
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/begal/appclone/classes/Utils;->getTargetSdkVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTargetSdkVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 284
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 285
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_c
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v1, -0x1

    return v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 224
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 225
    .local v1, "metaData":Landroid/os/Bundle;
    const-string v2, "com.begal.appclone.versionName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    .line 226
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    :catch_17
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getViewRoots()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ViewParent;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v0, "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v3, :cond_23

    .line 500
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getInstance"

    new-array v7, v4, [Ljava/lang/Class;

    .line 501
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 501
    .local v1, "windowManager":Ljava/lang/Object;
    goto :goto_37

    .line 503
    .end local v1    # "windowManager":Ljava/lang/Object;
    :cond_23
    const-string v1, "android.view.WindowManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v6, "sWindowManager"

    .line 504
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 505
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 506
    .end local v1    # "f":Ljava/lang/reflect/Field;
    move-object v1, v2

    .line 509
    .local v1, "windowManager":Ljava/lang/Object;
    :goto_37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v6, "mRoots"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 510
    .local v2, "rootsField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 512
    const-string v6, "android.view.ViewRootImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mStopped"

    .line 513
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 514
    .local v6, "stoppedField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 516
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_93

    .line 517
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 518
    .local v3, "roots":Ljava/lang/Object;
    if-eqz v3, :cond_92

    .line 520
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 521
    move-object v4, v3

    check-cast v4, [Landroid/view/ViewParent;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 521
    .local v4, "viewParents":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    goto :goto_72

    .line 523
    .end local v4    # "viewParents":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :cond_6f
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 526
    .restart local v4    # "viewParents":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :goto_72
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewParent;

    .line 527
    .local v7, "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 528
    .local v8, "stopped":Z
    if-nez v8, :cond_91

    .line 529
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v7    # "viewParent":Landroid/view/ViewParent;
    .end local v8    # "stopped":Z
    :cond_91
    goto :goto_76

    .line 533
    .end local v3    # "roots":Ljava/lang/Object;
    .end local v4    # "viewParents":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :cond_92
    goto :goto_b0

    .line 534
    :cond_93
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/ViewParent;

    .line 536
    .local v3, "viewParents":[Landroid/view/ViewParent;
    array-length v5, v3

    :goto_9a
    if-ge v4, v5, :cond_b0

    aget-object v7, v3, v4

    .line 537
    .restart local v7    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 538
    .restart local v8    # "stopped":Z
    if-nez v8, :cond_ad

    .line 539
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ad} :catch_b1

    .line 536
    .end local v7    # "viewParent":Landroid/view/ViewParent;
    .end local v8    # "stopped":Z
    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    .line 545
    .end local v1    # "windowManager":Ljava/lang/Object;
    .end local v2    # "rootsField":Ljava/lang/reflect/Field;
    .end local v3    # "viewParents":[Landroid/view/ViewParent;
    .end local v6    # "stoppedField":Ljava/lang/reflect/Field;
    :cond_b0
    :goto_b0
    goto :goto_b5

    .line 543
    :catch_b1
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b5
    return-object v0
.end method

.method public static isAndroidTv(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 799
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 800
    .local v1, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    const/4 v0, 0x1

    nop

    :cond_14
    return v0

    .line 801
    .end local v1    # "uiModeManager":Landroid/app/UiModeManager;
    :catch_15
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    return v0
.end method

.method public static isDevDevice()Z
    .registers 2

    .line 636
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getBuildSerial()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "buildSerial":Ljava/lang/String;
    const-string v1, "6129001759"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "ce011711c4259a1205"

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "ZX1G522SR8"

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "9SAYF6EAWKQO6TTC"

    .line 640
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "022AQQ7N36083999"

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "015d2578341ff40f"

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "049ed51a251d4fa1"

    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "112141000751"

    .line 644
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "504KPWQ0034257"

    .line 645
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "G090ME067423036J"

    .line 646
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "0324517083444"

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "OZH6OVS8AISCDQSK"

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "CB512B8AKQ"

    .line 649
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "HT64EBN02546"

    .line 650
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "e40cd6bf0704"

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "WCR7N18328001594"

    .line 652
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "f083b076"

    .line 653
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "ce12160c3c1ce51904"

    .line 654
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "HT79S1A03867"

    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "02157df2b40d042d"

    .line 656
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "1478167907b8f4c9"

    .line 657
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "2881930614047ece"

    .line 658
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 659
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v1, 0x0

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v1, 0x1

    .line 637
    :goto_be
    return v1
.end method

.method private static isEmulator()Z
    .registers 2

    .line 664
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    :cond_50
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    .line 664
    :goto_5e
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V
    .registers 3
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 252
    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 253
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 254
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 255
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 256
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 259
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_23

    .line 257
    :catch_1d
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private static longHash(Ljava/lang/String;)J
    .registers 9
    .param p0, "string"    # Ljava/lang/String;

    .line 817
    const-wide v0, 0x3ffffffffffe5L

    .line 818
    .local v0, "hash":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 819
    .local v2, "l":I
    const/4 v3, 0x0

    .line 819
    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_1a

    .line 820
    const-wide/16 v4, 0x1f

    mul-long v4, v4, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 822
    .end local v3    # "i":I
    :cond_1a
    return-wide v0
.end method

.method public static readFully(Ljava/io/InputStream;Z)[B
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 309
    .local v1, "buffer":[B
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .line 309
    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 312
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_22

    .line 314
    if-eqz p1, :cond_21

    .line 316
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 318
    goto :goto_21

    .line 317
    :catch_20
    move-exception v4

    .line 312
    :cond_21
    :goto_21
    return-object v2

    .line 314
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    :catchall_22
    move-exception v0

    if-eqz p1, :cond_2a

    .line 316
    :try_start_25
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 318
    goto :goto_2a

    .line 317
    :catch_29
    move-exception v1

    .line 320
    :cond_2a
    :goto_2a
    throw v0
.end method

.method public static setSmallNotificationIcon(Landroid/app/Notification$Builder;)V
    .registers 6
    .param p0, "b"    # Landroid/app/Notification$Builder;

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x1080041

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1d

    .line 677
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getNotificationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 678
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_13

    .line 679
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_16

    .line 681
    :cond_13
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 683
    :goto_16
    const v1, -0xfc560c

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 684
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_20

    .line 685
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 689
    :goto_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5d

    .line 691
    :try_start_26
    sget-boolean v0, Lcom/begal/appclone/classes/Utils;->sNotificationChannelCreated:Z

    if-nez v0, :cond_51

    .line 692
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "AppCloner"

    const-string v2, "App Cloner"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 696
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 697
    .local v1, "application":Landroid/app/Application;
    if-eqz v1, :cond_51

    .line 698
    const-string v2, "notification"

    .line 699
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 700
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v2, :cond_51

    .line 701
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 702
    const/4 v3, 0x1

    sput-boolean v3, Lcom/begal/appclone/classes/Utils;->sNotificationChannelCreated:Z

    .line 703
    sget-object v3, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    const-string v4, "setSmallNotificationIcon; notification channel created"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_51
    const-string v0, "AppCloner"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_56} :catch_57

    .line 710
    goto :goto_5d

    .line 708
    :catch_57
    move-exception v0

    .line 709
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 118
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 120
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_e
    nop

    .line 123
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    .line 124
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 122
    return-object v2

    .line 126
    .end local v1    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :catch_1f
    move-exception v1

    .line 127
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v2, 0x1

    :try_start_26
    invoke-static {p0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 132
    goto :goto_34

    .line 130
    :catch_2e
    move-exception v2

    .line 131
    .local v2, "t1":Ljava/lang/Throwable;
    sget-object v3, Lcom/begal/appclone/classes/Utils;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v2    # "t1":Ljava/lang/Throwable;
    :goto_34
    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/begal/appclone/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
