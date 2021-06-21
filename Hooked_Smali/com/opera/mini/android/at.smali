.class public final Lcom/opera/mini/android/at;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbc;


# instance fields
.field private Code:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_11

    .line 29
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    :cond_11
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    .line 33
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 36
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 40
    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 41
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 43
    :cond_3b
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public final B()J
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Code()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 49
    return-void
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 60
    return-void

    .line 59
    :catch_6
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public final I()Ljava/io/DataOutputStream;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final J()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final Z()Ljava/io/DataInputStream;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 71
    const/16 v1, 0x190

    if-lt v0, v1, :cond_16

    .line 76
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/opera/mini/android/at;->Code:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_15
.end method
