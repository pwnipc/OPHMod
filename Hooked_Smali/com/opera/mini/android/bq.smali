.class final Lcom/opera/mini/android/bq;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final Code:Ljava/lang/String;

.field private final I:Z

.field private synthetic J:Lcom/opera/mini/android/URLEditView;

.field private final Z:I


# direct methods
.method constructor <init>(Lcom/opera/mini/android/URLEditView;Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 140
    iput-object p1, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/opera/mini/android/bq;->Code:Ljava/lang/String;

    .line 142
    iput p3, p0, Lcom/opera/mini/android/bq;->Z:I

    .line 143
    iput-boolean p4, p0, Lcom/opera/mini/android/bq;->I:Z

    .line 144
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-virtual {v0}, Lcom/opera/mini/android/URLEditView;->beginBatchEdit()V

    .line 149
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-virtual {v0}, Lcom/opera/mini/android/URLEditView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 151
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 152
    sub-int v0, v2, v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    .line 158
    :goto_18
    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/opera/mini/android/bq;->I:Z

    if-nez v0, :cond_26

    .line 160
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-virtual {v0}, Lcom/opera/mini/android/URLEditView;->endBatchEdit()V

    .line 175
    :goto_23
    return-void

    .line 152
    :cond_24
    const/4 v0, 0x0

    goto :goto_18

    .line 163
    :cond_26
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 166
    iget-boolean v0, p0, Lcom/opera/mini/android/bq;->I:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/opera/mini/android/bq;->Code:Ljava/lang/String;

    iget-object v2, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-virtual {v2, v1}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 168
    :cond_3b
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-static {v0}, Lcom/opera/mini/android/URLEditView;->Code(Lcom/opera/mini/android/URLEditView;)Z

    .line 169
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    iget-object v1, p0, Lcom/opera/mini/android/bq;->Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/URLEditView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    iget v1, p0, Lcom/opera/mini/android/bq;->Z:I

    iget-object v2, p0, Lcom/opera/mini/android/bq;->Code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/opera/mini/android/URLEditView;->setSelection(II)V

    .line 174
    :cond_54
    iget-object v0, p0, Lcom/opera/mini/android/bq;->J:Lcom/opera/mini/android/URLEditView;

    invoke-virtual {v0}, Lcom/opera/mini/android/URLEditView;->endBatchEdit()V

    goto :goto_23
.end method
