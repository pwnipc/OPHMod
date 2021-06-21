.class public Lcom/opera/mini/android/x;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Landroid/opengl/GLSurfaceView;Z)V
    .registers 2
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 126
    return-void
.end method
