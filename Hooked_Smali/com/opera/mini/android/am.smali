.class public final Lcom/opera/mini/android/am;
.super Lcn;
.source "Source"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private B:Landroid/database/sqlite/SQLiteStatement;

.field private C:Landroid/content/Context;

.field private I:Landroid/database/sqlite/SQLiteDatabase;

.field private J:Landroid/database/sqlite/SQLiteStatement;

.field private Z:Landroid/database/sqlite/SQLiteStatement;

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/16 v0, 0xd

    invoke-static {v0}, Lar;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/am;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcn;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/am;->a:Z

    .line 57
    iput-object p1, p0, Lcom/opera/mini/android/am;->C:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private B(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 355
    const/4 v1, 0x0

    .line 359
    :try_start_2
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT record_id, record FROM rms WHERE store = ? AND record NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v2, v0

    .line 362
    :goto_15
    if-ge v2, v3, :cond_45

    .line 364
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 365
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 366
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 367
    invoke-static {v4}, Lar;->I([B)Z

    move-result v5

    if-nez v5, :cond_31

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;I)V

    .line 362
    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 374
    :cond_31
    invoke-static {v4}, Lar;->Code([B)I

    move-result v5

    invoke-static {v4, v5}, Lar;->Code([BI)Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_4c

    move-result v4

    if-eqz v4, :cond_2d

    .line 384
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    :goto_44
    return v0

    .line 380
    :cond_45
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    const/4 v0, -0x1

    goto :goto_44

    :catchall_4c
    move-exception v0

    if-eqz v1, :cond_52

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
.end method

.method public static Code(Landroid/content/Context;)Lcom/opera/mini/android/am;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/opera/mini/android/am;->Code:Lcn;

    if-nez v0, :cond_7

    .line 50
    invoke-static {p0}, Lcom/opera/mini/android/am;->I(Landroid/content/Context;)V

    .line 52
    :cond_7
    sget-object v0, Lcom/opera/mini/android/am;->Code:Lcn;

    check-cast v0, Lcom/opera/mini/android/am;

    return-object v0
.end method

.method private declared-synchronized I()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 78
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/opera/mini/android/am;->C:Landroid/content/Context;

    const-string v2, "operamini.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10000010

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 87
    iget-object v2, p0, Lcom/opera/mini/android/am;->C:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/opera/mini/android/I;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_43

    .line 90
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "VACUUM"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    :cond_43
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 93
    if-eq v1, v6, :cond_69

    .line 95
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_83

    .line 97
    if-nez v1, :cond_6d

    .line 98
    :try_start_52
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE rms (store TEXT, record_id INTEGER,record BLOB, PRIMARY KEY (store, record_id));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    :goto_59
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 103
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_7c

    .line 105
    :try_start_64
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    :cond_69
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_83

    .line 109
    monitor-exit p0

    return-void

    .line 100
    :cond_6d
    :try_start_6d
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DROP TABLE IF EXISTS android_metadata;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-gt v1, v2, :cond_94

    :goto_79
    iput-boolean v0, p0, Lcom/opera/mini/android/am;->a:Z
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_7c

    goto :goto_59

    .line 105
    :catchall_7c
    move-exception v0

    :try_start_7d
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_83

    .line 115
    :catchall_83
    move-exception v0

    :try_start_84
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    :cond_90
    throw v0
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_91

    .line 78
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_94
    const/4 v0, 0x0

    goto :goto_79
.end method

.method public static I(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lcom/opera/mini/android/am;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/am;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-direct {v0}, Lcom/opera/mini/android/am;->I()V

    iget-object v1, v0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT MAX(record_id) FROM rms WHERE store=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, v0, Lcom/opera/mini/android/am;->Z:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, v0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT MIN(record_id) FROM rms WHERE store=? AND record NOT NULL"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, v0, Lcom/opera/mini/android/am;->J:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, v0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(record_id) FROM rms WHERE store=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, v0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    .line 64
    sput-object v0, Lcom/opera/mini/android/am;->Code:Lcn;

    .line 65
    return-void
.end method

.method private Z(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 391
    const-string v1, "store"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "record_id"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string v1, "record"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rms"

    const-string v3, "record"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 395
    return-void
.end method


# virtual methods
.method public final declared-synchronized Code(Ljava/lang/String;[B)I
    .registers 8

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/am;->Z:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/opera/mini/android/am;->Z:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/opera/mini/android/am;->Z:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    add-int/lit8 v0, v0, 0x1

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string v2, "store"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "record_id"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v2, "record"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 141
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "rms"

    const-string v4, "record"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 142
    monitor-exit p0

    return v0

    .line 136
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Code()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 401
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    .line 404
    :cond_c
    return-void
.end method

.method public final Code(Ljava/lang/String;I[B)V
    .registers 8

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    const-string v1, "store"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "record_id"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v1, "record"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 206
    iget-object v1, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rms"

    const-string v3, "record"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 207
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    new-instance v0, Ljava/io/IOException;

    const-string v1, "An error occurred in setRecord"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_31
    return-void
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 7

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/am;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 305
    if-lez v0, :cond_24

    .line 307
    invoke-static {p2, p3, p4}, Lar;->Code(Ljava/lang/String;[BI)[B

    move-result-object v1

    .line 308
    invoke-virtual {p0, p1, v0, v1}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;I[B)V

    .line 309
    iget-boolean v0, p0, Lcom/opera/mini/android/am;->a:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/opera/mini/android/am;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 313
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/am;->a:Z

    .line 323
    :cond_23
    :goto_23
    return-void

    .line 320
    :cond_24
    invoke-static {p2, p3, p4}, Lar;->Code(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;[B)I

    goto :goto_23
.end method

.method public final declared-synchronized Code(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_3 .. :try_end_e} :catch_19
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    .line 130
    :goto_15
    monitor-exit p0

    return v0

    :cond_17
    move v0, v1

    .line 126
    goto :goto_15

    .line 130
    :catch_19
    move-exception v0

    move v0, v1

    goto :goto_15

    .line 125
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Code(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/am;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final Code(Ljava/lang/String;I)[B
    .registers 9

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT record FROM rms WHERE store = ? AND record_id = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_29

    .line 153
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    .line 161
    :catchall_22
    move-exception v0

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_28
    throw v0

    .line 155
    :cond_29
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_22

    move-result-object v0

    .line 161
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v0
.end method

.method public final I(Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 240
    const/4 v1, 0x0

    .line 243
    :try_start_2
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT record_id, record FROM rms WHERE store=? AND record NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 244
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 245
    :goto_14
    if-ge v0, v2, :cond_46

    .line 247
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 248
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 249
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 250
    invoke-static {v4}, Lar;->I([B)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 253
    invoke-direct {p0, p1, v3}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;I)V

    .line 245
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 257
    :cond_2f
    invoke-static {v4}, Lar;->Code([B)I

    move-result v5

    invoke-static {v4, v5}, Lar;->Code([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lar;->J(Ljava/lang/String;)I

    move-result v4

    .line 258
    if-ne v4, p2, :cond_2c

    .line 260
    invoke-direct {p0, p1, v3}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_4c

    .line 267
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_45
    :goto_45
    return-void

    .line 267
    :cond_46
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_45

    :catchall_4c
    move-exception v0

    if-eqz v1, :cond_52

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/am;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 232
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 234
    invoke-direct {p0, p1, v0}, Lcom/opera/mini/android/am;->Z(Ljava/lang/String;I)V

    .line 236
    :cond_a
    return-void
.end method

.method public final declared-synchronized I(Ljava/lang/String;)[B
    .registers 8

    .prologue
    .line 167
    monitor-enter p0

    const/4 v1, 0x0

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/opera/mini/android/am;->J:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 174
    iget-object v0, p0, Lcom/opera/mini/android/am;->B:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 175
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_31

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Record not found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_27

    .line 196
    :catchall_27
    move-exception v0

    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2d
    throw v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 167
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/opera/mini/android/am;->J:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/opera/mini/android/am;->J:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 181
    if-nez v0, :cond_46

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Record not found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_46
    iget-object v2, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT record FROM rms WHERE store=? AND record_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_63

    .line 189
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 191
    :cond_63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_6a
    .catchall {:try_start_31 .. :try_end_6a} :catchall_27

    move-result-object v0

    .line 196
    if-eqz v1, :cond_70

    :try_start_6d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_2e

    :cond_70
    monitor-exit p0

    return-object v0
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;)Lax;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 285
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/am;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 288
    if-lez v1, :cond_28

    .line 290
    invoke-virtual {p0, p1, v1}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;I)[B

    move-result-object v1

    .line 291
    invoke-static {v1}, Lar;->Code([B)I

    move-result v2

    .line 292
    new-array v3, v2, [B

    .line 293
    new-instance v0, Lax;

    invoke-direct {v0}, Lax;-><init>()V

    .line 294
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, v0, Lax;->Code:Ljava/io/DataInputStream;

    .line 296
    iput v2, v0, Lax;->I:I

    .line 298
    :cond_28
    return-object v0
.end method

.method public final Z(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/opera/mini/android/am;->I:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "rms"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "store=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 222
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/am;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 276
    if-lez v0, :cond_b

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/opera/mini/android/am;->Code(Ljava/lang/String;I)[B

    move-result-object v0

    .line 280
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
