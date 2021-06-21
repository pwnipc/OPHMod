.class public final Lcom/opera/mini/android/notifications/g;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Lcom/opera/mini/android/notifications/g;


# instance fields
.field private B:Lcom/opera/mini/android/notifications/f;

.field private C:Z

.field private I:Landroid/content/SharedPreferences;

.field private J:Ljava/util/Map;

.field private Z:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/opera/mini/android/notifications/h;

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/h;-><init>(Lcom/opera/mini/android/notifications/g;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lcom/opera/mini/android/notifications/g;->Z:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 114
    new-instance v0, Lcom/opera/mini/android/notifications/f;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/notifications/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/opera/mini/android/notifications/g;->B:Lcom/opera/mini/android/notifications/f;

    .line 117
    :cond_1b
    const-string v0, "notifications"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    .line 119
    new-instance v0, Lcom/opera/mini/android/notifications/Code;

    iget-object v1, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/Code;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V

    .line 120
    new-instance v1, Lcom/opera/mini/android/notifications/m;

    iget-object v2, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/opera/mini/android/notifications/m;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V

    .line 121
    new-instance v2, Lcom/opera/mini/android/notifications/Z;

    iget-object v3, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    invoke-direct {v2, p0, v3}, Lcom/opera/mini/android/notifications/Z;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V

    .line 122
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    .line 123
    iget-object v3, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/Code;->C()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/opera/mini/android/notifications/m;->C()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/opera/mini/android/notifications/Z;->C()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/g;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/opera/mini/android/notifications/g;->Code:Lcom/opera/mini/android/notifications/g;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/opera/mini/android/notifications/g;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/notifications/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opera/mini/android/notifications/g;->Code:Lcom/opera/mini/android/notifications/g;

    .line 45
    :cond_b
    sget-object v0, Lcom/opera/mini/android/notifications/g;->Code:Lcom/opera/mini/android/notifications/g;

    return-object v0
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/g;Z)Z
    .registers 2

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/opera/mini/android/notifications/g;->C:Z

    return p1
.end method


# virtual methods
.method public final B()J
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    const-string v1, "last_in_foreground_utc"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()Lcom/opera/mini/android/notifications/f;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->B:Lcom/opera/mini/android/notifications/f;

    return-object v0
.end method

.method public final Code(Ljava/lang/String;)Lcom/opera/mini/android/notifications/o;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/notifications/o;

    return-object v0
.end method

.method public final Code()V
    .registers 9

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    .line 135
    iget-boolean v0, p0, Lcom/opera/mini/android/notifications/g;->C:Z

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/g;->Z()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 138
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v3

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/notifications/o;

    .line 140
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->b()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 142
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->Code()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_34
    move-wide v1, v0

    goto :goto_1a

    .line 145
    :cond_36
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/opera/mini/android/notifications/g;->Z:Landroid/content/Context;

    const-class v6, Lcom/opera/mini/android/notifications/NotificationAlarmReceiver;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/opera/mini/android/notifications/g;->Z:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->Z:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    cmp-long v3, v1, v3

    if-eqz v3, :cond_71

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OperaNotificationManager.notifyOrReschedule() delay="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    add-long/2addr v1, v3

    invoke-virtual {v0, v6, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 147
    :cond_71
    return-void

    :cond_72
    move-wide v0, v1

    goto :goto_34
.end method

.method public final I()Landroid/content/Context;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->Z:Landroid/content/Context;

    return-object v0
.end method

.method public final J()J
    .registers 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    const-string v1, "first_start_time_utc"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Z()Z
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    const-string v1, "notifications_enabled_by_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a()[B
    .registers 6

    .prologue
    .line 195
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/notifications/o;

    .line 199
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->e()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 201
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->B()B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 203
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_14

    .line 208
    :catch_3c
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OperaNotificationManager.getMiniStatsHeader() exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x0

    :goto_4c
    return-object v0

    .line 206
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3c

    move-result-object v0

    goto :goto_4c
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/notifications/o;

    .line 219
    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/o;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/opera/mini/android/notifications/g;->I:Landroid/content/SharedPreferences;

    const-string v1, "ga_tracking_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
