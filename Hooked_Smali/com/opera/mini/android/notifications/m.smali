.class public final Lcom/opera/mini/android/notifications/m;
.super Lcom/opera/mini/android/notifications/o;
.source "Source"


# instance fields
.field private Code:Z


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V
    .registers 10

    .prologue
    .line 81
    const-string v3, "SavedData"

    const v4, 0x7f040003

    const-string v5, "opera:data_usage"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/opera/mini/android/notifications/o;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V

    .line 82
    new-instance v0, Lcom/opera/mini/android/notifications/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/n;-><init>(Lcom/opera/mini/android/notifications/m;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/m;)V
    .registers 6

    .prologue
    .line 17
    iget-object v0, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SavedData:open_url_counter"

    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:open_url_counter"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/m;Z)Z
    .registers 2

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/opera/mini/android/notifications/m;->Code:Z

    return p1
.end method

.method private I(Z)V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SavedData:notified"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    return-void
.end method

.method static synthetic I(Lcom/opera/mini/android/notifications/m;)Z
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/opera/mini/android/notifications/m;->Z()Z

    move-result v0

    return v0
.end method

.method static synthetic Z(Lcom/opera/mini/android/notifications/m;)V
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/opera/mini/android/notifications/m;->I(Z)V

    return-void
.end method

.method private Z()Z
    .registers 13

    .prologue
    const-wide/32 v10, 0x7fffffff

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:notified"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/opera/mini/android/notifications/m;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v4}, Lcom/opera/mini/android/notifications/g;->B()J

    move-result-wide v4

    iget-object v6, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v7, "SavedData:wait"

    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_75

    move v2, v0

    :goto_29
    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:bytes_received"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v5, "SavedData:min_bytes_received"

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_77

    iget-object v4, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v5, "SavedData:max_bytes_received"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_77

    move v2, v0

    :goto_4c
    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:open_url_counter"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_79

    iget-object v3, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v4, "SavedData:max_pages_opened"

    const v5, 0x7fffffff

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-gt v2, v3, :cond_79

    move v2, v0

    :goto_66
    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:saved_percent"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_7b

    :goto_74
    return v0

    :cond_75
    move v2, v1

    goto :goto_29

    :cond_77
    move v2, v1

    goto :goto_4c

    :cond_79
    move v2, v1

    goto :goto_66

    :cond_7b
    move v0, v1

    goto :goto_74
.end method


# virtual methods
.method protected final Code()J
    .registers 7

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/opera/mini/android/notifications/m;->Z()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 90
    iget-boolean v0, p0, Lcom/opera/mini/android/notifications/m;->Code:Z

    if-eqz v0, :cond_1b

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    const-string v3, "SavedData:delay_after_power_connected"

    const-wide/32 v4, 0x7fffffff

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 98
    :goto_1a
    return-wide v0

    .line 95
    :cond_1b
    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/m;->I()V

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/opera/mini/android/notifications/m;->I(Z)V

    .line 98
    :cond_22
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1a
.end method
