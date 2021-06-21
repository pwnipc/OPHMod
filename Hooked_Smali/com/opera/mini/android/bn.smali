.class public final Lcom/opera/mini/android/bn;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static varargs Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 112
    if-nez p0, :cond_4

    .line 150
    :cond_3
    :goto_3
    return-object v2

    .line 118
    :cond_4
    if-eqz p2, :cond_42

    .line 121
    array-length v0, p2

    new-array v3, v0, [Ljava/lang/Class;

    .line 122
    const/4 v0, 0x0

    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_1e

    .line 123
    aget-object v1, p2, v0

    if-nez v1, :cond_17

    move-object v1, v2

    :goto_12
    aput-object v1, v3, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 123
    :cond_17
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_12

    :cond_1e
    move-object v0, v3

    .line 127
    :goto_1f
    invoke-static {p0, p1, v0}, Lcom/opera/mini/android/bn;->Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    :try_start_29
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_33
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_36} :catch_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_36} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_36} :catch_3c
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_29 .. :try_end_36} :catch_3a
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_36} :catch_38

    move-result-object v2

    goto :goto_3

    .line 142
    :catch_38
    move-exception v0

    throw v0

    .line 146
    :catch_3a
    move-exception v0

    goto :goto_3

    :catch_3c
    move-exception v0

    goto :goto_3

    :catch_3e
    move-exception v0

    goto :goto_3

    :catch_40
    move-exception v0

    goto :goto_3

    :cond_42
    move-object v0, v2

    goto :goto_1f
.end method

.method private static Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4

    .prologue
    .line 275
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Class;

    .line 277
    :goto_6
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1a

    .line 279
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_d} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_d} :catch_1c

    move-result-object v0

    .line 290
    :goto_e
    return-object v0

    .line 275
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_6

    .line 285
    :catch_14
    move-exception v0

    .line 277
    :goto_15
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_6

    .line 290
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e

    :catch_1c
    move-exception v0

    goto :goto_15
.end method
