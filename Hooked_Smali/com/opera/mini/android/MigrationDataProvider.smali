.class public Lcom/opera/mini/android/MigrationDataProvider;
.super Landroid/content/ContentProvider;
.source "Source"


# instance fields
.field private Code:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private Code(Ljava/io/File;Ljava/io/File;Landroid/database/MatrixCursor;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_8

    .line 104
    :cond_7
    return-void

    .line 98
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 99
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 100
    invoke-direct {p0, p1, v4, p3}, Lcom/opera/mini/android/MigrationDataProvider;->Code(Ljava/io/File;Ljava/io/File;Landroid/database/MatrixCursor;)V

    .line 98
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 102
    :cond_1e
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-virtual {p3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method private Code()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Lcom/opera/mini/android/MigrationDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_16

    array-length v2, v1

    if-nez v2, :cond_17

    .line 117
    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-virtual {p0}, Lcom/opera/mini/android/MigrationDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v0, v1, v0

    const-string v1, "02354719964C6843335C4E132F2FA87509F36C9F"

    invoke-static {v2, v0, v1}, Lcom/opera/mini/android/s;->Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_16
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/opera/mini/android/MigrationDataProvider;->Code:Ljava/io/File;

    if-nez v0, :cond_19

    .line 35
    invoke-virtual {p0}, Lcom/opera/mini/android/MigrationDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 36
    if-nez v0, :cond_10

    .line 37
    const/4 v0, 0x0

    .line 41
    :goto_f
    return v0

    .line 39
    :cond_10
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/opera/mini/android/MigrationDataProvider;->Code:Ljava/io/File;

    .line 41
    :cond_19
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/opera/mini/android/MigrationDataProvider;->Code:Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/opera/mini/android/MigrationDataProvider;->Code()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 49
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 50
    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 51
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2f
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 70
    invoke-direct {p0}, Lcom/opera/mini/android/MigrationDataProvider;->Code()Z

    move-result v0

    if-nez v0, :cond_e

    .line 71
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 72
    :cond_e
    if-nez p2, :cond_16

    if-nez p3, :cond_16

    if-nez p4, :cond_16

    if-eqz p5, :cond_1e

    .line 73
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "projection, selection, selectionArgs and sortOrder not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "Branding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 80
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Branding"

    aput-object v2, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 81
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/opera/mini/android/MigrationDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/opera/mini/android/s;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 91
    :goto_4c
    return-object v0

    .line 82
    :cond_4d
    const-string v1, "DataDir"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 84
    if-nez v1, :cond_6d

    iget-object v0, p0, Lcom/opera/mini/android/MigrationDataProvider;->Code:Ljava/io/File;

    .line 85
    :goto_5d
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "Path"

    aput-object v3, v2, v5

    invoke-direct {v1, v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 86
    invoke-direct {p0, v0, v0, v1}, Lcom/opera/mini/android/MigrationDataProvider;->Code(Ljava/io/File;Ljava/io/File;Landroid/database/MatrixCursor;)V

    move-object v0, v1

    .line 87
    goto :goto_4c

    .line 84
    :cond_6d
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/opera/mini/android/MigrationDataProvider;->Code:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5d

    .line 88
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uri.getPath() should return \'Branding\' or \'DataDir\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
