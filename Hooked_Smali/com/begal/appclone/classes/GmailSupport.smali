.class public Lcom/begal/appclone/classes/GmailSupport;
.super Lcom/begal/appclone/classes/AbstractActivityContentProvider;
.source "GmailSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/begal/appclone/classes/GmailSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/begal/appclone/classes/AbstractActivityContentProvider;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/GmailSupport;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/GmailSupport;

    .line 31
    invoke-direct {p0}, Lcom/begal/appclone/classes/GmailSupport;->checkForDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/GmailSupport;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/GmailSupport;

    .line 31
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized checkForDialog()V
    .registers 12

    monitor-enter p0

    .line 109
    :try_start_1
    invoke-static {}, Lcom/begal/appclone/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewParent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_91
    .catchall {:try_start_1 .. :try_end_15} :catchall_8f

    .line 112
    .local v2, "viewRoot":Landroid/view/ViewParent;
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mView"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 113
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 115
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_85

    .line 116
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 117
    .local v5, "messageView":Landroid/widget/TextView;
    if-eqz v5, :cond_85

    .line 118
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 119
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_85

    .line 120
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_85

    .line 123
    iget-object v9, p0, Lcom/begal/appclone/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_64

    iget-object v9, p0, Lcom/begal/appclone/classes/GmailSupport;->mAppName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_85

    const-string v9, "Google Play"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 124
    :cond_64
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    sget-object v6, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkForDialog; view hidden; viewRoot: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", view: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_85} :catch_86
    .catchall {:try_start_15 .. :try_end_85} :catchall_8f

    .line 133
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "messageView":Landroid/widget/TextView;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v8    # "s":Ljava/lang/String;
    :cond_85
    goto :goto_8c

    .line 131
    :catch_86
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    :try_start_87
    sget-object v4, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_91
    .catchall {:try_start_87 .. :try_end_8c} :catchall_8f

    .line 134
    .end local v2    # "viewRoot":Landroid/view/ViewParent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_8c
    goto/16 :goto_9

    .line 137
    .end local v0    # "viewRoots":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewParent;>;"
    :cond_8e
    goto :goto_97

    .line 108
    :catchall_8f
    move-exception v0

    goto :goto_99

    .line 135
    :catch_91
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_92
    sget-object v1, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_8f

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_97
    monitor-exit p0

    return-void

    .line 108
    :goto_99
    monitor-exit p0

    throw v0
.end method

.method private installContextHook(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 254
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installContextHook; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_16
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 259
    .local v0, "baseField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_46

    .line 260
    move-object v1, p1

    .line 261
    .local v1, "context":Landroid/content/Context;
    .local p1, "oldContext":Landroid/content/Context;
    :goto_23
    :try_start_23
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_30

    .line 262
    move-object p1, v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v1, v2

    goto :goto_23

    .line 266
    :cond_30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "myPackageName":Ljava/lang/String;
    new-instance v3, Lcom/begal/appclone/classes/GmailSupport$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/begal/appclone/classes/GmailSupport$3;-><init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    .local v3, "contextWrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    sget-object v4, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v5, "installed; installed context wrapper"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_44

    .line 312
    .end local v0    # "baseField":Ljava/lang/reflect/Field;
    .end local v2    # "myPackageName":Ljava/lang/String;
    .end local v3    # "contextWrapper":Landroid/content/ContextWrapper;
    .end local p1    # "oldContext":Landroid/content/Context;
    goto :goto_4e

    .line 310
    :catch_44
    move-exception p1

    goto :goto_49

    .line 310
    .end local v1    # "context":Landroid/content/Context;
    .local p1, "context":Landroid/content/Context;
    :catch_46
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 311
    .restart local v1    # "context":Landroid/content/Context;
    .local p1, "e":Ljava/lang/Exception;
    :goto_49
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method

.method private installMailIntentReceiverHook(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v1, "installMailIntentReceiverHook; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".MailIntentReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 321
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 322
    const-class v1, Lcom/begal/appclone/classes/GmailSupport;

    invoke-static {v1}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 323
    const-string v1, "onReceive"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/Intent;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 324
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v3, Lcom/begal/appclone/classes/GmailSupport;

    const-string v4, "onReceiveHook"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v5

    const-class v5, Landroid/content/Context;

    aput-object v5, v7, v6

    const-class v5, Landroid/content/Intent;

    aput-object v5, v7, v2

    .line 325
    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 323
    invoke-static {v1, v2}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    .line 326
    sget-object v1, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v2, "installMailIntentReceiverHook; onReceiveHook installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_60} :catch_61

    .line 329
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_67

    .line 327
    :catch_61
    move-exception v0

    .line 328
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_67
    return-void
.end method

.method private installPackageManagerHook(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackageManagerHook; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_16
    new-instance v0, Lcom/begal/appclone/classes/GmailSupport$2;

    invoke-direct {v0, p0, p1}, Lcom/begal/appclone/classes/GmailSupport$2;-><init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/begal/appclone/classes/GmailSupport$2;->install(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f

    .line 181
    goto :goto_25

    .line 179
    :catch_1f
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method public static onReceiveHook(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 333
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v1, "onReceiveHook; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .registers 2

    .line 98
    const/16 v0, 0x1f4

    return v0
.end method

.method init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/begal/appclone/classes/GmailSupport;->onCreate()Z

    .line 44
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/GmailSupport;->installPackageManagerHook(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/GmailSupport;->installMailIntentReceiverHook(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mAppName:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init; mAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/GmailSupport;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_google_play_services_unknown_issue"

    const-string v2, "string"

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/begal/appclone/classes/GmailSupport;->mAppName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init; mErrorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_65} :catch_66

    .line 57
    goto :goto_6c

    .line 55
    :catch_66
    move-exception v0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_6c
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    .local v0, "window":Landroid/view/Window;
    new-instance v1, Lcom/begal/appclone/classes/GmailSupport$1;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/begal/appclone/classes/GmailSupport$1;-><init>(Lcom/begal/appclone/classes/GmailSupport;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/begal/appclone/classes/GmailSupport;->installContextHook(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 103
    invoke-direct {p0}, Lcom/begal/appclone/classes/GmailSupport;->checkForDialog()V

    .line 104
    return-void
.end method
