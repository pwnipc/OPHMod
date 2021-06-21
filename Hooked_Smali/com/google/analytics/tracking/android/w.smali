.class final Lcom/google/analytics/tracking/android/w;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Ljava/util/Map;

.field private final I:J

.field private final J:Ljava/util/List;

.field private final Z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/google/analytics/tracking/android/w;->Code:Ljava/util/Map;

    .line 387
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/w;->I:J

    .line 388
    iput-object p4, p0, Lcom/google/analytics/tracking/android/w;->Z:Ljava/lang/String;

    .line 389
    iput-object p5, p0, Lcom/google/analytics/tracking/android/w;->J:Ljava/util/List;

    .line 390
    return-void
.end method


# virtual methods
.method public final Code()Ljava/util/Map;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->Code:Ljava/util/Map;

    return-object v0
.end method

.method public final I()J
    .registers 3

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/w;->I:J

    return-wide v0
.end method

.method public final J()Ljava/util/List;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->J:Ljava/util/List;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/analytics/tracking/android/w;->Z:Ljava/lang/String;

    return-object v0
.end method
