.class final Lcom/google/analytics/tracking/android/ac;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Ljava/lang/String;

.field private final I:J

.field private J:Ljava/lang/String;

.field private final Z:J


# direct methods
.method constructor <init>(JJ)V
    .registers 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ac;->Code:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/ac;->I:J

    .line 39
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/ac;->Z:J

    .line 40
    return-void
.end method


# virtual methods
.method final Code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ac;->Code:Ljava/lang/String;

    return-object v0
.end method

.method final Code(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ac;->Code:Ljava/lang/String;

    .line 26
    return-void
.end method

.method final I()J
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/ac;->I:J

    return-wide v0
.end method

.method final I(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ac;->J:Ljava/lang/String;

    .line 49
    return-void
.end method

.method final J()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ac;->J:Ljava/lang/String;

    return-object v0
.end method

.method final Z()J
    .registers 3

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/ac;->Z:J

    return-wide v0
.end method
