.class public final Lcom/google/android/apps/analytics/l;
.super Ljava/lang/Object;


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private final Code:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:J

.field private final Z:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DJ)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/l;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/analytics/l;->C:Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemSKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, Lcom/google/android/apps/analytics/l;->Code:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/l;->I:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/apps/analytics/l;->Z:D

    iput-wide p5, p0, Lcom/google/android/apps/analytics/l;->J:J

    return-void
.end method

.method static synthetic B(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/l;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/l;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/l;->Code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/google/android/apps/analytics/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/l;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/google/android/apps/analytics/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/l;->J:J

    return-wide v0
.end method

.method static synthetic Z(Lcom/google/android/apps/analytics/l;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/l;->Z:D

    return-wide v0
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)Lcom/google/android/apps/analytics/l;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/l;->B:Ljava/lang/String;

    return-object p0
.end method

.method public final I(Ljava/lang/String;)Lcom/google/android/apps/analytics/l;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/l;->C:Ljava/lang/String;

    return-object p0
.end method
