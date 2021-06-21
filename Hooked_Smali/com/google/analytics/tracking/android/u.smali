.class final Lcom/google/analytics/tracking/android/u;
.super Ljava/util/TimerTask;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/s;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/s;)V
    .registers 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/s;B)V
    .registers 3

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/s;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->I(Lcom/google/analytics/tracking/android/s;)Lcom/google/analytics/tracking/android/t;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/t;->I:Lcom/google/analytics/tracking/android/t;

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->B(Lcom/google/analytics/tracking/android/s;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->C(Lcom/google/analytics/tracking/android/s;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/s;->a(Lcom/google/analytics/tracking/android/s;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/s;->b(Lcom/google/analytics/tracking/android/s;)Lcom/google/analytics/tracking/android/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3c

    .line 367
    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->c(Lcom/google/analytics/tracking/android/s;)V

    .line 372
    :goto_3b
    return-void

    .line 370
    :cond_3c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->d(Lcom/google/analytics/tracking/android/s;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/u;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/s;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/u;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/s;->a(Lcom/google/analytics/tracking/android/s;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3b
.end method
