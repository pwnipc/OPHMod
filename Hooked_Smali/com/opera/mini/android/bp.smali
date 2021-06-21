.class public final Lcom/opera/mini/android/bp;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static Code(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 21
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v2, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 23
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 27
    invoke-static {p2}, Lcom/opera/mini/android/bp;->Code(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_44} :catch_49
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_44} :catch_46

    move-result v0

    .line 34
    :goto_45
    return v0

    :catch_46
    move-exception v0

    :goto_47
    const/4 v0, 0x0

    goto :goto_45

    .line 33
    :catch_49
    move-exception v0

    goto :goto_47
.end method

.method private static Code(Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x10

    const/4 v7, -0x1

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x200

    if-eq v1, v2, :cond_d

    .line 71
    :cond_c
    :goto_c
    return-object v0

    .line 58
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 59
    array-length v1, v3

    div-int/lit8 v4, v1, 0x2

    .line 60
    new-array v1, v4, [B

    .line 61
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v4, :cond_38

    .line 63
    mul-int/lit8 v5, v2, 0x2

    aget-char v5, v3, v5

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 64
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-char v6, v3, v6

    invoke-static {v6, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 65
    if-eq v5, v7, :cond_c

    if-eq v6, v7, :cond_c

    .line 69
    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_38
    move-object v0, v1

    .line 71
    goto :goto_c
.end method
