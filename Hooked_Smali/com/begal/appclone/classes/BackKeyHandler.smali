.class public abstract Lcom/begal/appclone/classes/BackKeyHandler;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "BackKeyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/begal/appclone/classes/BackKeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivities:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/BackKeyHandler;

    .line 22
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/BackKeyHandler;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/BackKeyHandler;

    .line 22
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivities:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/BackKeyHandler;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/BackKeyHandler;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/BackKeyHandler;->removeToken(Ljava/lang/Object;)V

    return-void
.end method

.method private static getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 135
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mToken"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 138
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_11
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private removeToken(Ljava/lang/Object;)V
    .registers 5
    .param p1, "token"    # Ljava/lang/Object;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeToken; mActivityTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method


# virtual methods
.method protected abstract handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 102
    .local v0, "flags":I
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    .line 103
    sget-object v1, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated; new task"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    :cond_19
    invoke-static {p1}, Lcom/begal/appclone/classes/BackKeyHandler;->getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "token":Ljava/lang/Object;
    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 109
    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivities:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2f
    sget-object v2, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated; activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mActivityTokens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/begal/appclone/classes/BackKeyHandler;->mActivityTokens:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 117
    invoke-super {p0, p1}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 119
    invoke-static {p1}, Lcom/begal/appclone/classes/BackKeyHandler;->getActivityToken(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/BackKeyHandler;->removeToken(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onCreate()Z
    .registers 4

    .line 32
    invoke-super {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;->onCreate()Z

    move-result v0

    .line 33
    .local v0, "res":Z
    if-eqz v0, :cond_1c

    .line 36
    :try_start_6
    new-instance v1, Lcom/begal/appclone/classes/BackKeyHandler$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/BackKeyHandler$1;-><init>(Lcom/begal/appclone/classes/BackKeyHandler;)V

    .line 84
    invoke-virtual {v1}, Lcom/begal/appclone/classes/BackKeyHandler$1;->install()V

    .line 86
    sget-object v1, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    const-string v2, "onCreate; IActivityManagerHook installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 90
    goto :goto_1c

    .line 88
    :catch_16
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/BackKeyHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    :goto_1c
    return v0
.end method
