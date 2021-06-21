.class final Lcom/opera/mini/android/MiniView$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/MiniView;->I(IIII)V
.end annotation


# instance fields
.field private synthetic B:Lcom/opera/mini/android/MiniView;

.field private synthetic Code:I

.field private synthetic I:I

.field private synthetic J:I

.field private synthetic Z:I


# direct methods
.method constructor <init>(Lcom/opera/mini/android/MiniView;IIII)V
    .registers 6

    .prologue
    .line 304
    iput-object p1, p0, Lcom/opera/mini/android/MiniView$1;->B:Lcom/opera/mini/android/MiniView;

    iput p2, p0, Lcom/opera/mini/android/MiniView$1;->Code:I

    iput p3, p0, Lcom/opera/mini/android/MiniView$1;->I:I

    iput p4, p0, Lcom/opera/mini/android/MiniView$1;->Z:I

    iput p5, p0, Lcom/opera/mini/android/MiniView$1;->J:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 308
    iget-object v0, p0, Lcom/opera/mini/android/MiniView$1;->B:Lcom/opera/mini/android/MiniView;

    iget-object v0, v0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    iget v1, p0, Lcom/opera/mini/android/MiniView$1;->Code:I

    iget v2, p0, Lcom/opera/mini/android/MiniView$1;->I:I

    iget v3, p0, Lcom/opera/mini/android/MiniView$1;->Z:I

    iget v4, p0, Lcom/opera/mini/android/MiniView$1;->J:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/bd;->onSizeChanged(IIII)V

    .line 309
    return-void
.end method
