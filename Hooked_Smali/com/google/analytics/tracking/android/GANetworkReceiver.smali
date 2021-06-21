.class Lcom/google/analytics/tracking/android/GANetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Source"


# instance fields
.field private final Code:Lcom/google/analytics/tracking/android/am;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/am;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->Code:Lcom/google/analytics/tracking/android/am;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    if-eqz v1, :cond_22

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "noConnectivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    :cond_22
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->Code:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_2b
    invoke-interface {v1, v0}, Lcom/google/analytics/tracking/android/am;->Code(Z)V

    .line 38
    :cond_2e
    return-void

    .line 36
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method
