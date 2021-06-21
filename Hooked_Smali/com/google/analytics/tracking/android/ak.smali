.class final Lcom/google/analytics/tracking/android/ak;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private final Code:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_d

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private Code(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public final Code(Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 63
    const-string v0, "integer"

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    if-nez v0, :cond_9

    .line 71
    :goto_8
    return p2

    .line 68
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_12} :catch_14

    move-result p2

    goto :goto_8

    .line 70
    :catch_14
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NumberFormatException parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_8
.end method

.method public final Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 44
    if-nez v0, :cond_a

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public final I(Ljava/lang/String;)Ljava/lang/Double;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 91
    :goto_b
    return-object v0

    .line 88
    :cond_c
    :try_start_c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_b

    .line 90
    :catch_15
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NumberFormatException parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_b
.end method

.method public final Z(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 53
    const-string v0, "bool"

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/ak;->Code(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    if-nez v0, :cond_a

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_9
    return v0

    :cond_a
    const-string v1, "true"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/ak;->Code:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method
