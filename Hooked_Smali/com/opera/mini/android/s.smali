.class public Lcom/opera/mini/android/s;
.super Ldb;
.source "Source"


# static fields
.field public static ah:Landroid/util/DisplayMetrics;

.field public static ai:Ljava/lang/String;

.field public static aj:Ljava/lang/String;

.field public static ak:J

.field public static al:I

.field public static am:Z

.field private static an:J

.field private static ao:F

.field private static ap:F

.field private static aq:Ljava/lang/String;

.field private static ar:Ljava/lang/String;

.field private static as:Ljava/lang/String;

.field private static at:Ljava/lang/String;

.field private static au:Ljava/lang/String;

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    sput v1, Lcom/opera/mini/android/s;->ao:F

    .line 85
    sput v1, Lcom/opera/mini/android/s;->ap:F

    .line 92
    sput-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    .line 94
    sput-object v0, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    .line 95
    sput-object v0, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    .line 97
    sput-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    .line 111
    :try_start_10
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/opera/mini/android/s;->al:I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_28

    .line 118
    :goto_18
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/opera/mini/android/s;->am:Z

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/opera/mini/android/s;->aw:Ljava/lang/Object;

    return-void

    .line 115
    :catch_28
    move-exception v0

    const/4 v0, 0x3

    sput v0, Lcom/opera/mini/android/s;->al:I

    goto :goto_18

    .line 118
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ldb;-><init>()V

    return-void
.end method

.method private static B(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 788
    :try_start_0
    invoke-static {p0}, Lcom/opera/mini/android/s;->I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8

    move-result-object v0

    if-eqz v0, :cond_9

    .line 790
    const/4 v0, 0x1

    .line 796
    :goto_7
    return v0

    :catch_8
    move-exception v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/opera/mini/android/t;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 899
    .line 904
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_47
    .catchall {:try_start_1 .. :try_end_6} :catchall_58

    .line 905
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 906
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 907
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/opera/mini/android/I;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2a

    .line 909
    sget-object v0, Lcom/opera/mini/android/t;->Z:Lcom/opera/mini/android/t;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_75
    .catchall {:try_start_6 .. :try_end_20} :catchall_6d

    .line 924
    invoke-static {v2}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 925
    invoke-static {v2}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 926
    :try_start_26
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_67

    .line 937
    :goto_29
    return-object v0

    .line 911
    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 913
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_75
    .catchall {:try_start_2a .. :try_end_30} :catchall_6d

    move-result-object v4

    .line 914
    :try_start_31
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_79
    .catchall {:try_start_31 .. :try_end_36} :catchall_70

    .line 915
    :try_start_36
    invoke-static {v4, v3}, Lcom/opera/mini/android/s;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 916
    sget-object v0, Lcom/opera/mini/android/t;->Code:Lcom/opera/mini/android/t;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_7d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_72

    .line 924
    invoke-static {v4}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 925
    invoke-static {v3}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 926
    :try_start_41
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_29

    :catch_45
    move-exception v1

    goto :goto_29

    .line 924
    :catch_47
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    :goto_4a
    invoke-static {v1}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 925
    invoke-static {v2}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 926
    if-eqz v0, :cond_55

    .line 930
    :try_start_52
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_69

    .line 937
    :cond_55
    :goto_55
    sget-object v0, Lcom/opera/mini/android/t;->I:Lcom/opera/mini/android/t;

    goto :goto_29

    .line 924
    :catchall_58
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    :goto_5b
    invoke-static {v4}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 925
    invoke-static {v2}, Lcom/opera/mini/android/s;->Code(Ljava/io/Closeable;)V

    .line 926
    if-eqz v1, :cond_66

    .line 930
    :try_start_63
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6b

    .line 934
    :cond_66
    :goto_66
    throw v0

    :catch_67
    move-exception v1

    goto :goto_29

    :catch_69
    move-exception v0

    goto :goto_55

    :catch_6b
    move-exception v1

    goto :goto_66

    .line 924
    :catchall_6d
    move-exception v0

    move-object v4, v2

    goto :goto_5b

    :catchall_70
    move-exception v0

    goto :goto_5b

    :catchall_72
    move-exception v0

    move-object v2, v3

    goto :goto_5b

    :catch_75
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4a

    :catch_79
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_4a

    :catch_7d
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    move-object v1, v4

    goto :goto_4a
.end method

.method public static Code(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 456
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 457
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    .line 493
    :goto_7
    return-object v0

    .line 460
    :cond_8
    invoke-static {p0}, Lcom/opera/mini/android/s;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "content://com.opera.branding.BrandingProvider/branding/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    :try_start_28
    const-string v3, "Branding"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v3, "Signature"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v3, "HomescreenTitle"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    const-string v3, "HomescreenUrl"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    const-string v3, "ChannelID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_68

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/opera/mini/android/s;->au:Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_68} :catch_199

    :cond_68
    :goto_68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_6b
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-nez v0, :cond_c5

    .line 463
    invoke-static {p0}, Lcom/opera/mini/android/s;->J(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_c5

    :try_start_75
    new-instance v1, Lorg/json/JSONTokener;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_c5

    const-string v1, "Branding"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    move-object v1, v2

    :goto_98
    sput-object v1, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    const-string v1, "HomescreenTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    const-string v1, "HomescreenUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    const-string v1, "ChannelID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    move-object v0, v2

    :goto_c3
    sput-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_c5} :catch_1a8

    .line 466
    :cond_c5
    :goto_c5
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-eqz v0, :cond_1ad

    .line 467
    :try_start_c9
    invoke-static {p0}, Lcom/opera/mini/android/am;->Code(Landroid/content/Context;)Lcom/opera/mini/android/am;

    move-result-object v0

    sget-object v1, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-eqz v1, :cond_ed

    sget-object v1, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    const-string v1, "Branding"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;)V

    const-string v1, "Branding"

    sget-object v3, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I

    :cond_ed
    sget-object v1, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    if-eqz v1, :cond_10d

    sget-object v1, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10d

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;)V

    const-string v1, "Signature"

    sget-object v3, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I

    :cond_10d
    sget-object v1, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    if-eqz v1, :cond_12d

    sget-object v1, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    const-string v1, "HomescreenTitle"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;)V

    const-string v1, "HomescreenTitle"

    sget-object v3, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I

    :cond_12d
    sget-object v1, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    if-eqz v1, :cond_14d

    sget-object v1, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14d

    const-string v1, "HomescreenUrl"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;)V

    const-string v1, "HomescreenUrl"

    sget-object v3, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I

    :cond_14d
    sget-object v1, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    if-eqz v1, :cond_16d

    sget-object v1, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    const-string v1, "ChannelID"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;)V

    const-string v1, "ChannelID"

    sget-object v3, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_16d} :catch_258
    .catch Landroid/database/SQLException; {:try_start_c9 .. :try_end_16d} :catch_255

    .line 473
    :cond_16d
    :goto_16d
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-eqz v0, :cond_191

    sget-object v0, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    if-eqz v0, :cond_191

    .line 476
    :try_start_175
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "pub_key"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 477
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    sget-object v1, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/opera/mini/android/bp;->Code(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18c

    .line 478
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_18c} :catch_23a
    .catchall {:try_start_175 .. :try_end_18c} :catchall_245

    .line 484
    :cond_18c
    if-eqz v2, :cond_191

    .line 486
    :try_start_18e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_250

    .line 493
    :cond_191
    :goto_191
    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    if-eqz v0, :cond_24c

    sget-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_7

    .line 460
    :catch_199
    move-exception v3

    if-nez v0, :cond_68

    sput-object v2, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_68

    .line 463
    :cond_1a0
    :try_start_1a0
    sget-object v1, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_98

    :cond_1a4
    sget-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;
    :try_end_1a6
    .catch Lorg/json/JSONException; {:try_start_1a0 .. :try_end_1a6} :catch_1a8

    goto/16 :goto_c3

    :catch_1a8
    move-exception v0

    sput-object v2, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_c5

    .line 470
    :cond_1ad
    :try_start_1ad
    invoke-static {p0}, Lcom/opera/mini/android/am;->Code(Landroid/content/Context;)Lcom/opera/mini/android/am;

    move-result-object v1

    const-string v0, "Branding"

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22b

    new-instance v0, Ljava/lang/String;

    const-string v3, "Branding"

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/am;->I(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1c6
    sput-object v0, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    const-string v0, "Signature"

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22d

    new-instance v0, Ljava/lang/String;

    const-string v3, "Signature"

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/am;->I(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1dd
    sput-object v0, Lcom/opera/mini/android/s;->ar:Ljava/lang/String;

    const-string v0, "HomescreenTitle"

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22f

    new-instance v0, Ljava/lang/String;

    const-string v3, "HomescreenTitle"

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/am;->I(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1f4
    sput-object v0, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    const-string v0, "HomescreenUrl"

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_231

    new-instance v0, Ljava/lang/String;

    const-string v3, "HomescreenUrl"

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/am;->I(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_20b
    sput-object v0, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    const-string v0, "ChannelID "

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_233

    new-instance v0, Ljava/lang/String;

    const-string v3, "ChannelID"

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/am;->I(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "utf-8"

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_222
    sput-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;
    :try_end_224
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_224} :catch_226
    .catch Landroid/database/SQLException; {:try_start_1ad .. :try_end_224} :catch_235

    goto/16 :goto_16d

    :catch_226
    move-exception v0

    sput-object v2, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_16d

    :cond_22b
    move-object v0, v2

    goto :goto_1c6

    :cond_22d
    move-object v0, v2

    goto :goto_1dd

    :cond_22f
    move-object v0, v2

    goto :goto_1f4

    :cond_231
    move-object v0, v2

    goto :goto_20b

    :cond_233
    move-object v0, v2

    goto :goto_222

    :catch_235
    move-exception v0

    sput-object v2, Lcom/opera/mini/android/s;->aq:Ljava/lang/String;

    goto/16 :goto_16d

    .line 484
    :catch_23a
    move-exception v0

    if-eqz v2, :cond_191

    .line 486
    :try_start_23d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_240} :catch_242

    goto/16 :goto_191

    .line 488
    :catch_242
    move-exception v0

    goto/16 :goto_191

    .line 484
    :catchall_245
    move-exception v0

    if-eqz v2, :cond_24b

    .line 486
    :try_start_248
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_253

    .line 488
    :cond_24b
    :goto_24b
    throw v0

    .line 493
    :cond_24c
    const-string v0, "elm"

    goto/16 :goto_7

    .line 488
    :catch_250
    move-exception v0

    goto/16 :goto_191

    :catch_253
    move-exception v1

    goto :goto_24b

    .line 467
    :catch_255
    move-exception v0

    goto/16 :goto_16d

    :catch_258
    move-exception v0

    goto/16 :goto_16d
.end method

.method public static Code(II)V
    .registers 6

    .prologue
    .line 284
    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x3

    sget v1, Lcom/opera/mini/android/s;->b:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    .line 285
    sget-boolean v1, Lcom/opera/mini/android/s;->Code:Z

    if-eqz v1, :cond_11

    .line 287
    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v0, v0, 0xa

    .line 290
    :cond_11
    sput v0, Lcom/opera/mini/android/s;->a:I

    .line 293
    sget-wide v0, Lcom/opera/mini/android/s;->an:J

    sget v2, Lcom/opera/mini/android/s;->a:I

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xc00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 294
    sput v0, Lcom/opera/mini/android/s;->d:I

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/opera/mini/android/s;->e:I

    .line 295
    return-void
.end method

.method public static Code(Landroid/content/SharedPreferences$Editor;)V
    .registers 3

    .prologue
    .line 774
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_a

    .line 776
    invoke-static {p0}, Lcom/opera/mini/android/ae;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 782
    :goto_9
    return-void

    .line 780
    :cond_a
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9
.end method

.method public static Code(Lcom/opera/mini/android/Browser;)V
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    sput v4, Lcom/opera/mini/android/s;->r:I

    .line 125
    sput-boolean v1, Lcom/opera/mini/android/s;->z:Z

    .line 126
    sput-boolean v1, Lcom/opera/mini/android/s;->h:Z

    .line 133
    invoke-static {p0}, Lcom/opera/mini/android/be;->Code(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/opera/mini/android/s;->Z:Z

    .line 136
    sput v1, Lcom/opera/mini/android/s;->g:I

    .line 137
    sput v2, Lcom/opera/mini/android/s;->f:I

    .line 138
    invoke-static {}, Lcom/opera/mini/android/s;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/s;->i:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 141
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-static {v3}, Ldb;->I(I)V

    .line 142
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-static {v3}, Ldb;->I(I)V

    .line 143
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ldb;->I(I)V

    .line 144
    sget v0, Ldb;->F:I

    const/16 v3, 0xa0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Ldb;->F:I

    .line 147
    sput v4, Lcom/opera/mini/android/s;->k:I

    .line 151
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    .line 152
    invoke-virtual {p0}, Lcom/opera/mini/android/Browser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v3, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 153
    invoke-static {}, Lcom/opera/mini/android/s;->n()F

    move-result v0

    invoke-static {}, Lcom/opera/mini/android/s;->m()F

    move-result v3

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/opera/mini/android/s;->n:I

    .line 154
    const/16 v0, 0x14

    sput v0, Lcom/opera/mini/android/s;->j:I

    .line 156
    sput-boolean v1, Lcom/opera/mini/android/s;->o:Z

    .line 158
    sput-boolean v1, Lcom/opera/mini/android/s;->p:Z

    .line 163
    const/16 v0, 0x2022

    sput-char v0, Lcom/opera/mini/android/s;->x:C

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 167
    sput-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 170
    const-string v3, "nb"

    sput-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    .line 182
    :cond_84
    :goto_84
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/s;->aj:Ljava/lang/String;

    .line 185
    sput-boolean v1, Lcom/opera/mini/android/s;->y:Z

    .line 187
    sput-boolean v1, Lcom/opera/mini/android/s;->w:Z

    .line 192
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 197
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 198
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 199
    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sput-wide v3, Lcom/opera/mini/android/s;->ak:J

    .line 202
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 208
    sput-wide v3, Lcom/opera/mini/android/s;->an:J

    const-wide/32 v5, 0x500000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sput-wide v3, Lcom/opera/mini/android/s;->B:J

    .line 210
    const/4 v0, 0x4

    sput v0, Lcom/opera/mini/android/s;->v:I

    .line 214
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e0

    .line 216
    const/4 v0, 0x3

    sput v0, Lcom/opera/mini/android/s;->v:I

    .line 220
    :cond_e0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_125

    move v0, v1

    :goto_fd
    sput-boolean v0, Lcom/opera/mini/android/s;->J:Z

    .line 223
    const v0, 0x8000

    sput v0, Lcom/opera/mini/android/s;->D:I

    .line 224
    return-void

    .line 172
    :cond_105
    sget-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 175
    const-string v3, "he"

    sput-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    goto/16 :goto_84

    .line 177
    :cond_115
    sget-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    const-string v4, "in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 180
    const-string v3, "id"

    sput-object v3, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    goto/16 :goto_84

    :cond_125
    move v0, v2

    .line 221
    goto :goto_fd
.end method

.method private static Code(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 861
    if-eqz p0, :cond_5

    .line 865
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 871
    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private static Code(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    .line 851
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 853
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 855
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 857
    :cond_10
    return-void
.end method

.method public static Code(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 803
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_7c

    .line 807
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v3, v2

    :goto_12
    if-ge v3, v5, :cond_7c

    aget-object v0, v4, v3

    .line 809
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    if-eqz v6, :cond_26

    if-nez v7, :cond_2f

    :cond_26
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    move v0, v1

    .line 824
    :goto_2e
    return v0

    .line 809
    :cond_2f
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "%0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_75} :catch_80
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_75} :catch_7e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_75} :catch_7b

    move-result-object v0

    goto :goto_27

    .line 807
    :cond_77
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :catch_7b
    move-exception v0

    :cond_7c
    :goto_7c
    move v0, v2

    .line 824
    goto :goto_2e

    .line 820
    :catch_7e
    move-exception v0

    goto :goto_7c

    .line 816
    :catch_80
    move-exception v0

    goto :goto_7c
.end method

.method public static Code(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 758
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    .line 759
    const/4 v0, 0x1

    .line 764
    :goto_6
    return v0

    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method static I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .prologue
    .line 875
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 879
    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static J(Landroid/content/Context;)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 624
    .line 627
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/lib"

    const-string v3, "libpreinstallinfo.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 629
    :cond_10
    :goto_10
    if-eqz v0, :cond_7d

    .line 631
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_7a

    .line 634
    :try_start_17
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 635
    const/4 v2, 0x0

    .line 636
    if-lez v4, :cond_70

    .line 638
    new-array v0, v4, [B

    .line 639
    :goto_21
    if-ge v2, v4, :cond_71

    .line 641
    const/16 v5, 0x400

    sub-int v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v0, v2, v5}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_75

    move-result v5

    add-int/2addr v2, v5

    goto :goto_21

    .line 627
    :cond_31
    :try_start_31
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/opera/mini/android/s;->I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libpreinstallinfo.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_6e

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/opera/mini/android/ae;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "libpreinstallinfo.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_6e
    move-object v0, v1

    goto :goto_10

    :cond_70
    move-object v0, v1

    .line 647
    :cond_71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 656
    :goto_74
    return-object v0

    .line 647
    :catchall_75
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_7a} :catch_7a

    .line 653
    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_74

    :cond_7d
    move-object v0, v1

    .line 654
    goto :goto_74
.end method

.method public static Z(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 885
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 887
    invoke-static {p0}, Lcom/opera/mini/android/ae;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v1}, Lcom/opera/mini/android/s;->I(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 438
    sget-object v1, Lcom/opera/mini/android/s;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_3
    sput-object p0, Lcom/opera/mini/android/s;->av:Ljava/lang/String;

    .line 441
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()V
    .registers 0

    .prologue
    .line 311
    return-void
.end method

.method public static l()V
    .registers 1

    .prologue
    .line 341
    const/4 v0, 0x0

    sput-object v0, Lcom/opera/mini/android/s;->G:[B

    .line 342
    invoke-static {}, Lcom/opera/mini/android/C;->Code()Lcom/opera/mini/android/C;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/opera/mini/android/C;->Z()[Lbp;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/s;->af:[Lbp;

    .line 344
    sget v0, Lcom/opera/mini/android/C;->Code:I

    sput v0, Lcom/opera/mini/android/s;->ae:I

    .line 345
    sget-object v0, Lcom/opera/mini/android/s;->af:[Lbp;

    array-length v0, v0

    sput v0, Lcom/opera/mini/android/s;->ad:I

    .line 346
    return-void
.end method

.method public static m()F
    .registers 2

    .prologue
    .line 350
    sget v0, Lcom/opera/mini/android/s;->ao:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 352
    invoke-static {}, Lcom/opera/mini/android/s;->v()V

    .line 354
    :cond_b
    sget v0, Lcom/opera/mini/android/s;->ao:F

    return v0
.end method

.method public static n()F
    .registers 2

    .prologue
    .line 359
    sget v0, Lcom/opera/mini/android/s;->ap:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 361
    invoke-static {}, Lcom/opera/mini/android/s;->v()V

    .line 363
    :cond_b
    sget v0, Lcom/opera/mini/android/s;->ap:F

    return v0
.end method

.method public static o()V
    .registers 2

    .prologue
    .line 431
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    .line 432
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 433
    return-void
.end method

.method public static p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 444
    sget-object v1, Lcom/opera/mini/android/s;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_3
    sget-object v0, Lcom/opera/mini/android/s;->av:Ljava/lang/String;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    .line 446
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static q()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 692
    sget-object v0, Lcom/opera/mini/android/s;->as:Ljava/lang/String;

    .line 693
    sget-object v1, Lcom/opera/mini/android/s;->at:Ljava/lang/String;

    .line 694
    sget-object v2, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v2, v4}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 695
    const-string v3, "isHomescreenShortcutCreated"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 696
    if-nez v2, :cond_3f

    if-eqz v0, :cond_3f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz v1, :cond_3f

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 698
    sget-object v2, Lar;->Code:Lci;

    invoke-interface {v2, v0, v1}, Lci;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0, v4}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 700
    const-string v1, "isHomescreenShortcutCreated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    :cond_3f
    return-void
.end method

.method static r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    const-string v0, ""

    sget-object v1, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Lcom/opera/mini/android/s;->au:Ljava/lang/String;

    goto :goto_b
.end method

.method public static s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 726
    const-string v0, "a"

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "amazon"

    .line 727
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "androidmarket"

    goto :goto_c
.end method

.method public static t()Z
    .registers 2

    .prologue
    .line 769
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static u()Ljava/lang/String;
    .registers 5

    .prologue
    .line 235
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 236
    const-string v0, "id_pref"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v2, "loc_pref"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v4, "ua_pref"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_64

    .line 243
    :cond_35
    new-instance v2, Landroid/webkit/WebView;

    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 245
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 247
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_4a
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_6d

    .line 255
    :goto_4d
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 256
    const-string v2, "id_pref"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v2, "loc_pref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v2, "ua_pref"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    :goto_63
    return-object v0

    .line 262
    :cond_64
    const-string v0, "ua_pref"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :catch_6d
    move-exception v2

    goto :goto_4d
.end method

.method private static v()V
    .registers 8

    .prologue
    const/high16 v7, 0x433e0000    # 190.0f

    const/high16 v6, 0x43200000    # 160.0f

    const/high16 v5, 0x43160000    # 150.0f

    const/4 v0, 0x0

    const-wide v3, 0x4053c00000000000L    # 79.0

    .line 368
    sput v0, Lcom/opera/mini/android/s;->ao:F

    .line 369
    sput v0, Lcom/opera/mini/android/s;->ap:F

    .line 370
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 371
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 374
    const-string v2, "qsd8250_surf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "Dell Streak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 378
    :cond_24
    sput v7, Lcom/opera/mini/android/s;->ao:F

    .line 379
    sput v7, Lcom/opera/mini/android/s;->ap:F

    .line 427
    :goto_28
    return-void

    .line 381
    :cond_29
    const-string v0, "VTAB1008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 383
    sput v6, Lcom/opera/mini/android/s;->ao:F

    .line 384
    sput v6, Lcom/opera/mini/android/s;->ap:F

    goto :goto_28

    .line 386
    :cond_36
    const-string v0, "Dell Streak 7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 388
    sput v5, Lcom/opera/mini/android/s;->ao:F

    .line 389
    sput v5, Lcom/opera/mini/android/s;->ap:F

    goto :goto_28

    .line 391
    :cond_43
    const-string v0, "A1_07"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 393
    const/high16 v0, 0x42ff0000    # 127.5f

    sput v0, Lcom/opera/mini/android/s;->ao:F

    .line 394
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/opera/mini/android/s;->ap:F

    goto :goto_28

    .line 396
    :cond_54
    const-string v0, "GT-N710"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "SCH-N719"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "SHV-E250"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 403
    :cond_6c
    const v0, 0x43858000    # 267.0f

    sput v0, Lcom/opera/mini/android/s;->ao:F

    .line 404
    const v0, 0x43858000    # 267.0f

    sput v0, Lcom/opera/mini/android/s;->ap:F

    goto :goto_28

    .line 412
    :cond_77
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_be

    invoke-static {}, Lcom/opera/mini/android/ac;->Code()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-gez v0, :cond_ae

    invoke-static {}, Lcom/opera/mini/android/ac;->Code()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-gez v0, :cond_ae

    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget-object v1, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_be

    .line 417
    :cond_ae
    invoke-static {}, Lcom/opera/mini/android/ac;->Code()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/opera/mini/android/s;->ao:F

    .line 418
    invoke-static {}, Lcom/opera/mini/android/ac;->Code()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/opera/mini/android/s;->ap:F

    goto/16 :goto_28

    .line 422
    :cond_be
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    sput v0, Lcom/opera/mini/android/s;->ao:F

    .line 423
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sput v0, Lcom/opera/mini/android/s;->ap:F

    goto/16 :goto_28
.end method
