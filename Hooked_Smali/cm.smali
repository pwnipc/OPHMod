.class abstract Lcm;
.super Lcf;
.source "Source"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 13
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v6, v2

    move v7, v2

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcf;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZIII)V

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract Code(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected final I(Ljava/io/DataInputStream;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 20
    if-eq v1, v0, :cond_e

    .line 22
    const-string v0, "Unknown version"

    invoke-virtual {p0, v2, v0}, Lcm;->Code(ILjava/lang/String;)V

    .line 54
    :cond_d
    :goto_d
    return-void

    .line 25
    :cond_e
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_21

    invoke-virtual {p0, v1, v3}, Lcm;->Code(ILjava/lang/String;)V

    move v0, v2

    :cond_21
    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 32
    :goto_27
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_38

    .line 34
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcm;->Code(Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    goto :goto_27

    .line 36
    :cond_38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 40
    if-nez v0, :cond_42

    .line 43
    invoke-virtual {p0, p1}, Lcm;->Code(Ljava/io/DataInputStream;)V

    goto :goto_d

    .line 45
    :cond_42
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4d

    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcm;->Code(ILjava/lang/String;)V

    goto :goto_d

    .line 52
    :cond_4d
    const-string v0, "Bad data"

    invoke-virtual {p0, v2, v0}, Lcm;->Code(ILjava/lang/String;)V

    goto :goto_d
.end method
