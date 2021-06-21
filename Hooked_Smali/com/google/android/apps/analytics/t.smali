.class final Lcom/google/android/apps/analytics/t;
.super Ljava/lang/Object;


# instance fields
.field private final Code:Ljava/lang/String;

.field private final I:J

.field private final J:I

.field private final Z:I


# direct methods
.method constructor <init>(Ljava/lang/String;JII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/analytics/t;->Code:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/t;->I:J

    iput p4, p0, Lcom/google/android/apps/analytics/t;->Z:I

    iput p5, p0, Lcom/google/android/apps/analytics/t;->J:I

    return-void
.end method


# virtual methods
.method final Code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->Code:Ljava/lang/String;

    return-object v0
.end method

.method final I()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/t;->I:J

    return-wide v0
.end method

.method final J()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/t;->J:I

    return v0
.end method

.method final Z()I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/t;->Z:I

    return v0
.end method
