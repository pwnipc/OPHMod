.class final Lcom/google/analytics/tracking/android/ap;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Ljava/util/Map;

.field private I:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->Code:Ljava/util/Map;

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ap;->I:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized Code()V
    .registers 2

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->Code:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 804
    monitor-exit p0

    return-void

    .line 803
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 795
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->Code:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 796
    monitor-exit p0

    return-void

    .line 795
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Ljava/util/Map;Ljava/lang/Boolean;)V
    .registers 4

    .prologue
    .line 815
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 816
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->Code:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    .line 820
    :goto_c
    monitor-exit p0

    return-void

    .line 818
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_c

    .line 815
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I()Ljava/util/Map;
    .registers 3

    .prologue
    .line 823
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ap;->I:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 824
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ap;->Code:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 825
    monitor-exit p0

    return-object v0

    .line 823
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 799
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ap;->I:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 800
    monitor-exit p0

    return-void

    .line 799
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
