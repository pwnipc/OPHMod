.class final Lcom/opera/mini/android/o$3;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/o;->Code(Ljava/lang/Object;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 468
    iput-object p1, p0, Lcom/opera/mini/android/o$3;->Code:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/opera/mini/android/o$3;->Code:Ljava/lang/Object;

    instance-of v0, v0, Lcom/opera/mini/android/EditView;

    if-eqz v0, :cond_18

    .line 473
    iget-object v0, p0, Lcom/opera/mini/android/o$3;->Code:Ljava/lang/Object;

    check-cast v0, Lcom/opera/mini/android/EditView;

    .line 474
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->setVisibility(I)V

    .line 476
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->Code(Z)V

    .line 477
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_18
    return-void
.end method
