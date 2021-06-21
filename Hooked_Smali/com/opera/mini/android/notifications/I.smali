.class final Lcom/opera/mini/android/notifications/I;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/Code;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/Code;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/Code;B)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/I;-><init>(Lcom/opera/mini/android/notifications/Code;)V

    return-void
.end method


# virtual methods
.method public final onBreamInitialized(Lcom/opera/mini/android/events/BreamInitializedEvent;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    invoke-static {}, Lcom/opera/mini/android/bl;->Z()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/Code;->Code(Lcom/opera/mini/android/notifications/Code;Z)V

    .line 46
    return-void
.end method

.method public final onOdpSettingChanged(Lcom/opera/mini/android/events/OdpSettingEvent;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    iget-boolean v1, p1, Lcom/opera/mini/android/events/OdpSettingEvent;->Code:Z

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/Code;->Code(Lcom/opera/mini/android/notifications/Code;Z)V

    .line 40
    return-void
.end method

.method public final onOdpVisited(Lcom/opera/mini/android/events/OdpVisitedEvent;)V
    .registers 3
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/Code;->Z()V

    .line 34
    return-void
.end method

.method public final onServerNotificationSettingsReceived(Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    iget-wide v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->Code:J

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/notifications/Code;->Code(J)V

    .line 27
    iget-object v0, p0, Lcom/opera/mini/android/notifications/I;->Code:Lcom/opera/mini/android/notifications/Code;

    iget-boolean v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->c:Z

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/notifications/Code;->Code(Z)V

    .line 28
    return-void
.end method
