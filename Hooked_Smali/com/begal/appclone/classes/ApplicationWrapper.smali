.class public Lcom/begal/appclone/classes/ApplicationWrapper;
.super Landroid/app/Application;
.source "ApplicationWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseApp:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/begal/appclone/classes/ApplicationWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/ApplicationWrapper;)Landroid/app/Application;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/ApplicationWrapper;

    .line 25
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .registers 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 261
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v1, "com.begal.appclone.applicationClassName"

    const-string v2, "android.app.Application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "applicationClassName":Ljava/lang/String;
    sget-object v2, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApplication; applicationClassName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 266
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    return-object v3
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 280
    sget-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged; newConfig.locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    return-void
.end method

.method public onCreate()V
    .registers 12

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/begal/appclone/classes/ApplicationWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/begal/appclone/classes/ApplicationWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 43
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 44
    .local v1, "metaData":Landroid/os/Bundle;
    const-string v2, "com.begal.appclone.sandboxExternalStorage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 46
    .local v2, "sandboxExternalStorage":Z
    sget-object v3, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate; sandboxExternalStorage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v3, 0x1

    if-eqz v2, :cond_4d

    .line 49
    const-string v4, "com.begal.appclone.classes.secondary.SandboxExternalStorage"

    invoke-static {p0, v4}, Lcom/begal/appclone/classes/DefaultProvider;->ni(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "init"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v4    # "o":Ljava/lang/Object;
    :cond_4d
    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/ApplicationWrapper;->createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    .line 55
    const-class v4, Landroid/content/ContextWrapper;

    const-string v5, "mBase"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 56
    .local v4, "baseField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/begal/appclone/classes/ApplicationWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 61
    .local v5, "baseContext":Landroid/content/Context;
    new-instance v6, Lcom/begal/appclone/classes/ApplicationWrapper$1;

    invoke-direct {v6, p0, v5}, Lcom/begal/appclone/classes/ApplicationWrapper$1;-><init>(Lcom/begal/appclone/classes/ApplicationWrapper;Landroid/content/Context;)V

    move-object v5, v6

    .line 67
    iget-object v6, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 75
    const-class v6, Landroid/app/Application;

    const-string v7, "mComponentCallbacks"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 76
    .local v6, "componentCallbacksField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    new-instance v7, Lcom/begal/appclone/classes/ApplicationWrapper$2;

    invoke-direct {v7, p0, v6}, Lcom/begal/appclone/classes/ApplicationWrapper$2;-><init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v7}, Lcom/begal/appclone/classes/ApplicationWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 113
    const-class v7, Landroid/app/Application;

    const-string v8, "mActivityLifecycleCallbacks"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 114
    .local v7, "activityLifecycleCallbacksField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    move-object v8, v5

    .line 117
    .local v8, "finalBaseContext":Landroid/content/Context;
    new-instance v9, Lcom/begal/appclone/classes/ApplicationWrapper$3;

    invoke-direct {v9, p0, v7, v4, v8}, Lcom/begal/appclone/classes/ApplicationWrapper$3;-><init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Lcom/begal/appclone/classes/ApplicationWrapper;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 227
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v9, v10, :cond_b0

    .line 229
    const-class v9, Landroid/app/Application;

    const-string v10, "mAssistCallbacks"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 230
    .local v9, "assistCallbacksField":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    new-instance v3, Lcom/begal/appclone/classes/ApplicationWrapper$4;

    invoke-direct {v3, p0, v9}, Lcom/begal/appclone/classes/ApplicationWrapper$4;-><init>(Lcom/begal/appclone/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v3}, Lcom/begal/appclone/classes/ApplicationWrapper;->registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V

    .line 251
    .end local v9    # "assistCallbacksField":Ljava/lang/reflect/Field;
    :cond_b0
    iget-object v3, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->onCreate()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b5} :catch_b7

    .line 255
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "sandboxExternalStorage":Z
    .end local v4    # "baseField":Ljava/lang/reflect/Field;
    .end local v5    # "baseContext":Landroid/content/Context;
    .end local v6    # "componentCallbacksField":Ljava/lang/reflect/Field;
    .end local v7    # "activityLifecycleCallbacksField":Ljava/lang/reflect/Field;
    .end local v8    # "finalBaseContext":Landroid/content/Context;
    nop

    .line 256
    return-void

    .line 253
    :catch_b7
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLowMemory()V
    .registers 3

    .line 288
    sget-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onLowMemory; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 291
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    .line 292
    return-void
.end method

.method public onTerminate()V
    .registers 3

    .line 271
    sget-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 274
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 275
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5
    .param p1, "level"    # I

    .line 296
    sget-object v0, Lcom/begal/appclone/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory; level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 299
    iget-object v0, p0, Lcom/begal/appclone/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 300
    return-void
.end method
