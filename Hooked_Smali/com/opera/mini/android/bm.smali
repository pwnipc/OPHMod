.class public final Lcom/opera/mini/android/bm;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static Code(Landroid/content/Context;Ljava/net/URI;)Lorg/apache/http/HttpHost;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 111
    .line 114
    :try_start_2
    invoke-static {p0, p1}, Lcom/opera/mini/android/bm;->I(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v4, :cond_4d

    .line 116
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_4d

    .line 117
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 124
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 125
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_47

    move-result-object v2

    .line 129
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_4b

    move-result v0

    .line 136
    :goto_2c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 137
    if-eq v0, v1, :cond_36

    if-nez v0, :cond_38

    :cond_36
    const/16 v0, 0x50

    .line 138
    :cond_38
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 140
    :cond_3d
    return-object v3

    .line 127
    :cond_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_47

    move-result-object v2

    goto :goto_28

    :catch_47
    move-exception v0

    move-object v2, v3

    :goto_49
    move v0, v1

    goto :goto_2c

    :catch_4b
    move-exception v0

    goto :goto_49

    :cond_4d
    move v0, v1

    move-object v2, v3

    goto :goto_2c
.end method

.method private static I(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .registers 6

    .prologue
    .line 58
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 59
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_3c

    .line 63
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .line 65
    const/4 v3, -0x1

    if-eq v0, v3, :cond_39

    .line 66
    :goto_27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 75
    invoke-static {v2, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 76
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 85
    :goto_38
    return-object v0

    .line 65
    :cond_39
    const/16 v0, 0x50

    goto :goto_27

    .line 80
    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_4b} :catch_4c

    goto :goto_38

    :catch_4c
    move-exception v0

    :cond_4d
    move-object v0, v1

    goto :goto_38
.end method
