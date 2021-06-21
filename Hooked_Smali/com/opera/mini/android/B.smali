.class public Lcom/opera/mini/android/B;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lbp;


# static fields
.field private static Code:Ljava/lang/Long;

.field private static b:[C

.field private static c:Ljava/lang/ThreadLocal;


# instance fields
.field private B:Landroid/text/TextPaint;

.field private C:I

.field private I:I

.field private J:Landroid/graphics/Paint$FontMetricsInt;

.field private Z:[C

.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [C

    sput-object v0, Lcom/opera/mini/android/B;->b:[C

    .line 32
    new-instance v0, Lcom/opera/mini/android/B$1;

    invoke-direct {v0}, Lcom/opera/mini/android/B$1;-><init>()V

    sput-object v0, Lcom/opera/mini/android/B;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/text/TextPaint;I)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/opera/mini/android/B;->Z:[C

    .line 41
    iput-object p1, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    .line 42
    iput p2, p0, Lcom/opera/mini/android/B;->I:I

    .line 45
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    .line 48
    iget-object v0, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v1, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 49
    iget-object v0, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/opera/mini/android/B;->a:I

    .line 50
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/opera/mini/android/B;->C:I

    .line 51
    return-void
.end method

.method private Code(I)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 109
    sget-object v0, Lcom/opera/mini/android/B;->b:[C

    invoke-static {p1, v0, v3}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    sget-object v2, Lcom/opera/mini/android/B;->b:[C

    invoke-virtual {v1, v2, v3, v0}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static Code(Landroid/graphics/Paint;I[CII)I
    .registers 15

    .prologue
    const/16 v9, 0x20

    const/4 v1, 0x0

    .line 115
    .line 118
    add-int v6, p3, p4

    move v0, p3

    move v2, v1

    .line 119
    :goto_7
    if-ge v0, v6, :cond_15

    move v3, v2

    move v2, v0

    .line 120
    :goto_b
    aget-char v0, p2, v2

    if-ne v0, v9, :cond_16

    .line 121
    add-int/2addr v3, p1

    .line 122
    add-int/lit8 v0, v2, 0x1

    if-ne v0, v6, :cond_58

    move v2, v3

    .line 137
    :cond_15
    return v2

    :cond_16
    move v0, v2

    .line 127
    :cond_17
    aget-char v4, p2, v0

    if-eq v4, v9, :cond_1f

    .line 128
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_17

    :cond_1f
    move v4, v0

    .line 129
    if-lt v4, v2, :cond_55

    .line 134
    sub-int v7, v4, v2

    if-gtz v7, :cond_2b

    move v0, v1

    :goto_27
    add-int v2, v3, v0

    move v0, v4

    goto :goto_7

    :cond_2b
    const/16 v0, 0xff

    if-ge v7, v0, :cond_50

    sget-object v0, Lcom/opera/mini/android/B;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    move v5, v1

    :goto_38
    if-ge v5, v7, :cond_43

    add-int v8, v5, v2

    aget-char v8, p2, v8

    aput-char v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_43
    aput-char v1, v0, v5

    invoke-virtual {p0, v0, v1, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    :goto_49
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    goto :goto_27

    :cond_50
    invoke-virtual {p0, p2, v2, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_49

    :cond_55
    move v0, v4

    move v2, v3

    goto :goto_7

    :cond_58
    move v2, v0

    goto :goto_b
.end method

.method static Code(IIIZ)Lcom/opera/mini/android/B;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    new-instance v4, Lcom/opera/mini/android/B;

    new-instance v5, Landroid/text/TextPaint;

    const/16 v2, 0x81

    invoke-direct {v5, v2}, Landroid/text/TextPaint;-><init>(I)V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4f

    move v3, v1

    :goto_10
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_51

    move v2, v1

    :goto_15
    if-eqz v3, :cond_18

    move v0, v1

    :cond_18
    if-eqz v2, :cond_1c

    or-int/lit8 v0, v0, 0x2

    :cond_1c
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_23

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_23
    sparse-switch p0, :sswitch_data_62

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_2a
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v6, p2

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p3, :cond_4b

    if-eqz v3, :cond_3e

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3e
    if-eqz v2, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_4b
    invoke-direct {v4, v5, p0}, Lcom/opera/mini/android/B;-><init>(Landroid/text/TextPaint;I)V

    return-object v4

    :cond_4f
    move v3, v0

    goto :goto_10

    :cond_51
    move v2, v0

    goto :goto_15

    :sswitch_53
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2a

    :sswitch_5a
    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2a

    nop

    :sswitch_data_62
    .sparse-switch
        0x20 -> :sswitch_53
        0x80 -> :sswitch_5a
    .end sparse-switch
.end method

.method public static e()Ljava/lang/Long;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/opera/mini/android/B;->Code:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/opera/mini/android/B;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "monospace"

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/opera/mini/android/B;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "serif"

    goto :goto_8

    :cond_12
    const-string v0, "sans"

    goto :goto_8
.end method

.method public final C()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->isFakeBoldText()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final Code()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/opera/mini/android/B;->a:I

    return v0
.end method

.method public final Code(C)I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {p0, p1}, Lcom/opera/mini/android/ak;->Code(Lcom/opera/mini/android/B;C)I

    move-result v0

    .line 156
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 163
    :goto_8
    return v0

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/opera/mini/android/B;->Z:[C

    aput-char p1, v0, v3

    .line 163
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/opera/mini/android/B;->Z:[C

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_8
.end method

.method public final Code(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/opera/mini/android/B;->Code([CII)I

    move-result v0

    return v0
.end method

.method public Code([CII)I
    .registers 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    iget v1, p0, Lcom/opera/mini/android/B;->C:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/opera/mini/android/B;->Code(Landroid/graphics/Paint;I[CII)I

    move-result v0

    return v0
.end method

.method public Code([CIIF)I
    .registers 8

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 148
    iget-object v1, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    mul-float/2addr v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 150
    invoke-static {v0, v1, p1, p2, p3}, Lcom/opera/mini/android/B;->Code(Landroid/graphics/Paint;I[CII)I

    move-result v0

    return v0
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Lcom/opera/mini/android/B;->a:I

    return v0
.end method

.method public final J()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/opera/mini/android/B;->J:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public final Z()I
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public final a()Z
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 194
    iget v0, p0, Lcom/opera/mini/android/B;->I:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 202
    iget v0, p0, Lcom/opera/mini/android/B;->I:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 293
    sget-object v0, Lcom/opera/mini/android/B;->Code:Ljava/lang/Long;

    if-nez v0, :cond_e

    .line 295
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/B;->Code:Ljava/lang/Long;

    .line 297
    :cond_e
    invoke-static {p0}, Lcom/opera/mini/android/ak;->Code(Lcom/opera/mini/android/B;)V

    .line 298
    return-void
.end method

.method final f()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final g()Landroid/text/TextPaint;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/opera/mini/android/B;->B:Landroid/text/TextPaint;

    return-object v0
.end method
