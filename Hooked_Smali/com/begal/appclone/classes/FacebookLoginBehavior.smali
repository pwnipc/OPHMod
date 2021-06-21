.class public Lcom/begal/appclone/classes/FacebookLoginBehavior;
.super Ljava/lang/Object;
.source "FacebookLoginBehavior.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFacebookLoginBehavior:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/begal/appclone/classes/FacebookLoginBehavior;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "facebookLoginBehavior"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->mFacebookLoginBehavior:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacebookLoginBehavior; mFacebookLoginBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->mFacebookLoginBehavior:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 58
    .end local v0    # "f":Ljava/lang/reflect/Field;
    goto :goto_11

    .line 57
    :catch_10
    move-exception v0

    .line 59
    :goto_11
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->mFacebookLoginBehavior:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 30
    :try_start_8
    const-string v0, "com.facebook.login.LoginBehavior"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "objects":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_6f

    aget-object v5, v1, v4

    .line 33
    .local v5, "object":Ljava/lang/Object;
    const-string v6, "WEB_ONLY"

    iget-object v7, p0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->mFacebookLoginBehavior:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    const-string v6, "WEB_ONLY_ALT"

    iget-object v7, p0, Lcom/begal/appclone/classes/FacebookLoginBehavior;->mFacebookLoginBehavior:Ljava/lang/String;

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 35
    :cond_2d
    const-string v6, "allowsGetTokenAuth"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v6, "allowsKatanaAuth"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v6, "allowsWebViewAuth"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v6, "allowsDeviceAuth"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v6, "allowsCustomTabAuth"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v6, "allowsFacebookLiteAuth"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/begal/appclone/classes/FacebookLoginBehavior;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_64} :catch_6e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_64} :catch_67

    .line 32
    .end local v5    # "object":Ljava/lang/Object;
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "objects":[Ljava/lang/Object;
    :catch_67
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/FacebookLoginBehavior;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_70

    .line 43
    :catch_6e
    move-exception v0

    .line 47
    :cond_6f
    nop

    .line 49
    :cond_70
    :goto_70
    return-void
.end method
