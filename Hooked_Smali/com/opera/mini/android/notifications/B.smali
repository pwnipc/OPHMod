.class public final Lcom/opera/mini/android/notifications/B;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static B:Landroid/net/ConnectivityManager;

.field private static Code:Lcom/opera/mini/android/notifications/a;

.field private static I:Landroid/telephony/PhoneStateListener;

.field private static J:Landroid/content/IntentFilter;

.field private static Z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 113
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    .line 115
    new-instance v0, Lcom/opera/mini/android/notifications/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/opera/mini/android/notifications/d;-><init>(B)V

    sput-object v0, Lcom/opera/mini/android/notifications/B;->I:Landroid/telephony/PhoneStateListener;

    .line 117
    :cond_d
    new-instance v0, Lcom/opera/mini/android/notifications/NetUtils$1;

    invoke-direct {v0}, Lcom/opera/mini/android/notifications/NetUtils$1;-><init>()V

    sput-object v0, Lcom/opera/mini/android/notifications/B;->Z:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    sput-object v0, Lcom/opera/mini/android/notifications/B;->J:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method static synthetic B()Landroid/telephony/PhoneStateListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/opera/mini/android/notifications/B;->I:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic C()Landroid/content/BroadcastReceiver;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/opera/mini/android/notifications/B;->Z:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/a;)Lcom/opera/mini/android/notifications/a;
    .registers 1

    .prologue
    .line 36
    sput-object p0, Lcom/opera/mini/android/notifications/B;->Code:Lcom/opera/mini/android/notifications/a;

    return-object p0
.end method

.method public static Code(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetUtils.httpGet uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 152
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_34

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetUtils.httpGet status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const/4 v0, 0x0

    .line 163
    :goto_33
    return-object v0

    .line 160
    :cond_34
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 162
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_33
.end method

.method public static Code()V
    .registers 1

    .prologue
    .line 142
    new-instance v0, Lcom/opera/mini/android/notifications/C;

    invoke-direct {v0}, Lcom/opera/mini/android/notifications/C;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public static Code(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    invoke-static {p0}, Lcom/opera/mini/android/notifications/B;->Z(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 190
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v0

    .line 192
    :goto_15
    if-eqz v2, :cond_20

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_20

    :goto_1d
    return v0

    :cond_1e
    move v2, v1

    .line 190
    goto :goto_15

    :cond_20
    move v0, v1

    .line 192
    goto :goto_1d
.end method

.method public static I()Ljava/lang/String;
    .registers 4

    .prologue
    .line 169
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 170
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 171
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_24

    .line 172
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 179
    :goto_40
    return-object v0

    :cond_41
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_40

    .line 184
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error getting IP number."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static I(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    .line 220
    :goto_17
    return v0

    .line 210
    :cond_18
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 212
    array-length v4, v3

    move v0, v2

    :goto_26
    if-ge v0, v4, :cond_37

    aget-object v5, v3, v0

    .line 214
    if-eqz v5, :cond_34

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_34

    move v0, v1

    .line 216
    goto :goto_17

    .line 212
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_37
    move v0, v2

    .line 220
    goto :goto_17
.end method

.method static synthetic J(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lcom/opera/mini/android/notifications/B;->B:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/opera/mini/android/notifications/B;->B:Landroid/net/ConnectivityManager;

    :cond_e
    sget-object v0, Lcom/opera/mini/android/notifications/B;->B:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic J()Lcom/opera/mini/android/notifications/a;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/opera/mini/android/notifications/B;->Code:Lcom/opera/mini/android/notifications/a;

    return-object v0
.end method

.method public static Z(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 225
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static Z()Lcom/opera/mini/android/notifications/a;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/opera/mini/android/notifications/B;->Code:Lcom/opera/mini/android/notifications/a;

    return-object v0
.end method

.method static synthetic a()Landroid/content/IntentFilter;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/opera/mini/android/notifications/B;->J:Landroid/content/IntentFilter;

    return-object v0
.end method
