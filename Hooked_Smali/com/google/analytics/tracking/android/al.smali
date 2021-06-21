.class final Lcom/google/analytics/tracking/android/al;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Source"


# instance fields
.field private Code:Z

.field private I:J

.field private synthetic Z:Lcom/google/analytics/tracking/android/ae;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ae;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/analytics/tracking/android/al;->Z:Lcom/google/analytics/tracking/android/ae;

    .line 562
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 550
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/al;->I:J

    .line 563
    return-void
.end method

.method private static Code(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 577
    .line 579
    :try_start_2
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_26
    .catchall {:try_start_2 .. :try_end_1b} :catchall_41

    move-result-object v1

    .line 586
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1f} :catch_4f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_48

    move-result v0

    .line 591
    if-eqz v1, :cond_25

    .line 592
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    return v0

    .line 588
    :catch_26
    move-exception v0

    move-object v0, v9

    :goto_28
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error querying for table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_4b

    .line 589
    if-eqz v0, :cond_3f

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3f
    move v0, v8

    goto :goto_25

    .line 591
    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v9, :cond_47

    .line 592
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0

    .line 591
    :catchall_48
    move-exception v0

    move-object v9, v1

    goto :goto_42

    :catchall_4b
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_42

    .line 588
    :catch_4f
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/al;->Code:Z

    if-eqz v0, :cond_20

    .line 610
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/al;->I:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/al;->Z:Lcom/google/analytics/tracking/android/ae;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ae;->Code(Lcom/google/analytics/tracking/android/ae;)Lcom/google/analytics/tracking/android/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 612
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_20
    const/4 v0, 0x0

    .line 616
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/al;->Code:Z

    .line 617
    iget-object v1, p0, Lcom/google/analytics/tracking/android/al;->Z:Lcom/google/analytics/tracking/android/ae;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ae;->Code(Lcom/google/analytics/tracking/android/ae;)Lcom/google/analytics/tracking/android/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/al;->I:J

    .line 619
    :try_start_30
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_33} :catch_3e

    move-result-object v0

    .line 624
    :goto_34
    if-nez v0, :cond_3a

    .line 625
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 627
    :cond_3a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/al;->Code:Z

    .line 628
    return-object v0

    .line 622
    :catch_3e
    move-exception v1

    iget-object v1, p0, Lcom/google/analytics/tracking/android/al;->Z:Lcom/google/analytics/tracking/android/ae;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ae;->Z(Lcom/google/analytics/tracking/android/ae;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/al;->Z:Lcom/google/analytics/tracking/android/ae;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ae;->I(Lcom/google/analytics/tracking/android/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_34
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 692
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/analytics/tracking/android/r;->Code()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 693
    :cond_1f
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 635
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_14

    .line 636
    const-string v1, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 639
    :try_start_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_24

    .line 641
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_14
    const-string v1, "hits2"

    invoke-static {v1, p1}, Lcom/google/analytics/tracking/android/al;->Code(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 645
    invoke-static {}, Lcom/google/analytics/tracking/android/ae;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    :cond_23
    :goto_23
    return-void

    .line 641
    :catchall_24
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 647
    :cond_29
    const-string v1, "SELECT * FROM hits2 WHERE 0"

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    move v1, v0

    :goto_39
    array-length v5, v4

    if-ge v1, v5, :cond_44

    aget-object v5, v4, v1

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_6f

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v1, "hit_id"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "hit_url"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "hit_string"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "hit_time"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    :cond_67
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_6f
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_74
    const-string v1, "hit_app_id"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    const/4 v0, 0x1

    :cond_7d
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    if-eqz v0, :cond_23

    const-string v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 701
    return-void
.end method
