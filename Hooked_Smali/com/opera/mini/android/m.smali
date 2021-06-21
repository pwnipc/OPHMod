.class public final Lcom/opera/mini/android/m;
.super Ljava/util/zip/Inflater;
.source "Source"

# interfaces
.implements Lby;


# instance fields
.field private Code:[B

.field private I:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public final Code()V
    .registers 2

    .prologue
    .line 26
    const v0, 0x8000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/opera/mini/android/m;->Code([B)V

    .line 27
    return-void
.end method

.method public final Code(Lcs;)V
    .registers 2

    .prologue
    .line 37
    return-void
.end method

.method public final Code([B)V
    .registers 3

    .prologue
    .line 31
    iput-object p1, p0, Lcom/opera/mini/android/m;->Code:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/opera/mini/android/m;->I:I

    .line 33
    return-void
.end method

.method public final I()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/opera/mini/android/m;->I:I

    return v0
.end method

.method public final end()V
    .registers 1

    .prologue
    .line 69
    invoke-super {p0}, Ljava/util/zip/Inflater;->end()V

    .line 70
    return-void
.end method

.method public final read([BII)I
    .registers 5

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/opera/mini/android/m;->I:I

    .line 49
    if-eqz p1, :cond_e

    .line 50
    :try_start_5
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/m;->I:I
    :try_end_b
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_b} :catch_17

    .line 59
    :goto_b
    iget v0, p0, Lcom/opera/mini/android/m;->I:I

    return v0

    .line 52
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/opera/mini/android/m;->Code:[B

    invoke-super {p0, v0, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    iput v0, p0, Lcom/opera/mini/android/m;->I:I
    :try_end_16
    .catch Ljava/util/zip/DataFormatException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_b

    :catch_17
    move-exception v0

    goto :goto_b
.end method

.method public final setInput([BII)V
    .registers 4

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 42
    return-void
.end method
