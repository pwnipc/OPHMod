.class public Lcom/begal/appclone/classes/ToastFilter;
.super Ljava/lang/Object;
.source "ToastFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBlockAllToasts:Z

.field private final mToastFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/begal/appclone/classes/ToastFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "blockAllToasts"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/ToastFilter;->mBlockAllToasts:Z

    .line 34
    const-string v0, "toastFilter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/ToastFilter;->mToastFilter:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToastFilter; mBlockAllToasts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/ToastFilter;->mBlockAllToasts:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mToastFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/ToastFilter;->mToastFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/begal/appclone/classes/ToastFilter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/ToastFilter;

    .line 24
    iget-boolean v0, p0, Lcom/begal/appclone/classes/ToastFilter;->mBlockAllToasts:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    const-string v1, "init; "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-boolean v0, p0, Lcom/begal/appclone/classes/ToastFilter;->mBlockAllToasts:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/begal/appclone/classes/ToastFilter;->mToastFilter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    return-void

    .line 47
    :cond_14
    :try_start_14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v0, "toastFilterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/begal/appclone/classes/ToastFilter;->mToastFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4b

    .line 49
    iget-object v1, p0, Lcom/begal/appclone/classes/ToastFilter;->mToastFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_4b

    aget-object v5, v1, v4

    .line 50
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 52
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v5    # "s":Ljava/lang/String;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 58
    :cond_4b
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 60
    const-class v1, Landroid/widget/Toast;

    const-string v3, "getService"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 61
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v4, Landroid/widget/Toast;

    const-string v6, "sService"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 65
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "originalService":Ljava/lang/Object;
    new-instance v7, Lcom/begal/appclone/classes/ToastFilter$1;

    invoke-direct {v7, p0, v0, v6}, Lcom/begal/appclone/classes/ToastFilter$1;-><init>(Lcom/begal/appclone/classes/ToastFilter;Ljava/util/Set;Ljava/lang/Object;)V

    .line 114
    .local v7, "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    const-string v8, "android.app.INotificationManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 115
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v8, v3, v2

    invoke-static {v9, v3, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "proxy":Ljava/lang/Object;
    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    sget-object v3, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init; installed proxy; proxy: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_aa} :catch_ab

    .line 122
    .end local v0    # "toastFilterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "proxy":Ljava/lang/Object;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "originalService":Ljava/lang/Object;
    .end local v7    # "invocationHandler":Ljava/lang/reflect/InvocationHandler;
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_b1

    .line 120
    :catch_ab
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/ToastFilter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method
