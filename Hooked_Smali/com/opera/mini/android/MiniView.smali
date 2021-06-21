.class public Lcom/opera/mini/android/MiniView;
.super Landroid/widget/FrameLayout;
.source "Source"


# static fields
.field private static C:I

.field static Code:Lcom/opera/mini/android/MiniView;

.field private static Z:Landroid/os/Handler;

.field private static a:I


# instance fields
.field private B:Lcom/opera/mini/android/av;

.field I:Lcom/opera/mini/android/bd;

.field private J:Lcom/opera/mini/android/bd;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcom/opera/mini/android/be;

.field private g:Lcom/opera/mini/android/bc;

.field private h:Lcom/opera/mini/android/bc;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/opera/mini/android/MiniView;->Z:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v1, p0, Lcom/opera/mini/android/MiniView;->b:Z

    .line 46
    iput v1, p0, Lcom/opera/mini/android/MiniView;->d:I

    .line 47
    iput v1, p0, Lcom/opera/mini/android/MiniView;->e:I

    .line 82
    sput-object p0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    .line 85
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_80

    invoke-static {}, Lcom/opera/mini/android/ax;->C()Z

    move-result v0

    if-nez v0, :cond_80

    const/4 v0, 0x1

    :goto_1a
    iput-boolean v0, p0, Lcom/opera/mini/android/MiniView;->c:Z

    .line 88
    invoke-virtual {p0}, Lcom/opera/mini/android/MiniView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/be;->I(Landroid/content/Context;)Lcom/opera/mini/android/be;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->f:Lcom/opera/mini/android/be;

    .line 90
    new-instance v0, Lcom/opera/mini/android/bc;

    const/16 v2, 0x50

    invoke-direct {v0, p0, v2}, Lcom/opera/mini/android/bc;-><init>(Lcom/opera/mini/android/MiniView;I)V

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->g:Lcom/opera/mini/android/bc;

    .line 91
    new-instance v0, Lcom/opera/mini/android/bc;

    const/16 v2, 0x41

    invoke-direct {v0, p0, v2}, Lcom/opera/mini/android/bc;-><init>(Lcom/opera/mini/android/MiniView;I)V

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->h:Lcom/opera/mini/android/bc;

    .line 95
    iget-boolean v0, p0, Lcom/opera/mini/android/MiniView;->c:Z

    if-eqz v0, :cond_55

    .line 97
    new-instance v0, Lcom/opera/mini/android/av;

    invoke-direct {v0, p1, p0}, Lcom/opera/mini/android/av;-><init>(Landroid/content/Context;Lcom/opera/mini/android/MiniView;)V

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    .line 98
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/MiniView;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_55
    new-instance v0, Lcom/opera/mini/android/ba;

    invoke-direct {v0, p1, p0}, Lcom/opera/mini/android/ba;-><init>(Landroid/content/Context;Lcom/opera/mini/android/MiniView;)V

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    .line 103
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/MiniView;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-boolean v0, p0, Lcom/opera/mini/android/MiniView;->c:Z

    if-eqz v0, :cond_82

    .line 112
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    .line 125
    :goto_7f
    return-void

    :cond_80
    move v0, v1

    .line 85
    goto :goto_1a

    .line 118
    :cond_82
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->Code()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    goto :goto_7f
.end method

.method private static Code(ILandroid/view/KeyEvent;)I
    .registers 3

    .prologue
    .line 440
    sparse-switch p0, :sswitch_data_28

    .line 456
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p0

    :cond_d
    :goto_d
    return p0

    .line 442
    :sswitch_e
    const/16 p0, -0xb

    goto :goto_d

    .line 444
    :sswitch_11
    const/16 p0, 0x8

    goto :goto_d

    .line 445
    :sswitch_14
    const/4 p0, -0x5

    goto :goto_d

    .line 446
    :sswitch_16
    const/4 p0, 0x1

    goto :goto_d

    .line 447
    :sswitch_18
    const/4 p0, 0x6

    goto :goto_d

    .line 448
    :sswitch_1a
    const/4 p0, 0x2

    goto :goto_d

    .line 449
    :sswitch_1c
    const/4 p0, 0x5

    goto :goto_d

    .line 450
    :sswitch_1e
    const/4 p0, -0x6

    goto :goto_d

    .line 451
    :sswitch_20
    const/16 p0, -0xd

    goto :goto_d

    .line 452
    :sswitch_23
    const/4 p0, -0x1

    goto :goto_d

    .line 453
    :sswitch_25
    const/4 p0, -0x2

    goto :goto_d

    .line 440
    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_25
        0x4 -> :sswitch_14
        0x13 -> :sswitch_16
        0x14 -> :sswitch_18
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_1c
        0x17 -> :sswitch_11
        0x42 -> :sswitch_11
        0x43 -> :sswitch_1e
        0x52 -> :sswitch_e
        0x54 -> :sswitch_20
    .end sparse-switch
.end method

.method private static Code(Landroid/view/KeyEvent;)[C
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 430
    const/4 v0, 0x1

    new-array v0, v0, [C

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    aput-char v1, v0, v2

    .line 434
    :goto_11
    return-object v0

    :cond_12
    new-array v0, v2, [C

    goto :goto_11
.end method

.method private static I(I)I
    .registers 2

    .prologue
    .line 462
    packed-switch p0, :pswitch_data_10

    .line 468
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 464
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_4

    .line 465
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_4

    .line 466
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_4

    .line 467
    :pswitch_d
    const/16 v0, 0x8

    goto :goto_4

    .line 462
    :pswitch_data_10
    .packed-switch 0x32
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method private static I(Z)V
    .registers 3

    .prologue
    .line 199
    if-eqz p0, :cond_e

    .line 201
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 202
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 204
    :cond_e
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->a()V

    .line 205
    return-void
.end method

.method private static Z(I)Z
    .registers 2

    .prologue
    .line 474
    sparse-switch p0, :sswitch_data_8

    .line 501
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 499
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 474
    nop

    :sswitch_data_8
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x40 -> :sswitch_5
        0x41 -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method static c()I
    .registers 1

    .prologue
    .line 215
    sget v0, Lcom/opera/mini/android/MiniView;->C:I

    return v0
.end method

.method static d()I
    .registers 1

    .prologue
    .line 220
    sget v0, Lcom/opera/mini/android/MiniView;->a:I

    return v0
.end method

.method private static h()V
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    iget-object v0, v0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->a()V

    .line 211
    return-void
.end method


# virtual methods
.method public final B()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->Z()V

    .line 169
    return-void
.end method

.method public final C()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->J()V

    .line 174
    return-void
.end method

.method public final Code()V
    .registers 3

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/opera/mini/android/MiniView;->c:Z

    if-eqz v0, :cond_26

    .line 134
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->Code()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->Code()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->B:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->B()V

    .line 137
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->J:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->I()Lcom/opera/mini/android/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    .line 139
    :cond_26
    return-void
.end method

.method final Code(I)V
    .registers 4

    .prologue
    .line 231
    iget v0, p0, Lcom/opera/mini/android/MiniView;->i:I

    if-eq v0, p1, :cond_18

    .line 234
    iput p1, p0, Lcom/opera/mini/android/MiniView;->i:I

    .line 235
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_18

    .line 237
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 238
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 241
    :cond_18
    return-void
.end method

.method public final Code(IIII)V
    .registers 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/opera/mini/android/bd;->Code(IIII)V

    .line 184
    return-void
.end method

.method final Code(Z)V
    .registers 2

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/opera/mini/android/MiniView;->j:Z

    .line 251
    invoke-virtual {p0}, Lcom/opera/mini/android/MiniView;->a()V

    .line 252
    return-void
.end method

.method final I()V
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/opera/mini/android/MiniView;->b:Z

    if-nez v0, :cond_c

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opera/mini/android/MiniView;->b:Z

    .line 147
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->f()V

    .line 151
    :cond_c
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v0}, Lcom/opera/mini/android/Code;->A()V

    .line 153
    return-void
.end method

.method final I(IIII)V
    .registers 11

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->k:Ljava/lang/Runnable;

    .line 259
    invoke-static {}, Lcom/opera/mini/android/s;->o()V

    .line 261
    sput p1, Lcom/opera/mini/android/MiniView;->C:I

    .line 262
    sput p2, Lcom/opera/mini/android/MiniView;->a:I

    .line 263
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 268
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 269
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    .line 271
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_58

    const/4 v0, 0x1

    .line 273
    :goto_31
    const/16 v2, 0x64

    if-lt v1, v2, :cond_5d

    .line 275
    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/opera/mini/android/MiniView;->e:I

    .line 284
    :goto_39
    sub-int v0, v1, v0

    .line 288
    sget v1, Lcom/opera/mini/android/MiniView;->a:I

    add-int/2addr v1, v0

    sget-object v2, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v2, :cond_49

    .line 289
    sget v1, Lcom/opera/mini/android/MiniView;->a:I

    add-int/2addr v1, v0

    sput v1, Lcom/opera/mini/android/MiniView;->a:I

    .line 291
    :cond_49
    sget-object v1, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v1, v1, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v1, :cond_67

    .line 296
    :try_start_4f
    sget-object v1, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    invoke-virtual {v1}, Lcom/opera/mini/android/Code;->q()V

    .line 297
    invoke-virtual {p0, v0}, Lcom/opera/mini/android/MiniView;->Code(I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_57} :catch_74

    .line 312
    :goto_57
    return-void

    .line 271
    :cond_58
    const/4 v0, 0x0

    goto :goto_31

    .line 275
    :cond_5a
    iget v0, p0, Lcom/opera/mini/android/MiniView;->d:I

    goto :goto_39

    .line 279
    :cond_5d
    if-eqz v0, :cond_63

    .line 280
    iput v1, p0, Lcom/opera/mini/android/MiniView;->e:I

    move v0, v1

    goto :goto_39

    .line 282
    :cond_63
    iput v1, p0, Lcom/opera/mini/android/MiniView;->d:I

    move v0, v1

    goto :goto_39

    .line 303
    :cond_67
    new-instance v0, Lcom/opera/mini/android/MiniView$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/opera/mini/android/MiniView$1;-><init>(Lcom/opera/mini/android/MiniView;IIII)V

    iput-object v0, p0, Lcom/opera/mini/android/MiniView;->k:Ljava/lang/Runnable;

    goto :goto_57

    .line 299
    :catch_74
    move-exception v0

    goto :goto_57
.end method

.method public final J()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->onResume()V

    .line 164
    return-void
.end method

.method public final Z()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->onPause()V

    .line 159
    return-void
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->C()V

    .line 179
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/opera/mini/android/MiniView;->I:Lcom/opera/mini/android/bd;

    invoke-interface {v0}, Lcom/opera/mini/android/bd;->b()Z

    move-result v0

    return v0
.end method

.method final e()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Lcom/opera/mini/android/MiniView;->i:I

    return v0
.end method

.method final f()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/opera/mini/android/MiniView;->j:Z

    return v0
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 708
    sget-object v0, Lcom/opera/mini/android/MiniView;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/opera/mini/android/MiniView;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 318
    const/16 v2, 0x54

    if-ne v2, p1, :cond_a

    .line 320
    invoke-static {v1}, Lcom/opera/mini/android/br;->Code(Z)V

    .line 367
    :cond_9
    :goto_9
    return v0

    .line 326
    :cond_a
    :try_start_a
    sget-object v2, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v2, v2, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v2, :cond_9

    invoke-static {p1}, Lcom/opera/mini/android/MiniView;->Z(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 328
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 329
    sparse-switch p1, :sswitch_data_9e

    .line 343
    :cond_1f
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2b

    sget-object v2, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    if-eqz v2, :cond_2b

    .line 346
    sget-object v2, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/opera/mini/android/EditView;->I:Z

    .line 349
    :cond_2b
    invoke-static {p1, p2}, Lcom/opera/mini/android/MiniView;->Code(ILandroid/view/KeyEvent;)I

    move-result v2

    .line 350
    sget-object v3, Lar;->I:Lar;

    invoke-virtual {v3}, Lar;->h()V

    .line 351
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v2}, Lan;->c(I)V

    .line 352
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lan;->c(I)V

    .line 353
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lan;->c(I)V

    .line 354
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, p1}, Lan;->c(I)V

    .line 355
    sget-object v3, Lar;->Z:Lan;

    invoke-static {v2}, Lcom/opera/mini/android/MiniView;->I(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lan;->c(I)V

    .line 356
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-static {p2}, Lcom/opera/mini/android/MiniView;->Code(Landroid/view/KeyEvent;)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 357
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lan;->c(I)V

    .line 358
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-static {p2}, Lcom/opera/mini/android/MiniView;->Code(Landroid/view/KeyEvent;)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lan;->Code(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 359
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lar;->Z(I)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_8e} :catch_9a

    move v0, v1

    .line 360
    goto/16 :goto_9

    :sswitch_91
    move v0, v1

    .line 334
    goto/16 :goto_9

    :sswitch_94
    move v0, v1

    .line 337
    goto/16 :goto_9

    :sswitch_97
    move v0, v1

    .line 339
    goto/16 :goto_9

    :catch_9a
    move-exception v1

    goto/16 :goto_9

    .line 329
    nop

    :sswitch_data_9e
    .sparse-switch
        0x13 -> :sswitch_91
        0x14 -> :sswitch_91
        0x15 -> :sswitch_91
        0x16 -> :sswitch_91
        0x17 -> :sswitch_94
        0x42 -> :sswitch_94
        0x52 -> :sswitch_97
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 419
    const/16 v0, 0x54

    if-ne v0, p1, :cond_9

    .line 421
    invoke-static {}, Lcom/opera/mini/android/br;->I()Z

    move-result v0

    .line 423
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 372
    const/16 v1, 0x54

    if-ne v1, p1, :cond_70

    .line 374
    invoke-static {}, Lcom/opera/mini/android/br;->Z()Z

    move-result v1

    if-nez v1, :cond_c

    .line 414
    :cond_b
    :goto_b
    return v0

    .line 378
    :cond_c
    invoke-static {v0}, Lcom/opera/mini/android/br;->Code(Z)V

    .line 379
    invoke-static {p1, p2}, Lcom/opera/mini/android/MiniView;->Code(ILandroid/view/KeyEvent;)I

    move-result v1

    .line 380
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->h()V

    .line 381
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v1}, Lan;->c(I)V

    .line 382
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v0}, Lan;->c(I)V

    .line 383
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v0}, Lan;->c(I)V

    .line 384
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, p1}, Lan;->c(I)V

    .line 385
    sget-object v2, Lar;->Z:Lan;

    invoke-static {v1}, Lcom/opera/mini/android/MiniView;->I(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lan;->c(I)V

    .line 386
    sget-object v1, Lar;->Z:Lan;

    sget-object v2, Lar;->Z:Lan;

    invoke-static {p2}, Lcom/opera/mini/android/MiniView;->Code(Landroid/view/KeyEvent;)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lan;->b(I)V

    .line 387
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lan;->c(I)V

    .line 388
    sget-object v1, Lar;->Z:Lan;

    sget-object v2, Lar;->Z:Lan;

    invoke-static {p2}, Lcom/opera/mini/android/MiniView;->Code(Landroid/view/KeyEvent;)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lan;->Code(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lan;->b(I)V

    .line 389
    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lar;->Z(I)V

    .line 395
    :cond_70
    :try_start_70
    invoke-static {}, Ldb;->I()V

    .line 396
    invoke-static {p1}, Ldb;->I(I)V

    .line 397
    const/16 v1, 0x8

    invoke-static {v1}, Ldb;->Code(I)V

    .line 399
    sget-object v1, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v1, v1, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/opera/mini/android/MiniView;->Z(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 401
    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    .line 402
    sget-object v1, Lar;->Z:Lan;

    invoke-static {p1, p2}, Lcom/opera/mini/android/MiniView;->Code(ILandroid/view/KeyEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lan;->c(I)V

    .line 403
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, p1}, Lan;->c(I)V

    .line 404
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lan;->c(I)V

    .line 405
    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lar;->Z(I)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_ab} :catch_ae

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 412
    :catch_ae
    move-exception v1

    goto/16 :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    .line 512
    invoke-static {}, Ldb;->I()V

    .line 513
    invoke-static {v4}, Ldb;->I(I)V

    .line 514
    invoke-static {v5}, Ldb;->I(I)V

    .line 515
    const/4 v2, 0x2

    invoke-static {v2}, Ldb;->Code(I)V

    .line 516
    sget-object v2, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v2, v2, Lcom/opera/mini/android/Code;->C:Z

    if-nez v2, :cond_21

    .line 565
    :cond_20
    :goto_20
    return v0

    .line 525
    :cond_21
    iget-object v2, p0, Lcom/opera/mini/android/MiniView;->f:Lcom/opera/mini/android/be;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/opera/mini/android/MiniView;->f:Lcom/opera/mini/android/be;

    invoke-virtual {v2, p1}, Lcom/opera/mini/android/be;->Code(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 531
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    move v0, v1

    .line 549
    goto :goto_20

    .line 534
    :pswitch_36
    const/16 v2, 0x45

    .line 551
    :goto_38
    if-eq v2, v3, :cond_20

    .line 553
    sget-object v3, Lar;->I:Lar;

    invoke-virtual {v3}, Lar;->h()V

    .line 554
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v4}, Lan;->c(I)V

    .line 555
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v5}, Lan;->c(I)V

    .line 556
    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lan;->c(I)V

    .line 557
    sget-object v3, Lar;->Z:Lan;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lan;->c(I)V

    .line 558
    sget-object v3, Lar;->I:Lar;

    invoke-virtual {v3, v2}, Lar;->Z(I)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5e} :catch_5f

    goto :goto_20

    .line 565
    :catch_5f
    move-exception v0

    move v0, v1

    goto :goto_20

    .line 537
    :pswitch_62
    const/16 v2, 0x46

    .line 538
    goto :goto_38

    .line 540
    :pswitch_65
    const/16 v2, 0x48

    .line 541
    goto :goto_38

    .line 543
    :pswitch_68
    const/16 v2, 0x47

    .line 544
    goto :goto_38

    :pswitch_6b
    move v2, v3

    .line 547
    goto :goto_38

    .line 531
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_36
        :pswitch_62
        :pswitch_65
        :pswitch_68
        :pswitch_6b
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 625
    :try_start_2
    iget-object v2, p0, Lcom/opera/mini/android/MiniView;->g:Lcom/opera/mini/android/bc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/opera/mini/android/bc;->Code(F)I

    move-result v2

    .line 626
    iget-object v3, p0, Lcom/opera/mini/android/MiniView;->h:Lcom/opera/mini/android/bc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/opera/mini/android/bc;->Code(F)I

    move-result v3

    .line 630
    invoke-static {}, Ldb;->I()V

    .line 631
    invoke-static {v2}, Ldb;->I(I)V

    .line 632
    invoke-static {v3}, Ldb;->I(I)V

    .line 633
    const/4 v4, 0x2

    invoke-static {v4}, Ldb;->Code(I)V

    .line 635
    sget-object v4, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v4, v4, Lcom/opera/mini/android/Code;->C:Z

    if-nez v4, :cond_34

    .line 659
    :goto_33
    return v0

    .line 640
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v0, :cond_42

    :cond_40
    move v0, v1

    .line 643
    goto :goto_33

    .line 646
    :cond_42
    sget-object v4, Lar;->I:Lar;

    invoke-virtual {v4}, Lar;->h()V

    .line 647
    sget-object v4, Lar;->Z:Lan;

    invoke-virtual {v4, v2}, Lan;->c(I)V

    .line 648
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v3}, Lan;->c(I)V

    .line 649
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lan;->Code(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 650
    sget-object v2, Lar;->Z:Lan;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lan;->c(I)V

    .line 651
    sget-object v2, Lar;->I:Lar;

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Lar;->Z(I)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6d} :catch_6e

    goto :goto_33

    .line 659
    :catch_6e
    move-exception v0

    move v0, v1

    goto :goto_33
.end method
