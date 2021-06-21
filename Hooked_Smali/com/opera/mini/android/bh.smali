.class final Lcom/opera/mini/android/bh;
.super Lcom/opera/mini/android/bj;
.source "Source"


# instance fields
.field private C:Ljava/net/URI;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 159
    const-string v0, "GET"

    invoke-direct {p0, p1, v0}, Lcom/opera/mini/android/bh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x4

    .line 163
    invoke-direct {p0, p1}, Lcom/opera/mini/android/bj;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/opera/mini/android/bh;->Code:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    .line 166
    iget-object v0, p0, Lcom/opera/mini/android/bh;->Code:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/opera/mini/android/bh;->Code:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_1e
    iput-object v0, p0, Lcom/opera/mini/android/bh;->a:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/opera/mini/android/bh;->b:Ljava/lang/String;

    .line 169
    return-void

    .line 166
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private Code(Ljava/net/Socket;Z)I
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcom/opera/mini/android/bf;->I()J

    move-result-wide v3

    .line 199
    new-instance v2, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 200
    if-eqz p2, :cond_73

    iget-object v0, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v7, 0x10001

    rem-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/opera/mini/android/bh;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " HTTP/1.0\r\nHost: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\nCache-Control: no-cache\r\nConnection: close\r\n\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 210
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 200
    :cond_73
    iget-object v0, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 213
    :cond_7a
    iget-object v0, p0, Lcom/opera/mini/android/bh;->b:Ljava/lang/String;

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const/4 v0, 0x1

    .line 215
    :goto_85
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 216
    const/4 v2, 0x0

    .line 218
    :cond_94
    :goto_94
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 219
    if-eqz v2, :cond_b0

    .line 220
    const-string v5, "Unexpectedly got more than one line of response"

    iput-object v5, p0, Lcom/opera/mini/android/bh;->Z:Ljava/lang/String;

    .line 230
    :cond_a0
    :goto_a0
    invoke-static {}, Lcom/opera/mini/android/bf;->I()J

    move-result-wide v5

    .line 238
    if-nez v2, :cond_c0

    .line 239
    const-string v0, "No response from server"

    iput-object v0, p0, Lcom/opera/mini/android/bh;->Z:Ljava/lang/String;

    .line 247
    :cond_aa
    :goto_aa
    sub-long v0, v5, v3

    long-to-int v0, v0

    return v0

    :cond_ae
    move v0, v1

    .line 213
    goto :goto_85

    .line 222
    :cond_b0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_94

    .line 223
    if-eqz v0, :cond_bd

    .line 224
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_94

    .line 229
    :cond_bd
    const-string v2, ""

    goto :goto_a0

    .line 240
    :cond_c0
    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/opera/mini/android/bh;->Z:Ljava/lang/String;

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/opera/mini/android/bh;->a:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 241
    iget-object v0, p0, Lcom/opera/mini/android/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 243
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v7, p0, Lcom/opera/mini/android/bh;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" didn\'t match \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opera/mini/android/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/bh;->Z:Ljava/lang/String;

    goto :goto_aa
.end method


# virtual methods
.method protected final Code()I
    .registers 6

    .prologue
    .line 172
    invoke-static {}, Lcom/opera/mini/android/bf;->Code()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-static {v0, v1}, Lcom/opera/mini/android/bm;->Code(Landroid/content/Context;Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v0, p0, Lcom/opera/mini/android/bh;->C:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 175
    if-eqz v2, :cond_20

    .line 176
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 179
    :cond_20
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 181
    :try_start_25
    new-instance v4, Ljava/net/InetSocketAddress;

    if-lez v0, :cond_47

    :goto_29
    invoke-direct {v4, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0xbb8

    invoke-virtual {v3, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 182
    const/16 v0, 0xbb8

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 183
    if-eqz v2, :cond_4a

    const/4 v0, 0x1

    :goto_39
    invoke-direct {p0, v3, v0}, Lcom/opera/mini/android/bh;->Code(Ljava/net/Socket;Z)I
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_4c

    move-result v0

    .line 185
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_46

    .line 186
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    :cond_46
    return v0

    .line 181
    :cond_47
    const/16 v0, 0x50

    goto :goto_29

    .line 183
    :cond_4a
    const/4 v0, 0x0

    goto :goto_39

    .line 185
    :catchall_4c
    move-exception v0

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_56

    .line 186
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    :cond_56
    throw v0
.end method
