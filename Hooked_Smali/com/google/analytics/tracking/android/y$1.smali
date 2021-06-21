.class final Lcom/google/analytics/tracking/android/y$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/y;->Code(Ljava/util/Map;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/util/Map;

.field private synthetic I:J

.field private synthetic Z:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;J)V
    .registers 5

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/analytics/tracking/android/y$1;->I:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->I(Lcom/google/analytics/tracking/android/y;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->I(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 133
    :cond_1f
    :goto_1f
    return-void

    .line 124
    :cond_20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->Z(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 125
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    const-string v1, "campaign"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/y;->Z(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->J(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;

    .line 128
    :cond_3e
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;)V

    .line 129
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->Z(Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/y;->I(Lcom/google/analytics/tracking/android/y;Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->B(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/ag;

    move-result-object v3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/analytics/tracking/android/ag;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ai;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/google/analytics/tracking/android/ai;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/ai;->I()Lcom/google/analytics/tracking/android/ah;

    move-result-object v6

    if-eqz v6, :cond_a0

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/ai;->I()Lcom/google/analytics/tracking/android/ah;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/analytics/tracking/android/ah;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a0
    if-eqz v0, :cond_68

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/ai;->Code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 132
    :cond_b0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/y$1;->I:J

    iget-object v4, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/y$1;->Code:Ljava/util/Map;

    invoke-static {v4}, Lcom/google/analytics/tracking/android/y;->J(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/y$1;->Z:Lcom/google/analytics/tracking/android/y;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/y;->C(Lcom/google/analytics/tracking/android/y;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/an;->Code(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1f
.end method
