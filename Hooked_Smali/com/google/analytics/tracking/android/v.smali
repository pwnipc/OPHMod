.class final Lcom/google/analytics/tracking/android/v;
.super Ljava/util/TimerTask;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/s;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/s;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/analytics/tracking/android/v;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/s;B)V
    .registers 3

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/v;-><init>(Lcom/google/analytics/tracking/android/s;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->I(Lcom/google/analytics/tracking/android/s;)Lcom/google/analytics/tracking/android/t;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/t;->Code:Lcom/google/analytics/tracking/android/t;

    if-ne v0, v1, :cond_f

    .line 348
    iget-object v0, p0, Lcom/google/analytics/tracking/android/v;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Z(Lcom/google/analytics/tracking/android/s;)V

    .line 351
    :cond_f
    return-void
.end method
