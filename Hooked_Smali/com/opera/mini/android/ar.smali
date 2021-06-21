.class final Lcom/opera/mini/android/ar;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectivityChanged(Lcom/opera/mini/android/events/ConnectivityChangedEvent;)V
    .registers 5
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 216
    iget-object v1, p1, Lcom/opera/mini/android/events/ConnectivityChangedEvent;->Code:Landroid/net/NetworkInfo;

    .line 217
    const-string v0, "DISCONNECTED"

    .line 219
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 221
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_16
    sget-object v1, Lcom/opera/mini/android/ap;->B:Lcom/opera/mini/android/ap;

    invoke-static {v1, v0}, Lcom/opera/mini/android/an;->Code(Lcom/opera/mini/android/ap;Ljava/lang/String;)V

    .line 225
    return-void
.end method
