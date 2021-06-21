.class final Lcom/opera/mini/android/notifications/n;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/m;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/m;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/m;B)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/n;-><init>(Lcom/opera/mini/android/notifications/m;)V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Lcom/opera/mini/android/events/ActivityPausedEvent;)V
    .registers 6
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    iget-object v0, v0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    const-string v1, "SavedData:bytes_received"

    invoke-static {}, Lcom/opera/mini/android/bl;->Code()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    const-string v1, "SavedData:saved_percent"

    invoke-static {}, Lcom/opera/mini/android/bl;->J()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 72
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/m;->Z(Lcom/opera/mini/android/notifications/m;)V

    .line 73
    return-void
.end method

.method public final onOpenUrl(Lcom/opera/mini/android/events/OpenUrlEvent;)V
    .registers 3
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/m;->Code(Lcom/opera/mini/android/notifications/m;)V

    .line 52
    return-void
.end method

.method public final onPowerConnected(Lcom/opera/mini/android/events/OnPowerConnected;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/m;->Code(Lcom/opera/mini/android/notifications/m;Z)Z

    .line 58
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/m;->I(Lcom/opera/mini/android/notifications/m;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    iget-object v0, v0, Lcom/opera/mini/android/notifications/m;->J:Lcom/opera/mini/android/notifications/g;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->Code()V

    .line 62
    :cond_15
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/m;->Code(Lcom/opera/mini/android/notifications/m;Z)Z

    .line 63
    return-void
.end method

.method public final onServerNotificationSettingsReceived(Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;)V
    .registers 6
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    iget-object v0, v0, Lcom/opera/mini/android/notifications/m;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    const-string v1, "SavedData:min_bytes_received"

    iget v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->B:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v1, "SavedData:max_bytes_received"

    iget v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->C:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v1, "SavedData:max_pages_opened"

    iget v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v1, "SavedData:delay_after_power_connected"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string v1, "SavedData:wait"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 45
    iget-object v0, p0, Lcom/opera/mini/android/notifications/n;->Code:Lcom/opera/mini/android/notifications/m;

    iget-boolean v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->e:Z

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/notifications/m;->Code(Z)V

    .line 46
    return-void
.end method
