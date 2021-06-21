.class final Landhook/lib/xposed/ClassUtils$ArrayUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayUtils"
.end annotation


# static fields
.field static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Landhook/lib/xposed/ClassUtils$ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 4
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 102
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 105
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_18
    const/4 v0, 0x1

    return v0
.end method
