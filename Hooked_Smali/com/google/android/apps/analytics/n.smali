.class final Lcom/google/android/apps/analytics/n;
.super Landroid/os/HandlerThread;


# instance fields
.field private B:I

.field private C:J

.field private volatile Code:Landroid/os/Handler;

.field private final I:Lcom/google/android/apps/analytics/r;

.field private J:I

.field private final Z:Ljava/lang/String;

.field private a:Lcom/google/android/apps/analytics/o;

.field private final b:Lcom/google/android/apps/analytics/C;

.field private final c:Lcom/google/android/apps/analytics/s;

.field private final d:Lcom/google/android/apps/analytics/m;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/C;Lcom/google/android/apps/analytics/r;Ljava/lang/String;Lcom/google/android/apps/analytics/m;)V
    .registers 7

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/analytics/n;->B:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/n;->a:Lcom/google/android/apps/analytics/o;

    iput-object p1, p0, Lcom/google/android/apps/analytics/n;->b:Lcom/google/android/apps/analytics/C;

    iput-object p3, p0, Lcom/google/android/apps/analytics/n;->Z:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/n;->I:Lcom/google/android/apps/analytics/r;

    new-instance v0, Lcom/google/android/apps/analytics/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/n;B)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/n;->c:Lcom/google/android/apps/analytics/s;

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->I:Lcom/google/android/apps/analytics/r;

    iget-object v1, p0, Lcom/google/android/apps/analytics/n;->c:Lcom/google/android/apps/analytics/s;

    iput-object v1, v0, Lcom/google/android/apps/analytics/r;->Code:Lcom/google/android/apps/analytics/s;

    iput-object p4, p0, Lcom/google/android/apps/analytics/n;->d:Lcom/google/android/apps/analytics/m;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/C;Ljava/lang/String;Lcom/google/android/apps/analytics/m;)V
    .registers 6

    new-instance v0, Lcom/google/android/apps/analytics/r;

    invoke-static {p3}, Lcom/google/android/apps/analytics/m;->Code(Lcom/google/android/apps/analytics/m;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/r;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/n;-><init>(Lcom/google/android/apps/analytics/C;Lcom/google/android/apps/analytics/r;Ljava/lang/String;Lcom/google/android/apps/analytics/m;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/C;Ljava/lang/String;Lcom/google/android/apps/analytics/m;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/n;-><init>(Lcom/google/android/apps/analytics/C;Ljava/lang/String;Lcom/google/android/apps/analytics/m;)V

    return-void
.end method

.method static synthetic B(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/m;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->d:Lcom/google/android/apps/analytics/m;

    return-object v0
.end method

.method static synthetic C(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/r;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->I:Lcom/google/android/apps/analytics/r;

    return-object v0
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/n;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/n;->J:I

    return v0
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/n;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/n;->J:I

    return p1
.end method

.method static synthetic Code(Lcom/google/android/apps/analytics/n;Lcom/google/android/apps/analytics/o;)Lcom/google/android/apps/analytics/o;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/n;->a:Lcom/google/android/apps/analytics/o;

    return-object p1
.end method

.method static synthetic I(Lcom/google/android/apps/analytics/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/n;->C:J

    return-wide v0
.end method

.method static synthetic J(Lcom/google/android/apps/analytics/n;)J
    .registers 3

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/n;->C:J

    return-wide v0
.end method

.method static synthetic Z(Lcom/google/android/apps/analytics/n;)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/apps/analytics/n;->C:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/n;->C:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->b:Lcom/google/android/apps/analytics/C;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/n;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/n;->B:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/n;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/s;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->c:Lcom/google/android/apps/analytics/s;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/n;)I
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/analytics/n;->B:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/o;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->a:Lcom/google/android/apps/analytics/o;

    return-object v0
.end method


# virtual methods
.method public final Code([Lcom/google/android/apps/analytics/f;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->Code:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/n;->Code:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/analytics/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/analytics/o;-><init>(Lcom/google/android/apps/analytics/n;[Lcom/google/android/apps/analytics/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected final onLooperPrepared()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/n;->Code:Landroid/os/Handler;

    return-void
.end method
