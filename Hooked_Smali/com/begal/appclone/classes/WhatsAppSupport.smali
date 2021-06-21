.class public Lcom/begal/appclone/classes/WhatsAppSupport;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "WhatsAppSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOriginalPackageName:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/begal/appclone/classes/WhatsAppSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/WhatsAppSupport;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/WhatsAppSupport;

    .line 18
    iget-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mOriginalPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/WhatsAppSupport;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/WhatsAppSupport;

    .line 18
    iget-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/WhatsAppSupport;
    .param p1, "x1"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/WhatsAppSupport;->showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 18
    sget-object v0, Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private install(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/begal/appclone/classes/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    .line 48
    :cond_24
    :try_start_24
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    .local v0, "baseField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_51

    .line 50
    move-object v1, p1

    .line 51
    .local v1, "context":Landroid/content/Context;
    .local p1, "oldContext":Landroid/content/Context;
    :goto_31
    :try_start_31
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_3e

    .line 52
    move-object p1, v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v1, v2

    goto :goto_31

    .line 56
    :cond_3e
    move-object v2, v1

    .line 57
    .local v2, "finalContext":Landroid/content/Context;
    new-instance v3, Lcom/begal/appclone/classes/WhatsAppSupport$1;

    invoke-direct {v3, p0, v2, v2}, Lcom/begal/appclone/classes/WhatsAppSupport$1;-><init>(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;Landroid/content/Context;)V

    .line 82
    .local v3, "contextWrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    sget-object v4, Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    const-string v5, "installed; installed context wrapper"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4e} :catch_4f

    .line 87
    .end local v0    # "baseField":Ljava/lang/reflect/Field;
    .end local v2    # "finalContext":Landroid/content/Context;
    .end local v3    # "contextWrapper":Landroid/content/ContextWrapper;
    .end local p1    # "oldContext":Landroid/content/Context;
    goto :goto_59

    .line 85
    :catch_4f
    move-exception p1

    goto :goto_54

    .line 85
    .end local v1    # "context":Landroid/content/Context;
    .local p1, "context":Landroid/content/Context;
    :catch_51
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 86
    .restart local v1    # "context":Landroid/content/Context;
    .local p1, "e":Ljava/lang/Exception;
    :goto_54
    sget-object v0, Lcom/begal/appclone/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method private showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/WhatsAppSupport$2;

    invoke-direct {v1, p0, p1}, Lcom/begal/appclone/classes/WhatsAppSupport$2;-><init>(Lcom/begal/appclone/classes/WhatsAppSupport;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)V
    .registers 2
    .param p1, "originalPackageName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/begal/appclone/classes/WhatsAppSupport;->mOriginalPackageName:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/begal/appclone/classes/WhatsAppSupport;->onCreate()Z

    .line 31
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 35
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/WhatsAppSupport;->install(Landroid/content/Context;)V

    .line 36
    return-void
.end method
