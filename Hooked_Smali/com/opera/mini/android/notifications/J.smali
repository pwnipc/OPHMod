.class final Lcom/opera/mini/android/notifications/J;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/Z;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/Z;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/Z;B)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/J;-><init>(Lcom/opera/mini/android/notifications/Z;)V

    return-void
.end method


# virtual methods
.method public final onActivityResumed(Lcom/opera/mini/android/events/ActivityResumeEvent;)V
    .registers 3
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/Z;->Code(Lcom/opera/mini/android/notifications/Z;)V

    .line 47
    return-void
.end method

.method public final onMobileStoreShown(Lcom/opera/mini/android/events/MobileStoreShownEvent;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/Z;->I(Lcom/opera/mini/android/notifications/Z;)V

    .line 53
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/opera/mini/android/notifications/Z;->Code(Lcom/opera/mini/android/notifications/Z;Z)V

    .line 54
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/Z;->Z()V

    .line 55
    return-void
.end method

.method public final onServerNotificationSettingsReceived(Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    iget-wide v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->j:J

    invoke-static {v0, v1, v2}, Lcom/opera/mini/android/notifications/Z;->Code(Lcom/opera/mini/android/notifications/Z;J)V

    .line 39
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    iget-wide v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->I:J

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/notifications/Z;->Code(J)V

    .line 40
    iget-object v0, p0, Lcom/opera/mini/android/notifications/J;->Code:Lcom/opera/mini/android/notifications/Z;

    iget-boolean v1, p1, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;->d:Z

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/notifications/Z;->Code(Z)V

    .line 41
    return-void
.end method
