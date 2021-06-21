.class public Lcom/opera/mini/android/ax;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final d:Ljava/util/HashSet;


# instance fields
.field private B:Ljavax/microedition/khronos/egl/EGLContext;

.field private C:I

.field private Code:Z

.field private I:Lcom/opera/mini/android/MiniView;

.field private J:Lcom/opera/mini/android/a;

.field private Z:Z

.field private a:I

.field private b:I

.field private c:I

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    new-instance v0, Lcom/opera/mini/android/ax$1;

    invoke-direct {v0}, Lcom/opera/mini/android/ax$1;-><init>()V

    sput-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(IILcom/opera/mini/android/MiniView;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Code:Z

    .line 31
    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Z:Z

    .line 33
    iput-object v1, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    .line 35
    iput-object v1, p0, Lcom/opera/mini/android/ax;->B:Ljavax/microedition/khronos/egl/EGLContext;

    .line 388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/opera/mini/android/ax;->e:J

    .line 45
    iput p1, p0, Lcom/opera/mini/android/ax;->C:I

    .line 46
    iput p2, p0, Lcom/opera/mini/android/ax;->a:I

    .line 47
    iput p2, p0, Lcom/opera/mini/android/ax;->b:I

    .line 48
    iput p1, p0, Lcom/opera/mini/android/ax;->c:I

    .line 49
    iput-object p3, p0, Lcom/opera/mini/android/ax;->I:Lcom/opera/mini/android/MiniView;

    .line 50
    return-void
.end method

.method static C()Z
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 154
    sget-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/opera/mini/android/ay;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/opera/mini/android/ay;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/opera/mini/android/ay;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/opera/mini/android/ay;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v3, v5}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/opera/mini/android/ax;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/opera/mini/android/ay;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-direct {v1, v5, v5, v5, v2}, Lcom/opera/mini/android/ay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_54
    const/4 v0, 0x1

    :goto_55
    return v0

    :cond_56
    const/4 v0, 0x0

    goto :goto_55
.end method

.method static synthetic Code(Lcom/opera/mini/android/ax;)Lcom/opera/mini/android/MiniView;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/opera/mini/android/ax;->I:Lcom/opera/mini/android/MiniView;

    return-object v0
.end method

.method private static Code(Ljavax/microedition/khronos/opengles/GL10;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 169
    const/16 v0, 0x1f01

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "PowerVR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    .line 172
    const/4 v0, 0x0

    .line 225
    :goto_f
    return-object v0

    .line 180
    :cond_10
    const/16 v0, 0x1f02

    :try_start_12
    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, " build"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 182
    if-lez v1, :cond_26

    .line 184
    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_f

    :catch_25
    move-exception v0

    .line 195
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/pvr/version"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_32} :catch_57

    .line 198
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_5b

    .line 201
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 202
    if-lez v2, :cond_5b

    .line 204
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 206
    if-lez v2, :cond_53

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_5f

    move-result-object v0

    .line 210
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_f

    :catch_57
    move-exception v0

    .line 225
    :goto_58
    const-string v0, ""

    goto :goto_f

    .line 210
    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_58

    .line 216
    :catchall_5f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_64} :catch_57
.end method

.method private static I(Ljavax/microedition/khronos/opengles/GL10;)Z
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    sget v2, Lcom/opera/mini/android/s;->al:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_a

    .line 270
    :cond_9
    :goto_9
    return v0

    .line 237
    :cond_a
    invoke-static {p0}, Lcom/opera/mini/android/ax;->Code(Ljavax/microedition/khronos/opengles/GL10;)Ljava/lang/String;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_9

    .line 247
    const/4 v3, 0x4

    :try_start_11
    new-array v3, v3, [I

    fill-array-data v3, :array_40

    .line 248
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v2, "[^0-9]"

    invoke-virtual {v4, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    move v2, v0

    .line 249
    :goto_22
    if-ge v2, v7, :cond_3e

    .line 251
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-nez v5, :cond_2c

    move v0, v1

    .line 253
    goto :goto_9

    .line 255
    :cond_2c
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    .line 256
    aget v6, v3, v2

    if-gt v5, v6, :cond_9

    .line 260
    aget v6, v3, v2
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_36} :catch_3d

    if-ge v5, v6, :cond_3a

    move v0, v1

    .line 262
    goto :goto_9

    .line 249
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 266
    :catch_3d
    move-exception v0

    :cond_3e
    move v0, v1

    .line 270
    goto :goto_9

    .line 247
    :array_40
    .array-data 4
        0x1
        0x5
        0xf
        0xc7c
    .end array-data
.end method

.method private static a()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 1

    .prologue
    .line 331
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final B()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/opera/mini/android/ax;->Z:Z

    return v0
.end method

.method public final Code()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Code:Z

    .line 55
    return-void
.end method

.method public final Code(II)V
    .registers 3

    .prologue
    .line 372
    iput p2, p0, Lcom/opera/mini/android/ax;->b:I

    .line 373
    iput p1, p0, Lcom/opera/mini/android/ax;->c:I

    .line 374
    return-void
.end method

.method public final declared-synchronized I()V
    .registers 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_7

    .line 65
    :goto_5
    monitor-exit p0

    return-void

    .line 61
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Z:Z

    .line 63
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->f()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 59
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J()V
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-nez v0, :cond_7

    .line 84
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 78
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/opera/mini/android/ax;->B:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Lcom/opera/mini/android/ax;->a()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->c()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_5

    .line 76
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()V
    .registers 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_7

    .line 72
    :goto_5
    monitor-exit p0

    return-void

    .line 70
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->g()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 69
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x10

    const-wide/16 v6, 0x0

    .line 412
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_95

    if-nez v0, :cond_b

    .line 466
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 417
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/opera/mini/android/ax;->a:I

    iget v1, p0, Lcom/opera/mini/android/ax;->b:I

    if-eq v0, v1, :cond_5b

    .line 418
    iget-object v0, p0, Lcom/opera/mini/android/ax;->B:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x305a

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    if-eqz v1, :cond_98

    if-eqz v4, :cond_98

    const/16 v5, 0x3056

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/16 v5, 0x3057

    invoke-interface {v0, v1, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    :goto_37
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    iget v1, p0, Lcom/opera/mini/android/ax;->a:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_a3

    .line 420
    iget-object v1, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3}, Lcom/opera/mini/android/a;->J(II)V

    .line 421
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/opera/mini/android/ax;->a:I

    .line 422
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/opera/mini/android/ax;->C:I

    .line 430
    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Z:Z

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 437
    iget-wide v2, p0, Lcom/opera/mini/android/ax;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7d

    .line 439
    iget-wide v2, p0, Lcom/opera/mini/android/ax;->e:J

    sub-long v2, v0, v2

    .line 440
    cmp-long v4, v2, v8

    if-gez v4, :cond_7d

    cmp-long v4, v2, v6

    if-ltz v4, :cond_7d

    .line 442
    sub-long v0, v8, v2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 451
    :cond_7d
    iput-wide v0, p0, Lcom/opera/mini/android/ax;->e:J

    .line 453
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 455
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-object v1, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Code;->Code(Lbr;)V

    .line 456
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->b()V
    :try_end_93
    .catchall {:try_start_b .. :try_end_93} :catchall_95

    goto/16 :goto_9

    .line 412
    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_98
    const/4 v0, 0x0

    :try_start_99
    iget v1, p0, Lcom/opera/mini/android/ax;->b:I

    aput v1, v2, v0

    const/4 v0, 0x0

    iget v1, p0, Lcom/opera/mini/android/ax;->c:I

    aput v1, v3, v0

    goto :goto_37

    .line 426
    :cond_a3
    iget-object v0, p0, Lcom/opera/mini/android/ax;->I:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->a()V
    :try_end_a8
    .catchall {:try_start_99 .. :try_end_a8} :catchall_95

    goto :goto_5b
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5

    .prologue
    .line 380
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_7

    .line 384
    :goto_5
    monitor-exit p0

    return-void

    .line 382
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0, p2, p3}, Lcom/opera/mini/android/a;->J(II)V

    .line 383
    iget-object v0, p0, Lcom/opera/mini/android/ax;->I:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->I()V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 380
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    monitor-enter p0

    const/16 v2, 0x1f01

    :try_start_5
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PixelFlinger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1f

    :cond_11
    :goto_11
    if-eqz v0, :cond_3c

    .line 342
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    new-instance v1, Lcom/opera/mini/android/az;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/az;-><init>(Lcom/opera/mini/android/ax;)V

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_73

    .line 369
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    .line 338
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Lcom/opera/mini/android/ax;->I(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    const-string v3, "FIMG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3a

    :cond_35
    move v2, v1

    :goto_36
    if-nez v2, :cond_11

    move v0, v1

    goto :goto_11

    :cond_3a
    move v2, v0

    goto :goto_36

    .line 350
    :cond_3c
    iget v0, p0, Lcom/opera/mini/android/ax;->C:I

    iget v1, p0, Lcom/opera/mini/android/ax;->a:I

    invoke-static {v0, v1}, Lcom/opera/mini/android/a;->I(II)Lcom/opera/mini/android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    .line 351
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    invoke-virtual {v0}, Lcom/opera/mini/android/a;->e()V

    .line 353
    iget-object v0, p0, Lcom/opera/mini/android/ax;->J:Lcom/opera/mini/android/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/a;->Code(Z)V

    .line 356
    invoke-static {}, Lcom/opera/mini/android/ax;->a()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/ax;->B:Ljavax/microedition/khronos/egl/EGLContext;

    .line 358
    iget-boolean v0, p0, Lcom/opera/mini/android/ax;->Code:Z

    if-eqz v0, :cond_1d

    .line 362
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_6f

    .line 364
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    sget-object v0, Lcom/opera/mini/android/Code;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 365
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    sget-object v0, Lcom/opera/mini/android/Code;->I:Lar;

    invoke-virtual {v0}, Lar;->y()V

    .line 367
    :cond_6f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/ax;->Code:Z
    :try_end_72
    .catchall {:try_start_1f .. :try_end_72} :catchall_73

    goto :goto_1d

    .line 338
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method
