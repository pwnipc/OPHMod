.class final Lcom/opera/mini/android/r;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Code:Lcom/opera/mini/android/EditView;

.field private I:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/opera/mini/android/EditView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/opera/mini/android/r;->Code:Lcom/opera/mini/android/EditView;

    .line 522
    iput-object p2, p0, Lcom/opera/mini/android/r;->I:Ljava/lang/String;

    .line 523
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/opera/mini/android/r;->Code:Lcom/opera/mini/android/EditView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->Code(Z)V

    .line 527
    iget-object v0, p0, Lcom/opera/mini/android/r;->Code:Lcom/opera/mini/android/EditView;

    iget-object v1, p0, Lcom/opera/mini/android/r;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/opera/mini/android/r;->Code:Lcom/opera/mini/android/EditView;

    iget-object v1, p0, Lcom/opera/mini/android/r;->I:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->setSelection(I)V

    .line 529
    iget-object v0, p0, Lcom/opera/mini/android/r;->Code:Lcom/opera/mini/android/EditView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/EditView;->Code(Z)V

    .line 530
    return-void
.end method
