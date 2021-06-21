.class final Lcom/google/analytics/tracking/android/s;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/C;
.implements Lcom/google/analytics/tracking/android/a;
.implements Lcom/google/analytics/tracking/android/an;


# instance fields
.field private final B:Lcom/google/analytics/tracking/android/f;

.field private final C:Landroid/content/Context;

.field private volatile Code:J

.field private volatile I:Lcom/google/analytics/tracking/android/t;

.field private J:Lcom/google/analytics/tracking/android/d;

.field private volatile Z:Lcom/google/analytics/tracking/android/Z;

.field private final a:Ljava/util/Queue;

.field private volatile b:I

.field private volatile c:Ljava/util/Timer;

.field private volatile d:Ljava/util/Timer;

.field private volatile e:Ljava/util/Timer;

.field private f:Z

.field private g:Z

.field private h:Lcom/google/analytics/tracking/android/k;

.field private i:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    .line 64
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/s;->i:J

    .line 68
    iput-object p1, p0, Lcom/google/analytics/tracking/android/s;->C:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/google/analytics/tracking/android/s;->B:Lcom/google/analytics/tracking/android/f;

    .line 71
    new-instance v0, Lcom/google/analytics/tracking/android/s$1;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/s$1;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->h:Lcom/google/analytics/tracking/android/k;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    .line 78
    sget-object v0, Lcom/google/analytics/tracking/android/t;->C:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;B)V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/s;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V

    .line 83
    return-void
.end method

.method static synthetic B(Lcom/google/analytics/tracking/android/s;)Ljava/util/Queue;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic C(Lcom/google/analytics/tracking/android/s;)J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/s;->Code:J

    return-wide v0
.end method

.method private C()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    .line 149
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    .line 150
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    .line 151
    return-void
.end method

.method private static Code(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 141
    if-eqz p0, :cond_5

    .line 142
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 144
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/s;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->a()V

    return-void
.end method

.method static synthetic I(Lcom/google/analytics/tracking/android/s;)Lcom/google/analytics/tracking/android/t;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    return-object v0
.end method

.method static synthetic J(Lcom/google/analytics/tracking/android/s;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->d()V

    return-void
.end method

.method static synthetic Z(Lcom/google/analytics/tracking/android/s;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/s;)J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/s;->i:J

    return-wide v0
.end method

.method private declared-synchronized a()V
    .registers 8

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->B:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/f;->Z()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 195
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->B:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/f;->I()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/s$2;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/s$2;-><init>(Lcom/google/analytics/tracking/android/s;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_63

    .line 239
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 203
    :cond_21
    :try_start_21
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/s;->g:Z

    if-eqz v1, :cond_28

    .line 204
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/s;->J()V

    .line 206
    :cond_28
    sget-object v1, Lcom/google/analytics/tracking/android/s$3;->Code:[I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/t;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_bc

    goto :goto_1f

    .line 208
    :goto_36
    :pswitch_36
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    .line 209
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/w;

    move-object v6, v0

    .line 210
    const-string v1, "Sending hit to store"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->J:Lcom/google/analytics/tracking/android/d;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->Code()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->I()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->J()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/d;->Code(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_62
    .catchall {:try_start_21 .. :try_end_62} :catchall_63

    goto :goto_36

    .line 194
    :catchall_63
    move-exception v1

    monitor-exit p0

    throw v1

    .line 215
    :cond_66
    :try_start_66
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/s;->f:Z

    if-eqz v1, :cond_1f

    .line 216
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->b()V

    goto :goto_1f

    .line 220
    :goto_6e
    :pswitch_6e
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 221
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/analytics/tracking/android/w;

    move-object v6, v0

    .line 222
    const-string v1, "Sending hit to service"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->Code()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->I()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->Z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/analytics/tracking/android/w;->J()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/analytics/tracking/android/Z;->Code(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 225
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_6e

    .line 227
    :cond_a0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->h:Lcom/google/analytics/tracking/android/k;

    invoke-interface {v1}, Lcom/google/analytics/tracking/android/k;->Code()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/s;->Code:J

    goto/16 :goto_1f

    .line 230
    :pswitch_aa
    const-string v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 232
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->d()V
    :try_end_ba
    .catchall {:try_start_66 .. :try_end_ba} :catchall_63

    goto/16 :goto_1f

    .line 206
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_36
        :pswitch_6e
        :pswitch_aa
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/s;)Lcom/google/analytics/tracking/android/k;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->h:Lcom/google/analytics/tracking/android/k;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->J:Lcom/google/analytics/tracking/android/d;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->I()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/s;->f:Z

    .line 247
    return-void
.end method

.method private declared-synchronized c()V
    .registers 4

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    sget-object v1, Lcom/google/analytics/tracking/android/t;->Z:Lcom/google/analytics/tracking/android/t;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2a

    if-ne v0, v1, :cond_9

    .line 268
    :goto_7
    monitor-exit p0

    return-void

    .line 257
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->C()V

    .line 258
    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->C:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->B:Lcom/google/analytics/tracking/android/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/e;->Code(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V

    .line 264
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->I()Lcom/google/analytics/tracking/android/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->J:Lcom/google/analytics/tracking/android/d;

    .line 266
    sget-object v0, Lcom/google/analytics/tracking/android/t;->Z:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 267
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->a()V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2a

    goto :goto_7

    .line 253
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/s;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->e()V

    return-void
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/s;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized d()V
    .registers 5

    .prologue
    .line 271
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    sget-object v1, Lcom/google/analytics/tracking/android/t;->Z:Lcom/google/analytics/tracking/android/t;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_46

    if-eq v0, v1, :cond_49

    .line 273
    :try_start_b
    iget v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    .line 274
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    .line 275
    sget-object v0, Lcom/google/analytics/tracking/android/t;->Code:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 276
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    .line 277
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/v;-><init>(Lcom/google/analytics/tracking/android/s;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 278
    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Z;->I()V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_3a} :catch_3c
    .catchall {:try_start_b .. :try_end_3a} :catchall_46

    .line 288
    :goto_3a
    monitor-exit p0

    return-void

    .line 281
    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->c()V
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_46

    goto :goto_3a

    .line 271
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :cond_49
    :try_start_49
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 286
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->c()V
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_46

    goto :goto_3a
.end method

.method private declared-synchronized e()V
    .registers 3

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    sget-object v1, Lcom/google/analytics/tracking/android/t;->I:Lcom/google/analytics/tracking/android/t;

    if-ne v0, v1, :cond_14

    .line 292
    sget-object v0, Lcom/google/analytics/tracking/android/t;->B:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 293
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Z;->Z()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 295
    :cond_14
    monitor-exit p0

    return-void

    .line 291
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    .line 340
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    .line 341
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/x;-><init>(Lcom/google/analytics/tracking/android/s;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 342
    return-void
.end method


# virtual methods
.method public final B()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    if-eqz v0, :cond_5

    .line 164
    :goto_4
    return-void

    .line 162
    :cond_5
    new-instance v0, Lcom/google/analytics/tracking/android/J;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->C:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/analytics/tracking/android/J;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/C;Lcom/google/analytics/tracking/android/a;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    .line 163
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->d()V

    goto :goto_4
.end method

.method public final declared-synchronized Code()V
    .registers 5

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Ljava/util/Timer;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    .line 301
    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/google/analytics/tracking/android/t;->I:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 303
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->a()V

    .line 304
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    .line 305
    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    .line 306
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->e:Ljava/util/Timer;

    new-instance v1, Lcom/google/analytics/tracking/android/u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/analytics/tracking/android/u;-><init>(Lcom/google/analytics/tracking/android/s;B)V

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/s;->i:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 307
    monitor-exit p0

    return-void

    .line 299
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(I)V
    .registers 4

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/analytics/tracking/android/t;->J:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 329
    iget v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_27

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->f()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_43

    .line 336
    :goto_25
    monitor-exit p0

    return-void

    .line 333
    :cond_27
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->c()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_25

    .line 328
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Code(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .registers 13

    .prologue
    .line 95
    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 97
    iget-object v6, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    new-instance v0, Lcom/google/analytics/tracking/android/w;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/w;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->a()V

    .line 99
    return-void
.end method

.method public final declared-synchronized I()V
    .registers 3

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    sget-object v1, Lcom/google/analytics/tracking/android/t;->B:Lcom/google/analytics/tracking/android/t;

    if-ne v0, v1, :cond_15

    .line 312
    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->C()V

    .line 314
    sget-object v0, Lcom/google/analytics/tracking/android/t;->C:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_27

    .line 324
    :goto_13
    monitor-exit p0

    return-void

    .line 316
    :cond_15
    :try_start_15
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/google/analytics/tracking/android/t;->J:Lcom/google/analytics/tracking/android/t;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    .line 318
    iget v0, p0, Lcom/google/analytics/tracking/android/s;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2a

    .line 319
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->f()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    goto :goto_13

    .line 311
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->c()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    goto :goto_13
.end method

.method public final J()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 119
    sget-object v0, Lcom/google/analytics/tracking/android/s$3;->Code:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/s;->g:Z

    .line 132
    :goto_1b
    return-void

    .line 121
    :pswitch_1c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->J:Lcom/google/analytics/tracking/android/d;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/d;->Code()V

    .line 122
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/s;->g:Z

    goto :goto_1b

    .line 125
    :pswitch_24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->Z:Lcom/google/analytics/tracking/android/Z;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Z;->Code()V

    .line 126
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/s;->g:Z

    goto :goto_1b

    .line 119
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public final Z()V
    .registers 3

    .prologue
    .line 103
    sget-object v0, Lcom/google/analytics/tracking/android/s$3;->Code:[I

    iget-object v1, p0, Lcom/google/analytics/tracking/android/s;->I:Lcom/google/analytics/tracking/android/t;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/s;->f:Z

    .line 113
    :goto_10
    :pswitch_10
    return-void

    .line 105
    :pswitch_11
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/s;->b()V

    goto :goto_10

    .line 103
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
