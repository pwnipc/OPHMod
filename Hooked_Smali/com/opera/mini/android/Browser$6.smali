.class final synthetic Lcom/opera/mini/android/Browser$6;
.super Ljava/lang/Object;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/Browser;
.end annotation


# static fields
.field static final synthetic Code:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 727
    invoke-static {}, Lcom/opera/mini/android/t;->values()[Lcom/opera/mini/android/t;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/opera/mini/android/Browser$6;->Code:[I

    :try_start_9
    sget-object v0, Lcom/opera/mini/android/Browser$6;->Code:[I

    sget-object v1, Lcom/opera/mini/android/t;->Code:Lcom/opera/mini/android/t;

    invoke-virtual {v1}, Lcom/opera/mini/android/t;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/opera/mini/android/Browser$6;->Code:[I

    sget-object v1, Lcom/opera/mini/android/t;->Z:Lcom/opera/mini/android/t;

    invoke-virtual {v1}, Lcom/opera/mini/android/t;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
