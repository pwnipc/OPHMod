.class final Lcom/google/android/apps/analytics/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final Code:Ljava/util/LinkedList;

.field private synthetic I:Lcom/google/android/apps/analytics/n;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/analytics/n;[Lcom/google/android/apps/analytics/f;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final Code()Lcom/google/android/apps/analytics/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/f;

    return-object v0
.end method

.method public final run()V
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0, p0}, Lcom/google/android/apps/analytics/n;->Code(Lcom/google/android/apps/analytics/n;Lcom/google/android/apps/analytics/o;)Lcom/google/android/apps/analytics/o;

    move v6, v5

    :goto_7
    const/4 v0, 0x5

    if-ge v6, v0, :cond_11e

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_11e

    const-wide/16 v0, 0x0

    :try_start_14
    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->Code(Lcom/google/android/apps/analytics/n;)I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_28

    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->Code(Lcom/google/android/apps/analytics/n;)I

    move-result v2

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_10f

    :cond_28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->I(Lcom/google/android/apps/analytics/n;)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->I(Lcom/google/android/apps/analytics/n;)J

    move-result-wide v2

    const-wide/16 v7, 0x100

    cmp-long v2, v2, v7

    if-gez v2, :cond_46

    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->Z(Lcom/google/android/apps/analytics/n;)J

    :cond_46
    :goto_46
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->B(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/m;

    invoke-static {}, Lcom/google/android/apps/analytics/d;->Code()Lcom/google/android/apps/analytics/d;

    invoke-static {}, Lcom/google/android/apps/analytics/d;->B()Z

    move v4, v5

    :goto_58
    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1a8

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->b(Lcom/google/android/apps/analytics/n;)I

    move-result v0

    if-ge v4, v0, :cond_1a8

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->Code:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/f;

    iget-object v0, v0, Lcom/google/android/apps/analytics/f;->Code:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/w;->Code(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_142

    move-object v0, v3

    :cond_83
    const-string v1, ""

    move-object v2, v1

    move-object v1, v0

    :goto_87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x7f4

    if-ge v0, v7, :cond_15e

    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_97
    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->B(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/m;->Code(Lcom/google/android/apps/analytics/m;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v3}, Lcom/google/android/apps/analytics/n;->B(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/analytics/m;->Code(Lcom/google/android/apps/analytics/m;)Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/16 v7, 0x50

    if-eq v3, v7, :cond_dc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v3}, Lcom/google/android/apps/analytics/n;->B(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/analytics/m;->Code(Lcom/google/android/apps/analytics/m;)Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_dc
    const-string v3, "Host"

    invoke-interface {v1, v3, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v3, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v3}, Lcom/google/android/apps/analytics/n;->c(Lcom/google/android/apps/analytics/n;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/d;->Code()Lcom/google/android/apps/analytics/d;

    invoke-static {}, Lcom/google/android/apps/analytics/d;->B()Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_193

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->d(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/s;->I()V

    :goto_10a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_58

    :cond_10f
    iget-object v2, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v2}, Lcom/google/android/apps/analytics/n;->J(Lcom/google/android/apps/analytics/n;)J
    :try_end_114
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_114} :catch_116
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_114} :catch_19e
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_114} :catch_1b6

    goto/16 :goto_46

    :catch_116
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Couldn\'t sleep."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11e
    :goto_11e
    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->C(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->I()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->a(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/C;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/apps/analytics/C;->Code:Lcom/google/android/apps/analytics/d;

    invoke-static {v1}, Lcom/google/android/apps/analytics/d;->Code(Lcom/google/android/apps/analytics/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/analytics/e;

    invoke-direct {v2, v0}, Lcom/google/android/apps/analytics/e;-><init>(Lcom/google/android/apps/analytics/C;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/n;->Code(Lcom/google/android/apps/analytics/n;Lcom/google/android/apps/analytics/o;)Lcom/google/android/apps/analytics/o;

    return-void

    :cond_142
    if-lez v1, :cond_15b

    const/4 v0, 0x0

    :try_start_145
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_149
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_83

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_87

    :cond_15b
    const-string v0, ""

    goto :goto_149

    :cond_15e
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "POST"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/p"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "text/plain"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v0

    goto/16 :goto_97

    :cond_193
    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->C(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/r;->Code(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_19c
    .catch Ljava/lang/InterruptedException; {:try_start_145 .. :try_end_19c} :catch_116
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_19c} :catch_19e
    .catch Lorg/apache/http/HttpException; {:try_start_145 .. :try_end_19c} :catch_1b6

    goto/16 :goto_10a

    :catch_19e
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with socket or streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11e

    :cond_1a8
    :try_start_1a8
    iget-object v0, p0, Lcom/google/android/apps/analytics/o;->I:Lcom/google/android/apps/analytics/n;

    invoke-static {v0}, Lcom/google/android/apps/analytics/n;->C(Lcom/google/android/apps/analytics/n;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->Code()V
    :try_end_1b1
    .catch Ljava/lang/InterruptedException; {:try_start_1a8 .. :try_end_1b1} :catch_116
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b1} :catch_19e
    .catch Lorg/apache/http/HttpException; {:try_start_1a8 .. :try_end_1b1} :catch_1b6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_7

    :catch_1b6
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with http streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11e
.end method
