.class public final Lcom/google/android/apps/analytics/u;
.super Ljava/lang/Object;


# instance fields
.field private final B:D

.field private final Code:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:D

.field private final Z:D


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/v;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->Code(Lcom/google/android/apps/analytics/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/u;->Code:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->I(Lcom/google/android/apps/analytics/v;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/u;->Z:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->Z(Lcom/google/android/apps/analytics/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/u;->I:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->J(Lcom/google/android/apps/analytics/v;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/u;->J:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/v;->B(Lcom/google/android/apps/analytics/v;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/u;->B:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/v;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/u;-><init>(Lcom/google/android/apps/analytics/v;)V

    return-void
.end method


# virtual methods
.method final B()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/u;->B:D

    return-wide v0
.end method

.method final Code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->Code:Ljava/lang/String;

    return-object v0
.end method

.method final I()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->I:Ljava/lang/String;

    return-object v0
.end method

.method final J()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/u;->J:D

    return-wide v0
.end method

.method final Z()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/u;->Z:D

    return-wide v0
.end method
