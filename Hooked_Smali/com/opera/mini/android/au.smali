.class public final Lcom/opera/mini/android/au;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbc;


# instance fields
.field private Code:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/net/Socket;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    .line 21
    iget-object v0, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v0, v4, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 22
    iget-object v0, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 23
    iget-object v0, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 24
    iget-object v0, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public final Code()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 40
    return-void
.end method

.method public final I()Ljava/io/DataOutputStream;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final Z()Ljava/io/DataInputStream;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/opera/mini/android/au;->Code:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
