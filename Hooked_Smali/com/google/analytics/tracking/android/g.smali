.class public Lcom/google/analytics/tracking/android/g;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/aq;


# static fields
.field private static b:Lcom/google/analytics/tracking/android/g;


# instance fields
.field private volatile B:Ljava/lang/String;

.field private volatile C:Ljava/lang/Boolean;

.field private Code:Lcom/google/analytics/tracking/android/f;

.field private I:Landroid/content/Context;

.field private J:Lcom/google/analytics/tracking/android/Code;

.field private Z:Lcom/google/analytics/tracking/android/ao;

.field private final a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/analytics/tracking/android/y;->Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/y;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/g;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V
    .registers 5

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Ljava/util/Map;

    .line 60
    if-nez p1, :cond_14

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->I:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/analytics/tracking/android/g;->Code:Lcom/google/analytics/tracking/android/f;

    .line 65
    new-instance v0, Lcom/google/analytics/tracking/android/Code;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/Code;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->J:Lcom/google/analytics/tracking/android/Code;

    .line 66
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->Code:Lcom/google/analytics/tracking/android/f;

    new-instance v1, Lcom/google/analytics/tracking/android/g$I;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/g$I;-><init>(Lcom/google/analytics/tracking/android/g;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/f;->Code(Lcom/google/analytics/tracking/android/g$I;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->Code:Lcom/google/analytics/tracking/android/f;

    new-instance v1, Lcom/google/analytics/tracking/android/g$Code;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/g$Code;-><init>(Lcom/google/analytics/tracking/android/g;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/f;->Code(Lcom/google/analytics/tracking/android/g$Code;)V

    .line 82
    return-void
.end method

.method public static Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/g;
    .registers 3

    .prologue
    .line 90
    const-class v1, Lcom/google/analytics/tracking/android/g;

    monitor-enter v1

    .line 91
    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/g;->b:Lcom/google/analytics/tracking/android/g;

    if-nez v0, :cond_e

    .line 92
    new-instance v0, Lcom/google/analytics/tracking/android/g;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/g;->b:Lcom/google/analytics/tracking/android/g;

    .line 94
    :cond_e
    sget-object v0, Lcom/google/analytics/tracking/android/g;->b:Lcom/google/analytics/tracking/android/g;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    return-object v0

    .line 95
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/g;->C:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/g;->B:Ljava/lang/String;

    return-object p1
.end method

.method public static Code(Z)V
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->f:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 146
    invoke-static {p0}, Lcom/google/analytics/tracking/android/af;->Code(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;
    .registers 5

    .prologue
    .line 166
    monitor-enter p0

    .line 167
    if-nez p1, :cond_e

    .line 168
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 181
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/ao;

    .line 172
    if-nez v0, :cond_28

    .line 173
    new-instance v0, Lcom/google/analytics/tracking/android/ao;

    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/ao;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/aq;)V

    .line 174
    iget-object v1, p0, Lcom/google/analytics/tracking/android/g;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/google/analytics/tracking/android/g;->Z:Lcom/google/analytics/tracking/android/ao;

    if-nez v1, :cond_28

    .line 176
    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->Z:Lcom/google/analytics/tracking/android/ao;

    .line 179
    :cond_28
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ab;->g:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 180
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_b

    return-object v0
.end method

.method public final Code(Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    if-nez p1, :cond_e

    .line 219
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 233
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_e
    :try_start_e
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ar;->Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/g;->J:Lcom/google/analytics/tracking/android/Code;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Code;->Code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/g;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/g;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "usage"

    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/aa;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/aa;->I()Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->Code:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/f;->Code(Ljava/util/Map;)V

    .line 232
    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_e .. :try_end_7d} :catchall_b

    return-void
.end method

.method public final I(Z)V
    .registers 4

    .prologue
    .line 276
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->h:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 277
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/g;->C:Ljava/lang/Boolean;

    .line 278
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->Code:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/f;->Code(Z)V

    .line 279
    return-void
.end method
