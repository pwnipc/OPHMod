.class public Lcom/opera/mini/android/o;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lci;


# static fields
.field private static final C:Lcom/opera/mini/android/l;

.field protected static Code:Lcom/opera/mini/android/EditView; = null

.field private static a:Landroid/os/ResultReceiver; = null

.field private static b:Landroid/os/ResultReceiver; = null

.field private static c:Z = false

.field private static k:I = 0x0

.field private static l:Ljava/lang/String; = null

.field private static o:Ljava/lang/String; = null

.field private static final p:Ljava/lang/String; = "aid"

.field private static final q:Landroid/net/Uri;


# instance fields
.field private B:Landroid/view/View;

.field private I:Lcom/opera/mini/android/Browser;

.field private J:Z

.field private Z:Lcom/opera/mini/android/MiniView;

.field private d:I

.field private e:I

.field private f:Landroid/database/Cursor;

.field private g:I

.field private h:C

.field private i:Landroid/content/res/AssetManager;

.field private j:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/opera/mini/android/l;

    invoke-direct {v0}, Lcom/opera/mini/android/l;-><init>()V

    sput-object v0, Lcom/opera/mini/android/o;->C:Lcom/opera/mini/android/l;

    .line 768
    const/4 v0, -0x1

    sput v0, Lcom/opera/mini/android/o;->k:I

    .line 769
    const-string v0, ""

    sput-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    .line 1697
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/o;->q:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/opera/mini/android/Browser;Landroid/content/res/AssetManager;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lcom/opera/mini/android/o;->d:I

    .line 103
    iput v0, p0, Lcom/opera/mini/android/o;->e:I

    .line 104
    iput-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    .line 110
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/opera/mini/android/o;->h:C

    .line 111
    iput-object v1, p0, Lcom/opera/mini/android/o;->i:Landroid/content/res/AssetManager;

    .line 1446
    const-string v0, "market://details?id=com.opera.mini.android"

    iput-object v0, p0, Lcom/opera/mini/android/o;->m:Ljava/lang/String;

    .line 1569
    const-string v0, "/"

    iput-object v0, p0, Lcom/opera/mini/android/o;->n:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    .line 126
    const/high16 v0, 0x7f080000

    invoke-virtual {p1, v0}, Lcom/opera/mini/android/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opera/mini/android/MiniView;

    iput-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    .line 127
    const v0, 0x7f080001

    invoke-virtual {p1, v0}, Lcom/opera/mini/android/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/o;->B:Landroid/view/View;

    .line 129
    new-instance v0, Lcom/opera/mini/android/p;

    invoke-direct {v0}, Lcom/opera/mini/android/p;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 130
    invoke-static {p1}, Lcom/opera/mini/android/am;->I(Landroid/content/Context;)V

    .line 132
    iput-object p2, p0, Lcom/opera/mini/android/o;->i:Landroid/content/res/AssetManager;

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/opera/mini/android/o$1;

    invoke-direct {v1, p0}, Lcom/opera/mini/android/o$1;-><init>(Lcom/opera/mini/android/o;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method public static B(Z)V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 587
    sget-object v1, Lcom/opera/mini/android/o;->a:Landroid/os/ResultReceiver;

    if-nez v1, :cond_1d

    .line 589
    new-instance v1, Lcom/opera/mini/android/q;

    sget-object v2, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v2}, Lcom/opera/mini/android/MiniView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opera/mini/android/q;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/opera/mini/android/o;->a:Landroid/os/ResultReceiver;

    .line 591
    :cond_1d
    if-eqz p0, :cond_35

    sget-object v1, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    if-eqz v1, :cond_35

    .line 594
    sget-object v1, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v1}, Lcom/opera/mini/android/EditView;->requestFocus()Z

    .line 595
    sget-object v1, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v1, v4}, Lcom/opera/mini/android/MiniView;->Code(Z)V

    .line 596
    sget-object v1, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    sget-object v2, Lcom/opera/mini/android/o;->a:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 613
    :cond_34
    :goto_34
    return-void

    .line 598
    :cond_35
    sget-object v1, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    if-eqz v1, :cond_34

    .line 601
    sget-object v1, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/MiniView;->Code(Z)V

    .line 602
    sget-object v1, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v1, v3}, Lcom/opera/mini/android/MiniView;->Code(I)V

    .line 608
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1, v4}, Lcom/opera/mini/android/Browser;->Code(Z)V

    .line 609
    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    .line 610
    sget-object v1, Lar;->I:Lar;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lar;->Z(I)V

    .line 611
    sget-object v1, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    invoke-virtual {v1}, Lcom/opera/mini/android/EditView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_34
.end method

.method private Code(Landroid/content/Intent;Landroid/content/pm/PackageManager;)V
    .registers 5

    .prologue
    .line 925
    const-string v0, "com.android.browser"

    invoke-static {v0, p2}, Lcom/opera/mini/android/s;->Code(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 927
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    :cond_f
    :goto_f
    return-void

    .line 931
    :cond_10
    const-string v0, "com.android.chrome"

    invoke-static {v0, p2}, Lcom/opera/mini/android/s;->Code(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 933
    const-string v0, "com.android.chrome"

    const-string v1, "com.google.android.apps.chrome.Main"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f

    .line 937
    :cond_20
    const-string v0, "com.google.android.browser"

    invoke-static {v0, p2}, Lcom/opera/mini/android/s;->Code(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 939
    const-string v0, "com.google.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f
.end method

.method public static as()Z
    .registers 1

    .prologue
    .line 1120
    sget-boolean v0, Lcom/opera/mini/android/o;->c:Z

    return v0
.end method

.method private ax()V
    .registers 20

    .prologue
    .line 162
    const/16 v2, 0xa

    const/16 v3, 0x10

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 165
    const/16 v2, 0xa

    const/16 v3, 0x10

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 174
    const-string v2, "GT-S5660"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "GT-S5830"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    :cond_28
    const/4 v2, 0x1

    move v10, v2

    .line 177
    :goto_2a
    invoke-static {}, Lcom/opera/mini/android/C;->Code()Lcom/opera/mini/android/C;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/opera/mini/android/C;->Code(II)Lbp;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/opera/mini/android/B;

    .line 178
    invoke-virtual {v9}, Lcom/opera/mini/android/B;->g()Landroid/text/TextPaint;

    move-result-object v8

    .line 179
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 180
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 183
    invoke-virtual {v8}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v15

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 186
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const-string v4, "\u05e0\u05e1\u05e2"

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const-string v4, "\u0628\u062a\u062b"

    aput-object v4, v16, v3

    const/4 v3, 0x2

    const-string v4, "\ufe91\ufef4\ufee6"

    aput-object v4, v16, v3

    .line 192
    const/4 v3, 0x0

    move v11, v3

    :goto_65
    if-eqz v10, :cond_e8

    const/4 v3, 0x1

    :goto_68
    if-ge v11, v3, :cond_112

    .line 194
    aget-object v3, v16, v11

    const/4 v4, 0x0

    aget-object v5, v16, v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v3, v4, v5, v14}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 196
    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    aget-object v3, v16, v11

    iget v4, v14, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v14, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {v2, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 201
    aget-object v3, v16, v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v14, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, v14, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 203
    aget-object v3, v16, v11

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v9, v3}, Lcom/opera/mini/android/B;->Code(C)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 204
    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 205
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 206
    const/4 v4, 0x1

    .line 207
    const/4 v3, 0x0

    move v5, v3

    move v3, v4

    :goto_ca
    if-eqz v3, :cond_f0

    if-ge v5, v6, :cond_f0

    .line 210
    const/4 v4, 0x0

    :goto_cf
    if-ge v4, v7, :cond_e0

    .line 212
    invoke-virtual {v12, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    invoke-virtual {v13, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ed

    .line 214
    const/4 v3, 0x0

    .line 207
    :cond_e0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_ca

    .line 174
    :cond_e4
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_2a

    .line 192
    :cond_e8
    move-object/from16 v0, v16

    array-length v3, v0

    goto/16 :goto_68

    .line 210
    :cond_ed
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 220
    :cond_f0
    if-nez v3, :cond_10d

    .line 222
    sget v3, Ldb;->s:I

    const/4 v4, 0x1

    add-int/lit8 v5, v11, 0x1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    sput v3, Ldb;->s:I

    .line 228
    if-eqz v10, :cond_10d

    .line 230
    sget v3, Ldb;->s:I

    const/4 v4, 0x1

    add-int/lit8 v5, v11, 0x2

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 231
    sput v3, Ldb;->s:I

    const/4 v4, 0x1

    add-int/lit8 v5, v11, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    sput v3, Ldb;->s:I

    .line 192
    :cond_10d
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_65

    .line 235
    :cond_112
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    sget v2, Ldb;->s:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/opera/mini/android/o;->b(I)V

    .line 238
    invoke-virtual {v8, v15}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 239
    return-void
.end method

.method private ay()V
    .registers 3

    .prologue
    .line 825
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->Z()Z

    move-result v0

    if-nez v0, :cond_10

    .line 827
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network usage is not allowed when app is in background."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_10
    return-void
.end method

.method private static az()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1702
    sget-object v0, Lcom/opera/mini/android/o;->o:Ljava/lang/String;

    if-nez v0, :cond_3a

    .line 1704
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1706
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "aid"

    aput-object v4, v2, v1

    .line 1707
    sget-object v1, Lcom/opera/mini/android/o;->q:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1710
    const-string v1, ""

    sput-object v1, Lcom/opera/mini/android/o;->o:Ljava/lang/String;

    .line 1711
    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1715
    :try_start_27
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1717
    if-eqz v1, :cond_35

    .line 1719
    sput-object v1, Lcom/opera/mini/android/o;->o:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_3d

    .line 1730
    :cond_35
    :goto_35
    if-eqz v0, :cond_3a

    .line 1732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1735
    :cond_3a
    sget-object v0, Lcom/opera/mini/android/o;->o:Ljava/lang/String;

    return-object v0

    :catch_3d
    move-exception v1

    goto :goto_35
.end method

.method private d(I)Lbu;
    .registers 3

    .prologue
    .line 1775
    :try_start_0
    sget-object v0, Lcom/opera/mini/android/o;->C:Lcom/opera/mini/android/l;

    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/l;->Code(Ljava/io/InputStream;)Lbu;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 1780
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    sput-object p0, Lcom/opera/mini/android/o;->o:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 774
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 775
    if-eqz v0, :cond_4b

    .line 777
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 778
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 779
    if-nez v0, :cond_1e

    const-string v0, ""

    .line 786
    :cond_1e
    :try_start_1e
    const-string v3, "10.0.0.172"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4c

    .line 790
    if-nez v4, :cond_30

    const-string v3, "cmwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 792
    :cond_30
    invoke-static {}, Lcs;->C()V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_5a

    .line 808
    :cond_33
    :goto_33
    sget v3, Lcom/opera/mini/android/o;->k:I

    if-ne v3, v4, :cond_3f

    sget-object v3, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3f
    move v1, v2

    .line 812
    :cond_40
    sput v4, Lcom/opera/mini/android/o;->k:I

    .line 813
    sput-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    .line 814
    if-eqz v1, :cond_4b

    .line 816
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 820
    :cond_4b
    return-void

    .line 799
    :cond_4c
    if-nez v4, :cond_33

    :try_start_4e
    const-string v3, "cmwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 801
    invoke-static {}, Lcs;->C()V
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5a

    goto :goto_33

    .line 807
    :catchall_5a
    move-exception v3

    .line 808
    sget v5, Lcom/opera/mini/android/o;->k:I

    if-ne v5, v4, :cond_67

    sget-object v5, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    :cond_67
    move v1, v2

    .line 812
    :cond_68
    sput v4, Lcom/opera/mini/android/o;->k:I

    .line 813
    sput-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    .line 814
    if-eqz v1, :cond_73

    .line 816
    const-string v0, "md"

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)V

    .line 818
    :cond_73
    throw v3
.end method

.method private f(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 887
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 888
    array-length v0, v2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_c

    .line 903
    :cond_b
    :goto_b
    return v1

    :cond_c
    move v0, v1

    .line 891
    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_1f

    .line 893
    aget-object v3, v2, v0

    .line 894
    :try_start_12
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_21

    move-result v3

    .line 900
    if-ltz v3, :cond_b

    const/16 v4, 0xff

    if-gt v3, v4, :cond_b

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 903
    :cond_1f
    const/4 v1, 0x1

    goto :goto_b

    .line 898
    :catch_21
    move-exception v0

    goto :goto_b
.end method

.method private g(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1588
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1589
    iget-object v2, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v2}, Lcom/opera/mini/android/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1590
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method private h(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1598
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1599
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1600
    iget-object v1, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1605
    const/4 v3, 0x0

    :try_start_22
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_29} :catch_2e

    move-result v1

    if-lez v1, :cond_2d

    const/4 v0, 0x1

    .line 1609
    :cond_2d
    :goto_2d
    return v0

    :catch_2e
    move-exception v1

    goto :goto_2d
.end method


# virtual methods
.method public A()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1196
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 1198
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "favicon"

    aput-object v3, v2, v0

    .line 1203
    const-string v3, "bookmark = 1"

    .line 1204
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    .line 1205
    iget-object v0, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    if-eqz v0, :cond_2d

    .line 1206
    iget-object v0, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1207
    :cond_2d
    return-void
.end method

.method public B()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-static {}, Lcom/opera/mini/android/MiniView;->d()I

    move-result v0

    return v0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1062
    const-string v0, "debuginfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1064
    new-instance v2, Ljava/io/File;

    const-string v0, "/sdcard/debuginfo"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    :try_start_20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_25} :catch_26

    .line 1082
    :goto_25
    return-object v0

    .line 1070
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1076
    :cond_2a
    const/4 v0, 0x0

    .line 1079
    :try_start_2b
    iget-object v2, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v2}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_25

    :catch_3a
    move-exception v1

    goto :goto_25
.end method

.method public B(I)V
    .registers 2

    .prologue
    .line 1192
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1359
    invoke-static {p1}, Lcom/opera/mini/android/s;->f(Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method public C()I
    .registers 2

    .prologue
    .line 263
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public C(I)I
    .registers 4

    .prologue
    .line 1271
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Ldb;->Code(III)I

    .line 1272
    invoke-static {}, Lcom/opera/mini/android/C;->Code()Lcom/opera/mini/android/C;

    invoke-static {p1}, Lcom/opera/mini/android/C;->Z(I)I

    move-result v0

    return v0
.end method

.method public C(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public Code(Ljava/lang/String;Ljava/lang/String;)Lbc;
    .registers 4

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/opera/mini/android/o;->ay()V

    .line 910
    invoke-direct {p0, p1}, Lcom/opera/mini/android/o;->e(Ljava/lang/String;)V

    .line 911
    new-instance v0, Lcom/opera/mini/android/au;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/au;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbc;
    .registers 11

    .prologue
    const/16 v5, 0x50

    const/4 v3, -0x1

    .line 834
    invoke-direct {p0}, Lcom/opera/mini/android/o;->ay()V

    .line 835
    invoke-direct {p0, p1}, Lcom/opera/mini/android/o;->e(Ljava/lang/String;)V

    .line 838
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 839
    const-string v1, "http://10.0.0.172"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 841
    const/4 v4, 0x0

    .line 843
    sget v1, Lcom/opera/mini/android/s;->al:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_48

    sget v1, Lcom/opera/mini/android/o;->k:I

    if-nez v1, :cond_48

    .line 846
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v1}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 847
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v1}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    move-object v4, v2

    .line 870
    :goto_2b
    if-eqz v4, :cond_87

    .line 872
    invoke-direct {p0, v4}, Lcom/opera/mini/android/o;->f(Ljava/lang/String;)Z

    move-result v2

    .line 873
    if-eqz v2, :cond_7c

    .line 875
    if-ne v1, v3, :cond_36

    move v1, v5

    :cond_36
    invoke-static {v4, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 878
    :goto_3a
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v1, v2

    .line 882
    :goto_42
    new-instance v2, Lcom/opera/mini/android/at;

    invoke-direct {v2, p1, p3, v1}, Lcom/opera/mini/android/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy;)V

    return-object v2

    .line 853
    :cond_48
    :try_start_48
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 854
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 855
    if-eqz v1, :cond_89

    .line 857
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 858
    if-eqz v2, :cond_89

    instance-of v1, v2, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_89

    .line 859
    move-object v0, v2

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 860
    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_75
    .catch Ljava/net/URISyntaxException; {:try_start_48 .. :try_end_75} :catch_79

    move-result v1

    move-object v2, v4

    :goto_77
    move-object v4, v2

    .line 867
    goto :goto_2b

    :catch_79
    move-exception v1

    move v1, v3

    goto :goto_2b

    .line 877
    :cond_7c
    new-instance v2, Ljava/net/InetSocketAddress;

    if-ne v1, v3, :cond_85

    :goto_80
    invoke-direct {v2, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    goto :goto_3a

    :cond_85
    move v5, v1

    goto :goto_80

    :cond_87
    move-object v1, v6

    goto :goto_42

    :cond_89
    move v1, v3

    move-object v2, v4

    goto :goto_77
.end method

.method public Code(IBZZ)Lcs;
    .registers 6

    .prologue
    .line 765
    new-instance v0, Lcs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcs;-><init>(IBZZ)V

    return-object v0
.end method

.method public Code(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIIIILbp;III)Ljava/lang/Object;
    .registers 37

    .prologue
    .line 359
    and-int/lit8 v1, p5, 0x6

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    .line 360
    :goto_5
    if-eqz v1, :cond_43

    const v1, 0x7f080002

    .line 362
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v2, v1}, Lcom/opera/mini/android/Browser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/opera/mini/android/EditView;

    .line 363
    sput-object v2, Lcom/opera/mini/android/o;->Code:Lcom/opera/mini/android/EditView;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/opera/mini/android/o;->B:Landroid/view/View;

    move-object/from16 v16, v0

    new-instance v1, Lcom/opera/mini/android/o$2;

    move/from16 v3, p8

    move/from16 v4, p12

    move/from16 v5, p9

    move/from16 v6, p13

    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v9, p16

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v14, p18

    move/from16 v15, p17

    invoke-direct/range {v1 .. v15}, Lcom/opera/mini/android/o$2;-><init>(Lcom/opera/mini/android/EditView;IIIIIILbp;ILjava/lang/String;IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-object v2

    .line 359
    :cond_41
    const/4 v1, 0x0

    goto :goto_5

    .line 360
    :cond_43
    const v1, 0x7f080003

    goto :goto_a
.end method

.method public Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 703
    const-string v0, "OM-Install-Referrer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 705
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/OpMiniInstallReferrerReceiver;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 711
    :goto_e
    return-object v0

    .line 707
    :cond_f
    const-string v0, "OM-Facebook-Attribution-Id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 709
    invoke-static {}, Lcom/opera/mini/android/o;->az()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 711
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public Code([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1614
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1615
    array-length v4, p1

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_42

    aget-object v5, p1, v2

    .line 1617
    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_39

    const/4 v0, 0x1

    .line 1618
    :goto_15
    if-eqz v0, :cond_3b

    invoke-direct {p0, v5}, Lcom/opera/mini/android/o;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1620
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    :cond_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_39
    move v0, v1

    .line 1617
    goto :goto_15

    .line 1618
    :cond_3b
    invoke-direct {p0, v5}, Lcom/opera/mini/android/o;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_1d

    .line 1623
    :cond_42
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Code()V
    .registers 2

    .prologue
    .line 145
    invoke-static {}, Lcom/opera/mini/android/s;->l()V

    .line 147
    const-string v0, "mc"

    invoke-static {v0}, Ldb;->b(Ljava/lang/String;)V

    .line 148
    const-string v0, "md"

    invoke-static {v0}, Ldb;->b(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ldb;->b()V

    .line 150
    iget-object v0, p0, Lcom/opera/mini/android/o;->i:Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/opera/mini/android/h;->Code(Landroid/content/res/AssetManager;)V

    .line 151
    invoke-direct {p0}, Lcom/opera/mini/android/o;->ax()V

    .line 152
    return-void
.end method

.method public Code(II)V
    .registers 3

    .prologue
    .line 1419
    invoke-static {p1, p2}, Lcom/opera/mini/android/s;->Code(II)V

    .line 1420
    return-void
.end method

.method public Code(IIII)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 333
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 334
    add-int v2, p1, p3

    iget-object v3, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-static {}, Lcom/opera/mini/android/MiniView;->c()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v0

    .line 335
    add-int v3, p2, p4

    iget-object v4, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-static {}, Lcom/opera/mini/android/MiniView;->d()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 336
    iget-object v4, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/opera/mini/android/MiniView;->Code(IIII)V

    .line 337
    return-void
.end method

.method public Code(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1740
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    .line 1742
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/q;->Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/opera/mini/android/notifications/q;->Code(IILjava/lang/String;Ljava/lang/String;)V

    .line 1744
    :cond_e
    return-void
.end method

.method public Code(Ljava/io/DataInputStream;I)V
    .registers 4

    .prologue
    .line 1094
    const/4 v0, 0x4

    if-lt p2, v0, :cond_f

    .line 1096
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sput v0, Lcom/opera/mini/android/o;->k:I

    .line 1097
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    .line 1099
    :cond_f
    return-void
.end method

.method public Code(Ljava/io/DataOutputStream;)V
    .registers 3

    .prologue
    .line 1109
    sget v0, Lcom/opera/mini/android/o;->k:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1110
    sget-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_b
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1110
    :cond_f
    sget-object v0, Lcom/opera/mini/android/o;->l:Ljava/lang/String;

    goto :goto_b
.end method

.method public Code(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/opera/mini/android/o;->B:Landroid/view/View;

    new-instance v1, Lcom/opera/mini/android/o$3;

    invoke-direct {v1, p1}, Lcom/opera/mini/android/o$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method public Code(Ljava/lang/Object;IIIIII)V
    .registers 17

    .prologue
    .line 491
    if-gez p3, :cond_3

    .line 502
    :goto_2
    return-void

    .line 492
    :cond_3
    iget-object v8, p0, Lcom/opera/mini/android/o;->B:Landroid/view/View;

    new-instance v0, Lcom/opera/mini/android/o$4;

    move-object v1, p1

    move v2, p2

    move v3, p6

    move v4, p3

    move/from16 v5, p7

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/opera/mini/android/o$4;-><init>(Ljava/lang/Object;IIIIII)V

    invoke-virtual {v8, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public Code(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 535
    instance-of v0, p1, Lcom/opera/mini/android/EditView;

    if-eqz v0, :cond_e

    .line 537
    check-cast p1, Lcom/opera/mini/android/EditView;

    .line 538
    new-instance v0, Lcom/opera/mini/android/r;

    invoke-direct {v0, p1, p2}, Lcom/opera/mini/android/r;-><init>(Lcom/opera/mini/android/EditView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/opera/mini/android/EditView;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_e
    return-void
.end method

.method public Code(Ljava/lang/Object;Ljava/lang/String;IZ)V
    .registers 6

    .prologue
    .line 544
    instance-of v0, p1, Lcom/opera/mini/android/URLEditView;

    if-eqz v0, :cond_9

    .line 546
    check-cast p1, Lcom/opera/mini/android/URLEditView;

    .line 547
    invoke-virtual {p1, p2, p3, p4}, Lcom/opera/mini/android/URLEditView;->Code(Ljava/lang/String;IZ)V

    .line 551
    :cond_9
    return-void
.end method

.method public Code(Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 1648
    :try_start_0
    new-instance v0, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;

    invoke-direct {v0, p1}, Lcom/opera/mini/android/events/ServerNotificationSettingsEvent;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1654
    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public Code(Z)V
    .registers 2

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/opera/mini/android/o;->J:Z

    .line 699
    return-void
.end method

.method public Code(I)Z
    .registers 3

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public D()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1211
    iget-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1213
    iget-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1214
    iput-object v5, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    .line 1216
    :cond_15
    iget-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    if-nez v1, :cond_1a

    .line 1233
    :cond_19
    :goto_19
    return v0

    .line 1220
    :cond_1a
    iget-object v1, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1221
    iget-object v2, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    const-string v3, "url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1222
    iget-object v3, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    const-string v4, "favicon"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1223
    sput-object v5, Lcj;->I:Ljava/lang/String;

    .line 1224
    :goto_34
    sget-object v4, Lcj;->I:Ljava/lang/String;

    if-nez v4, :cond_60

    iget-object v4, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1226
    iget-object v4, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcj;->I:Ljava/lang/String;

    if-eqz v4, :cond_5a

    .line 1228
    iget-object v4, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcj;->Code:Ljava/lang/String;

    .line 1229
    iget-object v4, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sput-object v4, Lcj;->Z:[B

    .line 1231
    :cond_5a
    iget-object v4, p0, Lcom/opera/mini/android/o;->f:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_34

    .line 1233
    :cond_60
    sget-object v1, Lcj;->I:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    goto :goto_19
.end method

.method public E()Z
    .registers 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->B()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 1248
    const/4 v0, 0x0

    return v0
.end method

.method public G()I
    .registers 2

    .prologue
    .line 1258
    const/4 v0, 0x7

    return v0
.end method

.method public H()I
    .registers 2

    .prologue
    .line 1263
    const/4 v0, 0x1

    return v0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 1154
    :try_start_0
    invoke-static {p1}, Lcom/opera/mini/android/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1159
    if-eqz p2, :cond_24

    .line 1161
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    :goto_1d
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->startActivity(Landroid/content/Intent;)V

    .line 1168
    const/4 v0, 0x0

    .line 1176
    :goto_23
    return v0

    .line 1165
    :cond_24
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_1d

    .line 1170
    :catch_28
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1176
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public I(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 506
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 508
    check-cast p1, Landroid/widget/EditText;

    .line 509
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public I([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 1628
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1629
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_45

    aget-object v4, p1, v1

    .line 1631
    const/4 v0, 0x0

    .line 1632
    const-string v5, "install_non_market_apps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1634
    invoke-virtual {p0}, Lcom/opera/mini/android/o;->aw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1636
    :cond_1d
    if-eqz v0, :cond_41

    .line 1638
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 1641
    :cond_45
    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I(I)V
    .registers 2

    .prologue
    .line 571
    return-void
.end method

.method public I(II)V
    .registers 3

    .prologue
    .line 1424
    invoke-static {}, Lcom/opera/mini/android/s;->k()V

    .line 1425
    return-void
.end method

.method public I(Z)V
    .registers 4

    .prologue
    .line 1125
    .line 1126
    sput-boolean p1, Lcom/opera/mini/android/o;->c:Z

    .line 1127
    iget-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/opera/mini/android/o$6;

    invoke-direct {v1, p1}, Lcom/opera/mini/android/o$6;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    return-void
.end method

.method public I()Z
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public I(Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/16 v9, 0x10

    const/4 v2, 0x0

    .line 947
    invoke-static {p1}, Ldb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 950
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v5, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 952
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "vnd.youtube:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 954
    :cond_2a
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 955
    const/high16 v0, 0x10000

    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 959
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_46
    move v1, v2

    .line 960
    :goto_47
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_66

    .line 962
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 963
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v8}, Lcom/opera/mini/android/Browser;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 965
    invoke-direct {p0, v5, v6}, Lcom/opera/mini/android/o;->Code(Landroid/content/Intent;Landroid/content/pm/PackageManager;)V

    .line 982
    :cond_66
    :try_start_66
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 983
    const-string v0, "vnd.opera.video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 985
    const-string v0, "video/mp4"

    .line 986
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_8f

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "video/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    :cond_8f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    :cond_a0
    :goto_a0
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0, v5}, Lcom/opera/mini/android/Browser;->startActivity(Landroid/content/Intent;)V
    :try_end_a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_66 .. :try_end_a5} :catch_d2

    .line 1009
    :goto_a5
    return v2

    .line 960
    :cond_a6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    .line 970
    :cond_aa
    const-string v0, "vnd.youtube:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 972
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_66

    .line 973
    invoke-static {}, Lcom/opera/mini/android/Code;->z()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->p()V

    goto :goto_a5

    .line 993
    :cond_c0
    :try_start_c0
    const-string v0, "mailto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 998
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_d1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c0 .. :try_end_d1} :catch_d2

    goto :goto_a0

    .line 1006
    :catch_d2
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheme is not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J()I
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-static {}, Lcom/opera/mini/android/MiniView;->c()I

    move-result v0

    return v0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1374
    if-nez p2, :cond_3

    .line 1396
    :goto_2
    return-void

    .line 1379
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1380
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const-class v2, Lcom/opera/mini/android/Browser;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1381
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1383
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1384
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1385
    const-string v0, "android.intent.extra.shortcut.NAME"

    if-eqz p1, :cond_48

    :goto_26
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v3, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_4a

    const v0, 0x7f020002

    :goto_36
    invoke-static {v3, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1394
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1395
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_48
    move-object p1, p2

    .line 1385
    goto :goto_26

    .line 1387
    :cond_4a
    const v0, 0x7f020001

    goto :goto_36
.end method

.method public J(Z)V
    .registers 2

    .prologue
    .line 1282
    return-void
.end method

.method public J(I)Z
    .registers 3

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public J(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    new-instance v1, Ljava/io/File;

    const-string v2, "/dummy_file.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    iget-object v1, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1145
    const/4 v0, 0x1

    .line 1147
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public K()Z
    .registers 2

    .prologue
    .line 1287
    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .registers 3

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/opera/mini/android/o;->M()I

    move-result v0

    .line 1296
    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_a

    .line 1298
    const/4 v0, 0x1

    .line 1301
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public M()I
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1306
    iget v0, p0, Lcom/opera/mini/android/o;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 1308
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1309
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_30

    .line 1311
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_30

    .line 1314
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_30

    .line 1315
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/o;->d:I

    .line 1321
    :cond_30
    iget v0, p0, Lcom/opera/mini/android/o;->d:I

    return v0
.end method

.method public N()I
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1326
    iget v0, p0, Lcom/opera/mini/android/o;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    .line 1328
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1329
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f

    .line 1331
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_2f

    .line 1334
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2f

    .line 1335
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/o;->e:I

    .line 1341
    :cond_2f
    iget v0, p0, Lcom/opera/mini/android/o;->e:I

    return v0
.end method

.method public O()I
    .registers 2

    .prologue
    .line 1364
    const/4 v0, 0x1

    return v0
.end method

.method public P()I
    .registers 2

    .prologue
    .line 1369
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized Q()V
    .registers 2

    .prologue
    .line 1401
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/opera/mini/android/o;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/opera/mini/android/o;->g:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1402
    monitor-exit p0

    return-void

    .line 1401
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized R()V
    .registers 2

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/opera/mini/android/o;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/opera/mini/android/o;->g:I

    if-nez v0, :cond_e

    .line 1408
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->Code()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1410
    :cond_e
    monitor-exit p0

    return-void

    .line 1406
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public S()Z
    .registers 2

    .prologue
    .line 1414
    const/4 v0, 0x1

    return v0
.end method

.method public T()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1429
    const-string v0, "http://mini.bugs.opera.com?pl=Android&version=7.6"

    .line 1430
    const-string v1, "35766"

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&build=35766"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    :cond_1f
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_3d

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1435
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&mo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1436
    return-object v0

    .line 1434
    :cond_3d
    const-string v1, "unknown"

    goto :goto_25
.end method

.method public U()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1441
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/s;->Code(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    invoke-static {}, Lcom/opera/mini/android/s;->q()V

    .line 1443
    return-object v0
.end method

.method public V()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1572
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1573
    if-eqz v1, :cond_40

    .line 1575
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1576
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1577
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    :cond_3f
    :goto_3f
    return-object v0

    :cond_40
    const-string v0, ""

    goto :goto_3f
.end method

.method public W()V
    .registers 2

    .prologue
    .line 1692
    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->g()V

    .line 1693
    return-void
.end method

.method public X()V
    .registers 4

    .prologue
    .line 1451
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.opera.mini.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1452
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/Browser;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 1457
    :goto_12
    return-void

    :catch_13
    move-exception v0

    goto :goto_12
.end method

.method public Y()Z
    .registers 5

    .prologue
    .line 1461
    invoke-static {}, Lcom/opera/mini/android/al;->Z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public Z(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1031
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 1052
    :cond_4
    :goto_4
    return-object v0

    .line 1033
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_18

    .line 1035
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1038
    :cond_18
    const-string v0, "v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1040
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/opera/mini/android/s;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/opera/mini/android/o;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1041
    if-nez v0, :cond_60

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/opera/mini/android/s;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/opera/mini/android/o;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1046
    :cond_60
    if-nez v0, :cond_4

    .line 1052
    :cond_62
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/opera/mini/android/o;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4
.end method

.method public Z(I)Ljava/util/Vector;
    .registers 3

    .prologue
    .line 1181
    const/4 v0, 0x0

    return-object v0
.end method

.method public Z(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1027
    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1348
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/opera/mini/android/Browser;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_20} :catch_21

    .line 1355
    :goto_20
    return-void

    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public Z(Z)V
    .registers 2

    .prologue
    .line 1239
    return-void
.end method

.method public Z()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 268
    sget-object v0, Lcom/opera/mini/android/s;->ah:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Z
    .registers 3

    .prologue
    .line 1471
    invoke-static {p1}, Lcom/opera/mini/android/C;->I(I)Z

    move-result v0

    return v0
.end method

.method public aa()Z
    .registers 2

    .prologue
    .line 1466
    const/4 v0, 0x0

    return v0
.end method

.method public ab()V
    .registers 2

    .prologue
    .line 1476
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1478
    invoke-static {}, Lcom/opera/mini/android/an;->I()V

    .line 1480
    :cond_9
    invoke-static {}, Lcom/opera/mini/android/ak;->Code()V

    .line 1481
    return-void
.end method

.method public ac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1539
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1541
    :cond_a
    iget-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method public ad()V
    .registers 2

    .prologue
    .line 1659
    new-instance v0, Lcom/opera/mini/android/events/NotificationStatsAck;

    invoke-direct {v0}, Lcom/opera/mini/android/events/NotificationStatsAck;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V

    .line 1660
    return-void
.end method

.method public ae()Z
    .registers 2

    .prologue
    .line 1665
    sget-boolean v0, Lcom/opera/mini/android/s;->am:Z

    if-nez v0, :cond_6

    .line 1667
    const/4 v0, 0x0

    .line 1669
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->b()Z

    move-result v0

    goto :goto_5
.end method

.method public af()[B
    .registers 2

    .prologue
    .line 1675
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/g;->Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/notifications/g;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public ag()[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1681
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v1}, Lcom/opera/mini/android/notifications/B;->Code(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1686
    :cond_9
    :goto_9
    return-object v0

    .line 1685
    :cond_a
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->Z()Lcom/opera/mini/android/notifications/a;

    move-result-object v1

    .line 1686
    if-eqz v1, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    iget-byte v3, v1, Lcom/opera/mini/android/notifications/a;->Code:B

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    iget-byte v1, v1, Lcom/opera/mini/android/notifications/a;->I:B

    aput-byte v1, v0, v2

    goto :goto_9
.end method

.method public ah()Lbu;
    .registers 2

    .prologue
    .line 1753
    const v0, 0x7f020006

    invoke-direct {p0, v0}, Lcom/opera/mini/android/o;->d(I)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public ai()Lbu;
    .registers 2

    .prologue
    .line 1758
    const v0, 0x7f020004

    invoke-direct {p0, v0}, Lcom/opera/mini/android/o;->d(I)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public aj()Lbu;
    .registers 2

    .prologue
    .line 1763
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/opera/mini/android/o;->d(I)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public ak()Lbu;
    .registers 2

    .prologue
    .line 1768
    const v0, 0x7f020003

    invoke-direct {p0, v0}, Lcom/opera/mini/android/o;->d(I)Lbu;

    move-result-object v0

    return-object v0
.end method

.method public al()Z
    .registers 2

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/B;->I(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public am()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1554
    invoke-static {}, Lcom/opera/mini/android/s;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public an()Z
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->C()Z

    move-result v0

    return v0
.end method

.method public ao()Ljava/io/DataOutputStream;
    .registers 2

    .prologue
    .line 670
    const/4 v0, 0x0

    return-object v0
.end method

.method public ap()Ljava/io/DataInputStream;
    .registers 2

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public aq()Z
    .registers 2

    .prologue
    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public ar()Z
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public at()Z
    .registers 2

    .prologue
    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method public au()V
    .registers 3

    .prologue
    .line 1496
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1c

    .line 1497
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 1499
    if-nez v0, :cond_1c

    .line 1501
    :try_start_e
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/Code;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/Code;->Code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_2b
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_e .. :try_end_1a} :catch_29
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_1a} :catch_27

    .line 1521
    :goto_1a
    iget-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;

    .line 1530
    :cond_1c
    iget-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 1531
    invoke-virtual {p0}, Lcom/opera/mini/android/o;->av()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opera/mini/android/o;->j:Ljava/lang/String;

    .line 1533
    :cond_26
    return-void

    .line 1517
    :catch_27
    move-exception v0

    goto :goto_1a

    .line 1508
    :catch_29
    move-exception v0

    goto :goto_1a

    .line 1504
    :catch_2b
    move-exception v0

    goto :goto_1a
.end method

.method public av()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1547
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public aw()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1560
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_14

    .line 1561
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1564
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Lcom/opera/mini/android/ab;->Code(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_13
.end method

.method public b()I
    .registers 2

    .prologue
    .line 273
    invoke-static {}, Lcom/opera/mini/android/s;->m()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public native b(I)V
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 920
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 278
    invoke-static {}, Lcom/opera/mini/android/s;->n()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1254
    return-void
.end method

.method public d()Z
    .registers 9

    .prologue
    const-wide v6, 0x4016cccccccccccdL    # 5.7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/opera/mini/android/o;->C()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/opera/mini/android/s;->m()F

    move-result v3

    div-float/2addr v2, v3

    .line 288
    invoke-virtual {p0}, Lcom/opera/mini/android/o;->a()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/opera/mini/android/s;->n()F

    move-result v4

    div-float/2addr v3, v4

    .line 289
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 291
    sget v4, Lcom/opera/mini/android/s;->al:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2f

    .line 293
    invoke-static {}, Lcom/opera/mini/android/ac;->I()I

    move-result v4

    .line 294
    packed-switch v4, :pswitch_data_4e

    .line 311
    :cond_2f
    cmpl-double v2, v2, v6

    if-ltz v2, :cond_44

    invoke-virtual {p0}, Lcom/opera/mini/android/o;->a()I

    move-result v2

    invoke-virtual {p0}, Lcom/opera/mini/android/o;->C()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_44

    move v0, v1

    .line 312
    :cond_44
    :goto_44
    :pswitch_44
    return v0

    .line 299
    :pswitch_45
    cmpl-double v2, v2, v6

    if-ltz v2, :cond_44

    move v0, v1

    goto :goto_44

    :pswitch_4b
    move v0, v1

    .line 301
    goto :goto_44

    .line 294
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_45
        :pswitch_45
        :pswitch_4b
    .end packed-switch
.end method

.method public e()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->a()V

    .line 327
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 6

    .prologue
    const/16 v4, 0x140

    const/16 v3, 0xf0

    const/4 v0, -0x1

    .line 443
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "SonyEricssonU20i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 462
    :cond_f
    :goto_f
    return v0

    .line 448
    :cond_10
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "SonyEricsson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_44

    .line 452
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 453
    sget-object v2, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v2}, Lcom/opera/mini/android/Browser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 454
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v4, :cond_34

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_3c

    :cond_34
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v2, v3, :cond_44

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v4, :cond_44

    :cond_3c
    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->C()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 462
    :cond_44
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public i()V
    .registers 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/opera/mini/android/o;->B:Landroid/view/View;

    new-instance v1, Lcom/opera/mini/android/o$5;

    invoke-direct {v1}, Lcom/opera/mini/android/o$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method public j()I
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/opera/mini/android/o;->Z:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->e()I

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 575
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->a()Z

    move-result v0

    return v0
.end method

.method public l()Lbk;
    .registers 3

    .prologue
    .line 650
    new-instance v0, Lbk;

    new-instance v1, Lcom/opera/mini/android/I;

    invoke-direct {v1}, Lcom/opera/mini/android/I;-><init>()V

    invoke-direct {v0, v1}, Lbk;-><init>(Lbn;)V

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .registers 1

    .prologue
    .line 680
    return-void
.end method

.method public o()V
    .registers 2

    .prologue
    .line 684
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->J()Z

    move-result v0

    if-nez v0, :cond_d

    .line 686
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v0}, Lcom/opera/mini/android/Browser;->finish()V

    .line 688
    :cond_d
    invoke-static {}, Lcom/opera/mini/android/h;->Code()V

    .line 689
    return-void
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/opera/mini/android/o;->J:Z

    return v0
.end method

.method public q()Lbv;
    .registers 2

    .prologue
    .line 721
    sget-object v0, Lcom/opera/mini/android/o;->C:Lcom/opera/mini/android/l;

    return-object v0
.end method

.method public r()Lbv;
    .registers 2

    .prologue
    .line 726
    sget-object v0, Lcom/opera/mini/android/o;->C:Lcom/opera/mini/android/l;

    return-object v0
.end method

.method public s()Lbq;
    .registers 2

    .prologue
    .line 731
    invoke-static {}, Lcom/opera/mini/android/C;->Code()Lcom/opera/mini/android/C;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public u()I
    .registers 2

    .prologue
    .line 751
    const/4 v0, 0x4

    return v0
.end method

.method public v()I
    .registers 4

    .prologue
    .line 756
    const/16 v0, 0xc

    .line 758
    iget-object v1, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    invoke-virtual {v1}, Lcom/opera/mini/android/Browser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 759
    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const/16 v0, 0xd

    .line 760
    :cond_13
    return v0
.end method

.method public w()Lbb;
    .registers 4

    .prologue
    .line 1014
    new-instance v1, Lbb;

    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Lcom/opera/mini/android/Browser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-direct {v1, v0}, Lbb;-><init>(Landroid/text/ClipboardManager;)V

    return-object v1
.end method

.method public x()Lby;
    .registers 2

    .prologue
    .line 915
    new-instance v0, Lcom/opera/mini/android/m;

    invoke-direct {v0}, Lcom/opera/mini/android/m;-><init>()V

    return-object v0
.end method

.method public y()V
    .registers 1

    .prologue
    .line 1022
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1023
    return-void
.end method

.method public z()V
    .registers 3

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/opera/mini/android/o;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->moveTaskToBack(Z)Z

    .line 1116
    return-void
.end method
