.class public Lcom/opera/mini/android/f;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/opera/mini/android/d;


# instance fields
.field private Code:Lcom/opera/mini/android/a;

.field private I:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/a;Ljava/nio/ByteBuffer;)V
    .registers 3

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/opera/mini/android/f;->Code:Lcom/opera/mini/android/a;

    .line 312
    iput-object p2, p0, Lcom/opera/mini/android/f;->I:Ljava/nio/ByteBuffer;

    .line 313
    return-void
.end method


# virtual methods
.method public final Code(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/opera/mini/android/f;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 321
    return-void
.end method

.method public native Code()Z
.end method

.method public native I()V
.end method
