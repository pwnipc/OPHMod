.class final Lcom/opera/mini/android/notifications/l;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/k;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/k;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/opera/mini/android/notifications/l;->Code:Lcom/opera/mini/android/notifications/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/k;B)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/l;-><init>(Lcom/opera/mini/android/notifications/k;)V

    return-void
.end method


# virtual methods
.method public final onNewServerNotificationSettings(Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;)V
    .registers 6
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/opera/mini/android/notifications/l;->Code:Lcom/opera/mini/android/notifications/k;

    iget-object v0, v0, Lcom/opera/mini/android/notifications/k;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    const-string v1, "prime_time_start"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Z:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string v1, "prime_time_end"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->J:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v1, "prime_time_app_paused_protected_time"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 34
    const-string v1, "prime_time_fresh_run_protected_time"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v1, "prime_time_allowed_for"

    iget-wide v2, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/SharedPreferences$Editor;)V

    .line 37
    return-void
.end method
