.class public final Lcom/opera/mini/android/notifications/Z;
.super Lcom/opera/mini/android/notifications/k;
.source "Source"


# instance fields
.field Code:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;)V
    .registers 10

    .prologue
    .line 63
    const-string v3, "MobileStore"

    const v4, 0x7f040001

    const-string v5, "http://mobilestore.opera.com"

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/opera/mini/android/notifications/k;-><init>(Lcom/opera/mini/android/notifications/g;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;B)V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Code:Ljava/text/SimpleDateFormat;

    .line 64
    new-instance v0, Lcom/opera/mini/android/notifications/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/notifications/J;-><init>(Lcom/opera/mini/android/notifications/Z;B)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/Z;)V
    .registers 7

    .prologue
    .line 24
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->Z()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/opera/mini/android/notifications/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/opera/mini/android/notifications/Z;->f()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-direct {p0}, Lcom/opera/mini/android/notifications/Z;->g()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/notifications/B;->Code(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    const-string v3, "MobileStore:last_checked_utc"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    const-string v3, "MobileStore:check_interval"

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4a

    const/4 v0, 0x1

    :goto_47
    if-nez v0, :cond_4c

    :cond_49
    :goto_49
    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_47

    :cond_4c
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MobileStore:last_checked_utc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    new-instance v0, Lcom/opera/mini/android/notifications/Z$1;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/notifications/Z$1;-><init>(Lcom/opera/mini/android/notifications/Z;)V

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/Z$1;->start()V

    goto :goto_49
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/Z;J)V
    .registers 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MobileStore:check_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/notifications/Z;Z)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/Z;->I(Z)V

    return-void
.end method

.method static synthetic I(Lcom/opera/mini/android/notifications/Z;)V
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MobileStore:oms_visited"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private I(Z)V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MobileStore:have_new_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 136
    return-void
.end method

.method private f()Z
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    const-string v1, "MobileStore:have_new_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/opera/mini/android/notifications/Z;->Z:Landroid/content/SharedPreferences;

    const-string v1, "MobileStore:oms_visited"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final Code()J
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/opera/mini/android/notifications/Z;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/opera/mini/android/notifications/Z;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    invoke-super {p0}, Lcom/opera/mini/android/notifications/k;->Code()J

    move-result-wide v0

    .line 74
    :goto_10
    return-wide v0

    :cond_11
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_10
.end method

.method protected final I()V
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/opera/mini/android/notifications/k;->I()V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/opera/mini/android/notifications/Z;->I(Z)V

    .line 82
    return-void
.end method
