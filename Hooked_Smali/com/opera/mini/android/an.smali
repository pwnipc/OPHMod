.class public final Lcom/opera/mini/android/an;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:Landroid/content/Context;

.field private static I:Z

.field private static J:Ljava/text/SimpleDateFormat;

.field private static Z:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 230
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    .line 231
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/opera/mini/android/an;->J:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic B()Z
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/opera/mini/android/an;->I:Z

    return v0
.end method

.method static synthetic C()Ljava/util/LinkedList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static Code()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 247
    sget-object v0, Lcom/opera/mini/android/ap;->a:Lcom/opera/mini/android/ap;

    sget-object v1, Lcom/opera/mini/android/an;->Code:Landroid/content/Context;

    invoke-static {v1}, Lcom/opera/mini/android/s;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/opera/mini/android/ap;->Code:Lcom/opera/mini/android/ap;

    sget-object v1, Lar;->Code:Lci;

    invoke-interface {v1}, Lci;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->b()Z

    move-result v0

    .line 253
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->c()Z

    move-result v1

    .line 255
    if-eqz v1, :cond_43

    .line 257
    sget-object v2, Lcom/opera/mini/android/ap;->C:Lcom/opera/mini/android/ap;

    invoke-static {}, Lcom/opera/mini/android/s;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    .line 259
    sget v2, Lcom/opera/mini/android/s;->al:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_43

    .line 261
    sget-object v2, Lcom/opera/mini/android/ap;->I:Lcom/opera/mini/android/ap;

    sget-object v3, Lcom/opera/mini/android/an;->J:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/opera/mini/android/ao;->Code()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    .line 266
    :cond_43
    if-eqz v0, :cond_8b

    .line 268
    sget-object v2, Lcom/opera/mini/android/ap;->b:Lcom/opera/mini/android/ap;

    sget-object v3, Lcom/opera/mini/android/an;->J:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    .line 271
    const-string v2, "start"

    const-string v3, "version_change"

    const-string v4, "OperaMiniInstalled"

    invoke-static {v2, v3, v4, v5}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    :cond_61
    :goto_61
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 280
    if-nez v1, :cond_70

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_7f

    .line 282
    :cond_70
    if-eqz v0, :cond_97

    const-string v0, "first_start"

    .line 284
    :goto_74
    const-string v2, "start"

    invoke-static {}, Lcom/opera/mini/android/OperaApplication;->Code()J

    move-result-wide v3

    const-string v5, ""

    invoke-static {v2, v3, v4, v0, v5}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_7f
    new-instance v0, Lcom/opera/mini/android/an$1;

    invoke-direct {v0, v1}, Lcom/opera/mini/android/an$1;-><init>(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/opera/mini/android/ai;->Code(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    .line 318
    return-void

    .line 273
    :cond_8b
    if-eqz v1, :cond_61

    .line 275
    const-string v2, "start"

    const-string v3, "version_change"

    const-string v4, "OperaMiniUpdated"

    invoke-static {v2, v3, v4, v5}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_61

    .line 282
    :cond_97
    if-eqz v1, :cond_9c

    const-string v0, "version_update"

    goto :goto_74

    :cond_9c
    const-string v0, "launch"

    goto :goto_74
.end method

.method public static Code(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 441
    sget-boolean v0, Lcom/opera/mini/android/an;->I:Z

    if-nez v0, :cond_f

    .line 443
    sget-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    new-instance v1, Lcom/opera/mini/android/an$5;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/an$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 461
    :goto_e
    return-void

    .line 454
    :cond_f
    invoke-static {}, Lcom/opera/mini/android/ap;->Code()V

    invoke-static {}, Lcom/opera/mini/android/aq;->Code()V

    .line 459
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/m;->Code(Landroid/app/Activity;)V

    goto :goto_e
.end method

.method public static Code(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 235
    sput-object p0, Lcom/opera/mini/android/an;->Code:Landroid/content/Context;

    .line 236
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/m;->Code(Landroid/content/Context;)V

    .line 237
    new-instance v0, Lcom/opera/mini/android/ar;

    invoke-direct {v0}, Lcom/opera/mini/android/ar;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/ap;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    return-void
.end method

.method public static Code(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 417
    sget-boolean v0, Lcom/opera/mini/android/an;->I:Z

    if-nez v0, :cond_f

    .line 419
    sget-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    new-instance v1, Lcom/opera/mini/android/an$4;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/an$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    :goto_e
    return-void

    .line 430
    :cond_f
    invoke-static {}, Lcom/opera/mini/android/ap;->Code()V

    invoke-static {}, Lcom/opera/mini/android/aq;->Code()V

    .line 435
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/ao;->Z(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static Code(Ljava/lang/String;J)V
    .registers 5

    .prologue
    .line 493
    :try_start_0
    invoke-static {p0}, Lcom/opera/mini/android/aq;->valueOf(Ljava/lang/String;)Lcom/opera/mini/android/aq;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/aq;->Code(Ljava/lang/Long;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    .line 499
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method static synthetic Code(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 505
    :try_start_0
    invoke-static {p0}, Lcom/opera/mini/android/ap;->valueOf(Ljava/lang/String;)Lcom/opera/mini/android/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 511
    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method static synthetic Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static Code(Z)V
    .registers 2

    .prologue
    .line 242
    sget-object v0, Lcom/opera/mini/android/an;->Code:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/g;->Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/g;->I(Z)V

    .line 243
    return-void
.end method

.method public static I()V
    .registers 5

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lcom/opera/mini/android/B;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 342
    const-string v2, "font"

    const-string v3, "font_calculation"

    const-string v4, ""

    invoke-static {v2, v0, v1, v3, v4}, Lcom/opera/mini/android/an;->I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static I(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 465
    sget-boolean v0, Lcom/opera/mini/android/an;->I:Z

    if-nez v0, :cond_f

    .line 467
    sget-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    new-instance v1, Lcom/opera/mini/android/an$6;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/an$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 487
    :goto_e
    return-void

    .line 485
    :cond_f
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/m;->I(Landroid/app/Activity;)V

    goto :goto_e
.end method

.method private static I(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 392
    sget-boolean v0, Lcom/opera/mini/android/an;->I:Z

    if-nez v0, :cond_13

    .line 394
    sget-object v6, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    new-instance v0, Lcom/opera/mini/android/an$3;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/an$3;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    :goto_12
    return-void

    .line 405
    :cond_13
    invoke-static {}, Lcom/opera/mini/android/ap;->Code()V

    invoke-static {}, Lcom/opera/mini/android/aq;->Code()V

    .line 411
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 366
    sget-boolean v0, Lcom/opera/mini/android/an;->I:Z

    if-nez v0, :cond_f

    .line 368
    sget-object v0, Lcom/opera/mini/android/an;->Z:Ljava/util/LinkedList;

    new-instance v1, Lcom/opera/mini/android/an$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/opera/mini/android/an$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_e
    return-void

    .line 379
    :cond_f
    invoke-static {}, Lcom/opera/mini/android/ap;->Code()V

    invoke-static {}, Lcom/opera/mini/android/aq;->Code()V

    .line 385
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_e
.end method

.method static synthetic J()V
    .registers 9

    .prologue
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    .line 42
    invoke-static {}, Lcom/opera/mini/android/bl;->Code()J

    move-result-wide v0

    invoke-static {}, Lcom/opera/mini/android/bl;->J()I

    move-result v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v3

    mul-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v7

    sget-object v3, Lcom/opera/mini/android/ap;->Z:Lcom/opera/mini/android/ap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    sget-object v0, Lcom/opera/mini/android/ap;->J:Lcom/opera/mini/android/ap;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/ap;->Code(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z()Landroid/content/Context;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/opera/mini/android/an;->Code:Landroid/content/Context;

    return-object v0
.end method
