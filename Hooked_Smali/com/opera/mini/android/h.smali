.class public Lcom/opera/mini/android/h;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Code()V
.end method

.method private static native Code(II[I)V
.end method

.method public static Code(Landroid/content/res/AssetManager;)V
    .registers 9

    .prologue
    .line 19
    :try_start_0
    const-string v0, "elements.png"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    if-nez v0, :cond_d

    .line 33
    :goto_c
    return-void

    .line 23
    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 25
    mul-int v1, v3, v7

    new-array v1, v1, [I

    .line 26
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    invoke-static {v3, v7, v1}, Lcom/opera/mini/android/h;->Code(II[I)V

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_26} :catch_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_29

    goto :goto_c

    .line 32
    :catch_27
    move-exception v0

    goto :goto_c

    .line 33
    :catch_29
    move-exception v0

    goto :goto_c

    .line 32
    :catch_2b
    move-exception v0

    goto :goto_c
.end method
