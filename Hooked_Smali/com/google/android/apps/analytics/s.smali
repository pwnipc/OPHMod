.class final Lcom/google/android/apps/analytics/s;
.super Ljava/lang/Object;


# instance fields
.field final synthetic Code:Lcom/google/android/apps/analytics/n;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/n;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/n;)V

    return-void
.end method


# virtual methods
.method public final Code()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->e(Lcom/google/android/apps/analytics/n;)I

    return-void
.end method

.method public final I()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->f(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/o;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->f(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/o;->Code()Lcom/google/android/apps/analytics/f;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/analytics/s;->Code:Lcom/google/android/apps/analytics/n;

    invoke-static {v1}, Lcom/google/android/apps/analytics/n;->a(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/C;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/f;->I:J

    iget-object v0, v1, Lcom/google/android/apps/analytics/C;->Code:Lcom/google/android/apps/analytics/d;

    invoke-static {v0}, Lcom/google/android/apps/analytics/d;->I(Lcom/google/android/apps/analytics/d;)Lcom/google/android/apps/analytics/h;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/analytics/h;->Code(J)V

    goto :goto_8
.end method
