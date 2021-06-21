.class public Lcom/opera/mini/android/g;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/opera/mini/android/d;


# instance fields
.field private Code:Lcom/opera/mini/android/a;

.field private I:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/a;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/opera/mini/android/g;->Code:Lcom/opera/mini/android/a;

    .line 337
    iput-object p2, p0, Lcom/opera/mini/android/g;->I:Landroid/graphics/Bitmap;

    .line 338
    return-void
.end method


# virtual methods
.method public final Code(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 344
    return-void
.end method

.method public native Code()Z
.end method

.method public native I()V
.end method
