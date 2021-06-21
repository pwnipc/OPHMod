.class final Lcom/google/analytics/tracking/android/o;
.super Ljava/util/TimerTask;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/m;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/m;)V
    .registers 2

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/analytics/tracking/android/o;->Code:Lcom/google/analytics/tracking/android/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/m;B)V
    .registers 3

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/o;-><init>(Lcom/google/analytics/tracking/android/m;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/analytics/tracking/android/o;->Code:Lcom/google/analytics/tracking/android/m;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/m;->Code(Lcom/google/analytics/tracking/android/m;)Z

    .line 659
    return-void
.end method
