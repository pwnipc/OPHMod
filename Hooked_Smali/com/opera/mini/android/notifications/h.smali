.class final Lcom/opera/mini/android/notifications/h;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/g;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/g;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/g;B)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/h;-><init>(Lcom/opera/mini/android/notifications/g;)V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Lcom/opera/mini/android/events/ActivityPausedEvent;)V
    .registers 6
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 84
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_30

    iget-object v0, p1, Lcom/opera/mini/android/events/ActivityPausedEvent;->Code:Landroid/app/Activity;

    invoke-static {v0}, Lcom/opera/mini/android/ad;->Code(Landroid/content/Context;)Z

    move-result v0

    .line 86
    :goto_b
    if-eqz v0, :cond_13

    .line 88
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;Z)Z

    .line 90
    :cond_13
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_in_foreground_utc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 92
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->Code()V

    .line 93
    return-void

    .line 84
    :cond_30
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public final onActivityResumed(Lcom/opera/mini/android/events/ActivityResumeEvent;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;Z)Z

    .line 79
    return-void
.end method

.method public final onBreamInitialized(Lcom/opera/mini/android/events/BreamInitializedEvent;)V
    .registers 6
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    const-string v1, "notifications_enabled_by_user"

    invoke-static {}, Lcom/opera/mini/android/bl;->I()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v1, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-static {v1}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_start_time_utc"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 70
    const-string v1, "first_start_time_utc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_2a
    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 73
    return-void
.end method

.method public final onNotificationAlarm(Lcom/opera/mini/android/notifications/e;)V
    .registers 3
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->Code()V

    .line 99
    return-void
.end method

.method public final onNotificationSettingChanged(Lcom/opera/mini/android/events/NotificationSettingChangedEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_enabled_by_user"

    iget-boolean v2, p1, Lcom/opera/mini/android/events/NotificationSettingChangedEvent;->Code:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 60
    return-void
.end method

.method public final onServerNotificationSettingEvent(Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/opera/mini/android/notifications/h;->Code:Lcom/opera/mini/android/notifications/g;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Lcom/opera/mini/android/notifications/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ga_tracking_id"

    iget-object v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 54
    return-void
.end method
