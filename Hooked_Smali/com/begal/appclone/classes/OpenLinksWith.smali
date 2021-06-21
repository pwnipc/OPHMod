.class public Lcom/begal/appclone/classes/OpenLinksWith;
.super Ljava/lang/Object;
.source "OpenLinksWith.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/begal/appclone/classes/OpenLinksWith;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 4
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "openLinksWith"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/OpenLinksWith;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/OpenLinksWith;

    .line 21
    iget-object v0, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    invoke-static {p0, p1}, Lcom/begal/appclone/classes/OpenLinksWith;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/begal/appclone/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_d

    .line 87
    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    .line 88
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    goto :goto_f

    .line 90
    :catch_e
    move-exception v0

    .line 93
    :goto_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 35
    const-string v0, "SELF"

    iget-object v1, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    .line 38
    :cond_18
    sget-object v0, Lcom/begal/appclone/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init; mPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/OpenLinksWith;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_30
    new-instance v0, Lcom/begal/appclone/classes/OpenLinksWith$1;

    invoke-direct {v0, p0, p1}, Lcom/begal/appclone/classes/OpenLinksWith$1;-><init>(Lcom/begal/appclone/classes/OpenLinksWith;Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/begal/appclone/classes/OpenLinksWith$1;->install()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_39

    .line 78
    goto :goto_3f

    .line 76
    :catch_39
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/OpenLinksWith;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3f
    :goto_3f
    return-void
.end method
