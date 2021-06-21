.class public final Lcom/google/android/apps/analytics/v;
.super Ljava/lang/Object;


# instance fields
.field private B:D

.field private final Code:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:D

.field private final Z:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .registers 7

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/v;->I:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/apps/analytics/v;->J:D

    iput-wide v1, p0, Lcom/google/android/apps/analytics/v;->B:D

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, Lcom/google/android/apps/analytics/v;->Code:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/v;->Z:D

    return-void
.end method

.method static synthetic B(Lcom/google/android/apps/analytics/v;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->B:D

    return-wide v0
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->Code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/google/android/apps/analytics/v;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->Z:D

    return-wide v0
.end method

.method static synthetic J(Lcom/google/android/apps/analytics/v;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/v;->J:D

    return-wide v0
.end method

.method static synthetic Z(Lcom/google/android/apps/analytics/v;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/v;->I:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final Code(D)Lcom/google/android/apps/analytics/v;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/analytics/v;->J:D

    return-object p0
.end method

.method public final Code(Ljava/lang/String;)Lcom/google/android/apps/analytics/v;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/v;->I:Ljava/lang/String;

    return-object p0
.end method

.method public final I(D)Lcom/google/android/apps/analytics/v;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/analytics/v;->B:D

    return-object p0
.end method
