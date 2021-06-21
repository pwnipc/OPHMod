.class public final Lcom/google/android/apps/analytics/d;
.super Ljava/lang/Object;


# static fields
.field private static Code:Lcom/google/android/apps/analytics/d;


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private I:I

.field private J:Landroid/net/ConnectivityManager;

.field private Z:Landroid/content/Context;

.field private a:I

.field private b:Lcom/google/android/apps/analytics/h;

.field private c:Lcom/google/android/apps/analytics/B;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/apps/analytics/d;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/d;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/d;->Code:Lcom/google/android/apps/analytics/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/d;->I:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->B:Ljava/lang/String;

    const-string v0, "1.4.2"

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/apps/analytics/d$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/d$1;-><init>(Lcom/google/android/apps/analytics/d;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static B()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private C()V
    .registers 5

    iget v0, p0, Lcom/google/android/apps/analytics/d;->a:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/d;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/apps/analytics/d;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static Code()Lcom/google/android/apps/analytics/d;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/d;->Code:Lcom/google/android/apps/analytics/d;

    return-object v0
.end method

.method static synthetic I(Lcom/google/android/apps/analytics/d;)Lcom/google/android/apps/analytics/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/d;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final Code(Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/apps/analytics/p;

    invoke-direct {v0, p1}, Lcom/google/android/apps/analytics/p;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/google/android/apps/analytics/d;->I:I

    :goto_15
    iget-object v1, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    if-nez v1, :cond_34

    new-instance v1, Lcom/google/android/apps/analytics/m;

    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/analytics/d;->C:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/analytics/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    new-instance v2, Lcom/google/android/apps/analytics/C;

    invoke-direct {v2, p0}, Lcom/google/android/apps/analytics/C;-><init>(Lcom/google/android/apps/analytics/d;)V

    if-nez p1, :cond_37

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    goto :goto_15

    :cond_34
    iget-object v1, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    goto :goto_22

    :cond_37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/analytics/d;->Z:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    new-instance v0, Lcom/google/android/apps/analytics/Code;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/Code;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/h;->Z()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    invoke-interface {v0, v2}, Lcom/google/android/apps/analytics/B;->Code(Lcom/google/android/apps/analytics/C;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/d;->d:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->J:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->Z:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->J:Landroid/net/ConnectivityManager;

    :cond_63
    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    if-nez v0, :cond_7d

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/d;->e:Landroid/os/Handler;

    :goto_72
    iget v0, p0, Lcom/google/android/apps/analytics/d;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/apps/analytics/d;->a:I

    if-gtz v0, :cond_81

    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->C()V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->a()V

    goto :goto_72

    :cond_81
    if-lez v0, :cond_7c

    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->a()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->C()V

    goto :goto_7c
.end method

.method public final I()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/d;->d:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->C()V

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->J:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_18
    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->C()V

    goto :goto_9

    :cond_1c
    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    invoke-interface {v2}, Lcom/google/android/apps/analytics/h;->I()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->b:Lcom/google/android/apps/analytics/h;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/h;->Code()[Lcom/google/android/apps/analytics/f;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    invoke-interface {v2, v0}, Lcom/google/android/apps/analytics/B;->Code([Lcom/google/android/apps/analytics/f;)V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/d;->d:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->C()V

    move v0, v1

    goto :goto_9
.end method

.method public final J()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/analytics/d;->c:Lcom/google/android/apps/analytics/B;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/B;->Code()V

    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/analytics/d;->a()V

    return-void
.end method

.method final Z()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/d;->d:Z

    return-void
.end method
