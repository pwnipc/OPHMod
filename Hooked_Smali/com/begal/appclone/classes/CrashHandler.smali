.class public Lcom/begal/appclone/classes/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# static fields
.field public static final CRASH_HANDLER_NOTIFICATION_ID:I = 0x60a40a2e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppBundle:Z

.field private mContext:Landroid/content/Context;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreCrashes:Z

.field private mIgnoreCrashesShowCrashMessages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/begal/appclone/classes/CrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/begal/appclone/classes/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/CrashHandler$1;-><init>(Lcom/begal/appclone/classes/CrashHandler;)V

    iput-object v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 91
    const-string v0, "ignoreCrashes"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashes:Z

    .line 92
    const-string v0, "ignoreCrashesShowCrashMessages"

    .line 93
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    .line 94
    sget-object v0, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrashHandler; mIgnoreCrashes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIgnoreCrashesShowCrashMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/CrashHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 19
    iget-boolean v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    return v0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/CrashHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 19
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/CrashHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 19
    iget-boolean v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/CrashHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 19
    iget-boolean v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mAppBundle:Z

    return v0
.end method

.method static synthetic access$500(Lcom/begal/appclone/classes/CrashHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/CrashHandler;

    .line 19
    invoke-direct {p0}, Lcom/begal/appclone/classes/CrashHandler;->installHandler()V

    return-void
.end method

.method private installHandler()V
    .registers 3

    .line 123
    sget-object v0, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    const-string v1, "installHandler; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_7
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    .line 129
    goto :goto_13

    .line 127
    :catch_d
    move-exception v0

    .line 128
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_13
    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/begal/appclone/classes/CrashHandler;->mContext:Landroid/content/Context;

    .line 104
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 106
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 107
    .local v1, "metaData":Landroid/os/Bundle;
    const-string v2, "com.begal.appclone.appBundle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/begal/appclone/classes/CrashHandler;->mAppBundle:Z

    .line 108
    sget-object v2, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install; mAppBundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/begal/appclone/classes/CrashHandler;->mAppBundle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    .line 111
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    goto :goto_39

    .line 109
    :catch_33
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/CrashHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    invoke-direct {p0}, Lcom/begal/appclone/classes/CrashHandler;->installHandler()V

    .line 114
    iget-object v0, p0, Lcom/begal/appclone/classes/CrashHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/CrashHandler$2;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/CrashHandler$2;-><init>(Lcom/begal/appclone/classes/CrashHandler;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method
