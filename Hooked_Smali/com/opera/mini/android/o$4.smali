.class final Lcom/opera/mini/android/o$4;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/o;->Code(Ljava/lang/Object;IIIIII)V
.end annotation


# instance fields
.field private synthetic B:I

.field private synthetic C:I

.field private synthetic Code:Ljava/lang/Object;

.field private synthetic I:I

.field private synthetic J:I

.field private synthetic Z:I

.field private synthetic a:I


# direct methods
.method constructor <init>(Ljava/lang/Object;IIIIII)V
    .registers 8

    .prologue
    .line 492
    iput-object p1, p0, Lcom/opera/mini/android/o$4;->Code:Ljava/lang/Object;

    iput p2, p0, Lcom/opera/mini/android/o$4;->I:I

    iput p3, p0, Lcom/opera/mini/android/o$4;->Z:I

    iput p4, p0, Lcom/opera/mini/android/o$4;->J:I

    iput p5, p0, Lcom/opera/mini/android/o$4;->B:I

    iput p6, p0, Lcom/opera/mini/android/o$4;->C:I

    iput p7, p0, Lcom/opera/mini/android/o$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 495
    iget-object v0, p0, Lcom/opera/mini/android/o$4;->Code:Ljava/lang/Object;

    instance-of v0, v0, Lcom/opera/mini/android/EditView;

    if-eqz v0, :cond_21

    .line 497
    iget-object v0, p0, Lcom/opera/mini/android/o$4;->Code:Ljava/lang/Object;

    check-cast v0, Lcom/opera/mini/android/EditView;

    .line 498
    iget v1, p0, Lcom/opera/mini/android/o$4;->I:I

    iget v2, p0, Lcom/opera/mini/android/o$4;->Z:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/opera/mini/android/o$4;->J:I

    iget v3, p0, Lcom/opera/mini/android/o$4;->B:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/opera/mini/android/o$4;->C:I

    iget v4, p0, Lcom/opera/mini/android/o$4;->Z:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/opera/mini/android/o$4;->a:I

    iget v5, p0, Lcom/opera/mini/android/o$4;->B:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/opera/mini/android/EditView;->Code(IIII)V

    .line 500
    :cond_21
    return-void
.end method
