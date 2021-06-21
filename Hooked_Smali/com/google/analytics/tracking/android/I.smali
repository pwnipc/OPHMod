.class final Lcom/google/analytics/tracking/android/I;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:Lcom/google/analytics/tracking/android/I;


# instance fields
.field private I:I

.field private Z:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/analytics/tracking/android/I;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/I;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/I;->Code:Lcom/google/analytics/tracking/android/I;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/I;->Z:Ljava/util/Random;

    .line 30
    return-void
.end method

.method static Code()Lcom/google/analytics/tracking/android/I;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/analytics/tracking/android/I;->Code:Lcom/google/analytics/tracking/android/I;

    return-object v0
.end method


# virtual methods
.method final I()I
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/I;->Z:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/I;->I:I

    .line 54
    iget v0, p0, Lcom/google/analytics/tracking/android/I;->I:I

    return v0
.end method
