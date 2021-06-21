.class final Lcom/opera/mini/android/o$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/o;->Code(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIILbp;III)Ljava/lang/Object;
.end annotation


# instance fields
.field private synthetic B:I

.field private synthetic C:I

.field private synthetic Code:Lcom/opera/mini/android/EditView;

.field private synthetic I:I

.field private synthetic J:I

.field private synthetic Z:I

.field private synthetic a:I

.field private synthetic b:Lbp;

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:I

.field private synthetic f:I

.field private synthetic g:I

.field private synthetic h:I


# direct methods
.method constructor <init>(Lcom/opera/mini/android/EditView;IIIIIILbp;ILjava/lang/String;IIII)V
    .registers 15

    .prologue
    .line 364
    iput-object p1, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iput p2, p0, Lcom/opera/mini/android/o$2;->I:I

    iput p3, p0, Lcom/opera/mini/android/o$2;->Z:I

    iput p4, p0, Lcom/opera/mini/android/o$2;->J:I

    iput p5, p0, Lcom/opera/mini/android/o$2;->B:I

    iput p6, p0, Lcom/opera/mini/android/o$2;->C:I

    iput p7, p0, Lcom/opera/mini/android/o$2;->a:I

    iput-object p8, p0, Lcom/opera/mini/android/o$2;->b:Lbp;

    iput p9, p0, Lcom/opera/mini/android/o$2;->c:I

    iput-object p10, p0, Lcom/opera/mini/android/o$2;->d:Ljava/lang/String;

    iput p11, p0, Lcom/opera/mini/android/o$2;->e:I

    iput p12, p0, Lcom/opera/mini/android/o$2;->f:I

    iput p13, p0, Lcom/opera/mini/android/o$2;->g:I

    iput p14, p0, Lcom/opera/mini/android/o$2;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget v3, p0, Lcom/opera/mini/android/o$2;->I:I

    iget v4, p0, Lcom/opera/mini/android/o$2;->Z:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/opera/mini/android/o$2;->J:I

    iget v5, p0, Lcom/opera/mini/android/o$2;->B:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/opera/mini/android/o$2;->C:I

    iget v6, p0, Lcom/opera/mini/android/o$2;->Z:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/opera/mini/android/o$2;->a:I

    iget v7, p0, Lcom/opera/mini/android/o$2;->B:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/opera/mini/android/EditView;->Code(IIII)V

    .line 369
    iget-object v3, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget-object v0, p0, Lcom/opera/mini/android/o$2;->b:Lbp;

    check-cast v0, Lcom/opera/mini/android/B;

    invoke-virtual {v0}, Lcom/opera/mini/android/B;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Lcom/opera/mini/android/EditView;->setTextSize(IF)V

    .line 370
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget v3, p0, Lcom/opera/mini/android/o$2;->c:I

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->I(I)V

    .line 372
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v0, v2}, Lcom/opera/mini/android/EditView;->Code(Z)V

    .line 374
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget-object v3, p0, Lcom/opera/mini/android/o$2;->d:Ljava/lang/String;

    const-string v4, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget v0, p0, Lcom/opera/mini/android/o$2;->e:I

    if-gez v0, :cond_77

    .line 377
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget-object v3, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v3}, Lcom/opera/mini/android/EditView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->setSelection(I)V

    .line 384
    :goto_58
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget v3, p0, Lcom/opera/mini/android/o$2;->g:I

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->Code(I)V

    .line 385
    iget v0, p0, Lcom/opera/mini/android/o$2;->g:I

    packed-switch v0, :pswitch_data_b2

    .line 409
    :goto_64
    iget-object v3, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget v0, p0, Lcom/opera/mini/android/o$2;->h:I

    if-ne v0, v1, :cond_af

    move v0, v1

    :goto_6b
    invoke-virtual {v3, v0}, Lcom/opera/mini/android/EditView;->Code(Z)V

    .line 410
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v0, v2}, Lcom/opera/mini/android/EditView;->setVisibility(I)V

    .line 411
    invoke-static {v1}, Lcom/opera/mini/android/o;->B(Z)V

    .line 412
    return-void

    .line 381
    :cond_77
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    iget v3, p0, Lcom/opera/mini/android/o$2;->e:I

    iget v4, p0, Lcom/opera/mini/android/o$2;->e:I

    iget v5, p0, Lcom/opera/mini/android/o$2;->f:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/opera/mini/android/EditView;->setSelection(II)V

    goto :goto_58

    .line 390
    :pswitch_84
    const-string v0, "Kindle Fire"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 392
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v0, v8}, Lcom/opera/mini/android/EditView;->setImeOptions(I)V

    goto :goto_64

    .line 397
    :cond_94
    :pswitch_94
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->setImeOptions(I)V

    goto :goto_64

    .line 400
    :pswitch_9b
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v0, v8}, Lcom/opera/mini/android/EditView;->setImeOptions(I)V

    goto :goto_64

    .line 403
    :pswitch_a1
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->setImeOptions(I)V

    goto :goto_64

    .line 406
    :pswitch_a8
    iget-object v0, p0, Lcom/opera/mini/android/o$2;->Code:Lcom/opera/mini/android/EditView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/EditView;->setImeOptions(I)V

    goto :goto_64

    :cond_af
    move v0, v2

    .line 409
    goto :goto_6b

    .line 385
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_84
        :pswitch_94
        :pswitch_9b
        :pswitch_a8
        :pswitch_a1
    .end packed-switch
.end method
