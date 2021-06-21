.class public final Lcom/opera/mini/android/notifications/f;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->Code()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/m;->Code(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/opera/mini/android/notifications/f;->Code:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;
    .registers 3

    .prologue
    .line 42
    if-nez p1, :cond_7

    .line 44
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->I()Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    .line 46
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/opera/mini/android/notifications/f;->Code:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/g;->Code(Landroid/content/Context;)Lcom/google/analytics/tracking/android/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/g;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final Code(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/opera/mini/android/notifications/f;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_15

    .line 25
    const-string v1, "notifications"

    const-string v2, "show"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->Z()V

    .line 28
    :cond_15
    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/opera/mini/android/notifications/f;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_19

    .line 35
    invoke-direct {p0, p2}, Lcom/opera/mini/android/notifications/f;->Code(Ljava/lang/String;)Lcom/google/analytics/tracking/android/ao;

    move-result-object v0

    const-string v1, "notifications"

    const-string v2, "click"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/analytics/tracking/android/ao;->Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->Z()V

    .line 38
    :cond_19
    return-void
.end method
