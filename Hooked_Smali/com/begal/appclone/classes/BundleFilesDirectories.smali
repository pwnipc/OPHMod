.class public Lcom/begal/appclone/classes/BundleFilesDirectories;
.super Ljava/lang/Object;
.source "BundleFilesDirectories.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/begal/appclone/classes/BundleFilesDirectories;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "bundleFilesDirectories"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/BundleFilesDirectories;->mPaths:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleFilesDirectories; mBundleFilesDirectories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/BundleFilesDirectories;->mPaths:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/begal/appclone/classes/BundleFilesDirectories;->mPaths:Ljava/util/List;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/begal/appclone/classes/BundleFilesDirectories;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bundle_file_list.json"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 36
    invoke-static {v0, v1}, Lcom/begal/appclone/classes/Utils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "fileListJson":Ljava/lang/String;
    sget-object v1, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init; fileListJson: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 41
    .local v2, "n":I
    :goto_38
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_f6

    if-ge v2, v3, :cond_f5

    .line 43
    :try_start_3e
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "path":Ljava/lang/String;
    const-string v5, "assetName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "assetName":Ljava/lang/String;
    const-string v6, "lastModified"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 47
    .local v6, "lastModified":J
    sget-object v8, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init; path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", assetName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", lastModified: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    div-long v11, v6, v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_93

    goto :goto_aa

    .line 64
    :cond_93
    sget-object v9, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init; skipping file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "assetName":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v8    # "file":Ljava/io/File;
    goto :goto_e0

    .line 50
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "assetName":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v8    # "file":Ljava/io/File;
    :cond_aa
    :goto_aa
    sget-object v9, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init; saving new or modified file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_c8} :catch_eb

    .line 53
    .local v9, "in":Ljava/io/InputStream;
    :try_start_c8
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/begal/appclone/classes/Utils;->forceMkdir(Ljava/io/File;)V

    .line 54
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d4
    .catchall {:try_start_c8 .. :try_end_d4} :catchall_e6

    .line 56
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_d4
    invoke-static {v9, v10}, Lcom/begal/appclone/classes/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_e1

    .line 58
    :try_start_d7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_e6

    .line 59
    nop

    .line 61
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :try_start_db
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_eb

    .line 62
    nop

    .line 63
    .end local v9    # "in":Ljava/io/InputStream;
    nop

    .line 68
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "assetName":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v8    # "file":Ljava/io/File;
    :goto_e0
    goto :goto_f1

    .line 58
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "assetName":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_e1
    move-exception v11

    :try_start_e2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 59
    throw v11
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_e6

    .line 61
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_e6
    move-exception v10

    :try_start_e7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 62
    throw v10
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_eb} :catch_eb

    .line 66
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "assetName":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Ljava/io/InputStream;
    :catch_eb
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    :try_start_ec
    sget-object v4, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_f6

    .line 41
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_f1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    .line 74
    .end local v0    # "fileListJson":Ljava/lang/String;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "n":I
    :cond_f5
    goto :goto_fc

    .line 72
    :catch_f6
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/BundleFilesDirectories;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_fc
    return-void
.end method
