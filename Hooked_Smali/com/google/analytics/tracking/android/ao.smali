.class public Lcom/google/analytics/tracking/android/ao;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:J

.field private C:J

.field private final Code:Lcom/google/analytics/tracking/android/aq;

.field private final I:Lcom/google/analytics/tracking/android/ap;

.field private volatile J:Z

.field private volatile Z:Z

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 29
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ao;->Z:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ao;->J:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/ao;->a:Z

    .line 49
    iput-object v2, p0, Lcom/google/analytics/tracking/android/ao;->Code:Lcom/google/analytics/tracking/android/aq;

    .line 50
    iput-object v2, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/aq;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/ao;->Z:Z

    .line 36
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/ao;->J:Z

    .line 44
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    .line 46
    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/ao;->a:Z

    .line 54
    if-nez p1, :cond_1a

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1a
    iput-object p2, p0, Lcom/google/analytics/tracking/android/ao;->Code:Lcom/google/analytics/tracking/android/aq;

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/ap;

    invoke-direct {v0, v2}, Lcom/google/analytics/tracking/android/ap;-><init>(B)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "sampleRate"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "useSecure"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 375
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/ao;->J:Z

    .line 376
    if-nez p2, :cond_a

    .line 377
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 379
    :cond_a
    const-string v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/analytics/tracking/android/ap;->Code(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 381
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ao;->I()Z

    move-result v0

    if-nez v0, :cond_29

    .line 382
    const-string v0, "Too many hits sent too quickly, throttling invoked."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I

    .line 386
    :goto_23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ap;->Code()V

    .line 387
    return-void

    .line 384
    :cond_29
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->Code:Lcom/google/analytics/tracking/android/aq;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/ap;->I()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/aq;->Code(Ljava/util/Map;)V

    goto :goto_23
.end method

.method private declared-synchronized I()Z
    .registers 12

    .prologue
    const-wide/32 v5, 0x1d4c0

    const-wide/16 v9, 0x7d0

    const/4 v0, 0x1

    .line 766
    monitor-enter p0

    :try_start_7
    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ao;->a:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_3b

    if-nez v1, :cond_d

    .line 782
    :goto_b
    monitor-exit p0

    return v0

    .line 769
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 770
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2d

    .line 771
    iget-wide v3, p0, Lcom/google/analytics/tracking/android/ao;->C:J

    sub-long v3, v1, v3

    .line 772
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2d

    .line 773
    const-wide/32 v5, 0x1d4c0

    iget-wide v7, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    add-long/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    .line 776
    :cond_2d
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/ao;->C:J

    .line 777
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_3e

    .line 778
    iget-wide v1, p0, Lcom/google/analytics/tracking/android/ao;->B:J

    sub-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/analytics/tracking/android/ao;->B:J
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_3b

    goto :goto_b

    .line 766
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 781
    :cond_3e
    :try_start_3e
    const-string v0, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 782
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public B(Ljava/lang/String;)Ljava/util/Map;
    .registers 5

    .prologue
    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    const-string v1, "exDescription"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v1, "exFatal"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ab;->d:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 694
    return-object v0
.end method

.method public Code()V
    .registers 4

    .prologue
    .line 99
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->B:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public Code(D)V
    .registers 6

    .prologue
    .line 455
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->c:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 456
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "sampleRate"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public Code(ILjava/lang/Long;)V
    .registers 6

    .prologue
    .line 598
    if-gtz p1, :cond_1f

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index must be > 0, ignoring setCustomMetric call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 607
    :goto_1e
    return-void

    .line 602
    :cond_1f
    const/4 v0, 0x0

    .line 603
    if-eqz p2, :cond_2a

    .line 604
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_2a
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v2, "customMetric"

    invoke-static {v2, p1}, Lcom/google/analytics/tracking/android/ar;->Code(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/ap;->Code(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public Code(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 583
    if-gtz p1, :cond_1f

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index must be > 0, ignoring setCustomDimension call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 588
    :goto_1e
    return-void

    .line 587
    :cond_1f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "customDimension"

    invoke-static {v1, p1}, Lcom/google/analytics/tracking/android/ar;->Code(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/ap;->Code(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public Code(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ao;->J:Z

    if-eqz v0, :cond_a

    .line 113
    const-string v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I

    .line 123
    :goto_9
    return-void

    .line 116
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 117
    const-string v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I

    goto :goto_9

    .line 120
    :cond_16
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->C:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public Code(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 322
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->J:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 324
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 325
    const-string v0, "timing"

    invoke-virtual/range {p0 .. p5}, Lcom/google/analytics/tracking/android/ao;->I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 328
    return-void
.end method

.method public Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    .prologue
    .line 213
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->I:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 215
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 216
    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/ao;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 218
    return-void
.end method

.method public Code(Z)V
    .registers 5

    .prologue
    .line 425
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->b:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 426
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "anonymizeIp"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9

    .prologue
    .line 723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 725
    const-string v1, "timingCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v1, "timingValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v1, "timingVar"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v1, "timingLabel"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ab;->e:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 730
    return-object v0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .registers 9

    .prologue
    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    const-string v1, "eventCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v1, "eventAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v1, "eventLabel"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-eqz p4, :cond_23

    .line 642
    const-string v1, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_23
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/ab;->k:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 645
    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ao;->J:Z

    if-eqz v0, :cond_a

    .line 134
    const-string v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->a(Ljava/lang/String;)I

    .line 139
    :goto_9
    return-void

    .line 137
    :cond_a
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->a:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 138
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public J(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 259
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->Z:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 261
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 262
    const-string v0, "exception"

    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/ao;->B(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Z)V

    .line 264
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_e
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->Code:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 191
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ao;->I:Lcom/google/analytics/tracking/android/ap;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/ap;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    return-void
.end method
