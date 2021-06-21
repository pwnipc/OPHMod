.class public Lcom/opera/mini/android/av;
.super Landroid/opengl/GLSurfaceView;
.source "Source"

# interfaces
.implements Lcom/opera/mini/android/bd;


# instance fields
.field protected Code:Z

.field private I:Lcom/opera/mini/android/MiniView;

.field private Z:Lcom/opera/mini/android/ax;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/opera/mini/android/MiniView;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v4, p0, Lcom/opera/mini/android/av;->Code:Z

    .line 25
    iput-object p2, p0, Lcom/opera/mini/android/av;->I:Lcom/opera/mini/android/MiniView;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/av;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v1, Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/opera/mini/android/av;->I:Lcom/opera/mini/android/MiniView;

    invoke-direct {v1, v2, v0, v3}, Lcom/opera/mini/android/ax;-><init>(IILcom/opera/mini/android/MiniView;)V

    iput-object v1, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/av;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v4}, Lcom/opera/mini/android/av;->setRenderMode(I)V

    .line 27
    invoke-virtual {p0, v5}, Lcom/opera/mini/android/av;->setFocusableInTouchMode(Z)V

    .line 28
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_36

    .line 30
    invoke-static {p0, v5}, Lcom/opera/mini/android/x;->Code(Landroid/opengl/GLSurfaceView;Z)V

    .line 32
    :cond_36
    return-void
.end method


# virtual methods
.method final B()V
    .registers 3

    .prologue
    .line 146
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    .line 148
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->onDetachedFromWindow()V

    .line 150
    :cond_8
    return-void
.end method

.method public C()V
    .registers 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->requestRender()V

    .line 155
    return-void
.end method

.method public Code()Landroid/view/View;
    .registers 1

    .prologue
    .line 46
    return-object p0
.end method

.method public Code(IIII)V
    .registers 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->requestRender()V

    .line 160
    return-void
.end method

.method public I()Lcom/opera/mini/android/bd;
    .registers 1

    .prologue
    .line 51
    return-object p0
.end method

.method public J()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    if-eqz v0, :cond_9

    .line 135
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Lcom/opera/mini/android/ax;->Z()V

    .line 137
    :cond_9
    return-void
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Lcom/opera/mini/android/ax;->I()V

    .line 129
    :cond_9
    return-void
.end method

.method public a()V
    .registers 3

    .prologue
    .line 169
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_e

    .line 172
    new-instance v0, Lcom/opera/mini/android/aw;

    invoke-direct {v0, p0, p0}, Lcom/opera/mini/android/aw;-><init>(Lcom/opera/mini/android/av;Lcom/opera/mini/android/av;)V

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/av;->queueEvent(Ljava/lang/Runnable;)V

    .line 178
    :goto_d
    return-void

    .line 176
    :cond_e
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->requestRender()V

    goto :goto_d
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Lcom/opera/mini/android/ax;->B()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Lcom/opera/mini/android/ax;->J()V

    .line 203
    return-void
.end method

.method public final d()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 213
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 78
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_25

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/av;->Code:Z

    .line 83
    new-instance v0, Lcom/opera/mini/android/av$1;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/av$1;-><init>(Lcom/opera/mini/android/av;)V

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/av;->queueEvent(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->requestRender()V

    .line 98
    monitor-enter p0

    .line 100
    :try_start_14
    iget-boolean v0, p0, Lcom/opera/mini/android/av;->Code:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_22

    if-nez v0, :cond_1b

    .line 103
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_29
    .catchall {:try_start_18 .. :try_end_1b} :catchall_22

    .line 108
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_22

    .line 115
    :goto_1c
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0}, Lcom/opera/mini/android/ax;->Code()V

    .line 116
    return-void

    .line 108
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_25
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_1c

    :catch_29
    move-exception v0

    goto :goto_1b
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 121
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/opera/mini/android/av;->Z:Lcom/opera/mini/android/ax;

    invoke-virtual {v0, p1, p2}, Lcom/opera/mini/android/ax;->Code(II)V

    .line 218
    iget-object v0, p0, Lcom/opera/mini/android/av;->I:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/opera/mini/android/MiniView;->I(IIII)V

    .line 219
    invoke-virtual {p0}, Lcom/opera/mini/android/av;->requestRender()V

    .line 220
    return-void
.end method
