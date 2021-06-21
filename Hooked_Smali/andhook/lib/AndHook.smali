.class public final Landhook/lib/AndHook;
.super Ljava/lang/Object;
.source "AndHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/AndHook$Dalvik;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "AK"

.field public static final LOG_TAG:Ljava/lang/String; = "AndHook"

.field public static final VERSION:Ljava/lang/String; = "3.6.2"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public static native backup(Ljava/lang/reflect/Member;)I
.end method

.method public static native deoptimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native disableLogging(Z)V
.end method

.method public static dumpClassMethods(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 134
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private static native dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static dumpClassMethods(Ljava/lang/String;)V
    .registers 2
    .param p0, "clsname"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static native enableFastDexLoad(Z)V
.end method

.method public static ensureClassInitialized(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 114
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 119
    :cond_11
    invoke-static {p0}, Landhook/lib/AndHook;->initializeClass(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 115
    :cond_16
    :goto_16
    const-string v0, "AndHook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface or abstract class `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "` cannot be initialized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static ensureNativeLibraryLoaded(Ljava/io/File;)V
    .registers 7
    .param p0, "lib_dir"    # Ljava/io/File;

    .line 23
    :try_start_0
    invoke-static {}, Landhook/lib/AndHook;->getVersionInfo()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    .line 24
    return-void

    .line 25
    :catch_4
    move-exception v0

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "/data/local/tmp/"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "tmpdir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-nez v1, :cond_34

    .line 32
    :cond_1e
    const-string v1, "AndHook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing cache directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_34
    if-nez p0, :cond_3e

    .line 36
    :try_start_36
    const-string v1, "AK"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_4c

    .line 41
    :catch_3c
    move-exception v1

    goto :goto_4d

    .line 38
    :cond_3e
    new-instance v1, Ljava/io/File;

    const-string v2, "libAK.so"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_36 .. :try_end_4c} :catch_3c

    .line 54
    :goto_4c
    goto :goto_67

    .line 41
    :goto_4d
    nop

    .line 44
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    if-nez p0, :cond_58

    .line 45
    :try_start_50
    const-string v2, "AKCompat"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_66

    .line 50
    :catch_56
    move-exception v2

    goto :goto_68

    .line 47
    :cond_58
    new-instance v2, Ljava/io/File;

    const-string v3, "libAKCompat.so"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_50 .. :try_end_66} :catch_56

    .line 53
    :goto_66
    nop

    .line 55
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_67
    return-void

    .line 50
    .restart local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_68
    nop

    .line 51
    .local v2, "ignored":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incompatible platform "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static native getVersionInfo()Ljava/lang/String;
.end method

.method public static hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 81
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "slot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 83
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 84
    const/4 v0, -0x1

    .line 86
    :cond_e
    return v0
.end method

.method public static hook(Ljava/lang/reflect/Member;Ljava/lang/Object;)I
    .registers 4
    .param p0, "origin"    # Ljava/lang/reflect/Member;
    .param p1, "extra"    # Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v0

    .line 72
    .local v0, "slot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 73
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 74
    const/4 v0, -0x1

    .line 76
    :cond_e
    return v0
.end method

.method public static native hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation
.end method

.method public static native hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z
.end method

.method public static hookNoBackup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 95
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    .line 96
    return-void
.end method

.method public static hookNoBackup(Ljava/lang/reflect/Member;Ljava/lang/Object;)V
    .registers 3
    .param p0, "origin"    # Ljava/lang/reflect/Member;
    .param p1, "extra"    # Ljava/lang/Object;

    .line 90
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    .line 91
    return-void
.end method

.method private static native initializeClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public static varargs native invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static varargs invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 156
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 158
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static varargs invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 165
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B

    move-result v0

    return v0

    .line 167
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public static varargs invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 183
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C

    move-result v0

    return v0

    .line 185
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static varargs invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 219
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    .line 221
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 210
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 212
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static varargs invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 192
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 194
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static varargs invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 201
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    .line 203
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs invokeMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 251
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 229
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 231
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 174
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S

    move-result v0

    return v0

    .line 176
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public static varargs invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "slot"    # I
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_a

    .line 147
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d

    .line 149
    :cond_a
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_d
    return-void
.end method

.method public static native jitCompile(Ljava/lang/reflect/Member;)V
.end method

.method public static native optimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native restore(ILjava/lang/reflect/Member;)Z
.end method

.method public static native resumeAll()V
.end method

.method public static native startDaemons()V
.end method

.method public static native stopDaemons()V
.end method

.method public static native suspendAll()Z
.end method
