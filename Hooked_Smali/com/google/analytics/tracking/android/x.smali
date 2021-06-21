.class final Lcom/google/analytics/tracking/android/x;
.super Ljava/util/TimerTask;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/s;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/s;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/analytics/tracking/android/x;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/s;B)V
    .registers 3

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/x;-><init>(Lcom/google/analytics/tracking/android/s;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->J(Lcom/google/analytics/tracking/android/s;)V

    .line 358
    return-void
.end method
