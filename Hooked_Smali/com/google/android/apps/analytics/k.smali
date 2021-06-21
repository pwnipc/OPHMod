.class public final Lcom/google/android/apps/analytics/k;
.super Ljava/lang/Object;


# instance fields
.field private final B:D

.field private final C:J

.field private final Code:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final Z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->Code(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/k;->Code:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->I(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/k;->I:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->Z(Lcom/google/android/apps/analytics/l;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/k;->B:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->J(Lcom/google/android/apps/analytics/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/k;->C:J

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->B(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/k;->Z:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/l;->C(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/k;->J:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/l;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/k;-><init>(Lcom/google/android/apps/analytics/l;)V

    return-void
.end method


# virtual methods
.method final B()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/k;->B:D

    return-wide v0
.end method

.method final C()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/k;->C:J

    return-wide v0
.end method

.method final Code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->Code:Ljava/lang/String;

    return-object v0
.end method

.method final I()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->I:Ljava/lang/String;

    return-object v0
.end method

.method final J()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->J:Ljava/lang/String;

    return-object v0
.end method

.method final Z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->Z:Ljava/lang/String;

    return-object v0
.end method
