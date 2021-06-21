.class public Lcom/opera/mini/android/ae;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static Code(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static Code(Landroid/content/SharedPreferences$Editor;)V
    .registers 1
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static Code(Ljava/io/File;ZZ)Z
    .registers 4
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public static I(Ljava/io/File;ZZ)Z
    .registers 4
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public static Z(Ljava/io/File;ZZ)Z
    .registers 4
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method
