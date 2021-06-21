.class public Lcom/opera/mini/android/OpMiniInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static Code(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    const-string v0, "analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    const-string v1, "referrer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 50
    invoke-static {p0}, Lcom/opera/mini/android/OpMiniInstallReferrerReceiver;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 52
    invoke-static {p0, v0}, Lcom/opera/mini/android/OpMiniInstallReferrerReceiver;->Code(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :cond_22
    return-object v0
.end method

.method private static Code(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    const-string v0, "analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    const-string v1, "referrer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/google/android/apps/analytics/d;->Code()Lcom/google/android/apps/analytics/d;

    move-result-object v2

    .line 60
    if-nez v2, :cond_9

    move-object v0, v1

    .line 83
    :goto_8
    return-object v0

    .line 65
    :cond_9
    :try_start_9
    invoke-virtual {v2, p0}, Lcom/google/android/apps/analytics/d;->Code(Landroid/content/Context;)V

    .line 66
    const-string v0, "getHitStore"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/opera/mini/android/bn;->Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_3b
    .catchall {:try_start_9 .. :try_end_14} :catchall_41

    move-result-object v0

    .line 67
    if-nez v0, :cond_1c

    .line 69
    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->J()V

    move-object v0, v1

    goto :goto_8

    .line 71
    :cond_1c
    :try_start_1c
    const-string v3, "getReferrer"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/opera/mini/android/bn;->Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_3b
    .catchall {:try_start_1c .. :try_end_24} :catchall_41

    move-result-object v0

    .line 72
    if-nez v0, :cond_2c

    .line 74
    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->J()V

    move-object v0, v1

    goto :goto_8

    .line 76
    :cond_2c
    :try_start_2c
    const-string v3, "getReferrerString"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/opera/mini/android/bn;->Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_3b
    .catchall {:try_start_2c .. :try_end_37} :catchall_41

    .line 81
    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->J()V

    goto :goto_8

    :catch_3b
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->J()V

    move-object v0, v1

    .line 83
    goto :goto_8

    .line 81
    :catchall_41
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/d;->J()V

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 24
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/opera/mini/android/OpMiniInstallReferrerReceiver;->Code(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 28
    invoke-static {p1}, Lcom/google/analytics/tracking/android/g;->Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/g;->Code(Z)V

    new-instance v0, Lcom/google/analytics/tracking/android/CampaignTrackingReceiver;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/CampaignTrackingReceiver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/CampaignTrackingReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    :cond_1e
    return-void
.end method
