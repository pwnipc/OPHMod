.class public Lcom/begal/appclone/classes/CloneSettings;
.super Ljava/lang/Object;
.source "CloneSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCloneSettings:Lcom/begal/appclone/classes/CloneSettings;


# instance fields
.field private mCloneSettingsFile:Ljava/io/File;

.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/begal/appclone/classes/CloneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 74
    :try_start_a
    invoke-static {p1}, Lcom/begal/appclone/classes/CloneSettings;->getDefaultCloneSettingsJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloneSettings_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 77
    sget-object v1, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloneSettings; mCloneSettingsFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 80
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/begal/appclone/classes/CloneSettings;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_62} :catch_82

    move-object v0, v1

    goto :goto_7a

    .line 83
    :cond_64
    :try_start_64
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_73} :catch_74

    .line 88
    .end local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_7a

    .line 86
    :catch_74
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :try_start_75
    sget-object v2, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_81} :catch_82

    .line 94
    .end local v0    # "json":Ljava/lang/String;
    goto :goto_88

    .line 92
    :catch_82
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 106
    iput-object p1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 107
    return-void
.end method

.method private static getDefaultCloneSettingsJson(Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultCloneSettingsJson; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, "ts":J
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 231
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    const-string v4, "cloneSettings.json"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 233
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    new-instance v5, Lcom/begal/appclone/classes/util/SimpleCrypt;

    const-string v6, "UYGy723!Po-efjve"

    invoke-direct {v5, v6}, Lcom/begal/appclone/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/begal/appclone/classes/CloneSettings;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/begal/appclone/classes/util/SimpleCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_5c
    .catchall {:try_start_b .. :try_end_38} :catchall_5a

    .line 238
    sget-object v6, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultCloneSettingsJson; took: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v0

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " millis"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v5

    .line 238
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_5a
    move-exception v2

    goto :goto_92

    .line 234
    :catch_5c
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    sget-object v3, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "cloneSettings.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/begal/appclone/classes/CloneSettings;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_5a

    .line 238
    sget-object v4, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultCloneSettingsJson; took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " millis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-object v3

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_92
    sget-object v3, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultCloneSettingsJson; took: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/begal/appclone/classes/CloneSettings;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/begal/appclone/classes/CloneSettings;->sCloneSettings:Lcom/begal/appclone/classes/CloneSettings;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_37

    if-nez v1, :cond_33

    .line 50
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    .local v1, "applicationContext":Landroid/content/Context;
    if-eqz v1, :cond_e

    .line 53
    move-object p0, v1

    .line 55
    :cond_e
    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_25

    .line 56
    const-class v2, Landroid/content/ContextWrapper;

    const-string v3, "mBase"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_26
    .catchall {:try_start_7 .. :try_end_24} :catchall_37

    move-object p0, v3

    .line 62
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_25
    goto :goto_2c

    .line 60
    :catch_26
    move-exception v1

    .line 61
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_27
    sget-object v2, Lcom/begal/appclone/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2c
    new-instance v1, Lcom/begal/appclone/classes/CloneSettings;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/CloneSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/begal/appclone/classes/CloneSettings;->sCloneSettings:Lcom/begal/appclone/classes/CloneSettings;

    .line 67
    :cond_33
    sget-object v1, Lcom/begal/appclone/classes/CloneSettings;->sCloneSettings:Lcom/begal/appclone/classes/CloneSettings;
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_37

    monitor-exit v0

    return-object v1

    .line 46
    .end local p0    # "context":Landroid/content/Context;
    :catchall_37
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    .local v0, "r":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "b":Ljava/lang/StringBuilder;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 249
    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 252
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2b

    .line 255
    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 257
    goto :goto_2a

    .line 256
    :catch_29
    move-exception v4

    .line 252
    :goto_2a
    return-object v2

    .line 254
    .end local v1    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_2b
    move-exception v1

    .line 255
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 257
    goto :goto_31

    .line 256
    :catch_30
    move-exception v2

    .line 258
    :goto_31
    throw v1
.end method


# virtual methods
.method public forObject(Ljava/lang/String;)Lcom/begal/appclone/classes/CloneSettings;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 174
    :try_start_0
    new-instance v0, Lcom/begal/appclone/classes/CloneSettings;

    iget-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/begal/appclone/classes/CloneSettings;-><init>(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 175
    :catch_c
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/begal/appclone/classes/CloneSettings;

    invoke-direct {v1}, Lcom/begal/appclone/classes/CloneSettings;-><init>()V

    return-object v1
.end method

.method public forObjectArray(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/begal/appclone/classes/CloneSettings;",
            ">;"
        }
    .end annotation

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/begal/appclone/classes/CloneSettings;>;"
    iget-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 185
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 185
    .local v2, "n":I
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 186
    new-instance v3, Lcom/begal/appclone/classes/CloneSettings;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/begal/appclone/classes/CloneSettings;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 188
    .end local v2    # "n":I
    :cond_21
    return-object v0

    .line 189
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/begal/appclone/classes/CloneSettings;>;"
    .end local v1    # "arr":Lorg/json/JSONArray;
    :catch_22
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 166
    :catch_b
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getCloneSettingsFile()Ljava/io/File;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 157
    :catch_b
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 148
    :catch_c
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 130
    :catch_b
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 139
    :catch_b
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 121
    :catch_7
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 199
    .local v1, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 199
    .local v2, "n":I
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 200
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1d

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 202
    .end local v2    # "n":I
    :cond_1c
    return-object v0

    .line 203
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "arr":Lorg/json/JSONArray;
    :catch_1d
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public getStringMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    .local v1, "o":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 213
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 215
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 217
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_f

    .line 218
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_23
    return-object v0

    .line 219
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "o":Lorg/json/JSONObject;
    :catch_24
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/begal/appclone/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
