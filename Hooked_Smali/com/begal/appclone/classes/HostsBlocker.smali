.class public Lcom/begal/appclone/classes/HostsBlocker;
.super Ljava/lang/Object;
.source "HostsBlocker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak",
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/begal/appclone/classes/HostsBlocker$HostsBlockerActivity;,
        Lcom/begal/appclone/classes/HostsBlocker$CancelReceiver;,
        Lcom/begal/appclone/classes/HostsBlocker$IgnoreReceiver;,
        Lcom/begal/appclone/classes/HostsBlocker$BlockReceiver;,
        Lcom/begal/appclone/classes/HostsBlocker$AllowReceiver;,
        Lcom/begal/appclone/classes/HostsBlocker$ContentReceiver;,
        Lcom/begal/appclone/classes/HostsBlocker$HostReceiver;
    }
.end annotation


# static fields
.field private static final PREF_KEY_PREFIX:Ljava/lang/String; = "com.begal.appclone.host_"

.field private static final TAG:Ljava/lang/String;

.field private static sAllowLabel:Ljava/lang/String;

.field private static sBlockByDefault:Z

.field private static sBlockLabel:Ljava/lang/String;

.field private static sContentText:Ljava/lang/String;

.field private static sContentTitle:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHostBlockedMessage:Ljava/lang/String;

.field private static final sHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sHostsBlockerTitle:Ljava/lang/String;

.field private static sHostsFileHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreLabel:Ljava/lang/String;

.field private static sNotificationManager:Landroid/app/NotificationManager;

.field private static final sNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static sSocksProxyHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/begal/appclone/classes/HostsBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHostBlockedMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Lcom/begal/appclone/classes/HostsBlocker;->whois(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->addAllowedHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->removeNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->addIgnoredHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->splitHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHostsBlockerTitle:Ljava/lang/String;

    return-object v0
.end method

.method private static addAllowedHost(Ljava/lang/String;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;

    .line 320
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAllowedHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 324
    :try_start_23
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.begal.appclone.host_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private static addBlockedHost(Ljava/lang/String;)V
    .registers 6
    .param p0, "host"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBlockedHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 333
    :try_start_23
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.begal.appclone.host_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private static addIgnoredHost(Ljava/lang/String;)V
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .line 338
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIgnoredHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method

.method private static checkHost(Ljava/lang/String;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 171
    if-eqz p0, :cond_d6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d6

    .line 173
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sSocksProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sSocksProxyHost:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    return-void

    .line 187
    :cond_15
    const-string v0, "127.0.0.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string v0, "localhost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    const-string v0, "192.168."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_d5

    .line 191
    :cond_2f
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->splitHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 194
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 195
    .local v1, "b":Ljava/lang/Boolean;
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_7a

    .line 198
    :cond_5c
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkHost; blocked; host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v4, "Blocked"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_7a
    :goto_7a
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkHost; ignored/allowed; host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_91
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 206
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/begal/appclone/classes/HostsBlocker$1;

    invoke-direct {v3, p0}, Lcom/begal/appclone/classes/HostsBlocker$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkHost; blocked; host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v3, "Blocked"

    invoke-direct {v1, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    .end local v2    # "key":Ljava/lang/String;
    :cond_c4
    goto/16 :goto_37

    .line 220
    :cond_c6
    invoke-static {p0}, Lcom/begal/appclone/classes/HostsBlocker;->notifyHost(Ljava/lang/String;)V

    .line 222
    sget-boolean v1, Lcom/begal/appclone/classes/HostsBlocker;->sBlockByDefault:Z

    if-eqz v1, :cond_d6

    .line 223
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Blocked by default"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d5
    :goto_d5
    return-void

    .line 226
    :cond_d6
    return-void
.end method

.method private static checkHost(Ljava/net/InetAddress;)V
    .registers 2
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 162
    if-nez p0, :cond_3

    .line 163
    return-void

    .line 165
    :cond_3
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/begal/appclone/classes/HostsBlocker;->checkHost(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static install(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockByDefault"    # Z
    .param p2, "socksProxyHost"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 82
    sput-object p0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    .line 83
    sput-boolean p1, Lcom/begal/appclone/classes/HostsBlocker;->sBlockByDefault:Z

    .line 84
    sput-object p2, Lcom/begal/appclone/classes/HostsBlocker;->sSocksProxyHost:Ljava/lang/String;

    .line 86
    const-string v0, "notification"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    .line 89
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    .line 91
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    monitor-enter v0

    .line 94
    const/4 v1, 0x1

    :try_start_1a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, ".blockedHostsFile"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_2e} :catch_88
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_81
    .catchall {:try_start_1a .. :try_end_2e} :catchall_7e

    .line 97
    .local v2, "r":Ljava/io/BufferedReader;
    :try_start_2e
    const-string v3, "(?:0.0.0.0|127.0.0.1)\\s+(\\S*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 99
    .local v3, "p":Ljava/util/regex/Pattern;
    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 99
    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_71

    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    .end local v5    # "line":Ljava/lang/String;
    .local v4, "line":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 103
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 104
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "host":Ljava/lang/String;
    sget-object v7, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "install; host: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v7, Lcom/begal/appclone/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catchall {:try_start_2e .. :try_end_70} :catchall_77

    .line 108
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "host":Ljava/lang/String;
    :cond_70
    goto :goto_34

    .line 112
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "line":Ljava/lang/String;
    :cond_71
    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_74} :catch_88
    .catchall {:try_start_71 .. :try_end_74} :catchall_7e

    .line 114
    goto :goto_89

    .line 113
    :catch_75
    move-exception v3

    .line 115
    goto :goto_89

    .line 111
    :catchall_77
    move-exception v3

    .line 112
    :try_start_78
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7b} :catch_88
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7e

    .line 114
    goto :goto_7d

    .line 113
    :catch_7c
    move-exception v4

    .line 115
    :goto_7d
    :try_start_7d
    throw v3
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_7e} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7e} :catch_81
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 128
    .end local v2    # "r":Ljava/io/BufferedReader;
    :catchall_7e
    move-exception v1

    goto/16 :goto_1a7

    .line 117
    :catch_81
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    :try_start_82
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_8a

    .line 116
    :catch_88
    move-exception v2

    .line 119
    :goto_89
    nop

    .line 121
    :goto_8a
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_c8

    const-string v5, "com.begal.appclone.host_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 123
    sget-object v5, Lcom/begal/appclone/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 124
    .local v4, "b":Z
    sget-object v5, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const-string v6, "com.begal.appclone.host_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "b":Z
    :cond_c8
    goto :goto_98

    .line 127
    :cond_c9
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "install; sHosts: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/begal/appclone/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_82 .. :try_end_e2} :catchall_7e

    .line 131
    const/4 v0, 0x0

    :try_start_e3
    invoke-static {v0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V

    .line 132
    const-string v0, "java.net.PlainSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 134
    const-class v2, Lcom/begal/appclone/classes/HostsBlocker;

    invoke-static {v2}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 135
    const-string v2, "socketConnect"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/net/InetAddress;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 136
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v5, Lcom/begal/appclone/classes/HostsBlocker;

    const-string v6, "socketConnectHook"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v4

    const-class v4, Ljava/net/InetAddress;

    aput-object v4, v8, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v3

    .line 137
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    invoke-static {v2, v1}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    .line 138
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    const-string v2, "install; socketConnectHook installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_12f} :catch_130

    .line 141
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_136

    .line 139
    :catch_130
    move-exception v0

    .line 140
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_136
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "hosts_blocker_title"

    const-string v2, "Hosts blocker"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHostsBlockerTitle:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "hosts_blocker_app_is_accessing_title"

    const-string v2, "%s is accessing"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContentTitle:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "hosts_blocker_touch_to_block_title"

    const-string v2, "Touch to block %s"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContentText:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "label_allow"

    const-string v2, "Allow"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "label_block"

    const-string v2, "Block"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "label_ignore"

    const-string v2, "Ignore"

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sIgnoreLabel:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-string v1, "hosts_blocker_host_blocked_message"

    const-string v2, "Host %s blocked."

    invoke-static {v0, v1, v2}, Lcom/begal/appclone/classes/Utils;->getAppClonerResourceText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sHostBlockedMessage:Ljava/lang/String;

    .line 150
    return-void

    .line 128
    :goto_1a7
    :try_start_1a7
    monitor-exit v0
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_7e

    throw v1
.end method

.method private static notifyHost(Ljava/lang/String;)V
    .registers 15
    .param p0, "host"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 263
    .local v0, "notificationId":I
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    monitor-enter v1

    .line 264
    :try_start_7
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 265
    monitor-exit v1

    return-void

    .line 267
    :cond_15
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_10c

    .line 270
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHost; host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 274
    .local v1, "requestCode":I
    sget-object v2, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v5, Lcom/begal/appclone/classes/HostsBlocker$ContentReceiver;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 277
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Landroid/content/Intent;

    sget-object v7, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v8, Lcom/begal/appclone/classes/HostsBlocker$AllowReceiver;

    invoke-direct {v5, p0, v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v4, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 280
    .local v3, "allowIntent":Landroid/app/PendingIntent;
    sget-object v4, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v5, v1, 0x2

    new-instance v8, Landroid/content/Intent;

    sget-object v9, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v10, Lcom/begal/appclone/classes/HostsBlocker$BlockReceiver;

    invoke-direct {v8, p0, v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v5, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 283
    .local v4, "blockIntent":Landroid/app/PendingIntent;
    sget-object v5, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v8, v1, 0x3

    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v11, Lcom/begal/appclone/classes/HostsBlocker$IgnoreReceiver;

    invoke-direct {v9, p0, v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v5, v8, v9, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 286
    .local v5, "ignoreIntent":Landroid/app/PendingIntent;
    sget-object v8, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v9, v1, 0x4

    new-instance v10, Landroid/content/Intent;

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v13, Lcom/begal/appclone/classes/HostsBlocker$CancelReceiver;

    invoke-direct {v10, v11, v6, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-static {v8, v9, v10, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 289
    .local v7, "cancelIntent":Landroid/app/PendingIntent;
    sget-object v8, Lcom/begal/appclone/classes/HostsBlocker;->sContentTitle:Ljava/lang/String;

    const-string v9, "%s"

    sget-object v10, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "contentTitle":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$Builder;

    sget-object v10, Lcom/begal/appclone/classes/HostsBlocker;->sContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    .line 291
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 292
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 293
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 294
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 295
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 297
    .local v9, "builder":Landroid/app/Notification$Builder;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_de

    .line 298
    invoke-virtual {v9, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    sget-object v11, Lcom/begal/appclone/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    .line 299
    invoke-virtual {v10, v1, v11, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    sget-object v11, Lcom/begal/appclone/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    .line 300
    invoke-virtual {v10, v1, v11, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    sget-object v11, Lcom/begal/appclone/classes/HostsBlocker;->sIgnoreLabel:Ljava/lang/String;

    .line 301
    invoke-virtual {v10, v1, v11, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_ed

    .line 303
    :cond_de
    sget-object v10, Lcom/begal/appclone/classes/HostsBlocker;->sContentText:Ljava/lang/String;

    const-string v11, "%s"

    invoke-virtual {v10, v11, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "contentText":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 307
    .end local v10    # "contentText":Ljava/lang/String;
    :goto_ed
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_f7

    .line 308
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 311
    :cond_f7
    invoke-static {v9}, Lcom/begal/appclone/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 313
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 314
    .local v10, "notification":Landroid/app/Notification;
    iput-object v6, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 315
    iget v6, v10, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v10, Landroid/app/Notification;->defaults:I

    .line 316
    sget-object v6, Lcom/begal/appclone/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v0, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 317
    return-void

    .line 268
    .end local v1    # "requestCode":I
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "allowIntent":Landroid/app/PendingIntent;
    .end local v4    # "blockIntent":Landroid/app/PendingIntent;
    .end local v5    # "ignoreIntent":Landroid/app/PendingIntent;
    .end local v7    # "cancelIntent":Landroid/app/PendingIntent;
    .end local v8    # "contentTitle":Ljava/lang/String;
    .end local v9    # "builder":Landroid/app/Notification$Builder;
    .end local v10    # "notification":Landroid/app/Notification;
    :catchall_10c
    move-exception v2

    :try_start_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v2
.end method

.method private static removeNotification(Ljava/lang/String;)V
    .registers 7
    .param p0, "host"    # Ljava/lang/String;

    .line 532
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :try_start_16
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 537
    const-string v0, "*."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 538
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 541
    :cond_2d
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    monitor-enter v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_63

    .line 542
    :try_start_30
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 543
    .local v2, "notificationId":Ljava/lang/Integer;
    sget-object v3, Lcom/begal/appclone/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 544
    .local v3, "otherHost":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 545
    sget-object v4, Lcom/begal/appclone/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 547
    .end local v2    # "notificationId":Ljava/lang/Integer;
    .end local v3    # "otherHost":Ljava/lang/String;
    :cond_5d
    goto :goto_3a

    .line 548
    :cond_5e
    monitor-exit v0

    .line 551
    goto :goto_69

    .line 548
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_60

    :try_start_62
    throw v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_63

    .line 549
    :catch_63
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static socketConnectHook(Ljava/lang/Object;Ljava/net/InetAddress;II)V
    .registers 7
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "socketConnectHook; address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Lcom/begal/appclone/classes/HostsBlocker;->checkHost(Ljava/net/InetAddress;)V

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landhook/lib/HookHelper;->invokeVoidOrigin(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method private static splitHost(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "alpha":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 235
    .local v2, "len":I
    const/4 v3, 0x0

    .line 235
    .local v3, "n":I
    :goto_e
    const/16 v4, 0x2e

    if-ge v3, v2, :cond_23

    .line 236
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 237
    .local v5, "c":C
    if-eq v5, v4, :cond_20

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_20

    .line 238
    const/4 v1, 0x1

    .line 239
    goto :goto_23

    .line 235
    .end local v5    # "c":C
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 243
    .end local v3    # "n":I
    :cond_23
    :goto_23
    if-eqz v1, :cond_4f

    .line 245
    :goto_25
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 246
    .local v3, "pos":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2d

    .line 247
    goto :goto_4f

    .line 249
    :cond_2d
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v5, :cond_3a

    .line 251
    goto :goto_4f

    .line 253
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v3    # "pos":I
    goto :goto_25

    .line 257
    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private static whois(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whois; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 347
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 351
    :cond_23
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://whois.domaintools.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 354
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4b

    .line 359
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    goto :goto_5b

    .line 356
    :catch_4b
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const-string v1, "Failed to open browser."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5b
    return-void
.end method
