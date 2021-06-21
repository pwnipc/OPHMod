.class final Lcom/opera/mini/android/bb;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/ba;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/ba;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/ba;B)V
    .registers 3

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/opera/mini/android/bb;-><init>(Lcom/opera/mini/android/ba;)V

    return-void
.end method

.method private static Code(II)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 180
    move v2, v1

    .line 184
    :goto_2
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_7} :catch_b

    move-result-object v0

    .line 185
    if-eqz v0, :cond_11

    .line 187
    return-object v0

    .line 190
    :catch_b
    move-exception v0

    .line 192
    sget v3, Lar;->b:I

    if-lt v2, v3, :cond_11

    .line 194
    throw v0

    .line 197
    :cond_11
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 198
    sget-object v3, Lar;->I:Lar;

    if-lez v2, :cond_27

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v3, v0}, Lar;->Code(Z)V

    .line 199
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_27
    move v0, v1

    .line 198
    goto :goto_1b
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    .line 160
    invoke-static {}, Lcom/opera/mini/android/ba;->B()Lcy;

    move-result-object v0

    invoke-virtual {v0}, Lcy;->I()V

    .line 163
    :cond_7
    :goto_7
    :try_start_7
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-nez v0, :cond_23

    monitor-enter p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_123

    :try_start_10
    invoke-static {}, Lcom/opera/mini/android/ba;->c()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldb;->Code(Ljava/lang/Object;I)V

    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-eqz v0, :cond_38

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_12c

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->g()V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_123

    .line 167
    :cond_30
    invoke-static {}, Lcom/opera/mini/android/ba;->B()Lcy;

    move-result-object v0

    invoke-virtual {v0}, Lcy;->Z()V

    .line 168
    return-void

    .line 163
    :cond_38
    :try_start_38
    invoke-static {}, Lcom/opera/mini/android/ba;->d()Z

    invoke-static {}, Lcom/opera/mini/android/ba;->e()I

    move-result v1

    invoke-static {}, Lcom/opera/mini/android/ba;->f()I

    move-result v2

    invoke-static {}, Lcom/opera/mini/android/ba;->g()I

    move-result v3

    invoke-static {}, Lcom/opera/mini/android/ba;->h()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/opera/mini/android/ba;->Code(I)I

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_12c

    :try_start_50
    iget-object v0, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-virtual {v0}, Lcom/opera/mini/android/ba;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-virtual {v5}, Lcom/opera/mini/android/ba;->getHeight()I

    move-result v5

    if-lez v0, :cond_7

    if-lez v5, :cond_7

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_7a

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v0, :cond_7a

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_aa

    :cond_7a
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/opera/mini/android/ba;->Code(Lcom/opera/mini/android/a;)Lcom/opera/mini/android/a;

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_8f

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/opera/mini/android/ba;->Code(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_8f
    invoke-static {v0, v5}, Lcom/opera/mini/android/bb;->Code(II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/opera/mini/android/ba;->Code(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_30

    monitor-enter p0
    :try_end_9d
    .catchall {:try_start_50 .. :try_end_9d} :catchall_123

    :try_start_9d
    invoke-static {}, Lcom/opera/mini/android/ba;->j()I

    invoke-static {}, Lcom/opera/mini/android/ba;->k()I

    invoke-static {v0}, Lcom/opera/mini/android/ba;->Code(I)I

    invoke-static {v5}, Lcom/opera/mini/android/ba;->I(I)I

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_12f

    :cond_aa
    :try_start_aa
    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    if-nez v0, :cond_cc

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/a;->I(Landroid/graphics/Bitmap;)Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/ba;->Code(Lcom/opera/mini/android/a;)Lcom/opera/mini/android/a;

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/opera/mini/android/a;->Code(Z)V

    iget-object v0, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-static {v0}, Lcom/opera/mini/android/ba;->Code(Lcom/opera/mini/android/ba;)Lcom/opera/mini/android/MiniView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->I()V

    :cond_cc
    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/a;->Code(IIII)V

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    const v5, 0xffffff

    invoke-virtual/range {v0 .. v5}, Lcom/opera/mini/android/a;->Z(IIIII)V

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Code;->Code(Lbr;)V

    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->b()V

    :cond_f7
    invoke-static {}, Lcom/opera/mini/android/ba;->l()Lcom/opera/mini/android/a;

    move-result-object v0

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/a;->Code(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-static {v0}, Lcom/opera/mini/android/ba;->I(Lcom/opera/mini/android/ba;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/opera/mini/android/ba;->i()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/opera/mini/android/bb;->Code:Lcom/opera/mini/android/ba;

    invoke-static {v1}, Lcom/opera/mini/android/ba;->I(Lcom/opera/mini/android/ba;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_121
    .catchall {:try_start_aa .. :try_end_121} :catchall_123

    goto/16 :goto_7

    .line 167
    :catchall_123
    move-exception v0

    invoke-static {}, Lcom/opera/mini/android/ba;->B()Lcy;

    move-result-object v1

    invoke-virtual {v1}, Lcy;->Z()V

    throw v0

    .line 163
    :catchall_12c
    move-exception v0

    :try_start_12d
    monitor-exit p0

    throw v0

    :catchall_12f
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_132
    .catchall {:try_start_12d .. :try_end_132} :catchall_123
.end method
