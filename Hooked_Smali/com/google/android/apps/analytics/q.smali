.class final Lcom/google/android/apps/analytics/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final Code:Lcom/google/android/apps/analytics/p;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/analytics/p;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p3, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    return-void
.end method

.method private static Code(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "DROP TABLE IF EXISTS custom_variables;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS custom_var_cache;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_19
    const/4 v1, 0x5

    if-gt v0, v1, :cond_56

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_56
    return-void
.end method

.method private static I(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "DROP TABLE IF EXISTS transaction_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS item_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static J(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "DROP TABLE IF EXISTS referrer;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static Z(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "DROP TABLE IF EXISTS hits;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS install_referrer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS session;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/apps/analytics/q;->Code(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/google/android/apps/analytics/q;->I(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/google/android/apps/analytics/q;->Z(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {p1}, Lcom/google/android/apps/analytics/q;->J(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14

    const/4 v2, 0x0

    const-string v0, "GoogleAnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Downgrading database version from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not recommended."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS referrer (referrer TEXT PRIMARY KEY NOT NULL,timestamp_referrer INTEGER NOT NULL,referrer_visit INTEGER NOT NULL DEFAULT 1,referrer_index INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/p;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v1, "custom_var_cache"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_51
    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    const-string v0, "cv_index"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_51 .. :try_end_68} :catch_69
    .catchall {:try_start_51 .. :try_end_68} :catchall_d3

    goto :goto_51

    :catch_69
    move-exception v0

    :try_start_6a
    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error on downgrade: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_d3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_85
    const/4 v0, 0x1

    move v1, v0

    :goto_87
    const/4 v0, 0x5

    if-gt v1, v0, :cond_f2

    :try_start_8a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "event_id"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cv_scope"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cv_value"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "custom_var_cache"

    const-string v3, "event_id"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_cb} :catch_d8

    :cond_cb
    :goto_cb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_87

    :cond_cf
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_85

    :catchall_d3
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_d8
    move-exception v0

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error inserting custom variable on downgrade: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :cond_f2
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Warning: Need to update database, but it\'s read only."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    return-void

    :cond_12
    :try_start_12
    const-string v1, "referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1e} :catch_d8
    .catchall {:try_start_12 .. :try_end_1e} :catchall_f3

    move-result-object v6

    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    move v2, v10

    move v0, v10

    move v1, v10

    :goto_26
    array-length v4, v3

    if-ge v2, v4, :cond_43

    aget-object v4, v3, v2

    const-string v5, "referrer_index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move v1, v8

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    aget-object v4, v3, v2

    const-string v5, "referrer_visit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v0, v8

    goto :goto_34

    :cond_43
    if-eqz v1, :cond_47

    if-nez v0, :cond_be

    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10c

    const-string v0, "referrer_visit"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "referrer_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Lcom/google/android/apps/analytics/t;

    const-string v1, "referrer"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp_referrer"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-ne v4, v11, :cond_ce

    move v4, v8

    :goto_72
    if-ne v5, v11, :cond_d3

    move v5, v8

    :goto_75
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/t;-><init>(Ljava/lang/String;JII)V

    :goto_78
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/q;->J(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_bb

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/t;->Code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp_referrer"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/t;->I()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "referrer_visit"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/t;->Z()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "referrer_index"

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/t;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "referrer"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_bb
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_be} :catch_109
    .catchall {:try_start_1f .. :try_end_be} :catchall_104

    :cond_be
    if-eqz v6, :cond_c3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/android/apps/analytics/p;->Z(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto/16 :goto_11

    :cond_ce
    :try_start_ce
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_72

    :cond_d3
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ce .. :try_end_d6} :catch_109
    .catchall {:try_start_ce .. :try_end_d6} :catchall_104

    move-result v5

    goto :goto_75

    :catch_d8
    move-exception v0

    move-object v1, v9

    :goto_da
    :try_start_da
    const-string v2, "GoogleAnalyticsTracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_106

    if-eqz v1, :cond_e8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/android/apps/analytics/p;->Z(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto/16 :goto_11

    :catchall_f3
    move-exception v0

    move-object v6, v9

    :goto_f5
    if-eqz v6, :cond_fa

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_fa
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-static {p1}, Lcom/google/android/apps/analytics/p;->Z(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_103
    throw v0

    :catchall_104
    move-exception v0

    goto :goto_f5

    :catchall_106
    move-exception v0

    move-object v6, v1

    goto :goto_f5

    :catch_109
    move-exception v0

    move-object v1, v6

    goto :goto_da

    :cond_10c
    move-object v0, v9

    goto/16 :goto_78
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 19

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_a

    invoke-virtual/range {p0 .. p3}, Lcom/google/android/apps/analytics/q;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ge v0, v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/q;->Code(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_17
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ge v0, v2, :cond_24

    const/4 v2, 0x2

    move/from16 v0, p3

    if-le v0, v2, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/q;->I(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_24
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_9

    const/4 v2, 0x3

    move/from16 v0, p3

    if-le v0, v2, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/q;->Z(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/q;->J(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/analytics/p;->I(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    iget-object v3, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/analytics/p;->Code(Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/apps/analytics/J;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/analytics/p;->Code(Lcom/google/android/apps/analytics/p;Lcom/google/android/apps/analytics/J;)Lcom/google/android/apps/analytics/J;

    iget-object v2, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/analytics/p;->Code(Landroid/database/sqlite/SQLiteDatabase;I)[Lcom/google/android/apps/analytics/a;

    move-result-object v3

    const/4 v2, 0x0

    :goto_4d
    array-length v4, v3

    if-ge v2, v4, :cond_5c

    iget-object v4, p0, Lcom/google/android/apps/analytics/q;->Code:Lcom/google/android/apps/analytics/p;

    aget-object v5, v3, v2

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lcom/google/android/apps/analytics/p;->Code(Lcom/google/android/apps/analytics/p;Lcom/google/android/apps/analytics/a;Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_5c
    const-string v2, "DELETE from events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from item_events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from transaction_events;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "DELETE from custom_variables;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_7a
    const-string v3, "install_referrer"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "referrer"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_8e} :catch_f0
    .catchall {:try_start_7a .. :try_end_8e} :catchall_108

    move-result-object v11

    const-wide/16 v12, 0x0

    :try_start_91
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_123

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "session"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_91 .. :try_end_a9} :catch_11a
    .catchall {:try_start_91 .. :try_end_a9} :catchall_108

    move-result-object v3

    :try_start_aa
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_121

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :goto_b5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "referrer"

    invoke-virtual {v2, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "timestamp_referrer"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "referrer_visit"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "referrer_index"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "referrer"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_aa .. :try_end_e4} :catch_11e
    .catchall {:try_start_aa .. :try_end_e4} :catchall_115

    :goto_e4
    if-eqz v11, :cond_e9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e9
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    :catch_f0
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    :goto_f3
    :try_start_f3
    const-string v5, "GoogleAnalyticsTracker"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_117

    if-eqz v4, :cond_101

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_101
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    :catchall_108
    move-exception v2

    move-object v3, v10

    :goto_10a
    if-eqz v11, :cond_10f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10f
    if-eqz v3, :cond_114

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_114
    throw v2

    :catchall_115
    move-exception v2

    goto :goto_10a

    :catchall_117
    move-exception v2

    move-object v11, v4

    goto :goto_10a

    :catch_11a
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto :goto_f3

    :catch_11e
    move-exception v2

    move-object v4, v11

    goto :goto_f3

    :cond_121
    move-wide v4, v12

    goto :goto_b5

    :cond_123
    move-object v3, v10

    goto :goto_e4
.end method
