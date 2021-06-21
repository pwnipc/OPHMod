.class public final Lcom/google/analytics/tracking/android/m;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Lcom/google/analytics/tracking/android/m;


# instance fields
.field private B:Ljava/lang/String;

.field private C:I

.field private I:Z

.field private J:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/Double;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private h:J

.field private i:Landroid/content/Context;

.field private final j:Ljava/util/Map;

.field private k:Lcom/google/analytics/tracking/android/ao;

.field private l:Lcom/google/analytics/tracking/android/ak;

.field private m:Lcom/google/analytics/tracking/android/g;

.field private n:Lcom/google/analytics/tracking/android/am;

.field private o:Lcom/google/analytics/tracking/android/k;

.field private p:Ljava/util/Timer;

.field private q:Ljava/util/TimerTask;

.field private r:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->I:Z

    .line 149
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->C:I

    .line 176
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->e:Z

    .line 181
    iput v1, p0, Lcom/google/analytics/tracking/android/m;->f:I

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->j:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    .line 217
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->r:Z

    .line 96
    new-instance v0, Lcom/google/analytics/tracking/android/m$1;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/m$1;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->o:Lcom/google/analytics/tracking/android/k;

    .line 102
    return-void
.end method

.method public static Code()Lcom/google/analytics/tracking/android/m;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/analytics/tracking/android/m;->Code:Lcom/google/analytics/tracking/android/m;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/m;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/m;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/m;->Code:Lcom/google/analytics/tracking/android/m;

    .line 113
    :cond_b
    sget-object v0, Lcom/google/analytics/tracking/android/m;->Code:Lcom/google/analytics/tracking/android/m;

    return-object v0
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/m;)Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->r:Z

    return v0
.end method

.method public static I()Lcom/google/analytics/tracking/android/ao;
    .registers 2

    .prologue
    .line 125
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/m;->i:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_10
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    return-object v0
.end method

.method private declared-synchronized Z()V
    .registers 2

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->p:Ljava/util/Timer;

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->p:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->p:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 410
    :cond_d
    monitor-exit p0

    return-void

    .line 406
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final Code(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/m;->Code(Landroid/content/Context;)V

    .line 345
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->I:Z

    if-nez v0, :cond_b

    .line 365
    :cond_a
    :goto_a
    return-void

    .line 351
    :cond_b
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/m;->Z()V

    .line 353
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->r:Z

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    if-nez v0, :cond_3b

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/m;->g:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_31

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/m;->g:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->o:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/m;->h:J

    iget-wide v6, p0, Lcom/google/analytics/tracking/android/m;->g:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    :cond_31
    move v0, v1

    :goto_32
    if-eqz v0, :cond_3b

    .line 354
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ao;->Code()V

    .line 355
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->e:Z

    .line 360
    :cond_3b
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->r:Z

    .line 361
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    .line 362
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->e:Z

    if-eqz v0, :cond_a

    .line 363
    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_61
    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/ao;->Z(Ljava/lang/String;)V

    goto :goto_a

    .line 353
    :cond_65
    const/4 v0, 0x0

    goto :goto_32

    .line 363
    :cond_67
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_70

    move-object v0, v1

    :cond_70
    iget-object v3, p0, Lcom/google/analytics/tracking/android/m;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61
.end method

.method public final Code(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 304
    if-nez p1, :cond_9

    .line 305
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    .line 313
    :cond_8
    :goto_8
    return-void

    .line 307
    :cond_9
    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/google/analytics/tracking/android/ak;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/analytics/tracking/android/ak;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/g;->Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/g;

    move-result-object v3

    if-nez p1, :cond_25

    const-string v4, "Context cannot be null"

    invoke-static {v4}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    :cond_25
    iget-object v4, p0, Lcom/google/analytics/tracking/android/m;->i:Landroid/content/Context;

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/tracking/android/m;->i:Landroid/content/Context;

    iput-object v3, p0, Lcom/google/analytics/tracking/android/m;->m:Lcom/google/analytics/tracking/android/g;

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->n:Lcom/google/analytics/tracking/android/am;

    iput-object v2, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_trackingId"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->Z:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_api_key"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->Z:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v0, "EasyTracker requested, but missing required ga_trackingId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    new-instance v0, Lcom/google/analytics/tracking/android/n;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/n;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    goto :goto_8

    :cond_66
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->I:Z

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_appName"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_appVersion"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_debug"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Z(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->a:Z

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_sampleFrequency"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->b:Ljava/lang/Double;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->b:Ljava/lang/Double;

    if-nez v1, :cond_a6

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v3, "ga_sampleRate"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/m;->b:Ljava/lang/Double;

    :cond_a6
    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_dispatchPeriod"

    const/16 v3, 0x708

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/analytics/tracking/android/m;->C:I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_sessionTimeout"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/m;->g:J

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_autoActivityTracking"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v2, "ga_auto_activity_tracking"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/ak;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15b

    :cond_d5
    :goto_d5
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->e:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v1, "ga_anonymizeIp"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ak;->Z(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->c:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->l:Lcom/google/analytics/tracking/android/ak;

    const-string v1, "ga_reportUncaughtExceptions"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ak;->Z(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->d:Z

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->m:Lcom/google/analytics/tracking/android/g;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/g;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_118

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting appName to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->Z(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;)V

    :cond_118
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->B:Ljava/lang/String;

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ao;->I(Ljava/lang/String;)V

    :cond_123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/m;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ao;->Code(D)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->m:Lcom/google/analytics/tracking/android/g;

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->a:Z

    invoke-static {v0}, Lcom/google/analytics/tracking/android/g;->Code(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->n:Lcom/google/analytics/tracking/android/am;

    iget v1, p0, Lcom/google/analytics/tracking/android/m;->C:I

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/am;->Code(I)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->d:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/google/analytics/tracking/android/q;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->k:Lcom/google/analytics/tracking/android/ao;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/m;->n:Lcom/google/analytics/tracking/android/am;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/analytics/tracking/android/m;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/q;-><init>(Lcom/google/analytics/tracking/android/ao;Lcom/google/analytics/tracking/android/am;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/16 :goto_8

    :cond_15b
    const/4 v0, 0x0

    goto/16 :goto_d5
.end method

.method public final I(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/m;->Code(Landroid/content/Context;)V

    .line 376
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/m;->I:Z

    if-nez v0, :cond_9

    .line 394
    :cond_8
    :goto_8
    return-void

    .line 379
    :cond_9
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    .line 382
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    .line 384
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->o:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/m;->h:J

    .line 386
    iget v0, p0, Lcom/google/analytics/tracking/android/m;->f:I

    if-nez v0, :cond_8

    .line 387
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/m;->Z()V

    .line 390
    new-instance v0, Lcom/google/analytics/tracking/android/o;

    invoke-direct {v0, p0, v2}, Lcom/google/analytics/tracking/android/o;-><init>(Lcom/google/analytics/tracking/android/m;B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->q:Ljava/util/TimerTask;

    .line 391
    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/m;->p:Ljava/util/Timer;

    .line 392
    iget-object v0, p0, Lcom/google/analytics/tracking/android/m;->p:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/m;->q:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_8
.end method
