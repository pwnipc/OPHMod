.class Lcom/opera/mini/android/n;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static b:Ljava/nio/ByteBuffer;


# instance fields
.field private B:Z

.field private C:I

.field private Code:J

.field private I:Landroid/graphics/Bitmap;

.field private J:I

.field private Z:I

.field private a:I


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/opera/mini/android/n;->Code:J

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/n;->Z:I

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/n;->J:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lcom/opera/mini/android/n;->B:Z

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/n;->C:I

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_29

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/opera/mini/android/n;->a:I

    .line 60
    :goto_26
    iput-object p1, p0, Lcom/opera/mini/android/n;->I:Landroid/graphics/Bitmap;

    .line 61
    return-void

    .line 51
    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_35

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/opera/mini/android/n;->a:I

    goto :goto_26

    .line 53
    :cond_35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_41

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/opera/mini/android/n;->a:I

    goto :goto_26

    .line 55
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_4d

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/opera/mini/android/n;->a:I

    goto :goto_26

    .line 58
    :cond_4d
    const/4 v0, -0x1

    iput v0, p0, Lcom/opera/mini/android/n;->a:I

    goto :goto_26
.end method


# virtual methods
.method public Code(Ljava/nio/ByteBuffer;)V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/opera/mini/android/n;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 71
    return-void
.end method

.method public Code()[B
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/opera/mini/android/n;->C:I

    iget v1, p0, Lcom/opera/mini/android/n;->Z:I

    mul-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_17

    .line 84
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    .line 87
    :cond_17
    sget-object v0, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 88
    iget-object v0, p0, Lcom/opera/mini/android/n;->I:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 90
    sget-object v0, Lcom/opera/mini/android/n;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method protected native finalize()V
.end method
