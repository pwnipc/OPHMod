.class public Lcom/begal/appclone/classes/util/SimpleCrypt;
.super Ljava/lang/Object;
.source "SimpleCrypt.java"


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/begal/appclone/classes/util/SimpleCrypt;->mKey:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private getCipher(I)Ljavax/crypto/Cipher;
    .registers 6
    .param p1, "cipherMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const-string v0, "AES"

    .line 68
    .local v0, "encryptionAlgorithm":Ljava/lang/String;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/begal/appclone/classes/util/SimpleCrypt;->mKey:Ljava/lang/String;

    const-string v3, "UTF-8"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .local v1, "keySpecification":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 71
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 72
    return-object v2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "encryptedText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/util/SimpleCrypt;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 48
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 49
    .local v1, "plainBytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v2

    .line 50
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "plainBytes":[B
    :catch_14
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decrypt([B)[B
    .registers 5
    .param p1, "encryptedBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/util/SimpleCrypt;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 59
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v1

    .line 60
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_a
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "plainText"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/util/SimpleCrypt;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 27
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 28
    .local v1, "encryptedBytes":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v2

    .line 29
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "encryptedBytes":[B
    :catch_13
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt([B)[B
    .registers 4
    .param p1, "plainBytes"    # [B

    .line 37
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/begal/appclone/classes/util/SimpleCrypt;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 38
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v1

    .line 39
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_a
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
