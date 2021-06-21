.class public Lcom/begal/appclone/classes/DefaultProvider;
.super Lcom/begal/appclone/classes/AbstractContentProvider;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/DefaultProvider$MyActivity;,
        Lcom/begal/appclone/classes/DefaultProvider$DefaultReceiver;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0xa

.field private static final PREF_KEY_COUNT:Ljava/lang/String; = "com.begal.appclone.classes.DefaultProvider.count"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/begal/appclone/classes/DefaultProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getOriginalPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 965
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 966
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 969
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 970
    .local v3, "metaData":Landroid/os/Bundle;
    new-instance v4, Ljava/lang/String;

    const-string v5, "com.begal.appclone.originalPackageName"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object v4

    .line 972
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "metaData":Landroid/os/Bundle;
    :catch_21
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPackageNameHook(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p0, "contextImpl"    # Ljava/lang/Object;

    .line 947
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 948
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 948
    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_34

    const/4 v3, 0x4

    if-ge v2, v3, :cond_34

    .line 949
    aget-object v3, v0, v2

    .line 950
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, "className":Ljava/lang/String;
    const-string v5, "com.fiverr."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v5, ".Network."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 954
    sget-object v1, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v5, "getPackageNameHook; returning original package name for Fiverr"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v1, "com.fiverr.fiverr"

    return-object v1

    .line 948
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v4    # "className":Ljava/lang/String;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 959
    .end local v2    # "i":I
    :cond_34
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Landhook/lib/HookHelper;->invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static varargs invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1059
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.begal.appclone.classes.secondary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1061
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    .line 1062
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    goto :goto_38

    .line 1061
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1067
    :cond_38
    :goto_38
    return-void
.end method

.method private varargs invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1054
    invoke-virtual {p0}, Lcom/begal/appclone/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    return-void
.end method

.method public static varargs invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1075
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.begal.appclone.classes.secondary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1077
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_35

    aget-object v4, v1, v3

    .line 1078
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1079
    const/4 v1, 0x0

    invoke-virtual {v4, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    goto :goto_35

    .line 1077
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1083
    :cond_35
    :goto_35
    return-void
.end method

.method private varargs invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/begal/appclone/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    return-void
.end method

.method public static ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getSecondaryClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()Z
    .registers 117
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 54
    move-object/from16 v1, p0

    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getBuildSerial()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "buildSerial":Ljava/lang/String;
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->isDevDevice()Z

    move-result v3

    .line 56
    .local v3, "devDevice":Z
    sget-object v4, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate; buildSerial: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", devDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/begal/appclone/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 59
    .local v4, "context":Landroid/content/Context;
    const/4 v5, 0x0

    if-nez v4, :cond_37

    .line 60
    sget-object v6, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v7, "onCreate; no context"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v5

    .line 64
    :cond_37
    invoke-static {v4}, Lcom/begal/appclone/classes/DefaultProvider;->getOriginalPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "originalPackageName":Ljava/lang/String;
    sget-object v7, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate; originalPackageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {v4}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v7

    .line 70
    .local v7, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const/4 v8, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    :try_start_58
    const-string v12, "bundleAppData"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 71
    .local v12, "bundleAppData":Z
    const-string v13, "restoreAppDataOnEveryStart"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 72
    .local v13, "restoreAppDataOnEveryStart":Z
    const-string v14, "AppData"

    const-string v15, "init"

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v5

    .line 73
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v9, v11

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v9, v10

    const/16 v16, 0x3

    aput-object v6, v9, v16

    .line 72
    invoke-direct {v1, v14, v15, v9}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_8f} :catch_90

    .line 76
    .end local v12    # "bundleAppData":Z
    .end local v13    # "restoreAppDataOnEveryStart":Z
    goto :goto_97

    .line 74
    :catch_90
    move-exception v0

    move-object v9, v0

    .line 75
    .local v9, "t":Ljava/lang/Throwable;
    sget-object v12, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_97
    nop

    .line 80
    const/16 v9, 0xa

    :try_start_9a
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "MontserratSans.otf"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 79
    invoke-static {v12, v11}, Lcom/begal/appclone/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v12

    .line 81
    .local v12, "bytes":[B
    invoke-static {v12, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "s":Ljava/lang/String;
    const-string v14, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkUKNyxB+D5EkRPw+KHangPP7ZaCQFF7A0HzrsT5qQ+vOejCW2jofBcJe2auLrMdVG+sIwGzAXYPzO3PAWz70ErVPl3DfHoogawb87D5zk2M8LTVQ6FxvR43LeMIm4qvtLAomA05X7VFbusGEDsCI3B7SAIAhrsBoenvjEdUSIgtK0AKC/Bzm4/p9tXDEGHEQyR4D38YQB2jsPS6asWlzyeX6ceJTahQPjBG3pwm8g9/wt0TWdk8lLYk2LKNqQlONbmao/xOc+OB+ZrSOQehGRtDGQ9ZlrvR9hEkWDoNPe4uPEhg8ITCVHgouc/jvmHL+n2aX2XwxyquMm+D3oy3lewIDAQAB"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ba

    .line 83
    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ba} :catch_bb

    .line 104
    .end local v12    # "bytes":[B
    .end local v13    # "s":Ljava/lang/String;
    :cond_ba
    goto :goto_ee

    .line 85
    :catch_bb
    move-exception v0

    move-object v12, v0

    .line 88
    .local v12, "e":Ljava/lang/Exception;
    :try_start_bd
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 90
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const-string v14, "com.begal.appclone.classes.DefaultProvider.count"

    invoke-interface {v13, v14, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    add-int/2addr v14, v11

    .line 91
    .local v14, "count":I
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v8, "com.begal.appclone.classes.DefaultProvider.count"

    invoke-interface {v15, v8, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d5} :catch_ed

    .line 93
    if-lt v14, v9, :cond_ec

    .line 95
    :try_start_d7
    new-instance v8, Landroid/content/Intent;

    const-class v15, Lcom/begal/appclone/classes/DefaultProvider$MyActivity;

    invoke-direct {v8, v4, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v8, "i":Landroid/content/Intent;
    const/high16 v15, 0x10000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v4, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e6} :catch_e7

    .line 100
    .end local v8    # "i":Landroid/content/Intent;
    goto :goto_ec

    .line 98
    :catch_e7
    move-exception v0

    move-object v8, v0

    .line 99
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_e9
    invoke-static {v11}, Ljava/lang/System;->exit(I)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ed

    .line 103
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    .end local v14    # "count":I
    :cond_ec
    :goto_ec
    goto :goto_ee

    .line 102
    :catch_ed
    move-exception v0

    .line 106
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_ee
    new-instance v8, Lcom/begal/appclone/classes/CrashHandler;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/CrashHandler;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/CrashHandler;->install(Landroid/content/Context;)V

    .line 107
    new-instance v8, Lcom/begal/appclone/classes/ToastFilter;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/ToastFilter;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/ToastFilter;->init(Landroid/content/Context;)V

    .line 108
    new-instance v8, Lcom/begal/appclone/classes/BundleFilesDirectories;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/BundleFilesDirectories;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/BundleFilesDirectories;->init(Landroid/content/Context;)V

    .line 109
    new-instance v8, Lcom/begal/appclone/classes/BundleObb;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/BundleObb;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/BundleObb;->init(Landroid/content/Context;)V

    .line 110
    new-instance v8, Lcom/begal/appclone/classes/PressBackAgainToExit;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/PressBackAgainToExit;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/PressBackAgainToExit;->init(Landroid/content/Context;)V

    .line 111
    new-instance v8, Lcom/begal/appclone/classes/ConfirmExit;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/ConfirmExit;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/ConfirmExit;->init(Landroid/content/Context;)V

    .line 112
    new-instance v8, Lcom/begal/appclone/classes/SetBrightnessOnStart;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/SetBrightnessOnStart;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/SetBrightnessOnStart;->init(Landroid/content/Context;)V

    .line 113
    new-instance v8, Lcom/begal/appclone/classes/WifiControls;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/WifiControls;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/WifiControls;->init(Landroid/content/Context;)V

    .line 114
    new-instance v8, Lcom/begal/appclone/classes/BluetoothControls;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/BluetoothControls;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/BluetoothControls;->init(Landroid/content/Context;)V

    .line 115
    new-instance v8, Lcom/begal/appclone/classes/InterruptionFilterControls;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/InterruptionFilterControls;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/InterruptionFilterControls;->init(Landroid/content/Context;)V

    .line 116
    new-instance v8, Lcom/begal/appclone/classes/NotificationOptions;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/NotificationOptions;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/NotificationOptions;->init(Landroid/content/Context;)V

    .line 117
    new-instance v8, Lcom/begal/appclone/classes/AutoRotateControls;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/AutoRotateControls;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/AutoRotateControls;->init(Landroid/content/Context;)V

    .line 118
    new-instance v8, Lcom/begal/appclone/classes/FacebookLoginBehavior;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/FacebookLoginBehavior;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->init(Landroid/content/Context;)V

    .line 119
    new-instance v8, Lcom/begal/appclone/classes/OpenLinksWith;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/OpenLinksWith;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/OpenLinksWith;->init(Landroid/content/Context;)V

    .line 121
    const-string v8, "com.tokopedia.tkpd"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16e

    .line 122
    new-instance v8, Lcom/begal/appclone/classes/Signatures;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/Signatures;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/Signatures;->init(Landroid/content/Context;)V

    .line 125
    :cond_16e
    new-instance v8, Lcom/begal/appclone/classes/Configuration;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/Configuration;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/Configuration;->init(Landroid/content/Context;)V

    .line 126
    new-instance v8, Lcom/begal/appclone/classes/DisableClipboardAccess;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/DisableClipboardAccess;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/DisableClipboardAccess;->init(Landroid/content/Context;)V

    .line 127
    new-instance v8, Lcom/begal/appclone/classes/ShowOnLockScreen;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/ShowOnLockScreen;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/ShowOnLockScreen;->init(Landroid/content/Context;)V

    .line 128
    new-instance v8, Lcom/begal/appclone/classes/PersistentApp;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/PersistentApp;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/PersistentApp;->init(Landroid/content/Context;)V

    .line 129
    new-instance v8, Lcom/begal/appclone/classes/AutoPressButtons;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/AutoPressButtons;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/AutoPressButtons;->init(Landroid/content/Context;)V

    .line 130
    new-instance v8, Lcom/begal/appclone/classes/PictureInPicture;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/PictureInPicture;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/PictureInPicture;->init(Landroid/content/Context;)V

    .line 131
    new-instance v8, Lcom/begal/appclone/classes/LogcatViewer;

    invoke-direct {v8, v7}, Lcom/begal/appclone/classes/LogcatViewer;-><init>(Lcom/begal/appclone/classes/CloneSettings;)V

    invoke-virtual {v8, v4}, Lcom/begal/appclone/classes/LogcatViewer;->init(Landroid/content/Context;)V

    .line 136
    :try_start_1a6
    const-string v8, "rotationLock"

    const-string v12, "NONE"

    invoke-virtual {v7, v8, v12}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "rotationLock":Ljava/lang/String;
    const-string v12, "LANDSCAPE"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1b4
    .catch Ljava/lang/Throwable; {:try_start_1a6 .. :try_end_1b4} :catch_1758

    if-nez v12, :cond_1c9

    :try_start_1b6
    const-string v12, "PORTRAIT"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1bc
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1bc} :catch_1bf

    if-eqz v12, :cond_1d6

    goto :goto_1c9

    .line 883
    .end local v8    # "rotationLock":Ljava/lang/String;
    :catch_1bf
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v48, v3

    move-object v10, v6

    move-object v2, v1

    .line 883
    .end local v2    # "buildSerial":Ljava/lang/String;
    .end local v3    # "devDevice":Z
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .local v10, "originalPackageName":Ljava/lang/String;
    .local v18, "buildSerial":Ljava/lang/String;
    .local v48, "devDevice":Z
    :goto_1c6
    move-object v1, v0

    goto/16 :goto_1760

    .line 138
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .end local v18    # "buildSerial":Ljava/lang/String;
    .end local v48    # "devDevice":Z
    .restart local v2    # "buildSerial":Ljava/lang/String;
    .restart local v3    # "devDevice":Z
    .restart local v6    # "originalPackageName":Ljava/lang/String;
    .restart local v8    # "rotationLock":Ljava/lang/String;
    :cond_1c9
    :goto_1c9
    :try_start_1c9
    const-string v12, "RotationLock"

    const-string v13, "install"

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v4, v14, v5

    aput-object v8, v14, v11

    invoke-direct {v1, v12, v13, v14}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1d6
    const-string v12, "forceRotationLockUsingOverlay"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_1e4
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_1e4} :catch_1758

    .line 143
    .local v12, "forceRotationLockUsingOverlay":Z
    if-eqz v12, :cond_219

    :try_start_1e6
    const-string v13, "LANDSCAPE"

    .line 144
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1f6

    const-string v13, "PORTRAIT"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_219

    .line 145
    :cond_1f6
    const-string v13, "com.begal.appclone.classes.secondary.ForceRotationLockUsingOverlay"

    invoke-static {v4, v13}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 146
    .local v13, "o":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "init"

    new-array v9, v10, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    aput-object v17, v9, v5

    const-class v17, Ljava/lang/String;

    aput-object v17, v9, v11

    invoke-virtual {v14, v15, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v4, v14, v5

    aput-object v8, v14, v11

    .line 147
    invoke-virtual {v9, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_219
    .catch Ljava/lang/Throwable; {:try_start_1e6 .. :try_end_219} :catch_1bf

    .line 151
    .end local v13    # "o":Ljava/lang/Object;
    :cond_219
    :try_start_219
    const-string v9, "floatingApp"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v9, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_219 .. :try_end_227} :catch_1758

    .line 152
    .local v9, "floatingApp":Z
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v9, :cond_2a2

    .line 153
    :try_start_22c
    const-string v15, "statusBarColor"

    invoke-virtual {v7, v15, v14}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v15

    .line 154
    .local v15, "statusBarColor":Ljava/lang/Integer;
    const-string v14, "densityDpiScale"

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v14, v10}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 155
    .local v10, "densityDpiScale":F
    const-string v14, "floatingAppOpacity"

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v14, v11}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 156
    .local v11, "floatingAppOpacity":F
    const-string v14, "com.begal.appclone.classes.secondary.floating.FloatingApp"

    invoke-static {v4, v14}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 157
    .local v14, "o":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v5, "init"
    :try_end_25a
    .catch Ljava/lang/Throwable; {:try_start_22c .. :try_end_25a} :catch_298

    move-object/from16 v18, v2

    move-object/from16 v19, v8

    const/4 v2, 0x4

    :try_start_25f
    new-array v8, v2, [Ljava/lang/Class;

    .line 157
    .end local v2    # "buildSerial":Ljava/lang/String;
    .end local v8    # "rotationLock":Ljava/lang/String;
    .restart local v18    # "buildSerial":Ljava/lang/String;
    .local v19, "rotationLock":Ljava/lang/String;
    const-class v2, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v2, v8, v17

    const-class v2, Ljava/lang/Integer;

    const/16 v17, 0x1

    aput-object v2, v8, v17

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v2, v8, v17

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v2, v8, v16

    invoke-virtual {v13, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x4

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v8, v5

    const/4 v5, 0x1

    aput-object v15, v8, v5

    .line 158
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v8, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v13, 0x3

    aput-object v5, v8, v13

    invoke-virtual {v2, v14, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_297
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_297} :catch_2d8

    .line 158
    .end local v10    # "densityDpiScale":F
    .end local v11    # "floatingAppOpacity":F
    .end local v14    # "o":Ljava/lang/Object;
    .end local v15    # "statusBarColor":Ljava/lang/Integer;
    goto :goto_2a6

    .line 883
    .end local v9    # "floatingApp":Z
    .end local v12    # "forceRotationLockUsingOverlay":Z
    .end local v18    # "buildSerial":Ljava/lang/String;
    .end local v19    # "rotationLock":Ljava/lang/String;
    .restart local v2    # "buildSerial":Ljava/lang/String;
    :catch_298
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v1

    move/from16 v48, v3

    move-object v10, v6

    move-object v1, v0

    .line 883
    .end local v2    # "buildSerial":Ljava/lang/String;
    .restart local v18    # "buildSerial":Ljava/lang/String;
    goto/16 :goto_1760

    .line 162
    .end local v18    # "buildSerial":Ljava/lang/String;
    .restart local v2    # "buildSerial":Ljava/lang/String;
    .restart local v8    # "rotationLock":Ljava/lang/String;
    .restart local v9    # "floatingApp":Z
    .restart local v12    # "forceRotationLockUsingOverlay":Z
    :cond_2a2
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    .line 162
    .end local v2    # "buildSerial":Ljava/lang/String;
    .end local v8    # "rotationLock":Ljava/lang/String;
    .restart local v18    # "buildSerial":Ljava/lang/String;
    .restart local v19    # "rotationLock":Ljava/lang/String;
    :goto_2a6
    :try_start_2a6
    const-string v2, "multiWindowNoPause"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2b5
    .catch Ljava/lang/Throwable; {:try_start_2a6 .. :try_end_2b5} :catch_1751

    .line 163
    .local v2, "multiWindowNoPause":Z
    if-eqz v2, :cond_2df

    .line 164
    :try_start_2b7
    const-string v5, "com.begal.appclone.classes.secondary.MultiWindowNoPause"

    invoke-static {v4, v5}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 165
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v10, "init"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v8, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v4, v11, v14

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d7
    .catch Ljava/lang/Throwable; {:try_start_2b7 .. :try_end_2d7} :catch_2d8

    .line 165
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_2df

    .line 883
    .end local v2    # "multiWindowNoPause":Z
    .end local v9    # "floatingApp":Z
    .end local v12    # "forceRotationLockUsingOverlay":Z
    .end local v19    # "rotationLock":Ljava/lang/String;
    :catch_2d8
    move-exception v0

    move-object v2, v1

    move/from16 v48, v3

    .line 883
    .end local v3    # "devDevice":Z
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .local v10, "originalPackageName":Ljava/lang/String;
    .restart local v48    # "devDevice":Z
    :goto_2dc
    move-object v10, v6

    goto/16 :goto_1c6

    .line 169
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .end local v48    # "devDevice":Z
    .restart local v2    # "multiWindowNoPause":Z
    .restart local v3    # "devDevice":Z
    .restart local v6    # "originalPackageName":Ljava/lang/String;
    .restart local v9    # "floatingApp":Z
    .restart local v12    # "forceRotationLockUsingOverlay":Z
    .restart local v19    # "rotationLock":Ljava/lang/String;
    :cond_2df
    :goto_2df
    :try_start_2df
    const-string v5, "immersiveMode"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v5, v10}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 170
    .local v5, "immersiveMode":Z
    const-string v8, "immersiveModeIgnoreNotch"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 171
    .local v8, "immersiveModeIgnoreNotch":Z
    const-string v10, "transparentNavigationBar"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 172
    .local v10, "transparentNavigationBar":Z
    const-string v11, "preventImmersiveMode"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v11, v14}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 173
    .local v11, "preventImmersiveMode":Z
    if-nez v5, :cond_323

    if-eqz v11, :cond_320

    goto :goto_323

    .line 179
    :cond_320
    move/from16 v20, v2

    goto :goto_34f

    .line 174
    :cond_323
    :goto_323
    const-string v13, "ImmersiveMode"

    const-string v14, "install"

    move/from16 v20, v2

    const/4 v15, 0x4

    new-array v2, v15, [Ljava/lang/Object;

    .line 175
    .end local v2    # "multiWindowNoPause":Z
    .local v20, "multiWindowNoPause":Z
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v2, v17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v2, v17

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v2, v16

    .line 174
    invoke-direct {v1, v13, v14, v2}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :goto_34f
    const-string v2, "taskerStartTaskName"

    const/4 v13, 0x0

    invoke-virtual {v7, v2, v13}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "taskerStartTaskName":Ljava/lang/String;
    const-string v14, "taskerStopTaskName"

    invoke-virtual {v7, v14, v13}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 181
    .local v13, "taskerStopTaskName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_361
    .catch Ljava/lang/Throwable; {:try_start_2df .. :try_end_361} :catch_1751

    if-eqz v14, :cond_371

    :try_start_363
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_367
    .catch Ljava/lang/Throwable; {:try_start_363 .. :try_end_367} :catch_2d8

    if-nez v14, :cond_36a

    goto :goto_371

    .line 188
    :cond_36a
    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v23, v9

    goto :goto_3ab

    .line 182
    :cond_371
    :goto_371
    :try_start_371
    const-string v14, "com.begal.appclone.classes.secondary.ExecuteTaskerTasks"

    invoke-static {v4, v14}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 183
    .restart local v14    # "o":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move/from16 v21, v5

    const-string v5, "init"

    .line 183
    .end local v5    # "immersiveMode":Z
    .local v21, "immersiveMode":Z
    move/from16 v22, v8

    move/from16 v23, v9

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    .line 183
    .end local v8    # "immersiveModeIgnoreNotch":Z
    .end local v9    # "floatingApp":Z
    .local v22, "immersiveModeIgnoreNotch":Z
    .local v23, "floatingApp":Z
    const-class v8, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v8, v9, v17

    const-class v8, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v8, v9, v17

    const-class v8, Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v8, v9, v17

    invoke-virtual {v15, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v9, v8

    const/4 v8, 0x1

    aput-object v2, v9, v8

    const/4 v8, 0x2

    aput-object v13, v9, v8

    .line 184
    invoke-virtual {v5, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v14    # "o":Ljava/lang/Object;
    :goto_3ab
    const-string v5, "makeDebuggable"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_3ba
    .catch Ljava/lang/Throwable; {:try_start_371 .. :try_end_3ba} :catch_1751

    .line 189
    .local v5, "makeDebuggable":Z
    if-eqz v5, :cond_3ff

    .line 190
    :try_start_3bc
    const-string v8, "waitForDebugger"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v8, v14}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 191
    .local v8, "waitForDebugger":Z
    const-string v9, "com.begal.appclone.classes.secondary.MakeDebuggable"

    invoke-static {v4, v9}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 192
    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "init"

    move-object/from16 v24, v2

    move/from16 v25, v5

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    .line 192
    .end local v2    # "taskerStartTaskName":Ljava/lang/String;
    .end local v5    # "makeDebuggable":Z
    .local v24, "taskerStartTaskName":Ljava/lang/String;
    .local v25, "makeDebuggable":Z
    const-class v2, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v2, v5, v17

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v2, v5, v17

    invoke-virtual {v14, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x2

    new-array v14, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v14, v5

    .line 193
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-virtual {v2, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3fe
    .catch Ljava/lang/Throwable; {:try_start_3bc .. :try_end_3fe} :catch_2d8

    .line 193
    .end local v8    # "waitForDebugger":Z
    .end local v9    # "o":Ljava/lang/Object;
    goto :goto_403

    .line 197
    .end local v24    # "taskerStartTaskName":Ljava/lang/String;
    .end local v25    # "makeDebuggable":Z
    .restart local v2    # "taskerStartTaskName":Ljava/lang/String;
    .restart local v5    # "makeDebuggable":Z
    :cond_3ff
    move-object/from16 v24, v2

    move/from16 v25, v5

    .line 197
    .end local v2    # "taskerStartTaskName":Ljava/lang/String;
    .end local v5    # "makeDebuggable":Z
    .restart local v24    # "taskerStartTaskName":Ljava/lang/String;
    .restart local v25    # "makeDebuggable":Z
    :goto_403
    :try_start_403
    const-string v2, "privateAccounts"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    .local v2, "privateAccounts":Z
    const-string v5, "com.insightly.droid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_418
    .catch Ljava/lang/Throwable; {:try_start_403 .. :try_end_418} :catch_1751

    if-eqz v5, :cond_41b

    .line 199
    const/4 v2, 0x1

    .line 201
    :cond_41b
    if-eqz v2, :cond_43e

    .line 202
    :try_start_41d
    const-string v5, "com.begal.appclone.classes.secondary.PrivateAccounts"

    invoke-static {v4, v5}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    invoke-virtual {v8, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 204
    invoke-virtual {v8, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43e
    .catch Ljava/lang/Throwable; {:try_start_41d .. :try_end_43e} :catch_2d8

    .line 208
    .end local v5    # "o":Ljava/lang/Object;
    :cond_43e
    :try_start_43e
    const-string v5, "disableShareActions"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_44d
    .catch Ljava/lang/Throwable; {:try_start_43e .. :try_end_44d} :catch_1751

    .line 209
    .local v5, "disableShareActions":Z
    if-eqz v5, :cond_473

    .line 210
    :try_start_44f
    const-string v8, "com.begal.appclone.classes.secondary.DisableShareActions"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 211
    .local v8, "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v26, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    .line 211
    .end local v2    # "privateAccounts":Z
    .local v26, "privateAccounts":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-virtual {v9, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 212
    invoke-virtual {v2, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_472
    .catch Ljava/lang/Throwable; {:try_start_44f .. :try_end_472} :catch_2d8

    .line 212
    .end local v8    # "o":Ljava/lang/Object;
    goto :goto_475

    .line 216
    .end local v26    # "privateAccounts":Z
    .restart local v2    # "privateAccounts":Z
    :cond_473
    move/from16 v26, v2

    .line 216
    .end local v2    # "privateAccounts":Z
    .restart local v26    # "privateAccounts":Z
    :goto_475
    :try_start_475
    const-string v2, "disableWakeLocks"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_484
    .catch Ljava/lang/Throwable; {:try_start_475 .. :try_end_484} :catch_1751

    .line 217
    .local v2, "disableWakeLocks":Z
    if-eqz v2, :cond_4aa

    .line 218
    :try_start_486
    const-string v8, "com.begal.appclone.classes.secondary.DisableWakeLocks"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 219
    .restart local v8    # "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v27, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    .line 219
    .end local v2    # "disableWakeLocks":Z
    .local v27, "disableWakeLocks":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-virtual {v9, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 220
    invoke-virtual {v2, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a9
    .catch Ljava/lang/Throwable; {:try_start_486 .. :try_end_4a9} :catch_2d8

    .line 220
    .end local v8    # "o":Ljava/lang/Object;
    goto :goto_4ac

    .line 224
    .end local v27    # "disableWakeLocks":Z
    .restart local v2    # "disableWakeLocks":Z
    :cond_4aa
    move/from16 v27, v2

    .line 224
    .end local v2    # "disableWakeLocks":Z
    .restart local v27    # "disableWakeLocks":Z
    :goto_4ac
    :try_start_4ac
    const-string v2, "disableContactsAccess"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4bb
    .catch Ljava/lang/Throwable; {:try_start_4ac .. :try_end_4bb} :catch_1751

    .line 225
    .local v2, "disableContactsAccess":Z
    if-eqz v2, :cond_4e1

    .line 226
    :try_start_4bd
    const-string v8, "com.begal.appclone.classes.secondary.DisableContactsAccess"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 227
    .restart local v8    # "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v28, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    .line 227
    .end local v2    # "disableContactsAccess":Z
    .local v28, "disableContactsAccess":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-virtual {v9, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 228
    invoke-virtual {v2, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e0
    .catch Ljava/lang/Throwable; {:try_start_4bd .. :try_end_4e0} :catch_2d8

    .line 228
    .end local v8    # "o":Ljava/lang/Object;
    goto :goto_4e3

    .line 232
    .end local v28    # "disableContactsAccess":Z
    .restart local v2    # "disableContactsAccess":Z
    :cond_4e1
    move/from16 v28, v2

    .line 232
    .end local v2    # "disableContactsAccess":Z
    .restart local v28    # "disableContactsAccess":Z
    :goto_4e3
    :try_start_4e3
    const-string v2, "disableCalendarAccess"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_4f2
    .catch Ljava/lang/Throwable; {:try_start_4e3 .. :try_end_4f2} :catch_1751

    .line 233
    .local v2, "disableCalendarAccess":Z
    if-eqz v2, :cond_518

    .line 234
    :try_start_4f4
    const-string v8, "com.begal.appclone.classes.secondary.DisableCalendarAccess"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 235
    .restart local v8    # "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v29, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    .line 235
    .end local v2    # "disableCalendarAccess":Z
    .local v29, "disableCalendarAccess":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-virtual {v9, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 236
    invoke-virtual {v2, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_517
    .catch Ljava/lang/Throwable; {:try_start_4f4 .. :try_end_517} :catch_2d8

    .line 236
    .end local v8    # "o":Ljava/lang/Object;
    goto :goto_51a

    .line 240
    .end local v29    # "disableCalendarAccess":Z
    .restart local v2    # "disableCalendarAccess":Z
    :cond_518
    move/from16 v29, v2

    .line 240
    .end local v2    # "disableCalendarAccess":Z
    .restart local v29    # "disableCalendarAccess":Z
    :goto_51a
    :try_start_51a
    const-string v2, "disableCallLogSmsAccess"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_529
    .catch Ljava/lang/Throwable; {:try_start_51a .. :try_end_529} :catch_1751

    .line 241
    .local v2, "disableCallLogSmsAccess":Z
    if-eqz v2, :cond_570

    .line 243
    :try_start_52b
    const-string v8, "com.begal.appclone.classes.secondary.DisableCallLogAccess"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 244
    .restart local v8    # "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v30, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Class;

    .line 244
    .end local v2    # "disableCallLogSmsAccess":Z
    .local v30, "disableCallLogSmsAccess":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v2, v17

    invoke-virtual {v9, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 245
    invoke-virtual {v2, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v8    # "o":Ljava/lang/Object;
    const-string v2, "com.begal.appclone.classes.secondary.DisableSmsAccess"

    invoke-static {v4, v2}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    invoke-virtual {v8, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 250
    invoke-virtual {v8, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56f
    .catch Ljava/lang/Throwable; {:try_start_52b .. :try_end_56f} :catch_2d8

    .line 250
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_572

    .line 255
    .end local v30    # "disableCallLogSmsAccess":Z
    .local v2, "disableCallLogSmsAccess":Z
    :cond_570
    move/from16 v30, v2

    .line 255
    .end local v2    # "disableCallLogSmsAccess":Z
    .restart local v30    # "disableCallLogSmsAccess":Z
    :goto_572
    :try_start_572
    const-string v2, "deviceLockDeviceIdentifiers"

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/begal/appclone/classes/CloneSettings;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_579
    .catch Ljava/lang/Throwable; {:try_start_572 .. :try_end_579} :catch_1751

    .line 257
    .local v2, "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_590

    :try_start_57b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_590

    .line 258
    const-string v8, "DeviceLock"

    const-string v9, "install"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v15, v14

    invoke-direct {v1, v8, v9, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_58e
    .catch Ljava/lang/Throwable; {:try_start_57b .. :try_end_58e} :catch_2d8

    .line 265
    const/4 v14, 0x0

    goto :goto_59d

    .line 261
    :cond_590
    :try_start_590
    const-string v8, "ForceDeviceLock"

    const-string v9, "install"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v15, v14

    invoke-direct {v1, v8, v9, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :goto_59d
    const-string v8, "changeAndroidId"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 266
    .local v8, "changeAndroidId":Z
    const-string v9, "changeAndroidIdSeed"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v9, v15}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 267
    .local v9, "changeAndroidIdSeed":I
    const-string v14, "randomAndroidId"

    move-object/from16 v31, v2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 267
    .end local v2    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v31, "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v14, v2}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_5cb
    .catch Ljava/lang/Throwable; {:try_start_590 .. :try_end_5cb} :catch_1751

    .line 268
    .local v2, "randomAndroidId":Z
    if-eqz v8, :cond_61d

    .line 269
    :try_start_5cd
    const-string v14, "com.begal.appclone.classes.secondary.ChangeAndroidId"

    invoke-static {v4, v14}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 270
    .restart local v14    # "o":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move/from16 v32, v5

    const-string v5, "init"

    .line 270
    .end local v5    # "disableShareActions":Z
    .local v32, "disableShareActions":Z
    move/from16 v33, v10

    move/from16 v34, v11

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Class;

    .line 270
    .end local v10    # "transparentNavigationBar":Z
    .end local v11    # "preventImmersiveMode":Z
    .local v33, "transparentNavigationBar":Z
    .local v34, "preventImmersiveMode":Z
    const-class v10, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v10, v11, v17

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v10, v11, v17

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v10, v11, v17

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v10, v11, v16

    invoke-virtual {v15, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    .line 271
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v11, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v11, v15

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v11, v15

    invoke-virtual {v5, v14, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61c
    .catch Ljava/lang/Throwable; {:try_start_5cd .. :try_end_61c} :catch_2d8

    .line 271
    .end local v14    # "o":Ljava/lang/Object;
    goto :goto_623

    .line 275
    .end local v32    # "disableShareActions":Z
    .end local v33    # "transparentNavigationBar":Z
    .end local v34    # "preventImmersiveMode":Z
    .restart local v5    # "disableShareActions":Z
    .restart local v10    # "transparentNavigationBar":Z
    .restart local v11    # "preventImmersiveMode":Z
    :cond_61d
    move/from16 v32, v5

    move/from16 v33, v10

    move/from16 v34, v11

    .line 275
    .end local v5    # "disableShareActions":Z
    .end local v10    # "transparentNavigationBar":Z
    .end local v11    # "preventImmersiveMode":Z
    .restart local v32    # "disableShareActions":Z
    .restart local v33    # "transparentNavigationBar":Z
    .restart local v34    # "preventImmersiveMode":Z
    :goto_623
    :try_start_623
    const-string v5, "changeImei"

    const-string v10, "NO_CHANGE"

    invoke-virtual {v7, v5, v10}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "changeImei":Ljava/lang/String;
    const-string v10, "changeImsi"

    const-string v11, "NO_CHANGE"

    invoke-virtual {v7, v10, v11}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "changeImsi":Ljava/lang/String;
    const-string v11, "hideSimOperatorInfo"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v11, v15}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 278
    .local v11, "hideSimOperatorInfo":Z
    const-string v14, "NO_CHANGE"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_648
    .catch Ljava/lang/Throwable; {:try_start_623 .. :try_end_648} :catch_1751

    if-eqz v14, :cond_65e

    :try_start_64a
    const-string v14, "NO_CHANGE"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_650
    .catch Ljava/lang/Throwable; {:try_start_64a .. :try_end_650} :catch_2d8

    if-eqz v14, :cond_65e

    if-eqz v11, :cond_655

    goto :goto_65e

    .line 286
    :cond_655
    move/from16 v35, v2

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v12

    goto :goto_697

    .line 279
    :cond_65e
    :goto_65e
    :try_start_65e
    const-string v14, "customImei"

    const-string v15, ""

    invoke-virtual {v7, v14, v15}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, "customImei":Ljava/lang/String;
    const-string v15, "customImsi"

    move/from16 v35, v2

    const-string v2, ""

    .line 280
    .end local v2    # "randomAndroidId":Z
    .local v35, "randomAndroidId":Z
    invoke-virtual {v7, v15, v2}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "customImsi":Ljava/lang/String;
    const-string v15, "ChangeImeiImsiHideSimOperatorInfo"

    move/from16 v36, v8

    const-string v8, "install"

    .line 281
    .end local v8    # "changeAndroidId":Z
    .local v36, "changeAndroidId":Z
    move/from16 v37, v9

    move/from16 v38, v12

    const/4 v9, 0x6

    new-array v12, v9, [Ljava/lang/Object;

    .line 281
    .end local v9    # "changeAndroidIdSeed":I
    .end local v12    # "forceRotationLockUsingOverlay":Z
    .local v37, "changeAndroidIdSeed":I
    .local v38, "forceRotationLockUsingOverlay":Z
    const/4 v9, 0x0

    aput-object v4, v12, v9

    const/4 v9, 0x1

    aput-object v5, v12, v9

    const/4 v9, 0x2

    aput-object v14, v12, v9

    const/4 v9, 0x3

    aput-object v10, v12, v9

    const/4 v9, 0x4

    aput-object v2, v12, v9

    .line 282
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v17, 0x5

    aput-object v9, v12, v17

    .line 281
    invoke-direct {v1, v15, v8, v12}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .end local v2    # "customImsi":Ljava/lang/String;
    .end local v14    # "customImei":Ljava/lang/String;
    :goto_697
    const-string v2, "hideWifiMacAddress"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 287
    .local v2, "hideWifiMacAddress":Z
    const-string v8, "hideWifiInfo"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_6b5
    .catch Ljava/lang/Throwable; {:try_start_65e .. :try_end_6b5} :catch_1751

    .line 288
    .local v8, "hideWifiInfo":Z
    if-eqz v2, :cond_6d0

    .line 289
    :try_start_6b7
    const-string v9, "HideWifiMacAddress"

    const-string v12, "install"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v15, v14

    invoke-direct {v1, v9, v12, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    if-eqz v8, :cond_6d0

    .line 291
    const-string v9, "HideWifiInfo"

    const-string v12, "install"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-direct {v1, v9, v12, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6d0
    .catch Ljava/lang/Throwable; {:try_start_6b7 .. :try_end_6d0} :catch_2d8

    .line 296
    :cond_6d0
    :try_start_6d0
    const-string v9, "hideBluetoothMacAddress"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_6df
    .catch Ljava/lang/Throwable; {:try_start_6d0 .. :try_end_6df} :catch_1751

    .line 297
    .local v9, "hideBluetoothMacAddress":Z
    if-eqz v9, :cond_707

    .line 298
    :try_start_6e1
    const-string v12, "com.begal.appclone.classes.secondary.HideBtMacAddress"

    invoke-static {v4, v12}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 299
    .local v12, "o":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "init"

    move/from16 v39, v2

    move-object/from16 v40, v5

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    .line 299
    .end local v2    # "hideWifiMacAddress":Z
    .end local v5    # "changeImei":Ljava/lang/String;
    .local v39, "hideWifiMacAddress":Z
    .local v40, "changeImei":Ljava/lang/String;
    const-class v2, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v2, v5, v17

    invoke-virtual {v14, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 300
    invoke-virtual {v2, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_706
    .catch Ljava/lang/Throwable; {:try_start_6e1 .. :try_end_706} :catch_2d8

    .line 300
    .end local v12    # "o":Ljava/lang/Object;
    goto :goto_70b

    .line 304
    .end local v39    # "hideWifiMacAddress":Z
    .end local v40    # "changeImei":Ljava/lang/String;
    .restart local v2    # "hideWifiMacAddress":Z
    .restart local v5    # "changeImei":Ljava/lang/String;
    :cond_707
    move/from16 v39, v2

    move-object/from16 v40, v5

    .line 304
    .end local v2    # "hideWifiMacAddress":Z
    .end local v5    # "changeImei":Ljava/lang/String;
    .restart local v39    # "hideWifiMacAddress":Z
    .restart local v40    # "changeImei":Ljava/lang/String;
    :goto_70b
    :try_start_70b
    const-string v2, "spoofLocationLatitude"

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Lcom/begal/appclone/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    .line 305
    .local v2, "spoofLocationLatitude":Ljava/lang/Double;
    const-string v12, "spoofLocationLongitude"

    invoke-virtual {v7, v12, v5}, Lcom/begal/appclone/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v12
    :try_end_718
    .catch Ljava/lang/Throwable; {:try_start_70b .. :try_end_718} :catch_1751

    move-object v5, v12

    .line 306
    .local v5, "spoofLocationLongitude":Ljava/lang/Double;
    if-eqz v2, :cond_756

    if-eqz v5, :cond_756

    .line 307
    :try_start_71d
    const-string v12, "com.begal.appclone.classes.secondary.SpoofLocation"

    invoke-static {v4, v12}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 308
    .restart local v12    # "o":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "init"

    move/from16 v41, v8

    move/from16 v42, v9

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    .line 308
    .end local v8    # "hideWifiInfo":Z
    .end local v9    # "hideBluetoothMacAddress":Z
    .local v41, "hideWifiInfo":Z
    .local v42, "hideBluetoothMacAddress":Z
    const-class v8, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v8, v9, v17

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v8, v9, v17

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v8, v9, v17

    invoke-virtual {v14, v15, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v14, v9

    const/4 v9, 0x1

    aput-object v2, v14, v9

    const/4 v9, 0x2

    aput-object v5, v14, v9

    .line 309
    invoke-virtual {v8, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_755
    .catch Ljava/lang/Throwable; {:try_start_71d .. :try_end_755} :catch_2d8

    .line 309
    .end local v12    # "o":Ljava/lang/Object;
    goto :goto_75a

    .line 313
    .end local v41    # "hideWifiInfo":Z
    .end local v42    # "hideBluetoothMacAddress":Z
    .restart local v8    # "hideWifiInfo":Z
    .restart local v9    # "hideBluetoothMacAddress":Z
    :cond_756
    move/from16 v41, v8

    move/from16 v42, v9

    .line 313
    .end local v8    # "hideWifiInfo":Z
    .end local v9    # "hideBluetoothMacAddress":Z
    .restart local v41    # "hideWifiInfo":Z
    .restart local v42    # "hideBluetoothMacAddress":Z
    :goto_75a
    :try_start_75a
    const-string v8, "androidVersionSdk"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "androidVersionSdk":Ljava/lang/String;
    const-string v12, "androidVersionSdkInt"

    invoke-virtual {v7, v12, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "androidVersionSdkInt":Ljava/lang/String;
    const-string v14, "androidVersionPreviewSdkInt"

    invoke-virtual {v7, v14, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, "androidVersionPreviewSdkInt":Ljava/lang/String;
    const-string v15, "androidVersionCodename"

    invoke-virtual {v7, v15, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 317
    .local v15, "androidVersionCodename":Ljava/lang/String;
    const-string v9, "androidVersionIncremental"

    move-object/from16 v43, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v9, v2}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 318
    .end local v2    # "spoofLocationLatitude":Ljava/lang/Double;
    .local v9, "androidVersionIncremental":Ljava/lang/String;
    .local v43, "spoofLocationLatitude":Ljava/lang/Double;
    const-string v2, "androidVersionRelease"

    move-object/from16 v44, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .end local v5    # "spoofLocationLongitude":Ljava/lang/Double;
    .local v2, "androidVersionRelease":Ljava/lang/String;
    .local v44, "spoofLocationLongitude":Ljava/lang/Double;
    const-string v5, "androidVersionBaseOs"

    move-object/from16 v45, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    .end local v10    # "changeImsi":Ljava/lang/String;
    .local v5, "androidVersionBaseOs":Ljava/lang/String;
    .local v45, "changeImsi":Ljava/lang/String;
    const-string v10, "androidVersionSecurityPatch"

    move/from16 v46, v11

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .end local v11    # "hideSimOperatorInfo":Z
    .local v10, "androidVersionSecurityPatch":Ljava/lang/String;
    .local v46, "hideSimOperatorInfo":Z
    sget-object v11, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    move-object/from16 v47, v13

    new-instance v13, Ljava/lang/StringBuilder;

    .line 322
    .end local v13    # "taskerStopTaskName":Ljava/lang/String;
    .local v47, "taskerStopTaskName":Ljava/lang/String;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7a0
    .catch Ljava/lang/Throwable; {:try_start_75a .. :try_end_7a0} :catch_1751

    move/from16 v48, v3

    :try_start_7a2
    const-string v3, "onCreate; androidVersionSdk: "

    .line 322
    .end local v3    # "devDevice":Z
    .restart local v48    # "devDevice":Z
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionSdkInt: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionPreviewSdkInt: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionCodename: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionIncremental: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionRelease: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionBaseOs: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", androidVersionSecurityPatch: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_7ed
    .catch Ljava/lang/Throwable; {:try_start_7a2 .. :try_end_7ed} :catch_174c

    if-eqz v3, :cond_821

    .line 334
    :try_start_7ef
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 335
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 336
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 337
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_821

    .line 340
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_817
    .catch Ljava/lang/Throwable; {:try_start_7ef .. :try_end_817} :catch_81d

    if-nez v3, :cond_81a

    goto :goto_821

    .line 358
    :cond_81a
    move-object/from16 v49, v6

    goto :goto_890

    .line 883
    .end local v2    # "androidVersionRelease":Ljava/lang/String;
    .end local v5    # "androidVersionBaseOs":Ljava/lang/String;
    .end local v8    # "androidVersionSdk":Ljava/lang/String;
    .end local v9    # "androidVersionIncremental":Ljava/lang/String;
    .end local v10    # "androidVersionSecurityPatch":Ljava/lang/String;
    .end local v12    # "androidVersionSdkInt":Ljava/lang/String;
    .end local v14    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .end local v15    # "androidVersionCodename":Ljava/lang/String;
    .end local v19    # "rotationLock":Ljava/lang/String;
    .end local v20    # "multiWindowNoPause":Z
    .end local v21    # "immersiveMode":Z
    .end local v22    # "immersiveModeIgnoreNotch":Z
    .end local v23    # "floatingApp":Z
    .end local v24    # "taskerStartTaskName":Ljava/lang/String;
    .end local v25    # "makeDebuggable":Z
    .end local v26    # "privateAccounts":Z
    .end local v27    # "disableWakeLocks":Z
    .end local v28    # "disableContactsAccess":Z
    .end local v29    # "disableCalendarAccess":Z
    .end local v30    # "disableCallLogSmsAccess":Z
    .end local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "disableShareActions":Z
    .end local v33    # "transparentNavigationBar":Z
    .end local v34    # "preventImmersiveMode":Z
    .end local v35    # "randomAndroidId":Z
    .end local v36    # "changeAndroidId":Z
    .end local v37    # "changeAndroidIdSeed":I
    .end local v38    # "forceRotationLockUsingOverlay":Z
    .end local v39    # "hideWifiMacAddress":Z
    .end local v40    # "changeImei":Ljava/lang/String;
    .end local v41    # "hideWifiInfo":Z
    .end local v42    # "hideBluetoothMacAddress":Z
    .end local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .end local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .end local v45    # "changeImsi":Ljava/lang/String;
    .end local v46    # "hideSimOperatorInfo":Z
    .end local v47    # "taskerStopTaskName":Ljava/lang/String;
    :catch_81d
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2dc

    .line 342
    .restart local v2    # "androidVersionRelease":Ljava/lang/String;
    .restart local v5    # "androidVersionBaseOs":Ljava/lang/String;
    .restart local v8    # "androidVersionSdk":Ljava/lang/String;
    .restart local v9    # "androidVersionIncremental":Ljava/lang/String;
    .restart local v10    # "androidVersionSecurityPatch":Ljava/lang/String;
    .restart local v12    # "androidVersionSdkInt":Ljava/lang/String;
    .restart local v14    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .restart local v15    # "androidVersionCodename":Ljava/lang/String;
    .restart local v19    # "rotationLock":Ljava/lang/String;
    .restart local v20    # "multiWindowNoPause":Z
    .restart local v21    # "immersiveMode":Z
    .restart local v22    # "immersiveModeIgnoreNotch":Z
    .restart local v23    # "floatingApp":Z
    .restart local v24    # "taskerStartTaskName":Ljava/lang/String;
    .restart local v25    # "makeDebuggable":Z
    .restart local v26    # "privateAccounts":Z
    .restart local v27    # "disableWakeLocks":Z
    .restart local v28    # "disableContactsAccess":Z
    .restart local v29    # "disableCalendarAccess":Z
    .restart local v30    # "disableCallLogSmsAccess":Z
    .restart local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "disableShareActions":Z
    .restart local v33    # "transparentNavigationBar":Z
    .restart local v34    # "preventImmersiveMode":Z
    .restart local v35    # "randomAndroidId":Z
    .restart local v36    # "changeAndroidId":Z
    .restart local v37    # "changeAndroidIdSeed":I
    .restart local v38    # "forceRotationLockUsingOverlay":Z
    .restart local v39    # "hideWifiMacAddress":Z
    .restart local v40    # "changeImei":Ljava/lang/String;
    .restart local v41    # "hideWifiInfo":Z
    .restart local v42    # "hideBluetoothMacAddress":Z
    .restart local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .restart local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .restart local v45    # "changeImsi":Ljava/lang/String;
    .restart local v46    # "hideSimOperatorInfo":Z
    .restart local v47    # "taskerStopTaskName":Ljava/lang/String;
    :cond_821
    :goto_821
    :try_start_821
    const-string v3, "com.begal.appclone.classes.secondary.AndroidVersion"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 343
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v13, "init"
    :try_end_82d
    .catch Ljava/lang/Throwable; {:try_start_821 .. :try_end_82d} :catch_174c

    move-object/from16 v49, v6

    const/16 v6, 0x9

    :try_start_831
    new-array v1, v6, [Ljava/lang/Class;

    .line 343
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .local v49, "originalPackageName":Ljava/lang/String;
    const-class v6, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v16, 0x3

    aput-object v6, v1, v16

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x4

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x5

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x6

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x7

    aput-object v6, v1, v17

    const-class v6, Ljava/lang/String;

    const/16 v17, 0x8

    aput-object v6, v1, v17

    invoke-virtual {v11, v13, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v6, 0x9

    new-array v11, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v11, v6

    const/4 v6, 0x1

    aput-object v8, v11, v6

    const/4 v6, 0x2

    aput-object v12, v11, v6

    const/4 v6, 0x3

    aput-object v14, v11, v6

    const/4 v6, 0x4

    aput-object v15, v11, v6

    const/4 v6, 0x5

    aput-object v9, v11, v6

    const/4 v6, 0x6

    aput-object v2, v11, v6

    const/4 v6, 0x7

    aput-object v5, v11, v6

    const/16 v6, 0x8

    aput-object v10, v11, v6

    .line 345
    invoke-virtual {v1, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v3    # "o":Ljava/lang/Object;
    :goto_890
    const-string v1, "buildPropsManufacturer"

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "buildPropsManufacturer":Ljava/lang/String;
    const-string v6, "buildPropsBrand"

    invoke-virtual {v7, v6, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "buildPropsBrand":Ljava/lang/String;
    const-string v11, "buildPropsModel"

    invoke-virtual {v7, v11, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, "buildPropsModel":Ljava/lang/String;
    const-string v13, "buildPropsProduct"

    invoke-virtual {v7, v13, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "buildPropsProduct":Ljava/lang/String;
    const-string v3, "buildPropsDevice"

    move-object/from16 v50, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v3, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    .end local v1    # "buildPropsManufacturer":Ljava/lang/String;
    .local v3, "buildPropsDevice":Ljava/lang/String;
    .local v50, "buildPropsManufacturer":Ljava/lang/String;
    const-string v1, "buildPropsBoard"

    move-object/from16 v51, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .end local v2    # "androidVersionRelease":Ljava/lang/String;
    .local v1, "buildPropsBoard":Ljava/lang/String;
    .local v51, "androidVersionRelease":Ljava/lang/String;
    const-string v2, "buildPropsHardware"

    move-object/from16 v52, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .end local v1    # "buildPropsBoard":Ljava/lang/String;
    .local v2, "buildPropsHardware":Ljava/lang/String;
    .local v52, "buildPropsBoard":Ljava/lang/String;
    const-string v1, "buildPropsBootloader"

    move-object/from16 v53, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .end local v2    # "buildPropsHardware":Ljava/lang/String;
    .local v1, "buildPropsBootloader":Ljava/lang/String;
    .local v53, "buildPropsHardware":Ljava/lang/String;
    const-string v2, "buildPropsFingerprint"

    move-object/from16 v54, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .end local v1    # "buildPropsBootloader":Ljava/lang/String;
    .local v54, "buildPropsBootloader":Ljava/lang/String;
    move-object v1, v2

    .line 368
    .local v1, "buildPropsFingerprint":Ljava/lang/String;
    const-string v2, "randomizeBuildProps"

    move-object/from16 v55, v1

    move-object/from16 v56, v3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 368
    .end local v1    # "buildPropsFingerprint":Ljava/lang/String;
    .end local v3    # "buildPropsDevice":Ljava/lang/String;
    .local v55, "buildPropsFingerprint":Ljava/lang/String;
    .local v56, "buildPropsDevice":Ljava/lang/String;
    invoke-virtual {v7, v2, v3}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    .line 369
    .local v1, "randomizeBuildProps":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_8ea
    .catch Ljava/lang/Throwable; {:try_start_831 .. :try_end_8ea} :catch_1745

    if-eqz v2, :cond_947

    .line 370
    :try_start_8ec
    const-string v2, "buildPropsManufacturer"

    invoke-static {v4, v2}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .end local v50    # "buildPropsManufacturer":Ljava/lang/String;
    .local v2, "buildPropsManufacturer":Ljava/lang/String;
    const-string v3, "buildPropsBrand"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 372
    const-string v3, "buildPropsModel"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 373
    const-string v3, "buildPropsProduct"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 374
    const-string v3, "buildPropsDevice"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .end local v56    # "buildPropsDevice":Ljava/lang/String;
    .restart local v3    # "buildPropsDevice":Ljava/lang/String;
    move-object/from16 v57, v2

    const-string v2, "buildPropsBoard"

    .line 375
    .end local v2    # "buildPropsManufacturer":Ljava/lang/String;
    .local v57, "buildPropsManufacturer":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .end local v52    # "buildPropsBoard":Ljava/lang/String;
    .local v2, "buildPropsBoard":Ljava/lang/String;
    move-object/from16 v58, v2

    const-string v2, "buildPropsHardware"

    .line 376
    .end local v2    # "buildPropsBoard":Ljava/lang/String;
    .local v58, "buildPropsBoard":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .end local v53    # "buildPropsHardware":Ljava/lang/String;
    .local v2, "buildPropsHardware":Ljava/lang/String;
    move-object/from16 v59, v2

    const-string v2, "buildPropsBootloader"

    .line 377
    .end local v2    # "buildPropsHardware":Ljava/lang/String;
    .local v59, "buildPropsHardware":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .end local v54    # "buildPropsBootloader":Ljava/lang/String;
    .local v2, "buildPropsBootloader":Ljava/lang/String;
    move-object/from16 v60, v2

    const-string v2, "buildPropsFingerprint"

    .line 378
    .end local v2    # "buildPropsBootloader":Ljava/lang/String;
    .local v60, "buildPropsBootloader":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/begal/appclone/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_92d
    .catch Ljava/lang/Throwable; {:try_start_8ec .. :try_end_92d} :catch_93f

    .line 381
    .end local v55    # "buildPropsFingerprint":Ljava/lang/String;
    .local v2, "buildPropsFingerprint":Ljava/lang/String;
    move-object/from16 v61, v5

    move-object/from16 v62, v8

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v5, v58

    move-object/from16 v8, v59

    move-object/from16 v9, v60

    move-object v10, v2

    move-object/from16 v2, v57

    goto :goto_95b

    .line 883
    .end local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .end local v2    # "buildPropsFingerprint":Ljava/lang/String;
    .end local v3    # "buildPropsDevice":Ljava/lang/String;
    .end local v5    # "androidVersionBaseOs":Ljava/lang/String;
    .end local v6    # "buildPropsBrand":Ljava/lang/String;
    .end local v8    # "androidVersionSdk":Ljava/lang/String;
    .end local v9    # "androidVersionIncremental":Ljava/lang/String;
    .end local v10    # "androidVersionSecurityPatch":Ljava/lang/String;
    .end local v11    # "buildPropsModel":Ljava/lang/String;
    .end local v12    # "androidVersionSdkInt":Ljava/lang/String;
    .end local v13    # "buildPropsProduct":Ljava/lang/String;
    .end local v14    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .end local v15    # "androidVersionCodename":Ljava/lang/String;
    .end local v19    # "rotationLock":Ljava/lang/String;
    .end local v20    # "multiWindowNoPause":Z
    .end local v21    # "immersiveMode":Z
    .end local v22    # "immersiveModeIgnoreNotch":Z
    .end local v23    # "floatingApp":Z
    .end local v24    # "taskerStartTaskName":Ljava/lang/String;
    .end local v25    # "makeDebuggable":Z
    .end local v26    # "privateAccounts":Z
    .end local v27    # "disableWakeLocks":Z
    .end local v28    # "disableContactsAccess":Z
    .end local v29    # "disableCalendarAccess":Z
    .end local v30    # "disableCallLogSmsAccess":Z
    .end local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "disableShareActions":Z
    .end local v33    # "transparentNavigationBar":Z
    .end local v34    # "preventImmersiveMode":Z
    .end local v35    # "randomAndroidId":Z
    .end local v36    # "changeAndroidId":Z
    .end local v37    # "changeAndroidIdSeed":I
    .end local v38    # "forceRotationLockUsingOverlay":Z
    .end local v39    # "hideWifiMacAddress":Z
    .end local v40    # "changeImei":Ljava/lang/String;
    .end local v41    # "hideWifiInfo":Z
    .end local v42    # "hideBluetoothMacAddress":Z
    .end local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .end local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .end local v45    # "changeImsi":Ljava/lang/String;
    .end local v46    # "hideSimOperatorInfo":Z
    .end local v47    # "taskerStopTaskName":Ljava/lang/String;
    .end local v51    # "androidVersionRelease":Ljava/lang/String;
    .end local v57    # "buildPropsManufacturer":Ljava/lang/String;
    .end local v58    # "buildPropsBoard":Ljava/lang/String;
    .end local v59    # "buildPropsHardware":Ljava/lang/String;
    .end local v60    # "buildPropsBootloader":Ljava/lang/String;
    :catch_93f
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v49

    move-object/from16 v2, p0

    goto/16 :goto_1760

    .line 381
    .restart local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .restart local v5    # "androidVersionBaseOs":Ljava/lang/String;
    .restart local v6    # "buildPropsBrand":Ljava/lang/String;
    .restart local v8    # "androidVersionSdk":Ljava/lang/String;
    .restart local v9    # "androidVersionIncremental":Ljava/lang/String;
    .restart local v10    # "androidVersionSecurityPatch":Ljava/lang/String;
    .restart local v11    # "buildPropsModel":Ljava/lang/String;
    .restart local v12    # "androidVersionSdkInt":Ljava/lang/String;
    .restart local v13    # "buildPropsProduct":Ljava/lang/String;
    .restart local v14    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .restart local v15    # "androidVersionCodename":Ljava/lang/String;
    .restart local v19    # "rotationLock":Ljava/lang/String;
    .restart local v20    # "multiWindowNoPause":Z
    .restart local v21    # "immersiveMode":Z
    .restart local v22    # "immersiveModeIgnoreNotch":Z
    .restart local v23    # "floatingApp":Z
    .restart local v24    # "taskerStartTaskName":Ljava/lang/String;
    .restart local v25    # "makeDebuggable":Z
    .restart local v26    # "privateAccounts":Z
    .restart local v27    # "disableWakeLocks":Z
    .restart local v28    # "disableContactsAccess":Z
    .restart local v29    # "disableCalendarAccess":Z
    .restart local v30    # "disableCallLogSmsAccess":Z
    .restart local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "disableShareActions":Z
    .restart local v33    # "transparentNavigationBar":Z
    .restart local v34    # "preventImmersiveMode":Z
    .restart local v35    # "randomAndroidId":Z
    .restart local v36    # "changeAndroidId":Z
    .restart local v37    # "changeAndroidIdSeed":I
    .restart local v38    # "forceRotationLockUsingOverlay":Z
    .restart local v39    # "hideWifiMacAddress":Z
    .restart local v40    # "changeImei":Ljava/lang/String;
    .restart local v41    # "hideWifiInfo":Z
    .restart local v42    # "hideBluetoothMacAddress":Z
    .restart local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .restart local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .restart local v45    # "changeImsi":Ljava/lang/String;
    .restart local v46    # "hideSimOperatorInfo":Z
    .restart local v47    # "taskerStopTaskName":Ljava/lang/String;
    .restart local v50    # "buildPropsManufacturer":Ljava/lang/String;
    .restart local v51    # "androidVersionRelease":Ljava/lang/String;
    .restart local v52    # "buildPropsBoard":Ljava/lang/String;
    .restart local v53    # "buildPropsHardware":Ljava/lang/String;
    .restart local v54    # "buildPropsBootloader":Ljava/lang/String;
    .restart local v55    # "buildPropsFingerprint":Ljava/lang/String;
    .restart local v56    # "buildPropsDevice":Ljava/lang/String;
    :cond_947
    move-object/from16 v61, v5

    move-object/from16 v62, v8

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v2, v50

    move-object/from16 v5, v52

    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v10, v55

    move-object/from16 v3, v56

    .line 381
    .end local v50    # "buildPropsManufacturer":Ljava/lang/String;
    .end local v52    # "buildPropsBoard":Ljava/lang/String;
    .end local v53    # "buildPropsHardware":Ljava/lang/String;
    .end local v54    # "buildPropsBootloader":Ljava/lang/String;
    .end local v55    # "buildPropsFingerprint":Ljava/lang/String;
    .end local v56    # "buildPropsDevice":Ljava/lang/String;
    .local v2, "buildPropsManufacturer":Ljava/lang/String;
    .restart local v3    # "buildPropsDevice":Ljava/lang/String;
    .local v5, "buildPropsBoard":Ljava/lang/String;
    .local v8, "buildPropsHardware":Ljava/lang/String;
    .local v9, "buildPropsBootloader":Ljava/lang/String;
    .local v10, "buildPropsFingerprint":Ljava/lang/String;
    .local v61, "androidVersionBaseOs":Ljava/lang/String;
    .local v62, "androidVersionSdk":Ljava/lang/String;
    .local v63, "androidVersionIncremental":Ljava/lang/String;
    .local v64, "androidVersionSecurityPatch":Ljava/lang/String;
    :goto_95b
    move-object/from16 v65, v12

    :try_start_95d
    sget-object v12, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    .line 381
    .end local v12    # "androidVersionSdkInt":Ljava/lang/String;
    .local v65, "androidVersionSdkInt":Ljava/lang/String;
    move-object/from16 v66, v14

    new-instance v14, Ljava/lang/StringBuilder;

    .line 381
    .end local v14    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .local v66, "androidVersionPreviewSdkInt":Ljava/lang/String;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v67, v15

    const-string v15, "onCreate; buildPropsManufacturer: "

    .line 381
    .end local v15    # "androidVersionCodename":Ljava/lang/String;
    .local v67, "androidVersionCodename":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsBrand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsModel: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsProduct: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsDevice: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsBoard: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsHardware: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsBootloader: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", buildPropsFingerprint: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_9bb
    .catch Ljava/lang/Throwable; {:try_start_95d .. :try_end_9bb} :catch_1745

    if-eqz v12, :cond_9f3

    .line 393
    :try_start_9bd
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 394
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 395
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 396
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 397
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 398
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 399
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9f3

    .line 400
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_9eb
    .catch Ljava/lang/Throwable; {:try_start_9bd .. :try_end_9eb} :catch_93f

    if-nez v12, :cond_9ee

    goto :goto_9f3

    .line 415
    :cond_9ee
    move-object/from16 v68, v2

    move-object/from16 v2, p0

    goto :goto_a2a

    .line 401
    :cond_9f3
    :goto_9f3
    :try_start_9f3
    const-string v12, "BuildProps"

    const-string v14, "install"

    const/16 v15, 0xa

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v15, v17

    const/16 v17, 0x1

    aput-object v2, v15, v17

    const/16 v17, 0x2

    aput-object v6, v15, v17

    const/16 v16, 0x3

    aput-object v11, v15, v16

    const/16 v17, 0x4

    aput-object v13, v15, v17

    const/16 v17, 0x5

    aput-object v3, v15, v17

    const/16 v17, 0x6

    aput-object v5, v15, v17

    const/16 v17, 0x7

    aput-object v8, v15, v17

    const/16 v17, 0x8

    aput-object v9, v15, v17

    const/16 v17, 0x9

    aput-object v10, v15, v17
    :try_end_a23
    .catch Ljava/lang/Throwable; {:try_start_9f3 .. :try_end_a23} :catch_1745

    move-object/from16 v68, v2

    move-object/from16 v2, p0

    :try_start_a27
    invoke-direct {v2, v12, v14, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    .end local v2    # "buildPropsManufacturer":Ljava/lang/String;
    .local v68, "buildPropsManufacturer":Ljava/lang/String;
    :goto_a2a
    const-string v12, "socksProxy"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v12, v15}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_a39
    .catch Ljava/lang/Throwable; {:try_start_a27 .. :try_end_a39} :catch_1741

    .line 416
    .local v12, "socksProxy":Z
    if-eqz v12, :cond_a9f

    .line 417
    :try_start_a3b
    const-string v14, "socksProxyHost"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, "socksProxyHost":Ljava/lang/String;
    const-string v15, "socksProxyPort"

    move-object/from16 v69, v3

    move-object/from16 v70, v5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 418
    .end local v3    # "buildPropsDevice":Ljava/lang/String;
    .end local v5    # "buildPropsBoard":Ljava/lang/String;
    .local v69, "buildPropsDevice":Ljava/lang/String;
    .local v70, "buildPropsBoard":Ljava/lang/String;
    invoke-virtual {v7, v15, v5}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 419
    .local v3, "socksProxyPort":I
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a90

    if-eqz v3, :cond_a90

    .line 420
    const-string v5, "socksProxyUsername"

    const/4 v15, 0x0

    invoke-virtual {v7, v5, v15}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, "socksProxyUsername":Ljava/lang/String;
    const-string v15, "socksProxyPassword"

    move-object/from16 v71, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v15, v6}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 421
    .end local v6    # "buildPropsBrand":Ljava/lang/String;
    .local v71, "buildPropsBrand":Ljava/lang/String;
    move-object v6, v15

    .line 422
    .local v6, "socksProxyPassword":Ljava/lang/String;
    const-string v15, "SocksProxy"

    move-object/from16 v72, v8

    const-string v8, "install"

    .line 422
    .end local v8    # "buildPropsHardware":Ljava/lang/String;
    .local v72, "buildPropsHardware":Ljava/lang/String;
    move-object/from16 v73, v9

    move-object/from16 v74, v10

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    .line 422
    .end local v9    # "buildPropsBootloader":Ljava/lang/String;
    .end local v10    # "buildPropsFingerprint":Ljava/lang/String;
    .local v73, "buildPropsBootloader":Ljava/lang/String;
    .local v74, "buildPropsFingerprint":Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v14, v10, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x1

    aput-object v9, v10, v17

    const/4 v9, 0x2

    aput-object v5, v10, v9

    const/4 v9, 0x3

    aput-object v6, v10, v9

    invoke-direct {v2, v15, v8, v10}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a8f
    .catch Ljava/lang/Throwable; {:try_start_a3b .. :try_end_a8f} :catch_a99

    .line 422
    .end local v3    # "socksProxyPort":I
    .end local v5    # "socksProxyUsername":Ljava/lang/String;
    .end local v6    # "socksProxyPassword":Ljava/lang/String;
    .end local v14    # "socksProxyHost":Ljava/lang/String;
    goto :goto_aab

    .line 428
    .end local v71    # "buildPropsBrand":Ljava/lang/String;
    .end local v72    # "buildPropsHardware":Ljava/lang/String;
    .end local v73    # "buildPropsBootloader":Ljava/lang/String;
    .end local v74    # "buildPropsFingerprint":Ljava/lang/String;
    .local v6, "buildPropsBrand":Ljava/lang/String;
    .restart local v8    # "buildPropsHardware":Ljava/lang/String;
    .restart local v9    # "buildPropsBootloader":Ljava/lang/String;
    .restart local v10    # "buildPropsFingerprint":Ljava/lang/String;
    :cond_a90
    move-object/from16 v71, v6

    move-object/from16 v72, v8

    move-object/from16 v73, v9

    move-object/from16 v74, v10

    .line 428
    .end local v6    # "buildPropsBrand":Ljava/lang/String;
    .end local v8    # "buildPropsHardware":Ljava/lang/String;
    .end local v9    # "buildPropsBootloader":Ljava/lang/String;
    .end local v10    # "buildPropsFingerprint":Ljava/lang/String;
    .restart local v71    # "buildPropsBrand":Ljava/lang/String;
    .restart local v72    # "buildPropsHardware":Ljava/lang/String;
    .restart local v73    # "buildPropsBootloader":Ljava/lang/String;
    .restart local v74    # "buildPropsFingerprint":Ljava/lang/String;
    goto :goto_aab

    .line 883
    .end local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .end local v11    # "buildPropsModel":Ljava/lang/String;
    .end local v12    # "socksProxy":Z
    .end local v13    # "buildPropsProduct":Ljava/lang/String;
    .end local v19    # "rotationLock":Ljava/lang/String;
    .end local v20    # "multiWindowNoPause":Z
    .end local v21    # "immersiveMode":Z
    .end local v22    # "immersiveModeIgnoreNotch":Z
    .end local v23    # "floatingApp":Z
    .end local v24    # "taskerStartTaskName":Ljava/lang/String;
    .end local v25    # "makeDebuggable":Z
    .end local v26    # "privateAccounts":Z
    .end local v27    # "disableWakeLocks":Z
    .end local v28    # "disableContactsAccess":Z
    .end local v29    # "disableCalendarAccess":Z
    .end local v30    # "disableCallLogSmsAccess":Z
    .end local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "disableShareActions":Z
    .end local v33    # "transparentNavigationBar":Z
    .end local v34    # "preventImmersiveMode":Z
    .end local v35    # "randomAndroidId":Z
    .end local v36    # "changeAndroidId":Z
    .end local v37    # "changeAndroidIdSeed":I
    .end local v38    # "forceRotationLockUsingOverlay":Z
    .end local v39    # "hideWifiMacAddress":Z
    .end local v40    # "changeImei":Ljava/lang/String;
    .end local v41    # "hideWifiInfo":Z
    .end local v42    # "hideBluetoothMacAddress":Z
    .end local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .end local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .end local v45    # "changeImsi":Ljava/lang/String;
    .end local v46    # "hideSimOperatorInfo":Z
    .end local v47    # "taskerStopTaskName":Ljava/lang/String;
    .end local v51    # "androidVersionRelease":Ljava/lang/String;
    .end local v61    # "androidVersionBaseOs":Ljava/lang/String;
    .end local v62    # "androidVersionSdk":Ljava/lang/String;
    .end local v63    # "androidVersionIncremental":Ljava/lang/String;
    .end local v64    # "androidVersionSecurityPatch":Ljava/lang/String;
    .end local v65    # "androidVersionSdkInt":Ljava/lang/String;
    .end local v66    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .end local v67    # "androidVersionCodename":Ljava/lang/String;
    .end local v68    # "buildPropsManufacturer":Ljava/lang/String;
    .end local v69    # "buildPropsDevice":Ljava/lang/String;
    .end local v70    # "buildPropsBoard":Ljava/lang/String;
    .end local v71    # "buildPropsBrand":Ljava/lang/String;
    .end local v72    # "buildPropsHardware":Ljava/lang/String;
    .end local v73    # "buildPropsBootloader":Ljava/lang/String;
    .end local v74    # "buildPropsFingerprint":Ljava/lang/String;
    :catch_a99
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v49

    goto/16 :goto_1760

    .line 428
    .restart local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .local v3, "buildPropsDevice":Ljava/lang/String;
    .local v5, "buildPropsBoard":Ljava/lang/String;
    .restart local v6    # "buildPropsBrand":Ljava/lang/String;
    .restart local v8    # "buildPropsHardware":Ljava/lang/String;
    .restart local v9    # "buildPropsBootloader":Ljava/lang/String;
    .restart local v10    # "buildPropsFingerprint":Ljava/lang/String;
    .restart local v11    # "buildPropsModel":Ljava/lang/String;
    .restart local v12    # "socksProxy":Z
    .restart local v13    # "buildPropsProduct":Ljava/lang/String;
    .restart local v19    # "rotationLock":Ljava/lang/String;
    .restart local v20    # "multiWindowNoPause":Z
    .restart local v21    # "immersiveMode":Z
    .restart local v22    # "immersiveModeIgnoreNotch":Z
    .restart local v23    # "floatingApp":Z
    .restart local v24    # "taskerStartTaskName":Ljava/lang/String;
    .restart local v25    # "makeDebuggable":Z
    .restart local v26    # "privateAccounts":Z
    .restart local v27    # "disableWakeLocks":Z
    .restart local v28    # "disableContactsAccess":Z
    .restart local v29    # "disableCalendarAccess":Z
    .restart local v30    # "disableCallLogSmsAccess":Z
    .restart local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "disableShareActions":Z
    .restart local v33    # "transparentNavigationBar":Z
    .restart local v34    # "preventImmersiveMode":Z
    .restart local v35    # "randomAndroidId":Z
    .restart local v36    # "changeAndroidId":Z
    .restart local v37    # "changeAndroidIdSeed":I
    .restart local v38    # "forceRotationLockUsingOverlay":Z
    .restart local v39    # "hideWifiMacAddress":Z
    .restart local v40    # "changeImei":Ljava/lang/String;
    .restart local v41    # "hideWifiInfo":Z
    .restart local v42    # "hideBluetoothMacAddress":Z
    .restart local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .restart local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .restart local v45    # "changeImsi":Ljava/lang/String;
    .restart local v46    # "hideSimOperatorInfo":Z
    .restart local v47    # "taskerStopTaskName":Ljava/lang/String;
    .restart local v51    # "androidVersionRelease":Ljava/lang/String;
    .restart local v61    # "androidVersionBaseOs":Ljava/lang/String;
    .restart local v62    # "androidVersionSdk":Ljava/lang/String;
    .restart local v63    # "androidVersionIncremental":Ljava/lang/String;
    .restart local v64    # "androidVersionSecurityPatch":Ljava/lang/String;
    .restart local v65    # "androidVersionSdkInt":Ljava/lang/String;
    .restart local v66    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .restart local v67    # "androidVersionCodename":Ljava/lang/String;
    .restart local v68    # "buildPropsManufacturer":Ljava/lang/String;
    :cond_a9f
    move-object/from16 v69, v3

    move-object/from16 v70, v5

    move-object/from16 v71, v6

    move-object/from16 v72, v8

    move-object/from16 v73, v9

    move-object/from16 v74, v10

    .line 428
    .end local v3    # "buildPropsDevice":Ljava/lang/String;
    .end local v5    # "buildPropsBoard":Ljava/lang/String;
    .end local v6    # "buildPropsBrand":Ljava/lang/String;
    .end local v8    # "buildPropsHardware":Ljava/lang/String;
    .end local v9    # "buildPropsBootloader":Ljava/lang/String;
    .end local v10    # "buildPropsFingerprint":Ljava/lang/String;
    .restart local v69    # "buildPropsDevice":Ljava/lang/String;
    .restart local v70    # "buildPropsBoard":Ljava/lang/String;
    .restart local v71    # "buildPropsBrand":Ljava/lang/String;
    .restart local v72    # "buildPropsHardware":Ljava/lang/String;
    .restart local v73    # "buildPropsBootloader":Ljava/lang/String;
    .restart local v74    # "buildPropsFingerprint":Ljava/lang/String;
    :goto_aab
    :try_start_aab
    const-string v3, "disableAllNetworking"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_aba
    .catch Ljava/lang/Throwable; {:try_start_aab .. :try_end_aba} :catch_1741

    .line 429
    .local v3, "disableAllNetworking":Z
    if-eqz v3, :cond_af8

    .line 430
    :try_start_abc
    const-string v5, "disableAllNetworkingDelayMillis"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 431
    .local v5, "disableAllNetworkingDelayMillis":I
    const-string v6, "com.begal.appclone.classes.secondary.DisableAllNetworking"

    invoke-static {v4, v6}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 432
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init"

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-virtual {v8, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v10, v9

    .line 433
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v10, v14

    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af8
    .catch Ljava/lang/Throwable; {:try_start_abc .. :try_end_af8} :catch_a99

    .line 437
    .end local v5    # "disableAllNetworkingDelayMillis":I
    .end local v6    # "o":Ljava/lang/Object;
    :cond_af8
    :try_start_af8
    const-string v5, "disableBackgroundNetworking"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_b07
    .catch Ljava/lang/Throwable; {:try_start_af8 .. :try_end_b07} :catch_1741

    .line 438
    .local v5, "disableBackgroundNetworking":Z
    if-eqz v5, :cond_b29

    .line 439
    :try_start_b09
    const-string v6, "com.begal.appclone.classes.secondary.DisableBackgroundNetworking"

    invoke-static {v4, v6}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 440
    .restart local v6    # "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "init"

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-virtual {v8, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v4, v10, v15

    .line 441
    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b29
    .catch Ljava/lang/Throwable; {:try_start_b09 .. :try_end_b29} :catch_a99

    .line 445
    .end local v6    # "o":Ljava/lang/Object;
    :cond_b29
    :try_start_b29
    const-string v6, "disableMobileData"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_b38
    .catch Ljava/lang/Throwable; {:try_start_b29 .. :try_end_b38} :catch_1741

    .line 446
    .local v6, "disableMobileData":Z
    if-eqz v6, :cond_b5b

    .line 447
    :try_start_b3a
    const-string v8, "com.begal.appclone.classes.secondary.DisableMobileData"

    invoke-static {v4, v8}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 448
    .local v8, "o":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "init"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    invoke-virtual {v9, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 449
    invoke-virtual {v9, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5b
    .catch Ljava/lang/Throwable; {:try_start_b3a .. :try_end_b5b} :catch_a99

    .line 453
    .end local v8    # "o":Ljava/lang/Object;
    :cond_b5b
    :try_start_b5b
    const-string v8, "disableInAppSearch"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 454
    .local v8, "disableInAppSearch":Z
    const-string v9, "com.contextlogic.wish"
    :try_end_b6c
    .catch Ljava/lang/Throwable; {:try_start_b5b .. :try_end_b6c} :catch_1741

    move-object/from16 v10, v49

    :try_start_b6e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 454
    .end local v49    # "originalPackageName":Ljava/lang/String;
    .local v10, "originalPackageName":Ljava/lang/String;
    if-eqz v9, :cond_b75

    .line 455
    const/4 v8, 0x1

    .line 457
    :cond_b75
    if-eqz v8, :cond_b9d

    .line 458
    const-string v9, "com.begal.appclone.classes.secondary.DisableInAppSearch"

    invoke-static {v4, v9}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 459
    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "init"

    move/from16 v75, v3

    move/from16 v76, v5

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Class;

    .line 459
    .end local v3    # "disableAllNetworking":Z
    .end local v5    # "disableBackgroundNetworking":Z
    .local v75, "disableAllNetworking":Z
    .local v76, "disableBackgroundNetworking":Z
    const-class v3, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v3, v5, v17

    invoke-virtual {v14, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 460
    invoke-virtual {v3, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .end local v9    # "o":Ljava/lang/Object;
    goto :goto_ba1

    .line 464
    .end local v75    # "disableAllNetworking":Z
    .end local v76    # "disableBackgroundNetworking":Z
    .restart local v3    # "disableAllNetworking":Z
    .restart local v5    # "disableBackgroundNetworking":Z
    :cond_b9d
    move/from16 v75, v3

    move/from16 v76, v5

    .line 464
    .end local v3    # "disableAllNetworking":Z
    .end local v5    # "disableBackgroundNetworking":Z
    .restart local v75    # "disableAllNetworking":Z
    .restart local v76    # "disableBackgroundNetworking":Z
    :goto_ba1
    const-string v3, "makeWatchApp"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 465
    .local v3, "makeWatchApp":Z
    if-eqz v3, :cond_bd6

    .line 466
    const-string v5, "com.begal.appclone.classes.secondary.NullSearchManager"

    invoke-static {v4, v5}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 467
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v77, v3

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Class;

    .line 467
    .end local v3    # "makeWatchApp":Z
    .local v77, "makeWatchApp":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v3, v17

    invoke-virtual {v9, v14, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 468
    invoke-virtual {v3, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_bd8

    .line 472
    .end local v77    # "makeWatchApp":Z
    .restart local v3    # "makeWatchApp":Z
    :cond_bd6
    move/from16 v77, v3

    .line 472
    .end local v3    # "makeWatchApp":Z
    .restart local v77    # "makeWatchApp":Z
    :goto_bd8
    const-string v3, "disableActivityTransitions"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 473
    .local v3, "disableActivityTransitions":Z
    if-eqz v3, :cond_c0d

    .line 474
    const-string v5, "com.begal.appclone.classes.secondary.DisableActivityTransitions"

    invoke-static {v4, v5}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 475
    .restart local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v14, "init"

    move/from16 v78, v3

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Class;

    .line 475
    .end local v3    # "disableActivityTransitions":Z
    .local v78, "disableActivityTransitions":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v3, v17

    invoke-virtual {v9, v14, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 476
    invoke-virtual {v3, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v5    # "o":Ljava/lang/Object;
    goto :goto_c0f

    .line 480
    .end local v78    # "disableActivityTransitions":Z
    .restart local v3    # "disableActivityTransitions":Z
    :cond_c0d
    move/from16 v78, v3

    .line 480
    .end local v3    # "disableActivityTransitions":Z
    .restart local v78    # "disableActivityTransitions":Z
    :goto_c0f
    const-string v3, "longPressBackAction"

    const-string v5, "NONE"

    invoke-virtual {v7, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "longPressBackAction":Ljava/lang/String;
    const-string v5, "NONE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c39

    .line 482
    const-string v5, "longPressBackActionParam"

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "longPressBackActionParam":Ljava/lang/String;
    const-string v9, "LongPressBackAction"

    const-string v14, "install"

    move/from16 v79, v6

    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Object;

    .line 483
    .end local v6    # "disableMobileData":Z
    .local v79, "disableMobileData":Z
    const/4 v15, 0x0

    aput-object v3, v6, v15

    const/4 v15, 0x1

    aput-object v5, v6, v15

    invoke-direct {v2, v9, v14, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .end local v5    # "longPressBackActionParam":Ljava/lang/String;
    goto :goto_c3b

    .line 489
    .end local v79    # "disableMobileData":Z
    .restart local v6    # "disableMobileData":Z
    :cond_c39
    move/from16 v79, v6

    .line 489
    .end local v6    # "disableMobileData":Z
    .restart local v79    # "disableMobileData":Z
    :goto_c3b
    const-string v5, "backAlwaysFinishes"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c56

    .line 490
    const-string v5, "BackAlwaysFinishes"

    const-string v6, "install"

    const/4 v9, 0x0

    new-array v14, v9, [Ljava/lang/Object;

    invoke-direct {v2, v5, v6, v14}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_c56
    const-string v5, "fingerprintTapAction"

    const-string v6, "NONE"

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "fingerprintTapAction":Ljava/lang/String;
    const-string v6, "fingerprintLongTapAction"

    const-string v9, "NONE"

    invoke-virtual {v7, v6, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 496
    .local v6, "fingerprintLongTapAction":Ljava/lang/String;
    const-string v9, "NONE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c7e

    const-string v9, "NONE"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c77

    goto :goto_c7e

    .line 509
    :cond_c77
    move-object/from16 v80, v3

    move/from16 v81, v8

    move-object/from16 v82, v11

    goto :goto_cab

    .line 497
    :cond_c7e
    :goto_c7e
    const-string v9, "fingerprintTapActionParam"

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 499
    .local v9, "fingerprintTapActionParam":Ljava/lang/String;
    const-string v15, "fingerprintLongTapActionParam"

    invoke-virtual {v7, v15, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 501
    .local v14, "fingerprintLongTapActionParam":Ljava/lang/String;
    const-string v15, "FingerprintTapAction"

    move-object/from16 v80, v3

    const-string v3, "install"

    .line 501
    .end local v3    # "longPressBackAction":Ljava/lang/String;
    .local v80, "longPressBackAction":Ljava/lang/String;
    move/from16 v81, v8

    move-object/from16 v82, v11

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    .line 501
    .end local v8    # "disableInAppSearch":Z
    .end local v11    # "buildPropsModel":Ljava/lang/String;
    .local v81, "disableInAppSearch":Z
    .local v82, "buildPropsModel":Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v4, v11, v8

    const/4 v8, 0x1

    aput-object v5, v11, v8

    const/4 v8, 0x2

    aput-object v9, v11, v8

    const/4 v8, 0x3

    aput-object v6, v11, v8

    const/4 v8, 0x4

    aput-object v14, v11, v8

    invoke-direct {v2, v15, v3, v11}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    .end local v9    # "fingerprintTapActionParam":Ljava/lang/String;
    .end local v14    # "fingerprintLongTapActionParam":Ljava/lang/String;
    :goto_cab
    const-string v3, "volumeUpKeyAction"

    const-string v8, "NONE"

    invoke-virtual {v7, v3, v8}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "volumeUpKeyAction":Ljava/lang/String;
    const-string v8, "volumeDownKeyAction"

    const-string v9, "NONE"

    invoke-virtual {v7, v8, v9}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "volumeDownKeyAction":Ljava/lang/String;
    const-string v9, "volumeUpDownKeyAction"

    const-string v11, "NONE"

    invoke-virtual {v7, v9, v11}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 512
    .local v9, "volumeUpDownKeyAction":Ljava/lang/String;
    const-string v11, "NONE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ce5

    const-string v11, "NONE"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ce5

    const-string v11, "NONE"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cdc

    goto :goto_ce5

    .line 527
    :cond_cdc
    move-object/from16 v83, v5

    move-object/from16 v84, v6

    move/from16 v85, v12

    move-object/from16 v86, v13

    goto :goto_d1e

    .line 513
    :cond_ce5
    :goto_ce5
    const-string v11, "volumeUpKeyActionParam"

    const/4 v14, 0x0

    invoke-virtual {v7, v11, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "volumeUpKeyActionParam":Ljava/lang/String;
    const-string v15, "volumeDownKeyActionParam"

    invoke-virtual {v7, v15, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 517
    .local v15, "volumeDownKeyActionParam":Ljava/lang/String;
    const-string v14, "volumeUpDownKeyActionParam"

    move-object/from16 v83, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v14, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 517
    .end local v5    # "fingerprintTapAction":Ljava/lang/String;
    .local v83, "fingerprintTapAction":Ljava/lang/String;
    move-object v5, v14

    .line 519
    .local v5, "volumeUpDownKeyActionParam":Ljava/lang/String;
    const-string v14, "VolumeUpDownKeyAction"

    move-object/from16 v84, v6

    const-string v6, "install"

    .line 519
    .end local v6    # "fingerprintLongTapAction":Ljava/lang/String;
    .local v84, "fingerprintLongTapAction":Ljava/lang/String;
    move/from16 v85, v12

    move-object/from16 v86, v13

    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Object;

    .line 519
    .end local v12    # "socksProxy":Z
    .end local v13    # "buildPropsProduct":Ljava/lang/String;
    .local v85, "socksProxy":Z
    .local v86, "buildPropsProduct":Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v3, v13, v12

    const/4 v12, 0x1

    aput-object v11, v13, v12

    const/4 v12, 0x2

    aput-object v8, v13, v12

    const/4 v12, 0x3

    aput-object v15, v13, v12

    const/4 v12, 0x4

    aput-object v9, v13, v12

    const/4 v12, 0x5

    aput-object v5, v13, v12

    invoke-direct {v2, v14, v6, v13}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    .end local v5    # "volumeUpDownKeyActionParam":Ljava/lang/String;
    .end local v11    # "volumeUpKeyActionParam":Ljava/lang/String;
    .end local v15    # "volumeDownKeyActionParam":Ljava/lang/String;
    :goto_d1e
    const-string v5, "SecurityExceptionWorkaround"

    const-string v6, "install"

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-direct {v2, v5, v6, v12}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    const-string v5, "googlePlayServicesWorkaround"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 531
    .local v5, "googlePlayServicesWorkaround":Z
    const-string v6, "com.fiverr.fiverr"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5e

    const-string v6, "com.instagram.android"

    .line 532
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5e

    const-string v6, "com.viber.voip"

    .line 533
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5e

    const-string v6, "com.waze"

    .line 534
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5e

    const-string v6, "com.amazon.mShop.android"

    .line 535
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5f

    .line 537
    :cond_d5e
    const/4 v5, 0x1

    .line 539
    :cond_d5f
    if-eqz v5, :cond_d81

    .line 540
    const-string v6, "com.begal.appclone.classes.secondary.GooglePlayServicesWorkaround"

    invoke-static {v4, v6}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 541
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "init"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v4, v13, v15

    .line 542
    invoke-virtual {v11, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v6    # "o":Ljava/lang/Object;
    :cond_d81
    const-string v6, "hideGooglePlayServices"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 547
    .local v6, "hideGooglePlayServices":Z
    if-eqz v6, :cond_db3

    .line 548
    const-string v11, "com.begal.appclone.classes.secondary.HideGooglePlayServices"

    invoke-static {v4, v11}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 549
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "init"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v4, v14, v17

    .line 550
    invoke-virtual {v12, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v11    # "o":Ljava/lang/Object;
    :cond_db3
    const-string v11, "welcomeMessageHtml"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 555
    .local v11, "welcomeMessageHtml":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e20

    .line 556
    const-string v12, "welcomeMessageMode"

    const-string v13, "DIALOG"

    invoke-virtual {v7, v12, v13}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 557
    .local v12, "welcomeMessageMode":Ljava/lang/String;
    const-string v13, "welcomeMessageDelay"

    const/16 v14, 0x7d0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 558
    .local v13, "welcomeMessageDelay":I
    const-string v14, "com.begal.appclone.classes.secondary.WelcomeMessage"

    invoke-static {v4, v14}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 559
    .local v14, "o":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v87, v3

    const-string v3, "init"

    .line 559
    .end local v3    # "volumeUpKeyAction":Ljava/lang/String;
    .local v87, "volumeUpKeyAction":Ljava/lang/String;
    move/from16 v88, v5

    move/from16 v89, v6

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    .line 559
    .end local v5    # "googlePlayServicesWorkaround":Z
    .end local v6    # "hideGooglePlayServices":Z
    .local v88, "googlePlayServicesWorkaround":Z
    .local v89, "hideGooglePlayServices":Z
    const-class v5, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v5, v6, v17

    const-class v5, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v5, v6, v17

    const-class v5, Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v5, v6, v17

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v5, v6, v16

    invoke-virtual {v15, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v5, 0x1

    aput-object v12, v6, v5

    const/4 v5, 0x2

    aput-object v11, v6, v5

    .line 560
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v15, 0x3

    aput-object v5, v6, v15

    invoke-virtual {v3, v14, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .end local v12    # "welcomeMessageMode":Ljava/lang/String;
    .end local v13    # "welcomeMessageDelay":I
    .end local v14    # "o":Ljava/lang/Object;
    goto :goto_e26

    .line 564
    .end local v87    # "volumeUpKeyAction":Ljava/lang/String;
    .end local v88    # "googlePlayServicesWorkaround":Z
    .end local v89    # "hideGooglePlayServices":Z
    .restart local v3    # "volumeUpKeyAction":Ljava/lang/String;
    .restart local v5    # "googlePlayServicesWorkaround":Z
    .restart local v6    # "hideGooglePlayServices":Z
    :cond_e20
    move-object/from16 v87, v3

    move/from16 v88, v5

    move/from16 v89, v6

    .line 564
    .end local v3    # "volumeUpKeyAction":Ljava/lang/String;
    .end local v5    # "googlePlayServicesWorkaround":Z
    .end local v6    # "hideGooglePlayServices":Z
    .restart local v87    # "volumeUpKeyAction":Ljava/lang/String;
    .restart local v88    # "googlePlayServicesWorkaround":Z
    .restart local v89    # "hideGooglePlayServices":Z
    :goto_e26
    const-string v3, "incognitoMode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 565
    .local v3, "incognitoMode":Z
    if-eqz v3, :cond_e75

    .line 566
    const-string v5, "autoIncognitoMode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 567
    .local v5, "autoIncognitoMode":Z
    const-string v6, "com.begal.appclone.classes.secondary.IncognitoMode"

    invoke-static {v4, v6}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 568
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "init"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v14, v15, v17

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v14, v13

    .line 569
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    invoke-virtual {v12, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v5    # "autoIncognitoMode":Z
    .end local v6    # "o":Ljava/lang/Object;
    :cond_e75
    const-string v5, "volumeRockerLocker"

    const-string v6, "NONE"

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "volumeRockerLocker":Ljava/lang/String;
    const-string v6, "NONE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb0

    .line 575
    const-string v6, "com.begal.appclone.classes.secondary.VolumeRockerLocker"

    invoke-static {v4, v6}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 576
    .restart local v6    # "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "init"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v14, v15, v17

    const-class v14, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v14, v15, v17

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v14, v13

    const/4 v13, 0x1

    aput-object v5, v14, v13

    .line 577
    invoke-virtual {v12, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .end local v6    # "o":Ljava/lang/Object;
    :cond_eb0
    const-string v6, "floatingBackButton"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v6, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 582
    .local v6, "floatingBackButton":Z
    if-eqz v6, :cond_f87

    .line 583
    const-string v13, "floatingBackButtonSize"

    const-string v14, "MEDIUM"

    invoke-virtual {v7, v13, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 584
    .local v13, "floatingBackButtonSize":Ljava/lang/String;
    const-string v14, "floatingBackButtonLongPressAction"

    const-string v15, "NONE"

    invoke-virtual {v7, v14, v15}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 585
    .local v14, "floatingBackButtonLongPressAction":Ljava/lang/String;
    const-string v15, "floatingBackButtonDoubleBackTap"

    move/from16 v90, v3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 585
    .end local v3    # "incognitoMode":Z
    .local v90, "incognitoMode":Z
    invoke-virtual {v7, v15, v3}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 586
    .local v3, "floatingBackButtonDoubleBackTap":Z
    const-string v12, "floatingBackButtonPositionPerScreen"

    move-object/from16 v91, v5

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 586
    .end local v5    # "volumeRockerLocker":Ljava/lang/String;
    .local v91, "volumeRockerLocker":Ljava/lang/String;
    invoke-virtual {v7, v12, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 587
    .local v5, "floatingBackButtonPositionPerScreen":Z
    const-string v12, "floatingBackButtonColor"

    move/from16 v92, v6

    const v15, -0x777778

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 587
    .end local v6    # "floatingBackButton":Z
    .local v92, "floatingBackButton":Z
    invoke-virtual {v7, v12, v6}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 588
    .local v6, "floatingBackButtonColor":I
    const-string v12, "floatingBackButtonOpacity"

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v7, v12, v15}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 589
    .local v12, "floatingBackButtonOpacity":F
    const-string v15, "com.begal.appclone.classes.secondary.FloatingBackButton"

    invoke-static {v4, v15}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 590
    .local v15, "o":Ljava/lang/Object;
    move-object/from16 v93, v8

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 590
    .end local v8    # "volumeDownKeyAction":Ljava/lang/String;
    .local v93, "volumeDownKeyAction":Ljava/lang/String;
    move-object/from16 v94, v9

    const-string v9, "init"

    .line 590
    .end local v9    # "volumeUpDownKeyAction":Ljava/lang/String;
    .local v94, "volumeUpDownKeyAction":Ljava/lang/String;
    move-object/from16 v96, v1

    move-object/from16 v95, v11

    const/4 v11, 0x7

    new-array v1, v11, [Ljava/lang/Class;

    .line 590
    .end local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .end local v11    # "welcomeMessageHtml":Ljava/lang/String;
    .local v95, "welcomeMessageHtml":Ljava/lang/String;
    .local v96, "randomizeBuildProps":Ljava/lang/Boolean;
    const-class v11, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v11, v1, v17

    const-class v11, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v11, v1, v17

    const-class v11, Ljava/lang/String;

    const/16 v17, 0x2

    aput-object v11, v1, v17

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v11, v1, v16

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v11, v1, v17

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x5

    aput-object v11, v1, v17

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v11, v1, v17

    invoke-virtual {v8, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v9, v8

    const/4 v8, 0x1

    aput-object v13, v9, v8

    const/4 v8, 0x2

    aput-object v14, v9, v8

    .line 592
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v9, v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x4

    aput-object v8, v9, v11

    .line 593
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v11, 0x6

    aput-object v8, v9, v11

    .line 591
    invoke-virtual {v1, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .end local v3    # "floatingBackButtonDoubleBackTap":Z
    .end local v5    # "floatingBackButtonPositionPerScreen":Z
    .end local v6    # "floatingBackButtonColor":I
    .end local v12    # "floatingBackButtonOpacity":F
    .end local v13    # "floatingBackButtonSize":Ljava/lang/String;
    .end local v14    # "floatingBackButtonLongPressAction":Ljava/lang/String;
    .end local v15    # "o":Ljava/lang/Object;
    goto :goto_f95

    .line 597
    .end local v90    # "incognitoMode":Z
    .end local v91    # "volumeRockerLocker":Ljava/lang/String;
    .end local v92    # "floatingBackButton":Z
    .end local v93    # "volumeDownKeyAction":Ljava/lang/String;
    .end local v94    # "volumeUpDownKeyAction":Ljava/lang/String;
    .end local v95    # "welcomeMessageHtml":Ljava/lang/String;
    .end local v96    # "randomizeBuildProps":Ljava/lang/Boolean;
    .restart local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .local v3, "incognitoMode":Z
    .local v5, "volumeRockerLocker":Ljava/lang/String;
    .local v6, "floatingBackButton":Z
    .restart local v8    # "volumeDownKeyAction":Ljava/lang/String;
    .restart local v9    # "volumeUpDownKeyAction":Ljava/lang/String;
    .restart local v11    # "welcomeMessageHtml":Ljava/lang/String;
    :cond_f87
    move-object/from16 v96, v1

    move/from16 v90, v3

    move-object/from16 v91, v5

    move/from16 v92, v6

    move-object/from16 v93, v8

    move-object/from16 v94, v9

    move-object/from16 v95, v11

    .line 597
    .end local v1    # "randomizeBuildProps":Ljava/lang/Boolean;
    .end local v3    # "incognitoMode":Z
    .end local v5    # "volumeRockerLocker":Ljava/lang/String;
    .end local v6    # "floatingBackButton":Z
    .end local v8    # "volumeDownKeyAction":Ljava/lang/String;
    .end local v9    # "volumeUpDownKeyAction":Ljava/lang/String;
    .end local v11    # "welcomeMessageHtml":Ljava/lang/String;
    .restart local v90    # "incognitoMode":Z
    .restart local v91    # "volumeRockerLocker":Ljava/lang/String;
    .restart local v92    # "floatingBackButton":Z
    .restart local v93    # "volumeDownKeyAction":Ljava/lang/String;
    .restart local v94    # "volumeUpDownKeyAction":Ljava/lang/String;
    .restart local v95    # "welcomeMessageHtml":Ljava/lang/String;
    .restart local v96    # "randomizeBuildProps":Ljava/lang/Boolean;
    :goto_f95
    const-string v1, "joystickPointer"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 598
    .local v1, "joystickPointer":Z
    if-eqz v1, :cond_106b

    .line 599
    const-string v3, "joystickPointerSize"

    const-string v5, "MEDIUM"

    invoke-virtual {v7, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "joystickPointerSize":Ljava/lang/String;
    const-string v5, "joystickPointerColor"

    const v6, -0x777778

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 601
    .local v5, "joystickPointerColor":I
    const-string v6, "joystickPointerOpacity"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/begal/appclone/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 602
    .local v6, "joystickPointerOpacity":F
    const-string v8, "joystickPointerToggleKeyCode"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 603
    .local v8, "joystickPointerToggleKeyCode":I
    const-string v9, "joystickPointerToggleLongPress"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 604
    .local v9, "joystickPointerToggleLongPress":Z
    const-string v11, "joystickPointerShowInitially"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 605
    .local v11, "joystickPointerShowInitially":Z
    const-string v12, "com.begal.appclone.classes.secondary.JoystickPointer"

    invoke-static {v4, v12}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 606
    .local v12, "o":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "init"

    move/from16 v97, v1

    const/4 v15, 0x7

    new-array v1, v15, [Ljava/lang/Class;

    .line 606
    .end local v1    # "joystickPointer":Z
    .local v97, "joystickPointer":Z
    const-class v15, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v15, v1, v17

    const-class v15, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v15, v1, v17

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v15, v1, v17

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v15, v1, v16

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v15, v1, v17

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x5

    aput-object v15, v1, v17

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v15, v1, v17

    invoke-virtual {v13, v14, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    .line 609
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    .line 610
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v13, v15

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v13, v15

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v13, v15

    .line 608
    invoke-virtual {v1, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .end local v3    # "joystickPointerSize":Ljava/lang/String;
    .end local v5    # "joystickPointerColor":I
    .end local v6    # "joystickPointerOpacity":F
    .end local v8    # "joystickPointerToggleKeyCode":I
    .end local v9    # "joystickPointerToggleLongPress":Z
    .end local v11    # "joystickPointerShowInitially":Z
    .end local v12    # "o":Ljava/lang/Object;
    goto :goto_106d

    .line 614
    .end local v97    # "joystickPointer":Z
    .restart local v1    # "joystickPointer":Z
    :cond_106b
    move/from16 v97, v1

    .line 614
    .end local v1    # "joystickPointer":Z
    .restart local v97    # "joystickPointer":Z
    :goto_106d
    const-string v1, "showTouches"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_109e

    .line 615
    const-string v1, "com.begal.appclone.classes.secondary.ShowTouches"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v1    # "o":Ljava/lang/Object;
    :cond_109e
    const-string v1, "localBroadcastsServices"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10d8

    .line 621
    const-string v1, "com.begal.appclone.classes.secondary.LocalBroadcastsServices"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 622
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v5, 0x1

    aput-object v10, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v1    # "o":Ljava/lang/Object;
    :cond_10d8
    const-string v1, "localActivities"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1112

    .line 627
    const-string v1, "com.begal.appclone.classes.secondary.LocalActivities"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 628
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v5, 0x1

    aput-object v10, v6, v5

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1112
    const-string v1, "showAppInfoNotification"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1143

    .line 633
    const-string v1, "com.begal.appclone.classes.secondary.ShowAppInfoNotification"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 634
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1143
    const-string v1, "pictureInPictureNotification"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1174

    .line 639
    const-string v1, "com.begal.appclone.classes.secondary.PictureInPictureNotification"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 640
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1174
    const-string v1, "hidePasswordCharacters"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11a5

    .line 645
    const-string v1, "com.begal.appclone.classes.secondary.HidePasswordCharacters"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 646
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .end local v1    # "o":Ljava/lang/Object;
    :cond_11a5
    const-string v1, "incognitoKeyboard"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11d6

    .line 651
    const-string v1, "com.begal.appclone.classes.secondary.IncognitoKeyboard"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 652
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v1    # "o":Ljava/lang/Object;
    :cond_11d6
    const-string v1, "makeDebuggable"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1218

    const-string v1, "debugUtils"

    .line 657
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1218

    .line 658
    const-string v1, "com.begal.appclone.classes.secondary.DebugUtils"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 659
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1218
    const-string v1, "noBackgroundServices"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1249

    .line 664
    const-string v1, "com.begal.appclone.classes.secondary.NoBackgroundServices"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 665
    .restart local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1249
    const-string v1, "disableLogcatLogging"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1264

    .line 670
    const-string v1, "DisableLogcatLogging"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    :cond_1264
    const-string v1, "flushLogcatBufferOnExit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_127f

    .line 675
    const-string v1, "FlushLogcatBufferOnExit"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    :cond_127f
    const-string v1, "logGetPackageName"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_129c

    if-eqz v48, :cond_129c

    .line 680
    const-string v1, "LogGetPackageNameHook"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :cond_129c
    const-string v1, "statusBarColor"

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    .line 685
    .local v1, "statusBarColor":Ljava/lang/Integer;
    const-string v5, "navigationBarColor"

    invoke-virtual {v7, v5, v3}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    .line 686
    .local v3, "navigationBarColor":Ljava/lang/Integer;
    const-string v5, "navigationBarColorUseStatusBarColor"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12bc

    .line 687
    move-object v3, v1

    .line 689
    :cond_12bc
    if-nez v1, :cond_12c0

    if-eqz v3, :cond_12d0

    .line 690
    :cond_12c0
    const-string v5, "StatusNavigationBarColor"

    const-string v6, "install"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v9, v8

    const/4 v8, 0x1

    aput-object v3, v9, v8

    invoke-direct {v2, v5, v6, v9}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    :cond_12d0
    const-string v5, "toolbarColor"

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    .line 695
    .local v5, "toolbarColor":Ljava/lang/Integer;
    const-string v6, "toolbarColorUseStatusBarColor"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12e9

    .line 696
    move-object v5, v1

    .line 698
    :cond_12e9
    if-eqz v5, :cond_12f8

    .line 699
    const-string v6, "ToolbarColor"

    const-string v8, "install"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v11, v9

    invoke-direct {v2, v6, v8, v11}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_12f8
    const-string v6, "muteOnStart"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1313

    .line 704
    const-string v6, "MuteOnStart"

    const-string v8, "install"

    const/4 v9, 0x0

    new-array v11, v9, [Ljava/lang/Object;

    invoke-direct {v2, v6, v8, v11}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    :cond_1313
    const-string v6, "allowTextSelection"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 709
    .local v6, "allowTextSelection":Z
    const-string v8, "allowSharingImages"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 710
    .local v8, "allowSharingImages":Z
    if-nez v6, :cond_1335

    if-eqz v8, :cond_134d

    .line 711
    :cond_1335
    const-string v9, "AllowTextSelectionSharingImages"

    const-string v11, "install"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    .line 712
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 711
    invoke-direct {v2, v9, v11, v13}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :cond_134d
    const-string v9, "keepScreenOn"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1368

    .line 717
    const-string v9, "KeepScreenOn"

    const-string v11, "install"

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-direct {v2, v9, v11, v13}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    :cond_1368
    const-string v9, "exitAppOnScreenOff"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1399

    .line 722
    const-string v9, "exitAppOnScreenOffDelaySeconds"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 723
    .local v9, "delaySeconds":I
    const-string v11, "ExitAppOnScreenOff"

    const-string v12, "install"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-direct {v2, v11, v12, v14}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    .end local v9    # "delaySeconds":I
    :cond_1399
    const-string v9, "requestAllPermissions"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_13b4

    .line 728
    const-string v9, "RequestAllPermissions"

    const-string v11, "install"

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-direct {v2, v9, v11, v13}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    :cond_13b4
    const-string v9, "allowScreenshots"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 733
    .local v9, "allowScreenshots":Z
    const-string v11, "preventScreenshots"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 734
    .local v11, "preventScreenshots":Z
    if-nez v9, :cond_13d6

    if-eqz v11, :cond_13f0

    .line 735
    :cond_13d6
    const-string v12, "AllowPreventScreenshots"

    const-string v13, "install"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v15, v17

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v15, v17

    invoke-direct {v2, v12, v13, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    :cond_13f0
    const-string v12, "webViewSafeBrowsing"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v12

    .line 740
    .local v12, "webViewSafeBrowsing":Ljava/lang/Boolean;
    move-object/from16 v13, v96

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 740
    .end local v96    # "randomizeBuildProps":Ljava/lang/Boolean;
    .local v13, "randomizeBuildProps":Ljava/lang/Boolean;
    if-nez v14, :cond_1407

    if-eqz v12, :cond_1402

    goto :goto_1407

    .line 746
    :cond_1402
    move-object/from16 v98, v1

    move-object/from16 v99, v3

    goto :goto_141e

    .line 741
    :cond_1407
    :goto_1407
    const-string v14, "WebViewHooks"

    const-string v15, "install"

    move-object/from16 v98, v1

    move-object/from16 v99, v3

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    .line 741
    .end local v1    # "statusBarColor":Ljava/lang/Integer;
    .end local v3    # "navigationBarColor":Ljava/lang/Integer;
    .local v98, "statusBarColor":Ljava/lang/Integer;
    .local v99, "navigationBarColor":Ljava/lang/Integer;
    const/4 v1, 0x0

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v13, v3, v1

    const/4 v1, 0x2

    aput-object v12, v3, v1

    invoke-direct {v2, v14, v15, v3}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    :goto_141e
    const-string v1, "clearCacheWhenNotUsed"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v1, v14}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_142d
    .catch Ljava/lang/Throwable; {:try_start_b6e .. :try_end_142d} :catch_173e

    if-eqz v1, :cond_1473

    .line 748
    :try_start_142f
    const-string v1, "clearCacheWhenNotUsedValue"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 749
    .local v1, "value":I
    const-string v3, "clearCacheWhenNotUsedTimeUnit"

    const-string v14, "DAYS"

    invoke-virtual {v7, v3, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    .line 751
    .local v3, "timeUnit":Ljava/util/concurrent/TimeUnit;
    const-string v14, "ClearCacheWhenNotUsed"

    const-string v15, "install"
    :try_end_144e
    .catch Ljava/lang/Exception; {:try_start_142f .. :try_end_144e} :catch_1467
    .catch Ljava/lang/Throwable; {:try_start_142f .. :try_end_144e} :catch_173e

    move-object/from16 v100, v5

    move/from16 v101, v6

    const/4 v5, 0x2

    :try_start_1453
    new-array v6, v5, [Ljava/lang/Object;

    .line 751
    .end local v5    # "toolbarColor":Ljava/lang/Integer;
    .end local v6    # "allowTextSelection":Z
    .local v100, "toolbarColor":Ljava/lang/Integer;
    .local v101, "allowTextSelection":Z
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v6, v16

    const/4 v5, 0x1

    aput-object v3, v6, v5

    invoke-direct {v2, v14, v15, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1463
    .catch Ljava/lang/Exception; {:try_start_1453 .. :try_end_1463} :catch_1464
    .catch Ljava/lang/Throwable; {:try_start_1453 .. :try_end_1463} :catch_173e

    .line 754
    .end local v1    # "value":I
    .end local v3    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    goto :goto_1477

    .line 752
    :catch_1464
    move-exception v0

    move-object v1, v0

    goto :goto_146d

    .line 752
    .end local v100    # "toolbarColor":Ljava/lang/Integer;
    .end local v101    # "allowTextSelection":Z
    .restart local v5    # "toolbarColor":Ljava/lang/Integer;
    .restart local v6    # "allowTextSelection":Z
    :catch_1467
    move-exception v0

    move-object/from16 v100, v5

    move/from16 v101, v6

    move-object v1, v0

    .line 753
    .end local v5    # "toolbarColor":Ljava/lang/Integer;
    .end local v6    # "allowTextSelection":Z
    .local v1, "e":Ljava/lang/Exception;
    .restart local v100    # "toolbarColor":Ljava/lang/Integer;
    .restart local v101    # "allowTextSelection":Z
    :goto_146d
    :try_start_146d
    sget-object v3, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1472
    .catch Ljava/lang/Throwable; {:try_start_146d .. :try_end_1472} :catch_173e

    .line 753
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1477

    .line 759
    .end local v100    # "toolbarColor":Ljava/lang/Integer;
    .end local v101    # "allowTextSelection":Z
    .restart local v5    # "toolbarColor":Ljava/lang/Integer;
    .restart local v6    # "allowTextSelection":Z
    :cond_1473
    move-object/from16 v100, v5

    move/from16 v101, v6

    .line 759
    .end local v5    # "toolbarColor":Ljava/lang/Integer;
    .end local v6    # "allowTextSelection":Z
    .restart local v100    # "toolbarColor":Ljava/lang/Integer;
    .restart local v101    # "allowTextSelection":Z
    :goto_1477
    :try_start_1477
    const-string v1, "com.amazon.mas.kiwi.util.ApkHelpers"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 760
    const-string v1, "AmazonAppstoreWorkaround"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1486
    .catch Ljava/lang/Throwable; {:try_start_1477 .. :try_end_1486} :catch_1487

    .line 762
    goto :goto_1488

    .line 761
    :catch_1487
    move-exception v0

    .line 765
    :goto_1488
    :try_start_1488
    const-string v1, "BrazeAppboyWorkaround"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    const-string v1, "FabricWorkaround"

    const-string v3, "install"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    const-string v1, "removeLauncherIcon"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_14c3

    const-string v1, "removeLauncherIconShortcuts"

    .line 772
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14c1

    goto :goto_14c3

    .line 777
    :cond_14c1
    const/4 v5, 0x0

    goto :goto_14d0

    .line 773
    :cond_14c3
    :goto_14c3
    const-string v1, "RemoveLauncherIconShortcuts"

    const-string v3, "install"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    :goto_14d0
    const-string v1, "bringAppToFrontNotification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14ed

    .line 778
    const-string v1, "BringAppToFrontNotification"

    const-string v3, "install"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    :cond_14ed
    const-string v1, "penDetachedEventAction"

    const-string v3, "NONE"

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "penDetachedEventAction":Ljava/lang/String;
    const-string v3, "penInsertedEventAction"

    const-string v5, "NONE"

    invoke-virtual {v7, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "penInsertedEventAction":Ljava/lang/String;
    const-string v5, "EXIT_APP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_150d

    const-string v5, "EXIT_APP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1510

    .line 785
    :cond_150d
    invoke-static {}, Lcom/begal/appclone/classes/PenEventReceiver;->init()V

    .line 789
    :cond_1510
    const-string v5, "powerConnectedEventAction"

    const-string v6, "NONE"

    invoke-virtual {v7, v5, v6}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 790
    .local v5, "powerConnectedEventAction":Ljava/lang/String;
    const-string v6, "powerDisconnectedEventAction"

    const-string v14, "NONE"

    invoke-virtual {v7, v6, v14}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "powerDisconnectedEventAction":Ljava/lang/String;
    const-string v14, "EXIT_APP"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1530

    const-string v14, "EXIT_APP"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1533

    .line 792
    :cond_1530
    invoke-static {}, Lcom/begal/appclone/classes/PowerEventReceiver;->init()V

    .line 796
    :cond_1533
    const-string v14, "headphonesPluggedEventAction"

    const-string v15, "NONE"

    invoke-virtual {v7, v14, v15}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 797
    .local v14, "headphonesPluggedEventAction":Ljava/lang/String;
    const-string v15, "headphonesUnpluggedEventAction"

    move-object/from16 v102, v1

    const-string v1, "NONE"

    .line 797
    .end local v1    # "penDetachedEventAction":Ljava/lang/String;
    .local v102, "penDetachedEventAction":Ljava/lang/String;
    invoke-virtual {v7, v15, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "headphonesUnpluggedEventAction":Ljava/lang/String;
    const-string v15, "NONE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1555

    const-string v15, "NONE"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1558

    .line 799
    :cond_1555
    invoke-static {v4}, Lcom/begal/appclone/classes/HeadphonesEventReceiver;->init(Landroid/content/Context;)V

    .line 803
    :cond_1558
    const-string v15, "disableCameras"

    move-object/from16 v103, v1

    move-object/from16 v104, v3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 803
    .end local v1    # "headphonesUnpluggedEventAction":Ljava/lang/String;
    .end local v3    # "penInsertedEventAction":Ljava/lang/String;
    .local v103, "headphonesUnpluggedEventAction":Ljava/lang/String;
    .local v104, "penInsertedEventAction":Ljava/lang/String;
    invoke-virtual {v7, v15, v3}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1575

    .line 804
    new-instance v1, Lcom/begal/appclone/classes/DisableCameras;

    invoke-direct {v1}, Lcom/begal/appclone/classes/DisableCameras;-><init>()V

    invoke-virtual {v1}, Lcom/begal/appclone/classes/DisableCameras;->install()V

    .line 808
    :cond_1575
    const-string v1, "muteMic"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v1, v15}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1593

    .line 809
    const-string v1, "MuteMic"

    const-string v3, "install"

    move-object/from16 v105, v5

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Object;

    .line 809
    .end local v5    # "powerConnectedEventAction":Ljava/lang/String;
    .local v105, "powerConnectedEventAction":Ljava/lang/String;
    invoke-direct {v2, v1, v3, v5}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1595

    .line 813
    .end local v105    # "powerConnectedEventAction":Ljava/lang/String;
    .restart local v5    # "powerConnectedEventAction":Ljava/lang/String;
    :cond_1593
    move-object/from16 v105, v5

    .line 813
    .end local v5    # "powerConnectedEventAction":Ljava/lang/String;
    .restart local v105    # "powerConnectedEventAction":Ljava/lang/String;
    :goto_1595
    const-string v1, "disableAutoFill"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15b0

    .line 814
    const-string v1, "DisableAutoFill"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    :cond_15b0
    const-string v1, "disablePermissionPrompts"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15cb

    .line 819
    const-string v1, "DisablePermissionPrompts"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    :cond_15cb
    const-string v1, "requestIgnoreBatteryOptimizations"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15e6

    .line 824
    const-string v1, "RequestIgnoreBatteryOptimizations"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :cond_15e6
    const-string v1, "trustAllCertificates"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1601

    .line 829
    const-string v1, "TrustAllCertificates"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    :cond_1601
    const-string v1, "fakeCalculator"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_161a

    .line 834
    new-instance v1, Lcom/begal/appclone/classes/FakeCalculator;

    invoke-direct {v1}, Lcom/begal/appclone/classes/FakeCalculator;-><init>()V

    invoke-virtual {v1}, Lcom/begal/appclone/classes/FakeCalculator;->install()V

    .line 838
    :cond_161a
    const-string v1, "hideNotch"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1635

    .line 839
    const-string v1, "HideNotch"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    :cond_1635
    const-string v1, "appValidFrom"

    move-object/from16 v106, v6

    const-wide/16 v5, 0x0

    .line 843
    .end local v6    # "powerDisconnectedEventAction":Ljava/lang/String;
    .local v106, "powerDisconnectedEventAction":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v107, v15

    .line 844
    .local v107, "appValidFrom":J
    const-string v1, "appValidUntil"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v109, v15

    .line 845
    .local v109, "appValidUntil":J
    move/from16 v111, v8

    move/from16 v112, v9

    move-wide/from16 v8, v107

    cmp-long v1, v8, v5

    .line 845
    .end local v9    # "allowScreenshots":Z
    .end local v107    # "appValidFrom":J
    .local v8, "appValidFrom":J
    .local v111, "allowSharingImages":Z
    .local v112, "allowScreenshots":Z
    if-nez v1, :cond_166e

    move/from16 v113, v11

    move-object/from16 v114, v12

    move-wide/from16 v11, v109

    cmp-long v1, v11, v5

    .line 845
    .end local v12    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    .end local v109    # "appValidUntil":J
    .local v11, "appValidUntil":J
    .local v113, "preventScreenshots":Z
    .local v114, "webViewSafeBrowsing":Ljava/lang/Boolean;
    if-eqz v1, :cond_168c

    goto :goto_1674

    .line 846
    .end local v113    # "preventScreenshots":Z
    .end local v114    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    .local v11, "preventScreenshots":Z
    .restart local v12    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    .restart local v109    # "appValidUntil":J
    :cond_166e
    move/from16 v113, v11

    move-object/from16 v114, v12

    move-wide/from16 v11, v109

    .line 846
    .end local v12    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    .end local v109    # "appValidUntil":J
    .local v11, "appValidUntil":J
    .restart local v113    # "preventScreenshots":Z
    .restart local v114    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    :goto_1674
    const-string v1, "AppValidity"

    const-string v3, "install"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v5, v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v5, v15

    invoke-direct {v2, v1, v3, v5}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    :cond_168c
    const-string v1, "accessibleDataDirectory"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16aa

    .line 851
    const-string v1, "AccessibleDataDirectory"

    const-string v3, "install"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-direct {v2, v1, v3, v6}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    :cond_16aa
    const-string v1, "hostsBlocker"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16d4

    .line 856
    const-string v1, "blockByDefault"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 857
    .local v1, "blockByDefault":Z
    const-string v3, "socksProxyHost"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "socksProxyHost":Ljava/lang/String;
    invoke-static {v4, v1, v3}, Lcom/begal/appclone/classes/HostsBlocker;->install(Landroid/content/Context;ZLjava/lang/String;)V

    .line 862
    .end local v1    # "blockByDefault":Z
    .end local v3    # "socksProxyHost":Ljava/lang/String;
    :cond_16d4
    const-string v1, "overrideSharedPreferences"

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Lcom/begal/appclone/classes/CloneSettings;->getStringMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 863
    .local v1, "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_16f0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16f0

    .line 864
    const-string v3, "OverrideSharedPreferences"

    const-string v5, "install"

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v15, v6

    invoke-direct {v2, v3, v5, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :cond_16f0
    const-string v3, "enableTvVersion"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_170b

    .line 869
    const-string v3, "EnableTvVersion"

    const-string v5, "install"

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-direct {v2, v3, v5, v15}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_170b
    .catch Ljava/lang/Throwable; {:try_start_1488 .. :try_end_170b} :catch_173e

    .line 873
    :cond_170b
    if-eqz v48, :cond_173d

    .line 875
    :try_start_170d
    const-string v3, "com.begal.appclone.classes.secondary.Test"

    invoke-static {v4, v3}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 876
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "init"
    :try_end_1719
    .catch Ljava/lang/Exception; {:try_start_170d .. :try_end_1719} :catch_1734
    .catch Ljava/lang/Throwable; {:try_start_170d .. :try_end_1719} :catch_173e

    move-object/from16 v115, v1

    const/4 v15, 0x1

    :try_start_171c
    new-array v1, v15, [Ljava/lang/Class;

    .line 876
    .end local v1    # "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v115, "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v15, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v16

    .line 877
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1730
    .catch Ljava/lang/Exception; {:try_start_171c .. :try_end_1730} :catch_1731
    .catch Ljava/lang/Throwable; {:try_start_171c .. :try_end_1730} :catch_173e

    .line 880
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_173d

    .line 878
    :catch_1731
    move-exception v0

    move-object v1, v0

    goto :goto_1738

    .line 878
    .end local v115    # "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1734
    move-exception v0

    move-object/from16 v115, v1

    move-object v1, v0

    .line 879
    .local v1, "e":Ljava/lang/Exception;
    .restart local v115    # "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1738
    :try_start_1738
    sget-object v3, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_173d
    .catch Ljava/lang/Throwable; {:try_start_1738 .. :try_end_173d} :catch_173e

    .line 885
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "appValidFrom":J
    .end local v11    # "appValidUntil":J
    .end local v13    # "randomizeBuildProps":Ljava/lang/Boolean;
    .end local v14    # "headphonesPluggedEventAction":Ljava/lang/String;
    .end local v19    # "rotationLock":Ljava/lang/String;
    .end local v20    # "multiWindowNoPause":Z
    .end local v21    # "immersiveMode":Z
    .end local v22    # "immersiveModeIgnoreNotch":Z
    .end local v23    # "floatingApp":Z
    .end local v24    # "taskerStartTaskName":Ljava/lang/String;
    .end local v25    # "makeDebuggable":Z
    .end local v26    # "privateAccounts":Z
    .end local v27    # "disableWakeLocks":Z
    .end local v28    # "disableContactsAccess":Z
    .end local v29    # "disableCalendarAccess":Z
    .end local v30    # "disableCallLogSmsAccess":Z
    .end local v31    # "deviceLockDeviceIdentifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "disableShareActions":Z
    .end local v33    # "transparentNavigationBar":Z
    .end local v34    # "preventImmersiveMode":Z
    .end local v35    # "randomAndroidId":Z
    .end local v36    # "changeAndroidId":Z
    .end local v37    # "changeAndroidIdSeed":I
    .end local v38    # "forceRotationLockUsingOverlay":Z
    .end local v39    # "hideWifiMacAddress":Z
    .end local v40    # "changeImei":Ljava/lang/String;
    .end local v41    # "hideWifiInfo":Z
    .end local v42    # "hideBluetoothMacAddress":Z
    .end local v43    # "spoofLocationLatitude":Ljava/lang/Double;
    .end local v44    # "spoofLocationLongitude":Ljava/lang/Double;
    .end local v45    # "changeImsi":Ljava/lang/String;
    .end local v46    # "hideSimOperatorInfo":Z
    .end local v47    # "taskerStopTaskName":Ljava/lang/String;
    .end local v51    # "androidVersionRelease":Ljava/lang/String;
    .end local v61    # "androidVersionBaseOs":Ljava/lang/String;
    .end local v62    # "androidVersionSdk":Ljava/lang/String;
    .end local v63    # "androidVersionIncremental":Ljava/lang/String;
    .end local v64    # "androidVersionSecurityPatch":Ljava/lang/String;
    .end local v65    # "androidVersionSdkInt":Ljava/lang/String;
    .end local v66    # "androidVersionPreviewSdkInt":Ljava/lang/String;
    .end local v67    # "androidVersionCodename":Ljava/lang/String;
    .end local v68    # "buildPropsManufacturer":Ljava/lang/String;
    .end local v69    # "buildPropsDevice":Ljava/lang/String;
    .end local v70    # "buildPropsBoard":Ljava/lang/String;
    .end local v71    # "buildPropsBrand":Ljava/lang/String;
    .end local v72    # "buildPropsHardware":Ljava/lang/String;
    .end local v73    # "buildPropsBootloader":Ljava/lang/String;
    .end local v74    # "buildPropsFingerprint":Ljava/lang/String;
    .end local v75    # "disableAllNetworking":Z
    .end local v76    # "disableBackgroundNetworking":Z
    .end local v77    # "makeWatchApp":Z
    .end local v78    # "disableActivityTransitions":Z
    .end local v79    # "disableMobileData":Z
    .end local v80    # "longPressBackAction":Ljava/lang/String;
    .end local v81    # "disableInAppSearch":Z
    .end local v82    # "buildPropsModel":Ljava/lang/String;
    .end local v83    # "fingerprintTapAction":Ljava/lang/String;
    .end local v84    # "fingerprintLongTapAction":Ljava/lang/String;
    .end local v85    # "socksProxy":Z
    .end local v86    # "buildPropsProduct":Ljava/lang/String;
    .end local v87    # "volumeUpKeyAction":Ljava/lang/String;
    .end local v88    # "googlePlayServicesWorkaround":Z
    .end local v89    # "hideGooglePlayServices":Z
    .end local v90    # "incognitoMode":Z
    .end local v91    # "volumeRockerLocker":Ljava/lang/String;
    .end local v92    # "floatingBackButton":Z
    .end local v93    # "volumeDownKeyAction":Ljava/lang/String;
    .end local v94    # "volumeUpDownKeyAction":Ljava/lang/String;
    .end local v95    # "welcomeMessageHtml":Ljava/lang/String;
    .end local v97    # "joystickPointer":Z
    .end local v98    # "statusBarColor":Ljava/lang/Integer;
    .end local v99    # "navigationBarColor":Ljava/lang/Integer;
    .end local v100    # "toolbarColor":Ljava/lang/Integer;
    .end local v101    # "allowTextSelection":Z
    .end local v102    # "penDetachedEventAction":Ljava/lang/String;
    .end local v103    # "headphonesUnpluggedEventAction":Ljava/lang/String;
    .end local v104    # "penInsertedEventAction":Ljava/lang/String;
    .end local v105    # "powerConnectedEventAction":Ljava/lang/String;
    .end local v106    # "powerDisconnectedEventAction":Ljava/lang/String;
    .end local v111    # "allowSharingImages":Z
    .end local v112    # "allowScreenshots":Z
    .end local v113    # "preventScreenshots":Z
    .end local v114    # "webViewSafeBrowsing":Ljava/lang/Boolean;
    .end local v115    # "overrideSharedPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_173d
    :goto_173d
    goto :goto_1765

    .line 883
    :catch_173e
    move-exception v0

    goto/16 :goto_1c6

    .line 883
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .restart local v49    # "originalPackageName":Ljava/lang/String;
    :catch_1741
    move-exception v0

    move-object/from16 v10, v49

    goto :goto_174a

    :catch_1745
    move-exception v0

    move-object/from16 v10, v49

    move-object/from16 v2, p0

    :goto_174a
    move-object v1, v0

    .line 883
    .end local v49    # "originalPackageName":Ljava/lang/String;
    .restart local v10    # "originalPackageName":Ljava/lang/String;
    goto :goto_1760

    .line 883
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .local v6, "originalPackageName":Ljava/lang/String;
    :catch_174c
    move-exception v0

    move-object v2, v1

    move-object v10, v6

    move-object v1, v0

    .line 883
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .restart local v10    # "originalPackageName":Ljava/lang/String;
    goto :goto_1760

    .line 883
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .end local v48    # "devDevice":Z
    .local v3, "devDevice":Z
    .restart local v6    # "originalPackageName":Ljava/lang/String;
    :catch_1751
    move-exception v0

    move-object v2, v1

    move/from16 v48, v3

    move-object v10, v6

    move-object v1, v0

    .line 883
    .end local v3    # "devDevice":Z
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .restart local v10    # "originalPackageName":Ljava/lang/String;
    .restart local v48    # "devDevice":Z
    goto :goto_1760

    .line 883
    .end local v10    # "originalPackageName":Ljava/lang/String;
    .end local v18    # "buildSerial":Ljava/lang/String;
    .end local v48    # "devDevice":Z
    .local v2, "buildSerial":Ljava/lang/String;
    .restart local v3    # "devDevice":Z
    .restart local v6    # "originalPackageName":Ljava/lang/String;
    :catch_1758
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v48, v3

    move-object v10, v6

    move-object v2, v1

    move-object v1, v0

    .line 884
    .end local v2    # "buildSerial":Ljava/lang/String;
    .end local v3    # "devDevice":Z
    .end local v6    # "originalPackageName":Ljava/lang/String;
    .local v1, "t":Ljava/lang/Throwable;
    .restart local v10    # "originalPackageName":Ljava/lang/String;
    .restart local v18    # "buildSerial":Ljava/lang/String;
    .restart local v48    # "devDevice":Z
    :goto_1760
    sget-object v3, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1765
    :try_start_1765
    const-string v1, "com.whatsapp"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1775

    const-string v1, "com.whatsapp.w4b"

    .line 891
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1780

    .line 892
    :cond_1775
    new-instance v1, Lcom/begal/appclone/classes/WhatsAppSupport;

    invoke-direct {v1}, Lcom/begal/appclone/classes/WhatsAppSupport;-><init>()V

    invoke-virtual {v1, v10}, Lcom/begal/appclone/classes/WhatsAppSupport;->init(Ljava/lang/String;)V

    .line 893
    invoke-static {v4, v10}, Ljava/io/ByteArrayOutputStrean;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 897
    :cond_1780
    const-string v1, "com.google.android.gm"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1790

    .line 898
    new-instance v1, Lcom/begal/appclone/classes/GmailSupport;

    invoke-direct {v1}, Lcom/begal/appclone/classes/GmailSupport;-><init>()V

    invoke-virtual {v1, v4}, Lcom/begal/appclone/classes/GmailSupport;->init(Landroid/content/Context;)V

    .line 902
    :cond_1790
    const-string v1, "com.paypal.android.p2pmobile"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b8

    .line 903
    const-string v1, "com.begal.appclone.classes.secondary.PayPalSupport"

    invoke-static {v4, v1}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 904
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "init"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v9

    .line 905
    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    .end local v1    # "o":Ljava/lang/Object;
    :cond_17b8
    const-string v1, "com.yahoo.mobile.client.android.flickr"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17ca

    .line 910
    const-string v1, "FlickrSupport"

    const-string v3, "install"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v2, v1, v3, v5}, Lcom/begal/appclone/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 914
    :cond_17ca
    const-string v1, "com.fiverr.fiverr"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17da

    .line 915
    new-instance v1, Lcom/begal/appclone/classes/DefaultProvider$1;

    invoke-direct {v1, v2}, Lcom/begal/appclone/classes/DefaultProvider$1;-><init>(Lcom/begal/appclone/classes/DefaultProvider;)V

    .line 931
    invoke-virtual {v1}, Lcom/begal/appclone/classes/DefaultProvider$1;->start()V

    .line 934
    :cond_17da
    sget-object v1, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "onCreate; done"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e1
    .catch Ljava/lang/Throwable; {:try_start_1765 .. :try_end_17e1} :catch_17e2

    .line 938
    goto :goto_17e9

    .line 936
    :catch_17e2
    move-exception v0

    move-object v1, v0

    .line 937
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_17e9
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->closeAndroidPieApiCompatibilityDialog()V

    .line 942
    const/4 v1, 0x1

    return v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 982
    if-eqz p1, :cond_28

    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets/.notificationSoundFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 983
    invoke-virtual {p0}, Lcom/begal/appclone/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ".notificationSoundFile"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object v0

    .line 985
    :catch_21
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_29

    .line 987
    :cond_28
    nop

    .line 989
    :goto_29
    invoke-super {p0, p1, p2}, Lcom/begal/appclone/classes/AbstractContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 995
    sget-object v0, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile; uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {p0}, Lcom/begal/appclone/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 998
    .local v0, "context":Landroid/content/Context;
    const-string v1, "/Image.png"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_56

    const-string v1, "r"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 999
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1000
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "share_image.png"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1001
    .local v3, "file":Ljava/io/File;
    sget-object v4, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile; returning share image file descriptor; file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-static {v3, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1005
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :cond_56
    invoke-static {v0}, Lcom/begal/appclone/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1007
    :try_start_5c
    const-string v1, "/cloneSettings"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1008
    invoke-static {v0}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/begal/appclone/classes/CloneSettings;->getCloneSettingsFile()Ljava/io/File;

    move-result-object v1

    .line 1009
    .local v1, "cloneSettingsFile":Ljava/io/File;
    const-string v3, "r"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 1010
    sget-object v3, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v4, "openFile; returning clone settings file MODE_READ_ONLY file descriptor..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1013
    :cond_84
    const-string v2, "w"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1014
    sget-object v2, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "openFile; returning clone settings file MODE_WRITE_ONLY file descriptor..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/high16 v2, 0x2c000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_99} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_99} :catch_9b

    return-object v2

    .line 1024
    .end local v1    # "cloneSettingsFile":Ljava/io/File;
    :cond_9a
    goto :goto_a4

    .line 1022
    :catch_9b
    move-exception v1

    .line 1023
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1023
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_a4

    .line 1020
    :catch_a2
    move-exception v1

    .line 1021
    .local v1, "e":Ljava/io/FileNotFoundException;
    throw v1

    .line 1027
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_a4
    :goto_a4
    invoke-super {p0, p1, p2}, Lcom/begal/appclone/classes/AbstractContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method
