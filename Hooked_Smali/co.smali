.class final Lco;
.super Lcm;
.source "Source"


# instance fields
.field B:I

.field C:Ljava/lang/String;

.field J:I

.field a:[B

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/res/7.6.35766/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final Code(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 62
    iput-object p2, p0, Lco;->b:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lco;->J:I

    .line 64
    return-void
.end method

.method protected final Code(Ljava/io/DataInputStream;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 22
    iget v0, p0, Lco;->J:I

    if-lez v0, :cond_2c

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 25
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lco;->J:I

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 26
    :goto_10
    iget v2, p0, Lco;->B:I

    iget v3, p0, Lco;->J:I

    if-ge v2, v3, :cond_25

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    .line 29
    if-ltz v2, :cond_25

    .line 31
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    iget v3, p0, Lco;->B:I

    add-int/2addr v2, v3

    iput v2, p0, Lco;->B:I

    goto :goto_10

    .line 36
    :cond_25
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lco;->a:[B

    .line 45
    :cond_2b
    :goto_2b
    return-void

    .line 40
    :cond_2c
    iget-object v0, p0, Lco;->b:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 42
    const-string v0, "Invalid content length"

    invoke-virtual {p0, v4, v0}, Lco;->Code(ILjava/lang/String;)V

    goto :goto_2b
.end method

.method protected final Code(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 49
    const-string v0, "content-length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lco;->J:I

    .line 57
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_10
    const-string v0, "update-digest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    iput-object p2, p0, Lco;->C:Ljava/lang/String;

    goto :goto_e
.end method
