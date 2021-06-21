.class public Lcom/opera/mini/android/EditView;
.super Landroid/widget/EditText;
.source "Source"


# instance fields
.field private B:Landroid/widget/RelativeLayout$LayoutParams;

.field private C:I

.field protected Code:Ljava/lang/String;

.field protected I:Z

.field private J:Z

.field private Z:Landroid/text/TextPaint;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 35
    iput v0, p0, Lcom/opera/mini/android/EditView;->b:I

    .line 40
    invoke-direct {p0}, Lcom/opera/mini/android/EditView;->Code()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 35
    iput v0, p0, Lcom/opera/mini/android/EditView;->b:I

    .line 46
    invoke-direct {p0}, Lcom/opera/mini/android/EditView;->Code()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 35
    iput v0, p0, Lcom/opera/mini/android/EditView;->b:I

    .line 52
    invoke-direct {p0}, Lcom/opera/mini/android/EditView;->Code()V

    .line 53
    return-void
.end method

.method private Code()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, v2, v2}, Lcom/opera/mini/android/EditView;->setSelection(II)V

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    .line 59
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    invoke-static {}, Lcom/opera/mini/android/C;->Code()Lcom/opera/mini/android/C;

    invoke-static {}, Lcom/opera/mini/android/C;->I()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 62
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->Z:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setTextSize(F)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/opera/mini/android/EditView;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/opera/mini/android/EditView;->setBackgroundColor(I)V

    .line 67
    const v0, -0x4f2f01

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setHighlightColor(I)V

    .line 68
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setGravity(I)V

    .line 69
    iput v3, p0, Lcom/opera/mini/android/EditView;->C:I

    .line 70
    return-void
.end method

.method private static Z(I)V
    .registers 3

    .prologue
    .line 106
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 107
    sget-object v0, Lar;->I:Lar;

    iget v0, v0, Lar;->a:I

    invoke-static {v0}, Lar;->B(I)I

    move-result v0

    .line 108
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->b(I)V

    .line 109
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p0}, Lan;->c(I)V

    .line 110
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected final Code(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 314
    :goto_12
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_12
.end method

.method public final Code(I)V
    .registers 2

    .prologue
    .line 196
    iput p1, p0, Lcom/opera/mini/android/EditView;->C:I

    .line 197
    return-void
.end method

.method final Code(IIII)V
    .registers 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_c

    .line 81
    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 84
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 85
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 86
    iget-object v0, p0, Lcom/opera/mini/android/EditView;->B:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->requestLayout()V

    .line 88
    return-void
.end method

.method protected final Code(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/opera/mini/android/EditView;->J:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lar;->I:Lar;

    if-eqz v0, :cond_1a

    sget-object v0, Lar;->I:Lar;

    iget v0, v0, Lar;->a:I

    if-nez v0, :cond_1b

    .line 303
    :cond_1a
    :goto_1a
    return-void

    .line 295
    :cond_1b
    iput-object p1, p0, Lcom/opera/mini/android/EditView;->Code:Ljava/lang/String;

    .line 296
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 297
    sget-object v0, Lar;->I:Lar;

    iget v0, v0, Lar;->a:I

    invoke-static {v0}, Lar;->B(I)I

    move-result v0

    .line 298
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v0}, Lan;->b(I)V

    .line 299
    sget-object v0, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, p1}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lan;->b(I)V

    .line 300
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_59

    move v0, v1

    :goto_47
    invoke-virtual {v3, v0}, Lan;->c(I)V

    .line 301
    sget-object v0, Lar;->Z:Lan;

    if-eqz p2, :cond_5b

    :goto_4e
    invoke-virtual {v0, v1}, Lan;->c(I)V

    .line 302
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    goto :goto_1a

    :cond_59
    move v0, v2

    .line 300
    goto :goto_47

    :cond_5b
    move v1, v2

    .line 301
    goto :goto_4e
.end method

.method final Code(Z)V
    .registers 2

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/opera/mini/android/EditView;->J:Z

    .line 75
    return-void
.end method

.method final I(I)V
    .registers 9

    .prologue
    const/high16 v0, 0x20000

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 223
    .line 227
    and-int/lit16 v1, p1, 0xfff

    packed-switch v1, :pswitch_data_4e

    move v2, v3

    move v4, v5

    .line 242
    :goto_b
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_12

    .line 254
    invoke-virtual {p0, v3}, Lcom/opera/mini/android/EditView;->setEnabled(Z)V

    .line 256
    :cond_12
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4c

    .line 258
    const/16 v1, 0x2000

    .line 260
    :goto_19
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_1f

    .line 262
    const/16 v2, 0x80

    .line 264
    :cond_1f
    and-int v6, v0, p1

    if-eqz v6, :cond_25

    .line 266
    const/16 v1, 0x4000

    .line 268
    :cond_25
    const/high16 v6, 0x40000

    and-int/2addr v6, p1

    if-eqz v6, :cond_44

    .line 271
    invoke-virtual {p0, v5}, Lcom/opera/mini/android/EditView;->setVerticalScrollBarEnabled(Z)V

    .line 279
    :goto_2d
    or-int v1, v4, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setInputType(I)V

    .line 280
    return-void

    .line 230
    :pswitch_34
    const/4 v1, 0x2

    move v2, v3

    move v4, v1

    .line 231
    goto :goto_b

    .line 234
    :pswitch_38
    const/16 v2, 0x20

    move v4, v5

    .line 235
    goto :goto_b

    .line 237
    :pswitch_3c
    const/4 v1, 0x3

    move v2, v3

    move v4, v1

    .line 238
    goto :goto_b

    .line 241
    :pswitch_40
    const/16 v2, 0x10

    move v4, v5

    goto :goto_b

    .line 275
    :cond_44
    invoke-virtual {p0, v3}, Lcom/opera/mini/android/EditView;->setIncludeFontPadding(Z)V

    .line 276
    invoke-virtual {p0, v3}, Lcom/opera/mini/android/EditView;->setVerticalScrollBarEnabled(Z)V

    move v0, v1

    goto :goto_2d

    :cond_4c
    move v1, v3

    goto :goto_19

    .line 227
    :pswitch_data_4e
    .packed-switch 0x3
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
    .end packed-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4a

    .line 117
    iget-boolean v1, p0, Lcom/opera/mini/android/EditView;->I:Z

    if-nez v1, :cond_47

    .line 119
    invoke-static {v0}, Lcom/opera/mini/android/o;->B(Z)V

    .line 120
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/opera/mini/android/EditView;->setVisibility(I)V

    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    sget-object v1, Lar;->I:Lar;

    iget v1, v1, Lar;->a:I

    invoke-static {v1}, Lar;->B(I)I

    move-result v1

    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v1}, Lan;->b(I)V

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->c(I)V

    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->c(I)V

    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Lar;->Z(I)V

    sget-object v1, Lar;->I:Lar;

    iget v1, v1, Lar;->a:I

    invoke-static {v1}, Lar;->C(I)I

    sget-object v1, Lar;->I:Lar;

    iput v0, v1, Lar;->a:I

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/opera/mini/android/EditView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_47
    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->I:Z

    .line 123
    const/4 v0, 0x1

    .line 125
    :cond_4a
    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 3

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->I:Z

    .line 322
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 323
    return-void
.end method

.method public onEditorAction(I)V
    .registers 3

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_e

    .line 215
    :pswitch_3
    const/4 v0, 0x1

    .line 218
    :goto_4
    invoke-static {v0}, Lcom/opera/mini/android/EditView;->Z(I)V

    .line 219
    return-void

    .line 205
    :pswitch_8
    const/4 v0, 0x3

    .line 206
    goto :goto_4

    .line 208
    :pswitch_a
    const/4 v0, 0x5

    .line 209
    goto :goto_4

    .line 211
    :pswitch_c
    const/4 v0, 0x4

    .line 212
    goto :goto_4

    .line 201
    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_8
        :pswitch_c
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 181
    const/16 v0, 0x54

    if-ne v0, p1, :cond_9

    .line 183
    invoke-static {}, Lcom/opera/mini/android/br;->I()Z

    move-result v0

    .line 185
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/16 v3, 0x17

    const/16 v2, 0x14

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->getLineCount()I

    move-result v0

    if-ne v0, v1, :cond_80

    .line 133
    const/16 v0, 0x42

    if-ne p1, v0, :cond_16

    .line 135
    iget v0, p0, Lcom/opera/mini/android/EditView;->C:I

    invoke-static {v0}, Lcom/opera/mini/android/EditView;->Z(I)V

    .line 176
    :goto_15
    return v1

    .line 138
    :cond_16
    const/16 v0, 0x13

    if-eq p1, v0, :cond_1e

    if-eq p1, v2, :cond_1e

    if-ne p1, v3, :cond_80

    .line 144
    :cond_1e
    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->cancelLongPress()V

    .line 146
    if-ne p1, v2, :cond_7b

    .line 148
    const/4 v0, 0x6

    .line 154
    :goto_24
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->h()V

    .line 155
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v0}, Lan;->c(I)V

    .line 156
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v5}, Lan;->c(I)V

    .line 157
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v5}, Lan;->c(I)V

    .line 158
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, p1}, Lan;->c(I)V

    .line 159
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v5}, Lan;->b(I)V

    .line 160
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v5}, Lan;->b(I)V

    .line 161
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lan;->c(I)V

    .line 162
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v5}, Lan;->c(I)V

    .line 165
    :try_start_56
    sget-object v2, Lar;->Z:Lan;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lan;->C(I)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5d} :catch_85

    .line 169
    :goto_5d
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v0}, Lan;->c(I)V

    .line 170
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {v0, p1}, Lan;->c(I)V

    .line 171
    sget-object v0, Lar;->Z:Lan;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lan;->c(I)V

    .line 172
    sget-object v0, Lar;->I:Lar;

    const/16 v2, 0x44

    invoke-virtual {v0, v2}, Lar;->Z(I)V

    goto :goto_15

    .line 150
    :cond_7b
    if-ne p1, v3, :cond_87

    .line 152
    const/16 v0, 0x8

    goto :goto_24

    .line 176
    :cond_80
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_15

    :catch_85
    move-exception v2

    goto :goto_5d

    :cond_87
    move v0, v1

    goto :goto_24
.end method

.method protected onSelectionChanged(II)V
    .registers 5

    .prologue
    .line 344
    if-ge p2, p1, :cond_1a

    .line 348
    invoke-virtual {p0, p2, p1}, Lcom/opera/mini/android/EditView;->setSelection(II)V

    .line 350
    :goto_5
    invoke-super {p0, p2, p1}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 351
    iget-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    if-eqz v0, :cond_10

    .line 353
    if-ne p2, p1, :cond_11

    .line 355
    iput p2, p0, Lcom/opera/mini/android/EditView;->b:I

    .line 365
    :cond_10
    :goto_10
    return-void

    .line 359
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 362
    iget v0, p0, Lcom/opera/mini/android/EditView;->b:I

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/EditView;->setSelection(I)V

    goto :goto_10

    :cond_1a
    move v1, p2

    move p2, p1

    move p1, v1

    goto :goto_5
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/opera/mini/android/EditView;->Code(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/opera/mini/android/EditView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    if-eq p4, v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p0, v1, v0}, Lcom/opera/mini/android/EditView;->Code(Ljava/lang/String;Z)V

    .line 285
    return-void

    .line 284
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->I:Z

    .line 330
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_8
    iput-boolean v0, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 337
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 338
    iput-boolean v1, p0, Lcom/opera/mini/android/EditView;->a:Z

    .line 339
    return v0

    :cond_11
    move v0, v1

    .line 336
    goto :goto_8
.end method
