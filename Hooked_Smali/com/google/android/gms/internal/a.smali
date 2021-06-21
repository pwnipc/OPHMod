.class public final Lcom/google/android/gms/internal/a;
.super Ljava/lang/Object;


# direct methods
.method public static Code()Z
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/a;->Code(I)Z

    move-result v0

    return v0
.end method

.method private static Code(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static I()Z
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/internal/a;->Code(I)Z

    move-result v0

    return v0
.end method
