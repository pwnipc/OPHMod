.class public final Lcom/google/android/gms/internal/C;
.super Ljava/lang/Object;


# direct methods
.method public static Code(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object p0
.end method
