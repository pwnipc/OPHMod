.class final Lcom/google/analytics/tracking/android/ae;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/d;


# static fields
.field private static final Code:Ljava/lang/String;


# instance fields
.field private final B:Landroid/content/Context;

.field private final C:Ljava/lang/String;

.field private final I:Lcom/google/analytics/tracking/android/al;

.field private final J:Lcom/google/analytics/tracking/android/e$Code;

.field private volatile Z:Lcom/google/analytics/tracking/android/l;

.field private a:J

.field private b:Lcom/google/analytics/tracking/android/k;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hits2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_string"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "hit_app_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/ae;->Code:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/analytics/tracking/android/e$Code;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 97
    const-string v0, "google_analytics_v2.db"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/e$Code;Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lcom/google/analytics/tracking/android/e$Code;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ae;->B:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/google/analytics/tracking/android/ae;->C:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    .line 113
    new-instance v0, Lcom/google/analytics/tracking/android/ae$1;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/ae$1;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ae;->b:Lcom/google/analytics/tracking/android/k;

    .line 119
    new-instance v0, Lcom/google/analytics/tracking/android/al;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ae;->B:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ae;->C:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/analytics/tracking/android/al;-><init>(Lcom/google/analytics/tracking/android/ae;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ae;->I:Lcom/google/analytics/tracking/android/al;

    .line 120
    new-instance v0, Lcom/google/analytics/tracking/android/l;

    new-instance v1, Lcom/google/analytics/tracking/android/ae$Code;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/ae$Code;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ae;->B:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/l;-><init>(Lcom/google/analytics/tracking/android/ae$Code;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ae;->Z:Lcom/google/analytics/tracking/android/l;

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/ae;->a:J

    .line 124
    return-void
.end method

.method private Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->I:Lcom/google/analytics/tracking/android/al;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/al;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 538
    :goto_6
    return-object v0

    .line 535
    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/ae;)Lcom/google/analytics/tracking/android/k;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->b:Lcom/google/analytics/tracking/android/k;

    return-object v0
.end method

.method private static Code(Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ad;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 292
    :cond_48
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Code(I)Ljava/util/List;
    .registers 17

    .prologue
    .line 304
    const-string v1, "Error opening database for peekHits"

    invoke-direct {p0, v1}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 305
    if-nez v1, :cond_e

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    :cond_d
    :goto_d
    return-object v1

    .line 309
    :cond_e
    const/4 v10, 0x0

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :try_start_14
    const-string v2, "hits2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC, %s ASC"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_url"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "hit_id"

    aput-object v12, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_46} :catch_ec
    .catchall {:try_start_14 .. :try_end_46} :catchall_110

    move-result-object v11

    .line 327
    :try_start_47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 330
    :cond_52
    new-instance v2, Lcom/google/analytics/tracking/android/ac;

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/ac;-><init>(JJ)V

    .line 331
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/ac;->I(Ljava/lang/String;)V

    .line 332
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_6f} :catch_180
    .catchall {:try_start_47 .. :try_end_6f} :catchall_17a

    move-result v2

    if-nez v2, :cond_52

    .line 339
    :cond_72
    if-eqz v11, :cond_77

    .line 340
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_77
    const/4 v12, 0x0

    .line 346
    :try_start_78
    const-string v2, "hits2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_string"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "hit_id"

    aput-object v14, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_a0} :catch_178
    .catchall {:try_start_78 .. :try_end_a0} :catchall_166

    move-result-object v2

    .line 354
    :try_start_a1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e4

    move v3, v12

    .line 356
    :goto_a8
    instance-of v1, v2, Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_117

    .line 357
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-gtz v1, :cond_117

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "hitString for hitId "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ac;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->I()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " too large.  Hit will be deleted."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 370
    :goto_dc
    add-int/lit8 v1, v3, 0x1

    .line 371
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a1 .. :try_end_e1} :catch_126
    .catchall {:try_start_a1 .. :try_end_e1} :catchall_175

    move-result v3

    if-nez v3, :cond_184

    .line 393
    :cond_e4
    if-eqz v2, :cond_e9

    .line 394
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e9
    move-object v1, v10

    goto/16 :goto_d

    .line 335
    :catch_ec
    move-exception v1

    move-object v2, v10

    .line 336
    :goto_ee
    :try_start_ee
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in peekHits fetching hitIds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_109
    .catchall {:try_start_ee .. :try_end_109} :catchall_17d

    .line 339
    if-eqz v2, :cond_d

    .line 340
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 339
    :catchall_110
    move-exception v1

    :goto_111
    if-eqz v10, :cond_116

    .line 340
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_116
    throw v1

    .line 368
    :cond_117
    :try_start_117
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ac;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/analytics/tracking/android/ac;->Code(Ljava/lang/String;)V
    :try_end_125
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_117 .. :try_end_125} :catch_126
    .catchall {:try_start_117 .. :try_end_125} :catchall_175

    goto :goto_dc

    .line 374
    :catch_126
    move-exception v1

    move-object v11, v2

    .line 375
    :goto_128
    :try_start_128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in peekHits fetching hitString: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 379
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 380
    const/4 v1, 0x0

    .line 381
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_149
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/ac;

    .line 382
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ac;->Code()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_162

    .line 383
    if-nez v3, :cond_16d

    .line 384
    const/4 v3, 0x1

    .line 389
    :cond_162
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_165
    .catchall {:try_start_128 .. :try_end_165} :catchall_166

    goto :goto_149

    .line 393
    :catchall_166
    move-exception v1

    :goto_167
    if-eqz v11, :cond_16c

    .line 394
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_16c
    throw v1

    .line 393
    :cond_16d
    if-eqz v11, :cond_172

    .line 394
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_172
    move-object v1, v2

    goto/16 :goto_d

    .line 393
    :catchall_175
    move-exception v1

    move-object v11, v2

    goto :goto_167

    .line 374
    :catch_178
    move-exception v1

    goto :goto_128

    .line 339
    :catchall_17a
    move-exception v1

    move-object v10, v11

    goto :goto_111

    :catchall_17d
    move-exception v1

    move-object v10, v2

    goto :goto_111

    .line 335
    :catch_180
    move-exception v1

    move-object v2, v11

    goto/16 :goto_ee

    :cond_184
    move v3, v1

    goto/16 :goto_a8
.end method

.method private Code(Ljava/util/Collection;)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 430
    if-nez p1, :cond_c

    .line 431
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hits cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 455
    :cond_12
    :goto_12
    return-void

    .line 436
    :cond_13
    const-string v0, "Error opening database for deleteHit"

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 437
    if-eqz v5, :cond_12

    .line 440
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 441
    const-string v0, "HIT_ID in (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, ","

    array-length v7, v6

    const-string v8, "?"

    invoke-static {v7, v8}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 444
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ac;

    .line 445
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ac;->I()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    move v1, v3

    goto :goto_3d

    .line 448
    :cond_57
    :try_start_57
    const-string v0, "hits2"

    invoke-virtual {v5, v0, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ae;->J()I

    move-result v1

    if-nez v1, :cond_65

    move v2, v4

    :cond_65
    invoke-virtual {v0, v2}, Lcom/google/analytics/tracking/android/e$Code;->Code(Z)V
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_68} :catch_69

    goto :goto_12

    .line 453
    :catch_69
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deleting hit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_12
.end method

.method static synthetic I(Lcom/google/analytics/tracking/android/ae;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->C:Ljava/lang/String;

    return-object v0
.end method

.method private J()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 458
    .line 459
    const-string v2, "Error opening database for requestNumHitsPending"

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 460
    if-nez v2, :cond_b

    .line 476
    :cond_a
    :goto_a
    return v0

    .line 465
    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from hits2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 466
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 467
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_30

    move-result-wide v2

    long-to-int v0, v2

    .line 472
    :cond_1e
    if-eqz v1, :cond_a

    .line 473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 470
    :catch_24
    move-exception v2

    :try_start_25
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_30

    .line 472
    if-eqz v1, :cond_a

    .line 473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 472
    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    .line 473
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v0
.end method

.method static synthetic Z(Lcom/google/analytics/tracking/android/ae;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->B:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Z()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/analytics/tracking/android/ae;->Code:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final Code()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 164
    const-string v2, "Error opening database for clearHits"

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_21

    .line 166
    cmp-long v3, v4, v4

    if-nez v3, :cond_22

    .line 167
    const-string v3, "hits2"

    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    :goto_16
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ae;->J()I

    move-result v3

    if-nez v3, :cond_36

    :goto_1e
    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/e$Code;->Code(Z)V

    .line 175
    :cond_21
    return-void

    .line 169
    :cond_22
    new-array v3, v0, [Ljava/lang/String;

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 171
    const-string v4, "hits2"

    const-string v5, "hit_app_id = ?"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16

    :cond_36
    move v0, v1

    .line 173
    goto :goto_1e
.end method

.method public final Code(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ae;->b:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/ae;->a:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    iput-wide v2, p0, Lcom/google/analytics/tracking/android/ae;->a:J

    const-string v2, "Error opening database for deleteStaleHits"

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/google/analytics/tracking/android/ae;->b:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v3}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    const-string v5, "hits2"

    const-string v6, "HIT_TIME < ?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ae;->J()I

    move-result v3

    if-nez v3, :cond_ea

    :goto_3f
    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/e$Code;->Code(Z)V

    .line 194
    :cond_42
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laa;

    invoke-virtual {v0}, Laa;->Code()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appendVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v0}, Laa;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Laa;->I()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_ed

    const-string v0, ""

    :goto_6a
    if-eqz v2, :cond_6f

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_6f
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ae;->J()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_9c

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ae;->Code(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store full, deleting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hits to make room"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/util/Collection;)V

    .line 197
    :cond_9c
    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_e9

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "hit_string"

    invoke-static {p1}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hit_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    :try_start_c5
    const-string v0, "AppUID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d0
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_d0} :catch_fc

    move-result-wide v0

    :goto_d1
    const-string v2, "hit_app_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez p4, :cond_de

    const-string p4, "http://www.google-analytics.com/collect"

    :cond_de
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ff

    const-string v0, "empty path: not sending hit"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 198
    :cond_e9
    :goto_e9
    return-void

    :cond_ea
    move v0, v1

    .line 193
    goto/16 :goto_3f

    .line 194
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6a

    :catch_fc
    move-exception v0

    :cond_fd
    move-wide v0, v1

    goto :goto_d1

    .line 197
    :cond_ff
    const-string v0, "hit_url"

    invoke-virtual {v4, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_104
    const-string v0, "hits2"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/e$Code;->Code(Z)V
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_104 .. :try_end_110} :catch_111

    goto :goto_e9

    :catch_111
    move-exception v0

    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_e9
.end method

.method public final I()V
    .registers 5

    .prologue
    .line 481
    const-string v0, "dispatch running..."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->B(Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->Z:Lcom/google/analytics/tracking/android/l;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/l;->Code()Z

    move-result v0

    if-nez v0, :cond_e

    .line 506
    :cond_d
    :goto_d
    return-void

    .line 487
    :cond_e
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ae;->Code(I)Ljava/util/List;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 489
    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->B(Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ae;->J:Lcom/google/analytics/tracking/android/e$Code;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/e$Code;->Code(Z)V

    goto :goto_d

    .line 493
    :cond_26
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ae;->Z:Lcom/google/analytics/tracking/android/l;

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/l;->Code(Ljava/util/List;)I

    move-result v1

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/af;->B(Ljava/lang/String;)I

    .line 499
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/ae;->Code(Ljava/util/Collection;)V

    .line 503
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_d

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ae;->J()I

    move-result v0

    if-lez v0, :cond_d

    .line 504
    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->Z()V

    goto :goto_d
.end method
