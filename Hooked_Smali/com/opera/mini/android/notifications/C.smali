.class public final Lcom/opera/mini/android/notifications/C;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Code(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/opera/mini/android/notifications/C;->Code:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    .line 70
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/opera/mini/android/notifications/C;->Code:Landroid/telephony/TelephonyManager;

    .line 73
    :cond_e
    iget-object v0, p0, Lcom/opera/mini/android/notifications/C;->Code:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public final onActivityPaused(Lcom/opera/mini/android/events/ActivityPausedEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->B()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 81
    iget-object v0, p1, Lcom/opera/mini/android/events/ActivityPausedEvent;->Code:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/notifications/C;->Code(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->B()Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    :cond_14
    iget-object v0, p1, Lcom/opera/mini/android/events/ActivityPausedEvent;->Code:Landroid/app/Activity;

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->C()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public final onActivityResumed(Lcom/opera/mini/android/events/ActivityResumeEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->B()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p1, Lcom/opera/mini/android/events/ActivityResumeEvent;->Code:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/opera/mini/android/notifications/C;->Code(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->B()Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    :cond_15
    iget-object v0, p1, Lcom/opera/mini/android/events/ActivityResumeEvent;->Code:Landroid/app/Activity;

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->C()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/opera/mini/android/notifications/B;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method
