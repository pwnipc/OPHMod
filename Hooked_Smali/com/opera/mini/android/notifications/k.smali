.class public abstract Lcom/opera/mini/android/notifications/k;
.super Lcom/opera/mini/android/notifications/o;
.source "Source"


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V
    .registers 9

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/opera/mini/android/notifications/o;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V

    .line 44
    iput-object p3, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/opera/mini/android/notifications/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/l;-><init>(Lcom/opera/mini/android/notifications/k;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method private f()J
    .registers 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    const-string v1, "prime_time_start"

    const-wide/32 v2, 0x7fffffff

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected Code()J
    .registers 16

    .prologue
    const-wide/32 v13, 0xea60

    const-wide v2, 0x7fffffffffffffffL

    const-wide/32 v11, 0x7fffffff

    .line 51
    iget-object v0, p0, Lcom/opera/mini/android/notifications/k;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->B()J

    move-result-wide v0

    iget-object v4, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    const-string v5, "prime_time_app_paused_protected_time"

    invoke-interface {v4, v5, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/opera/mini/android/notifications/k;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v4}, Lcom/opera/mini/android/notifications/g;->J()J

    move-result-wide v4

    iget-object v6, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    const-string v7, "prime_time_fresh_run_protected_time"

    invoke-interface {v6, v7, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/k;->J()J

    move-result-wide v6

    iget-object v8, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":interval"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 56
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    .line 58
    int-to-long v5, v4

    invoke-direct {p0}, Lcom/opera/mini/android/notifications/k;->f()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_b8

    .line 60
    invoke-direct {p0}, Lcom/opera/mini/android/notifications/k;->f()J

    move-result-wide v5

    int-to-long v7, v4

    sub-long v4, v5, v7

    mul-long/2addr v4, v13

    add-long/2addr v0, v4

    .line 68
    :cond_7a
    :goto_7a
    iget-object v4, p0, Lcom/opera/mini/android/notifications/k;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v4}, Lcom/opera/mini/android/notifications/g;->B()J

    move-result-wide v4

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    const-string v7, "prime_time_allowed_for"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_d4

    const/4 v4, 0x1

    :goto_8f
    if-nez v4, :cond_d6

    .line 71
    :goto_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PrimeTimeNotification"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    cmp-long v4, v0, v4

    if-gtz v4, :cond_d8

    .line 76
    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/k;->I()V

    .line 77
    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/k;->Z()V

    .line 81
    :goto_b7
    return-wide v2

    .line 63
    :cond_b8
    int-to-long v5, v4

    iget-object v7, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    const-string v8, "prime_time_end"

    const-wide/16 v9, -0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_7a

    .line 65
    const-wide/32 v5, 0x5265c00

    add-long/2addr v0, v5

    int-to-long v4, v4

    invoke-direct {p0}, Lcom/opera/mini/android/notifications/k;->f()J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v4, v13

    sub-long/2addr v0, v4

    goto :goto_7a

    .line 68
    :cond_d4
    const/4 v4, 0x0

    goto :goto_8f

    :cond_d6
    move-wide v0, v2

    goto :goto_91

    :cond_d8
    move-wide v2, v0

    goto :goto_b7
.end method

.method protected final Code(J)V
    .registers 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 102
    return-void
.end method

.method protected final J()J
    .registers 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":timestamp_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final Z()V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opera/mini/android/notifications/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":timestamp_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    return-void
.end method
