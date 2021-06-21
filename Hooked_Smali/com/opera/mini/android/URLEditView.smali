.class public Lcom/opera/mini/android/URLEditView;
.super Lcom/opera/mini/android/EditView;
.source "Source"


# static fields
.field private static C:J


# instance fields
.field private B:Z

.field private J:Z

.field private Z:Z

.field private a:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/opera/mini/android/EditView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    .line 26
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    .line 34
    invoke-static {}, Lcom/opera/mini/android/URLEditView;->I()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/opera/mini/android/EditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    .line 26
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    .line 40
    invoke-static {}, Lcom/opera/mini/android/URLEditView;->I()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/opera/mini/android/EditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    .line 26
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    .line 46
    invoke-static {}, Lcom/opera/mini/android/URLEditView;->I()V

    .line 47
    return-void
.end method

.method private Code()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 183
    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    .line 186
    :cond_11
    return-void
.end method

.method static synthetic Code(Lcom/opera/mini/android/URLEditView;)Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->Z:Z

    return v0
.end method

.method private static I()V
    .registers 2

    .prologue
    .line 203
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    .line 205
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/opera/mini/android/URLEditView;->C:J

    .line 211
    :goto_e
    return-void

    .line 209
    :cond_f
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/opera/mini/android/URLEditView;->C:J

    goto :goto_e
.end method


# virtual methods
.method public final Code(Ljava/lang/String;IZ)V
    .registers 8

    .prologue
    .line 123
    sget-wide v0, Lcom/opera/mini/android/URLEditView;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 125
    invoke-direct {p0}, Lcom/opera/mini/android/URLEditView;->Code()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->a:Ljava/util/Timer;

    new-instance v1, Lcom/opera/mini/android/URLEditView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/opera/mini/android/URLEditView$1;-><init>(Lcom/opera/mini/android/URLEditView;Ljava/lang/String;IZ)V

    sget-wide v2, Lcom/opera/mini/android/URLEditView;->C:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 131
    :goto_1e
    return-void

    .line 129
    :cond_1f
    new-instance v0, Lcom/opera/mini/android/bq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/opera/mini/android/bq;-><init>(Lcom/opera/mini/android/URLEditView;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/URLEditView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getLineCount()I

    move-result v1

    if-ne v1, v0, :cond_14

    const/16 v1, 0x13

    if-eq p1, v1, :cond_13

    const/16 v1, 0x14

    if-eq p1, v1, :cond_13

    const/16 v1, 0x17

    if-ne p1, v1, :cond_14

    .line 83
    :cond_13
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/opera/mini/android/EditView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    const/16 v0, 0x15

    if-eq p1, v0, :cond_f

    const/16 v0, 0x16

    if-ne p1, v0, :cond_35

    .line 92
    :cond_f
    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->Code:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/opera/mini/android/URLEditView;->Code:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 95
    :cond_29
    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/String;Z)V

    .line 98
    :cond_35
    invoke-super {p0, p1, p2}, Lcom/opera/mini/android/EditView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .registers 5

    .prologue
    .line 220
    if-ne p1, p2, :cond_1c

    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne p1, v0, :cond_1c

    iget-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    if-eqz v0, :cond_1c

    .line 221
    invoke-virtual {p0}, Lcom/opera/mini/android/URLEditView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/String;Z)V

    .line 223
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/opera/mini/android/EditView;->onSelectionChanged(II)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    .line 225
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    .prologue
    const/16 v1, 0x2e

    const/4 v2, 0x0

    .line 51
    iget-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->Z:Z

    if-eqz v0, :cond_a

    .line 53
    iput-boolean v2, p0, Lcom/opera/mini/android/URLEditView;->Z:Z

    .line 69
    :goto_9
    return-void

    .line 57
    :cond_a
    invoke-direct {p0}, Lcom/opera/mini/android/URLEditView;->Code()V

    .line 60
    const/4 v0, 0x4

    if-ne p4, v0, :cond_39

    if-lez p2, :cond_39

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_39

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_39

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    add-int v1, p2, p4

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/opera/mini/android/URLEditView;->setTextKeepState(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 68
    :cond_39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/opera/mini/android/EditView;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_9
.end method

.method public onTextContextMenuItem(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 103
    packed-switch p1, :pswitch_data_14

    .line 115
    :goto_4
    invoke-super {p0, p1}, Lcom/opera/mini/android/EditView;->onTextContextMenuItem(I)Z

    move-result v0

    :cond_8
    return v0

    .line 106
    :pswitch_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    goto :goto_4

    .line 109
    :pswitch_d
    iget-boolean v1, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    if-eqz v1, :cond_8

    .line 114
    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->J:Z

    goto :goto_4

    .line 103
    :pswitch_data_14
    .packed-switch 0x1020028
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/URLEditView;->B:Z

    .line 215
    invoke-super {p0, p1}, Lcom/opera/mini/android/EditView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
