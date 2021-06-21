.class Lcom/begal/appclone/classes/Signatures;
.super Ljava/lang/Object;
.source "Signatures.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDisableShareActions:Z

.field private final mFacebookLoginBehavior:Ljava/lang/String;

.field private final mTwitterLoginBehavior:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/begal/appclone/classes/Signatures;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/begal/appclone/classes/CloneSettings;)V
    .registers 5
    .param p1, "cloneSettings"    # Lcom/begal/appclone/classes/CloneSettings;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "facebookLoginBehavior"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;

    .line 44
    const-string v0, "twitterLoginBehavior"

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/begal/appclone/classes/Signatures;->mTwitterLoginBehavior:Ljava/lang/String;

    .line 45
    const-string v0, "disableShareActions"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/begal/appclone/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/begal/appclone/classes/Signatures;->mDisableShareActions:Z

    .line 46
    sget-object v0, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signatures; mFacebookLoginBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTwitterLoginBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/begal/appclone/classes/Signatures;->mTwitterLoginBehavior:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisableShareActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/begal/appclone/classes/Signatures;->mDisableShareActions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/Signatures;

    .line 34
    iget-object v0, p0, Lcom/begal/appclone/classes/Signatures;->mFacebookLoginBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/begal/appclone/classes/Signatures;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/Signatures;

    .line 34
    iget-object v0, p0, Lcom/begal/appclone/classes/Signatures;->mTwitterLoginBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/Signatures;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/Signatures;

    .line 34
    iget-boolean v0, p0, Lcom/begal/appclone/classes/Signatures;->mDisableShareActions:Z

    return v0
.end method

.method private static signaturesToString([Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 9
    .param p0, "signatures"    # [Landroid/content/pm/Signature;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_3c

    .line 290
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    .line 292
    .local v3, "signature":Landroid/content/pm/Signature;
    :try_start_d
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 293
    .local v4, "certificate":Ljavax/security/cert/X509Certificate;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_33

    .line 296
    .end local v4    # "certificate":Ljavax/security/cert/X509Certificate;
    goto :goto_39

    .line 294
    :catch_33
    move-exception v4

    .line 295
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v3    # "signature":Landroid/content/pm/Signature;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 300
    :cond_3c
    const-string v1, "\n"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static unmarshallSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 268
    .local v0, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_2c

    .line 270
    .local v1, "parcel":Landroid/os/Parcel;
    :try_start_9
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 271
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 272
    const-class v2, Lcom/begal/appclone/classes/Signatures;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 273
    .local v2, "parcelables":[Landroid/os/Parcelable;
    array-length v4, v2

    new-array v4, v4, [Landroid/content/pm/Signature;

    .line 274
    .local v4, "signatures":[Landroid/content/pm/Signature;
    array-length v5, v2

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_27

    .line 275
    nop

    .line 277
    :try_start_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-object v4

    .line 277
    .end local v2    # "parcelables":[Landroid/os/Parcelable;
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_2c

    .line 279
    .end local v0    # "bytes":[B
    .end local v1    # "parcel":Landroid/os/Parcel;
    :catch_2c
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "packageName":Ljava/lang/String;
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v10, v3

    .line 60
    .local v10, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v11, v3

    .line 62
    .local v11, "uid":Ljava/lang/Integer;
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v12, v3

    .line 63
    .local v12, "metaData":Landroid/os/Bundle;
    new-instance v3, Ljava/lang/String;

    const-string v4, "com.begal.appclone.originalPackageName"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_b9

    move-object v13, v3

    .line 66
    .local v13, "originalPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2b
    invoke-virtual {v1, v13, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2f} :catch_b9

    move-object v3, v4

    .line 70
    nop

    .line 71
    .end local v3    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v14, "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_31
    move-object v14, v3

    goto :goto_35

    .line 69
    .end local v14    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_33
    move-exception v0

    goto :goto_31

    .line 71
    .end local v3    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_35
    if-eqz v14, :cond_3a

    :try_start_37
    iget v5, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    nop

    :cond_3a
    move v15, v5

    .line 74
    .local v15, "originalUid":I
    const-string v3, "com.begal.appclone.originalSignatures"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 75
    .local v9, "signaturesString":Ljava/lang/String;
    sget-object v3, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init; signaturesString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v9}, Lcom/begal/appclone/classes/Signatures;->unmarshallSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    move-object v8, v3

    .line 78
    .local v8, "originalSignatures":[Landroid/content/pm/Signature;
    if-eqz v8, :cond_b6

    .line 80
    sget-object v3, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init; packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", originalPackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", originalUid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", originalSignatures:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v8}, Lcom/begal/appclone/classes/Signatures;->signaturesToString([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v7, Lcom/begal/appclone/classes/Signatures$1;

    move-object v3, v7

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v13

    move-object/from16 v16, v1

    move-object v1, v7

    move-object v7, v11

    .line 88
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v17, v8

    move v8, v15

    .line 88
    .end local v8    # "originalSignatures":[Landroid/content/pm/Signature;
    .local v17, "originalSignatures":[Landroid/content/pm/Signature;
    move-object/from16 v18, v9

    move-object/from16 v9, v17

    .line 88
    .end local v9    # "signaturesString":Ljava/lang/String;
    .local v18, "signaturesString":Ljava/lang/String;
    invoke-direct/range {v3 .. v9}, Lcom/begal/appclone/classes/Signatures$1;-><init>(Lcom/begal/appclone/classes/Signatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I[Landroid/content/pm/Signature;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_ae} :catch_b9

    .line 255
    move-object/from16 v3, p1

    :try_start_b0
    invoke-virtual {v1, v3}, Lcom/begal/appclone/classes/Signatures$1;->install(Landroid/content/Context;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b3} :catch_b4

    .line 255
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v10    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "uid":Ljava/lang/Integer;
    .end local v12    # "metaData":Landroid/os/Bundle;
    .end local v13    # "originalPackageName":Ljava/lang/String;
    .end local v14    # "originalApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "originalUid":I
    .end local v16    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v17    # "originalSignatures":[Landroid/content/pm/Signature;
    .end local v18    # "signaturesString":Ljava/lang/String;
    goto :goto_b8

    .line 258
    :catch_b4
    move-exception v0

    goto :goto_bc

    .line 260
    :cond_b6
    move-object/from16 v3, p1

    :goto_b8
    goto :goto_c2

    .line 258
    :catch_b9
    move-exception v0

    move-object/from16 v3, p1

    :goto_bc
    move-object v1, v0

    .line 259
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/begal/appclone/classes/Signatures;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_c2
    return-void
.end method
