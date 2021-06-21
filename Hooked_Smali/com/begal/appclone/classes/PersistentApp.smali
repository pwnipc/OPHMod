.class public Lcom/begal/appclone/classes/PersistentApp;
.super Ljava/lang/Object;
.source "PersistentApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPersistentApp:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/begal/appclone/classes/PersistentApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/PersistentApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "persistentApp"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/PersistentApp;->mPersistentApp:Z

    .line 21
    sget-object v0, Lcom/begal/appclone/classes/PersistentApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistentApp; mPersistentApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/PersistentApp;->mPersistentApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    iget-boolean v0, p0, Lcom/begal/appclone/classes/PersistentApp;->mPersistentApp:Z

    if-eqz v0, :cond_15

    .line 28
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/begal/appclone/classes/PersistentAppService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_f

    .line 31
    goto :goto_15

    .line 29
    :catch_f
    move-exception v0

    .line 30
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/PersistentApp;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_15
    :goto_15
    return-void
.end method
