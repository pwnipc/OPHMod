.class Lcom/opera/mini/android/bc;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:I

.field final synthetic Code:Lcom/opera/mini/android/MiniView;

.field private I:F

.field private J:F

.field private Z:J


# direct methods
.method constructor <init>(Lcom/opera/mini/android/MiniView;I)V
    .registers 4

    .prologue
    .line 580
    iput-object p1, p0, Lcom/opera/mini/android/bc;->Code:Lcom/opera/mini/android/MiniView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p2, p0, Lcom/opera/mini/android/bc;->B:I

    .line 582
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/opera/mini/android/bc;->J:F

    .line 583
    return-void
.end method


# virtual methods
.method Code(F)I
    .registers 11

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 587
    cmpl-float v0, p1, v7

    if-nez v0, :cond_9

    .line 588
    const/4 v0, 0x0

    .line 617
    :goto_8
    return v0

    .line 590
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 591
    iget-wide v2, p0, Lcom/opera/mini/android/bc;->Z:J

    sub-long v2, v0, v2

    .line 592
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 598
    const-wide/16 v5, 0x5dc

    cmp-long v5, v2, v5

    if-gtz v5, :cond_22

    iget v5, p0, Lcom/opera/mini/android/bc;->I:F

    mul-float/2addr v5, p1

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2d

    .line 600
    :cond_22
    iput v8, p0, Lcom/opera/mini/android/bc;->J:F

    .line 614
    :goto_24
    iput-wide v0, p0, Lcom/opera/mini/android/bc;->Z:J

    .line 615
    iput p1, p0, Lcom/opera/mini/android/bc;->I:F

    .line 617
    iget v0, p0, Lcom/opera/mini/android/bc;->J:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_8

    .line 604
    :cond_2d
    iget v5, p0, Lcom/opera/mini/android/bc;->I:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_40

    .line 606
    iget v5, p0, Lcom/opera/mini/android/bc;->J:F

    iget v6, p0, Lcom/opera/mini/android/bc;->B:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    long-to-float v2, v2

    div-float v2, v4, v2

    add-float/2addr v2, v5

    iput v2, p0, Lcom/opera/mini/android/bc;->J:F

    goto :goto_24

    .line 610
    :cond_40
    iget v5, p0, Lcom/opera/mini/android/bc;->J:F

    iget v6, p0, Lcom/opera/mini/android/bc;->B:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    long-to-float v2, v2

    div-float v2, v4, v2

    sub-float v2, v5, v2

    iput v2, p0, Lcom/opera/mini/android/bc;->J:F

    .line 611
    iget v2, p0, Lcom/opera/mini/android/bc;->J:F

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/opera/mini/android/bc;->J:F

    goto :goto_24
.end method
