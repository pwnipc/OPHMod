.class final Lcom/google/analytics/tracking/android/B;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/J;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/J;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->Code(Ljava/lang/String;)I

    .line 173
    :try_start_12
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 176
    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->Code(Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {p2}, Lac;->Code(Landroid/os/IBinder;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/J;->Code(Lcom/google/analytics/tracking/android/J;Lab;)Lab;

    .line 178
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->Code(Lcom/google/analytics/tracking/android/J;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_31} :catch_32

    .line 189
    :goto_31
    return-void

    :catch_32
    move-exception v0

    .line 186
    :cond_33
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->I(Lcom/google/analytics/tracking/android/J;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->Z(Lcom/google/analytics/tracking/android/J;)Landroid/content/ServiceConnection;

    .line 188
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->J(Lcom/google/analytics/tracking/android/J;)Lcom/google/analytics/tracking/android/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/a;->Code(I)V

    goto :goto_31
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->Code(Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->Z(Lcom/google/analytics/tracking/android/J;)Landroid/content/ServiceConnection;

    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/B;->Code:Lcom/google/analytics/tracking/android/J;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/J;->B(Lcom/google/analytics/tracking/android/J;)Lcom/google/analytics/tracking/android/C;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/C;->I()V

    .line 196
    return-void
.end method
