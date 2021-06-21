.class public Lcom/begal/appclone/classes/BundleObb;
.super Ljava/lang/Object;
.source "BundleObb.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundleObb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/begal/appclone/classes/BundleObb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "bundleObb"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/BundleObb;->mBundleObb:Z

    .line 28
    sget-object v0, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleObb; mBundleObb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/BundleObb;->mBundleObb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .registers 7
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v0    # "message":Ljava/lang/String;
    :cond_3a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 139
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_57

    .line 140
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to list contents of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_57
    const/4 v1, 0x0

    .line 144
    .local v1, "exception":Ljava/io/IOException;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_67

    aget-object v4, v0, v3

    .line 146
    .local v4, "file":Ljava/io/File;
    :try_start_5e
    invoke-static {v4}, Lcom/begal/appclone/classes/BundleObb;->forceDelete(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 149
    goto :goto_64

    .line 147
    :catch_62
    move-exception v5

    .line 148
    .local v5, "ioe":Ljava/io/IOException;
    move-object v1, v5

    .line 144
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 152
    :cond_67
    if-eqz v1, :cond_6a

    .line 153
    throw v1

    .line 155
    :cond_6a
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 3
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 175
    return-void

    .line 178
    :cond_7
    invoke-static {p0}, Lcom/begal/appclone/classes/BundleObb;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 179
    invoke-static {p0}, Lcom/begal/appclone/classes/BundleObb;->cleanDirectory(Ljava/io/File;)V

    .line 182
    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_32

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    .end local v0    # "message":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method public static forceDelete(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    invoke-static {p0}, Lcom/begal/appclone/classes/BundleObb;->deleteDirectory(Ljava/io/File;)V

    goto :goto_44

    .line 161
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 162
    .local v0, "filePresent":Z
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_44

    .line 163
    if-nez v0, :cond_2d

    .line 164
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0    # "filePresent":Z
    .end local v1    # "message":Ljava/lang/String;
    :cond_44
    :goto_44
    return-void
.end method

.method public static getApplicationVersionCode(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/begal/appclone/classes/BundleObb;->getApplicationVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getApplicationVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 106
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_c
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method private static getObbDirectory()Ljava/io/File;
    .registers 3

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/Android/obb/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPackageObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/begal/appclone/classes/BundleObb;->getObbDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    if-nez p0, :cond_a

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 198
    move-object v0, p0

    .line 198
    .local v0, "fileInCanonicalDir":Ljava/io/File;
    goto :goto_24

    .line 200
    .end local v0    # "fileInCanonicalDir":Ljava/io/File;
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 201
    .local v0, "canonicalDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .end local v0    # "canonicalDir":Ljava/io/File;
    move-object v0, v1

    .line 204
    .local v0, "fileInCanonicalDir":Ljava/io/File;
    :goto_24
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 205
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_34
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    iget-boolean v0, p0, Lcom/begal/appclone/classes/BundleObb;->mBundleObb:Z

    if-eqz v0, :cond_11f

    .line 37
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/BundleObb;->getPackageObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 38
    .local v0, "packageObbDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .line 39
    invoke-static {p1}, Lcom/begal/appclone/classes/BundleObb;->getApplicationVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v1, "versionCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_2f

    .line 92
    :cond_26
    sget-object v2, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    const-string v3, "init; not unbundling OBB files"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "packageObbDirectory":Ljava/io/File;
    .end local v1    # "versionCodeFile":Ljava/io/File;
    goto/16 :goto_e6

    .line 43
    .restart local v0    # "packageObbDirectory":Ljava/io/File;
    .restart local v1    # "versionCodeFile":Ljava/io/File;
    :cond_2f
    :goto_2f
    sget-object v2, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    const-string v3, "init; unbundling OBB files"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_119

    .line 48
    .local v2, "ts":J
    :try_start_3a
    invoke-static {v0}, Lcom/begal/appclone/classes/BundleObb;->deleteDirectory(Ljava/io/File;)V

    .line 49
    invoke-static {v0}, Lcom/begal/appclone/classes/Utils;->forceMkdir(Ljava/io/File;)V

    .line 51
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "obb.zip"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_f5

    .line 54
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    :goto_4f
    :try_start_4f
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v6, v5

    .line 54
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_ad

    .line 55
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init; name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v7, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7a
    .catchall {:try_start_4f .. :try_end_7a} :catchall_ee

    .line 61
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_7a
    invoke-static {v4, v8}, Lcom/begal/appclone/classes/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_a6

    .line 64
    :try_start_7d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81
    .catchall {:try_start_7d .. :try_end_80} :catchall_ee

    .line 66
    goto :goto_83

    .line 65
    :catch_81
    move-exception v9

    .line 67
    nop

    .line 68
    :goto_83
    :try_start_83
    sget-object v9, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init; file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", file.length(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_ee

    .line 69
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4f

    .line 63
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_a6
    move-exception v9

    .line 64
    :try_start_a7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ee

    .line 66
    goto :goto_ac

    .line 65
    :catch_ab
    move-exception v10

    .line 67
    :goto_ac
    :try_start_ac
    throw v9
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ee

    .line 72
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_ad
    :try_start_ad
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_f5

    .line 74
    goto :goto_b3

    .line 73
    :catch_b1
    move-exception v5

    .line 75
    nop

    .line 77
    :goto_b3
    :try_start_b3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_f5

    .line 79
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    :try_start_b9
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_e7

    .line 82
    :try_start_bc
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c0
    .catchall {:try_start_bc .. :try_end_bf} :catchall_f5

    .line 84
    goto :goto_c2

    .line 83
    :catch_c0
    move-exception v6

    .line 85
    nop

    .line 88
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_c2
    :try_start_c2
    sget-object v4, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init; took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v8, v6, v2

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " millis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e4} :catch_119

    .line 89
    nop

    .line 91
    .end local v2    # "ts":J
    nop

    .line 97
    .end local v0    # "packageObbDirectory":Ljava/io/File;
    .end local v1    # "versionCodeFile":Ljava/io/File;
    :goto_e6
    goto :goto_11f

    .line 81
    .restart local v0    # "packageObbDirectory":Ljava/io/File;
    .restart local v1    # "versionCodeFile":Ljava/io/File;
    .restart local v2    # "ts":J
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_e7
    move-exception v6

    .line 82
    :try_start_e8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_f5

    .line 84
    goto :goto_ed

    .line 83
    :catch_ec
    move-exception v7

    .line 85
    :goto_ed
    :try_start_ed
    throw v6
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_f5

    .line 71
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_ee
    move-exception v5

    .line 72
    :try_start_ef
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f3
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f5

    .line 74
    goto :goto_f4

    .line 73
    :catch_f3
    move-exception v6

    .line 75
    :goto_f4
    :try_start_f4
    throw v5
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 88
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_f5
    move-exception v4

    :try_start_f6
    sget-object v5, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init; took: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v9, v7, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " millis"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    throw v4
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_119} :catch_119

    .line 95
    .end local v0    # "packageObbDirectory":Ljava/io/File;
    .end local v1    # "versionCodeFile":Ljava/io/File;
    .end local v2    # "ts":J
    :catch_119
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/BundleObb;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11f
    :goto_11f
    return-void
.end method
