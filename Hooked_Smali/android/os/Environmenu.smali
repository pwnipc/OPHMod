.class public Landroid/os/Environmenu;
.super Ljava/lang/Object;
.source "Environmenu.java"


# static fields
.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final STANDARD_DIRECTORIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static externalStorageEncapsulationName:Ljava/lang/String;

.field private static sExistingDirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    const-class v0, Landroid/os/Environmenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "//////////////////////////////////////////////////"

    sput-object v0, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    .line 27
    sget-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer; externalStorageEncapsulationName (1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, "pos":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 31
    .local v2, "n":I
    :goto_27
    sget-object v3, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 32
    sget-object v3, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3b

    .line 33
    move v0, v2

    .line 34
    goto :goto_3e

    .line 31
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 37
    .end local v2    # "n":I
    :cond_3e
    :goto_3e
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a

    .line 38
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    goto :goto_4d

    .line 40
    :cond_4a
    const/4 v2, 0x0

    sput-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    .line 43
    :goto_4d
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "static initializer; externalStorageEncapsulationName (2): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "pos":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    .line 49
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 50
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 51
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 52
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 53
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 54
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 55
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 56
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 57
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 58
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environmenu;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environmenu;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/Environmenu;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .registers 1

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .registers 1

    .line 99
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .registers 5

    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 105
    .local v0, "file":Ljava/io/File;
    const-class v1, Landroid/os/Environmenu;

    monitor-enter v1

    .line 106
    :try_start_7
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    if-eqz v2, :cond_57

    .line 107
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 108
    sget-object v2, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 109
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStorageDirectory; file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 111
    sget-object v2, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 112
    :cond_43
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 113
    sget-object v2, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 115
    :cond_4f
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    const-string v3, "getExternalStorageDirectory; mkdirs() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 119
    :cond_57
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    const-string v3, "getExternalStorageDirectory; externalStorageEncapsulationName == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_5e
    :goto_5e
    monitor-exit v1

    .line 122
    return-object v0

    .line 121
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "directory":Ljava/io/File;
    sget-object v1, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStoragePublicDirectory; type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environmenu;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, "newDirectory":Ljava/io/File;
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStoragePublicDirectory; newDirectory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v1
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 140
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .registers 1

    .line 144
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 150
    invoke-static {p0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExternalStorageEmulated()Z
    .registers 1

    .line 154
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated(Ljava/io/File;)Z
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 159
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1

    .line 163
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable(Ljava/io/File;)Z
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 168
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isStandardDirectory(Ljava/lang/String;)Z
    .registers 7
    .param p0, "dir"    # Ljava/lang/String;

    .line 86
    sget-object v0, Landroid/os/Environmenu;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 87
    .local v4, "valid":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 88
    const/4 v0, 0x1

    return v0

    .line 86
    .end local v4    # "valid":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 91
    :cond_14
    return v2
.end method
