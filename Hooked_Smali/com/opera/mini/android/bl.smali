.class public final Lcom/opera/mini/android/bl;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:J

.field private static I:J

.field private static J:Z

.field private static Z:Z


# direct methods
.method public static Code()J
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->I()Z

    move-result v0

    if-nez v0, :cond_13

    .line 56
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 57
    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 59
    :cond_13
    sget-wide v0, Lcom/opera/mini/android/bl;->I:J

    return-wide v0
.end method

.method public static Code(J)V
    .registers 2

    .prologue
    .line 24
    sput-wide p0, Lcom/opera/mini/android/bl;->Code:J

    .line 25
    return-void
.end method

.method public static Code(Z)V
    .registers 1

    .prologue
    .line 34
    sput-boolean p0, Lcom/opera/mini/android/bl;->Z:Z

    .line 35
    return-void
.end method

.method public static I(J)V
    .registers 2

    .prologue
    .line 29
    sput-wide p0, Lcom/opera/mini/android/bl;->I:J

    .line 30
    return-void
.end method

.method public static I(Z)V
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/opera/mini/android/bl;->J:Z

    .line 40
    return-void
.end method

.method public static I()Z
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 65
    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 66
    sget-boolean v0, Lcom/opera/mini/android/bl;->Z:Z

    return v0
.end method

.method public static J()I
    .registers 7

    .prologue
    const-wide/16 v5, 0x0

    .line 78
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->I()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    :cond_15
    sget-wide v0, Lcom/opera/mini/android/bl;->Code:J

    .line 79
    invoke-static {}, Lcom/opera/mini/android/bl;->Code()J

    move-result-wide v2

    .line 81
    cmp-long v4, v0, v5

    if-lez v4, :cond_27

    cmp-long v4, v2, v5

    if-lez v4, :cond_27

    cmp-long v4, v2, v0

    if-ltz v4, :cond_29

    .line 82
    :cond_27
    const/4 v0, 0x0

    .line 84
    :goto_28
    return v0

    :cond_29
    const/16 v4, 0x63

    const-wide/16 v5, 0x64

    mul-long/2addr v2, v5

    div-long v0, v2, v0

    long-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x64

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_28
.end method

.method public static Z()Z
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 72
    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 73
    sget-boolean v0, Lcom/opera/mini/android/bl;->J:Z

    return v0
.end method
