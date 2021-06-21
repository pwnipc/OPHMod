.class public Lcom/opera/mini/android/ba;
.super Landroid/view/SurfaceView;
.source "Source"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/opera/mini/android/bd;


# static fields
.field private static B:Ljava/lang/Runnable;

.field private static C:I

.field private static I:Lcom/opera/mini/android/a;

.field private static Z:Landroid/graphics/Bitmap;

.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:Lcy;


# instance fields
.field private Code:Lcom/opera/mini/android/MiniView;

.field private J:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/opera/mini/android/ba;->d:Z

    .line 41
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    sput-object v0, Lcom/opera/mini/android/ba;->e:Lcy;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/opera/mini/android/MiniView;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/opera/mini/android/ba;->Code:Lcom/opera/mini/android/MiniView;

    .line 50
    invoke-virtual {p0}, Lcom/opera/mini/android/ba;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/ba;->J:Landroid/view/SurfaceHolder;

    .line 51
    iget-object v0, p0, Lcom/opera/mini/android/ba;->J:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/ba;->setFocusableInTouchMode(Z)V

    .line 54
    return-void
.end method

.method static synthetic B()Lcy;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/opera/mini/android/ba;->e:Lcy;

    return-object v0
.end method

.method static synthetic Code(I)I
    .registers 1

    .prologue
    .line 21
    sput p0, Lcom/opera/mini/android/ba;->b:I

    return p0
.end method

.method static synthetic Code(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/opera/mini/android/ba;->Z:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic Code(Lcom/opera/mini/android/ba;)Lcom/opera/mini/android/MiniView;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/opera/mini/android/ba;->Code:Lcom/opera/mini/android/MiniView;

    return-object v0
.end method

.method static synthetic Code(Lcom/opera/mini/android/a;)Lcom/opera/mini/android/a;
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/opera/mini/android/ba;->I:Lcom/opera/mini/android/a;

    return-object p0
.end method

.method private Code(IIIIZ)V
    .registers 9

    .prologue
    .line 119
    sget-object v0, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    if-nez v0, :cond_16

    .line 121
    new-instance v0, Lcom/opera/mini/android/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/opera/mini/android/bb;-><init>(Lcom/opera/mini/android/ba;B)V

    sput-object v0, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    :cond_16
    sget-object v1, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    monitor-enter v1

    .line 127
    :try_start_19
    sget v0, Lcom/opera/mini/android/ba;->b:I

    if-lez v0, :cond_59

    .line 129
    sget v0, Lcom/opera/mini/android/ba;->C:I

    sget v2, Lcom/opera/mini/android/ba;->b:I

    add-int/2addr v0, v2

    .line 130
    sget v2, Lcom/opera/mini/android/ba;->C:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/opera/mini/android/ba;->C:I

    .line 131
    add-int v2, p1, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lcom/opera/mini/android/ba;->C:I

    sub-int/2addr v0, v2

    sput v0, Lcom/opera/mini/android/ba;->b:I

    .line 132
    sget v0, Lcom/opera/mini/android/ba;->a:I

    sget v2, Lcom/opera/mini/android/ba;->c:I

    add-int/2addr v0, v2

    .line 133
    sget v2, Lcom/opera/mini/android/ba;->a:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/opera/mini/android/ba;->a:I

    .line 134
    add-int v2, p2, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lcom/opera/mini/android/ba;->a:I

    sub-int/2addr v0, v2

    sput v0, Lcom/opera/mini/android/ba;->c:I

    .line 143
    :goto_4d
    if-eqz p5, :cond_57

    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/opera/mini/android/ba;->d:Z

    .line 146
    sget-object v0, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 148
    :cond_57
    monitor-exit v1

    return-void

    .line 138
    :cond_59
    sput p1, Lcom/opera/mini/android/ba;->C:I

    .line 139
    sput p2, Lcom/opera/mini/android/ba;->a:I

    .line 140
    sput p3, Lcom/opera/mini/android/ba;->b:I

    .line 141
    sput p4, Lcom/opera/mini/android/ba;->c:I
    :try_end_61
    .catchall {:try_start_19 .. :try_end_61} :catchall_62

    goto :goto_4d

    .line 148
    :catchall_62
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic I(I)I
    .registers 1

    .prologue
    .line 21
    sput p0, Lcom/opera/mini/android/ba;->c:I

    return p0
.end method

.method static synthetic I(Lcom/opera/mini/android/ba;)Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/opera/mini/android/ba;->J:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic c()Z
    .registers 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/opera/mini/android/ba;->d:Z

    return v0
.end method

.method static synthetic d()Z
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/opera/mini/android/ba;->d:Z

    return v0
.end method

.method static synthetic e()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/opera/mini/android/ba;->C:I

    return v0
.end method

.method static synthetic f()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/opera/mini/android/ba;->a:I

    return v0
.end method

.method static synthetic g()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/opera/mini/android/ba;->b:I

    return v0
.end method

.method static synthetic h()I
    .registers 1

    .prologue
    .line 21
    sget v0, Lcom/opera/mini/android/ba;->c:I

    return v0
.end method

.method static synthetic i()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/opera/mini/android/ba;->Z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic j()I
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ba;->C:I

    return v0
.end method

.method static synthetic k()I
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ba;->a:I

    return v0
.end method

.method static synthetic l()Lcom/opera/mini/android/a;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/opera/mini/android/ba;->I:Lcom/opera/mini/android/a;

    return-object v0
.end method


# virtual methods
.method public C()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/opera/mini/android/ba;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/opera/mini/android/ba;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/opera/mini/android/ba;->Code(IIII)V

    .line 101
    return-void
.end method

.method public Code()Landroid/view/View;
    .registers 1

    .prologue
    .line 59
    return-object p0
.end method

.method public Code(IIII)V
    .registers 11

    .prologue
    .line 105
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/ba;->Code(IIIIZ)V

    .line 106
    return-void
.end method

.method public I()Lcom/opera/mini/android/bd;
    .registers 1

    .prologue
    .line 64
    return-object p0
.end method

.method public J()V
    .registers 3

    .prologue
    .line 81
    sget-object v0, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 83
    sget-object v1, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    monitor-enter v1

    .line 85
    const/4 v0, 0x0

    :try_start_8
    sput v0, Lcom/opera/mini/android/ba;->b:I

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ba;->c:I

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ba;->C:I

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/opera/mini/android/ba;->a:I

    .line 89
    sget-object v0, Lcom/opera/mini/android/ba;->B:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1f

    .line 93
    sget-object v0, Lcom/opera/mini/android/ba;->e:Lcy;

    invoke-virtual {v0}, Lcy;->Code()V

    .line 96
    :cond_1e
    return-void

    .line 90
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public Z()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public a()V
    .registers 1

    .prologue
    .line 110
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 409
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/ba;->Code(IIIIZ)V

    .line 410
    iget-object v0, p0, Lcom/opera/mini/android/ba;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/opera/mini/android/MiniView;->I(IIII)V

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, v1

    .line 411
    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/ba;->Code(IIIIZ)V

    .line 412
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/opera/mini/android/ba;->C()V

    .line 401
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 403
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    .prologue
    .line 404
    return-void
.end method
