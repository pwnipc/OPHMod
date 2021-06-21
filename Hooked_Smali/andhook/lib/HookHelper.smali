.class public final Landhook/lib/HookHelper;
.super Ljava/lang/Object;
.source "HookHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/HookHelper$Hook;
    }
.end annotation


# static fields
.field public static final constructorName:Ljava/lang/String; = "<init>"

.field private static final sBackups:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landhook/lib/HookHelper;->sBackups:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyHooks(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 281
    .local p0, "holdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Landhook/lib/HookHelper;->applyHooks(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 282
    return-void
.end method

.method public static applyHooks(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 14
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 286
    .local p0, "holdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_86

    aget-object v4, v0, v3

    .line 287
    .local v4, "hookMethod":Ljava/lang/reflect/Method;
    const-class v5, Landhook/lib/HookHelper$Hook;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landhook/lib/HookHelper$Hook;

    .line 288
    .local v5, "hookInfo":Landhook/lib/HookHelper$Hook;
    if-eqz v5, :cond_83

    .line 289
    invoke-interface {v5}, Landhook/lib/HookHelper$Hook;->name()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 291
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 293
    :cond_23
    invoke-interface {v5}, Landhook/lib/HookHelper$Hook;->clazz()Ljava/lang/Class;

    move-result-object v7

    .line 295
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_27
    const-class v8, Landhook/lib/HookHelper$Hook;

    if-ne v7, v8, :cond_34

    .line 296
    invoke-interface {v5}, Landhook/lib/HookHelper$Hook;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v7, v8

    .line 297
    :cond_34
    nop

    .line 298
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 299
    .local v8, "_parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v8

    const/4 v10, 0x1

    if-ge v9, v10, :cond_45

    .line 300
    const-string v9, "AndHook"

    const-string v10, "unexpected args number!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto :goto_83

    .line 303
    :cond_45
    array-length v9, v8

    sub-int/2addr v9, v10

    new-array v9, v9, [Ljava/lang/Class;

    .line 304
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v9

    invoke-static {v8, v10, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {v7, v6}, Landhook/lib/HookHelper;->isConstructor(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 309
    invoke-static {v7, v9}, Landhook/lib/HookHelper;->findConstructorHierarchically(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 309
    .local v10, "origin":Ljava/lang/reflect/Member;
    goto :goto_5c

    .line 312
    .end local v10    # "origin":Ljava/lang/reflect/Member;
    :cond_58
    invoke-static {v7, v6, v9}, Landhook/lib/HookHelper;->findMethodHierarchically(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 315
    .restart local v10    # "origin":Ljava/lang/reflect/Member;
    :goto_5c
    if-eqz v10, :cond_78

    .line 316
    invoke-interface {v10}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 317
    invoke-static {v7}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 319
    :cond_6b
    invoke-interface {v5}, Landhook/lib/HookHelper$Hook;->need_origin()Z

    move-result v11

    if-eqz v11, :cond_75

    .line 320
    invoke-static {v10, v4}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    goto :goto_78

    .line 322
    :cond_75
    invoke-static {v10, v4}, Landhook/lib/AndHook;->hookNoBackup(Ljava/lang/reflect/Member;Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_78} :catch_79

    .line 327
    .end local v8    # "_parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "origin":Ljava/lang/reflect/Member;
    :cond_78
    :goto_78
    goto :goto_83

    .line 325
    :catch_79
    move-exception v8

    .line 326
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "AndHook"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v4    # "hookMethod":Ljava/lang/reflect/Method;
    .end local v5    # "hookInfo":Landhook/lib/HookHelper$Hook;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 330
    :cond_86
    return-void
.end method

.method public static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 180
    const-class v0, Landhook/lib/AndHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Landhook/lib/HookHelper;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 6
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 186
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 187
    :catch_5
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AndHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to find class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on ClassLoader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs findConstructorHierarchically(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 218
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 219
    .local v0, "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v1, v0

    move-object v0, p0

    .line 222
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "m":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v1, v2

    .line 227
    goto :goto_11

    .line 223
    :catch_9
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    if-nez v0, :cond_11

    .line 226
    goto :goto_13

    .line 228
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    :goto_11
    if-eqz v1, :cond_3

    .line 229
    :goto_13
    if-eqz v1, :cond_1a

    .line 230
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_34

    .line 232
    :cond_1a
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find constructor of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_34
    return-object v1
.end method

.method public static findFieldHierarchically(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 196
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 197
    .local v0, "f":Ljava/lang/reflect/Field;
    move-object v1, v0

    move-object v0, p0

    .line 200
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "f":Ljava/lang/reflect/Field;
    :cond_3
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v1, v2

    .line 205
    goto :goto_11

    .line 201
    :catch_9
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    if-nez v0, :cond_11

    .line 204
    goto :goto_13

    .line 206
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :cond_11
    :goto_11
    if-eqz v1, :cond_3

    .line 207
    :goto_13
    if-eqz v1, :cond_1a

    .line 208
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_3c

    .line 210
    :cond_1a
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_3c
    return-object v1
.end method

.method public static varargs findMethodHierarchically(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 240
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 241
    .local v0, "m":Ljava/lang/reflect/Method;
    move-object v1, v0

    move-object v0, p0

    .line 244
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "m":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_3
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v1, v2

    .line 249
    goto :goto_11

    .line 245
    :catch_9
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 247
    if-nez v0, :cond_11

    .line 248
    goto :goto_13

    .line 250
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_11
    :goto_11
    if-eqz v1, :cond_3

    .line 251
    :goto_13
    if-eqz v1, :cond_1a

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_3c

    .line 254
    :cond_1a
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to find method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_3c
    return-object v1
.end method

.method private static getBackupSlot(I)I
    .registers 6
    .param p0, "identifier"    # I

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 82
    .local v0, "stack":Ljava/lang/StackTraceElement;
    sget-object v1, Landhook/lib/HookHelper;->sBackups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 84
    .local v1, "slot":Ljava/lang/Integer;
    if-nez v1, :cond_60

    .line 85
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no backup found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, -0x1

    return v2

    .line 90
    :cond_60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public static hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "replace"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 48
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Landhook/lib/HookHelper;->uniqueKey(Ljava/lang/reflect/Method;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    .line 49
    return-void

    .line 51
    :cond_7
    invoke-static {p3}, Landhook/lib/HookHelper;->warnKnownIssue(Ljava/lang/reflect/Method;)V

    .line 52
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "slot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p3}, Landhook/lib/HookHelper;->saveBackupSlot(Ljava/lang/Integer;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 54
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    .line 56
    :cond_1e
    return-void
.end method

.method public static hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V
    .registers 4
    .param p0, "origin"    # Ljava/lang/reflect/Member;
    .param p1, "replace"    # Ljava/lang/reflect/Method;

    .line 36
    invoke-static {p1}, Landhook/lib/HookHelper;->uniqueKey(Ljava/lang/reflect/Method;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_7

    .line 37
    return-void

    .line 39
    :cond_7
    invoke-static {p1}, Landhook/lib/HookHelper;->warnKnownIssue(Ljava/lang/reflect/Method;)V

    .line 40
    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v0

    .line 41
    .local v0, "slot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Landhook/lib/HookHelper;->saveBackupSlot(Ljava/lang/Integer;Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 42
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    .line 44
    :cond_1e
    return-void
.end method

.method public static varargs invokeBooleanOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 100
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs invokeByteOrigin(Ljava/lang/Object;[Ljava/lang/Object;)B
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 106
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method public static varargs invokeCharOrigin(Ljava/lang/Object;[Ljava/lang/Object;)C
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 118
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public static varargs invokeDoubleOrigin(Ljava/lang/Object;[Ljava/lang/Object;)D
    .registers 4
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 142
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs invokeFloatOrigin(Ljava/lang/Object;[Ljava/lang/Object;)F
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 136
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static varargs invokeIntOrigin(Ljava/lang/Object;[Ljava/lang/Object;)I
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 124
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs invokeLongOrigin(Ljava/lang/Object;[Ljava/lang/Object;)J
    .registers 4
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 130
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 149
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeShortOrigin(Ljava/lang/Object;[Ljava/lang/Object;)S
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 112
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public static varargs invokeVoidOrigin(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 95
    array-length v0, p1

    invoke-static {v0}, Landhook/lib/HookHelper;->getBackupSlot(I)I

    move-result v0

    invoke-static {v0, p0, p1}, Landhook/lib/AndHook;->invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method private static isConstructor(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 5
    .param p1, "methodname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 262
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "clsname":Ljava/lang/String;
    const-string v1, "<init>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v1, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    .line 263
    :goto_3e
    return v1
.end method

.method private static saveBackupSlot(Ljava/lang/Integer;Ljava/lang/reflect/Method;)Z
    .registers 6
    .param p0, "slot"    # Ljava/lang/Integer;
    .param p1, "md"    # Ljava/lang/reflect/Method;

    .line 70
    invoke-static {p1}, Landhook/lib/HookHelper;->uniqueKey(Ljava/lang/reflect/Method;)Landroid/util/Pair;

    move-result-object v0

    .line 71
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_8

    .line 72
    const/4 v1, 0x0

    return v1

    .line 74
    :cond_8
    sget-object v1, Landhook/lib/HookHelper;->sBackups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "AndHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x1

    return v1
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Landhook/lib/HookHelper;->findFieldHierarchically(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 156
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_25

    .line 158
    :try_start_a
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 162
    goto :goto_25

    .line 159
    :catch_e
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set instance field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-void
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 168
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Landhook/lib/HookHelper;->findFieldHierarchically(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 169
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_2e

    .line 171
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 175
    goto :goto_2e

    .line 172
    :catch_b
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AndHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set static field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static uniqueKey(Ljava/lang/reflect/Method;)Landroid/util/Pair;
    .registers 4
    .param p0, "md"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 62
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Landhook/lib/HookHelper;->sBackups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 63
    const-string v1, "AndHook"

    const-string v2, "duplicate key error! already hooked?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_37
    return-object v0
.end method

.method private static warnKnownIssue(Ljava/lang/reflect/Method;)V
    .registers 4
    .param p0, "replace"    # Ljava/lang/reflect/Method;

    .line 23
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 24
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1f

    .line 25
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 26
    :cond_1f
    const-string v0, "AndHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be static and its first argument must be Class<?> or Object!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_4e
    return-void
.end method
