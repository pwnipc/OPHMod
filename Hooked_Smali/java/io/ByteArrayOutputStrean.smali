.class public Ljava/io/ByteArrayOutputStrean;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStrean.java"


# static fields
.field private static REPLACE_BYTES:[B

.field private static SEARCH_BYTES:[B

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Ljava/io/ByteArrayOutputStrean;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .line 42
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 43
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalPackageName"    # Ljava/lang/String;

    .line 25
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init; originalPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ljava/io/ByteArrayOutputStrean;->SEARCH_BYTES:[B

    .line 29
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ljava/io/ByteArrayOutputStrean;->REPLACE_BYTES:[B

    .line 30
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer; SEARCH_BYTES: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/io/ByteArrayOutputStrean;->SEARCH_BYTES:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer; REPLACE_BYTES: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/io/ByteArrayOutputStrean;->REPLACE_BYTES:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_68} :catch_69

    .line 34
    goto :goto_6f

    .line 32
    :catch_69
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method


# virtual methods
.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->SEARCH_BYTES:[B

    if-eqz v0, :cond_19

    sget-object v0, Ljava/io/ByteArrayOutputStrean;->SEARCH_BYTES:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 49
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->REPLACE_BYTES:[B

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 50
    sget-object v0, Ljava/io/ByteArrayOutputStrean;->TAG:Ljava/lang/String;

    const-string v1, "write; written replaced bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 52
    :cond_19
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 54
    :goto_1c
    return-void
.end method
