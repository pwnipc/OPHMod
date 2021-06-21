.class public Lcom/opera/mini/android/bo;
.super Lcom/opera/mini/android/be;
.source "Source"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field I:Landroid/view/ScaleGestureDetector;

.field Z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/opera/mini/android/be;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/opera/mini/android/bo;->Z:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/opera/mini/android/bo;->I:Landroid/view/ScaleGestureDetector;

    .line 25
    return-void
.end method

.method private Code(ILandroid/view/ScaleGestureDetector;)V
    .registers 7

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/opera/mini/android/bo;->Code(IIII)V

    .line 30
    return-void
.end method


# virtual methods
.method public Code(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/opera/mini/android/bo;->Code:I

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 56
    iget-object v2, p0, Lcom/opera/mini/android/bo;->I:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    iget-object v2, p0, Lcom/opera/mini/android/bo;->I:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_29

    if-ne v1, v0, :cond_29

    .line 65
    iget-object v2, p0, Lcom/opera/mini/android/bo;->I:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v2}, Lcom/opera/mini/android/bo;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 66
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/opera/mini/android/bo;->Z:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/opera/mini/android/bo;->I:Landroid/view/ScaleGestureDetector;

    .line 68
    :cond_29
    if-le v1, v0, :cond_2c

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .prologue
    .line 48
    const/16 v0, 0x4a

    invoke-direct {p0, v0, p1}, Lcom/opera/mini/android/bo;->Code(ILandroid/view/ScaleGestureDetector;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    .prologue
    .line 41
    const/16 v0, 0x49

    invoke-direct {p0, v0, p1}, Lcom/opera/mini/android/bo;->Code(ILandroid/view/ScaleGestureDetector;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 3

    .prologue
    .line 35
    const/16 v0, 0x4b

    invoke-direct {p0, v0, p1}, Lcom/opera/mini/android/bo;->Code(ILandroid/view/ScaleGestureDetector;)V

    .line 36
    return-void
.end method
