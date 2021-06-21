.class final Lcom/google/analytics/tracking/android/e$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/e;
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/e;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/e;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_55

    invoke-static {}, Lcom/google/analytics/tracking/android/e;->J()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 104
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 105
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->Z()V

    .line 106
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/e;->I(Lcom/google/analytics/tracking/android/e;)I

    move-result v0

    if-lez v0, :cond_55

    iget-object v0, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/e;->Z(Lcom/google/analytics/tracking/android/e;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 109
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/e;->J(Lcom/google/analytics/tracking/android/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/e;->J(Lcom/google/analytics/tracking/android/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/tracking/android/e;->J()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/e$1;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/e;->I(Lcom/google/analytics/tracking/android/e;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    :cond_55
    return v4
.end method
