.class final Lcom/google/android/apps/analytics/r;
.super Ljava/lang/Object;


# instance fields
.field private B:Lorg/apache/http/HttpHost;

.field private C:Lorg/apache/http/conn/scheme/SocketFactory;

.field Code:Lcom/google/android/apps/analytics/s;

.field private I:Lorg/apache/http/impl/DefaultHttpClientConnection;

.field private J:Z

.field private Z:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .registers 3

    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/r;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/scheme/SocketFactory;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/r;->J:Z

    iput-object p1, p0, Lcom/google/android/apps/analytics/r;->B:Lorg/apache/http/HttpHost;

    iput-object p2, p0, Lcom/google/android/apps/analytics/r;->C:Lorg/apache/http/conn/scheme/SocketFactory;

    return-void
.end method

.method private Z()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public final Code()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->flush()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Lorg/apache/http/HttpConnectionMetrics;->getResponseCount()J

    move-result-wide v3

    invoke-interface {v2}, Lorg/apache/http/HttpConnectionMetrics;->getRequestCount()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v0, v4}, Lorg/apache/http/ProtocolVersion;->greaterEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->Code:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->Code()V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/r;->J:Z

    :cond_35
    const-string v0, "Connection"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_59

    array-length v5, v4

    move v0, v1

    :goto_3f
    if-ge v0, v5, :cond_59

    aget-object v6, v4, v0

    const-string v7, "close"

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    iget-object v6, p0, Lcom/google/android/apps/analytics/r;->Code:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v6}, Lcom/google/android/apps/analytics/s;->Code()V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/r;->J:Z

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_59
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/analytics/r;->Z:I

    iget v0, p0, Lcom/google/android/apps/analytics/r;->Z:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_76

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->Code:Lcom/google/android/apps/analytics/s;

    iget v1, p0, Lcom/google/android/apps/analytics/r;->Z:I

    iget-object v0, v0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/n;->Code(Lcom/google/android/apps/analytics/n;I)I

    invoke-direct {p0}, Lcom/google/android/apps/analytics/r;->Z()V

    :cond_75
    :goto_75
    return-void

    :cond_76
    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/DefaultHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->Code:Lcom/google/android/apps/analytics/s;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->I()V

    invoke-static {}, Lcom/google/android/apps/analytics/d;->Code()Lcom/google/android/apps/analytics/d;

    invoke-static {}, Lcom/google/android/apps/analytics/d;->B()Z

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/r;->J:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/apps/analytics/r;->Z()V

    goto :goto_75
.end method

.method public final Code(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_35

    :cond_c
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->C:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->C:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v2, p0, Lcom/google/android/apps/analytics/r;->B:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/analytics/r;->B:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v1, v0, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/r;->I:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public final I()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/apps/analytics/r;->Z()V

    return-void
.end method
