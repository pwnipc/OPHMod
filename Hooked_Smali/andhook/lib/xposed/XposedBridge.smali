.class public final Landhook/lib/xposed/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;,
        Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field public static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String; = "AndHook"

.field private static final sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Member;",
            "Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landhook/lib/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landhook/lib/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .registers 1

    .line 23
    sget-object v0, Landhook/lib/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static getBackupSlot(Ljava/lang/reflect/Member;)I
    .registers 3
    .param p0, "method"    # Ljava/lang/reflect/Member;

    .line 273
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    .line 274
    .local v0, "additionalInfo":Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;
    if-eqz v0, :cond_d

    iget v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    goto :goto_e

    :cond_d
    const/4 v1, -0x1

    :goto_e
    return v1
.end method

.method private static handleHookedMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "additionalInfoObj"    # Ljava/lang/Object;
    .param p1, "thisObject"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 197
    move-object v0, p0

    check-cast v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    .line 199
    .local v0, "additionalInfo":Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "callbacksSnapshot":[Ljava/lang/Object;
    array-length v2, v1

    .line 201
    .local v2, "callbacksLength":I
    if-nez v2, :cond_13

    .line 202
    iget v3, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-static {v3, p1, p2}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 205
    :cond_13
    new-instance v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 206
    .local v3, "param":Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
    iget v4, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    iput v4, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->slot:I

    .line 207
    iget-object v4, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    iput-object v4, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 208
    iput-object p1, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 209
    iput-object p2, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 212
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 215
    .local v5, "beforeIdx":I
    :cond_26
    :try_start_26
    aget-object v6, v1, v5

    check-cast v6, Landhook/lib/xposed/XC_MethodHook;

    invoke-virtual {v6, v3}, Landhook/lib/xposed/XC_MethodHook;->beforeHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2d} :catch_35

    .line 223
    nop

    .line 225
    iget-boolean v6, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v6, :cond_40

    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 228
    goto :goto_44

    .line 216
    :catch_35
    move-exception v6

    .line 217
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v6}, Landhook/lib/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 220
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 221
    iput-boolean v4, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 222
    nop

    .line 230
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_26

    .line 233
    .end local v5    # "beforeIdx":I
    .local v6, "beforeIdx":I
    :goto_44
    move v6, v5

    iget-boolean v4, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v4, :cond_5b

    .line 235
    :try_start_49
    iget v4, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    iget-object v5, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v7, v3, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_56} :catch_57

    .line 238
    goto :goto_5b

    .line 236
    :catch_57
    move-exception v4

    .line 237
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v3, v4}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 242
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_5b
    :goto_5b
    add-int/lit8 v4, v6, -0x1

    .line 244
    .local v4, "afterIdx":I
    :cond_5d
    invoke-virtual {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v5

    .line 245
    .local v5, "lastResult":Ljava/lang/Object;
    invoke-virtual {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    .line 248
    .local v7, "lastThrowable":Ljava/lang/Throwable;
    :try_start_65
    aget-object v8, v1, v4

    check-cast v8, Landhook/lib/xposed/XC_MethodHook;

    invoke-virtual {v8, v3}, Landhook/lib/xposed/XC_MethodHook;->afterHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6c} :catch_6d

    .line 257
    goto :goto_7a

    .line 249
    :catch_6d
    move-exception v8

    .line 250
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8}, Landhook/lib/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 253
    if-nez v7, :cond_77

    .line 254
    invoke-virtual {v3, v5}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_7a

    .line 256
    :cond_77
    invoke-virtual {v3, v7}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 258
    .end local v5    # "lastResult":Ljava/lang/Object;
    .end local v7    # "lastThrowable":Ljava/lang/Throwable;
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_7a
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_5d

    .line 261
    invoke-virtual {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 262
    invoke-virtual {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    throw v5

    .line 264
    :cond_89
    invoke-virtual {v3}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .registers 8
    .param p1, "callback"    # Landhook/lib/xposed/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 185
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v0, "unhooks":Ljava/util/HashSet;, "Ljava/util/HashSet<Landhook/lib/xposed/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 187
    .local v4, "constructor":Ljava/lang/reflect/Member;
    invoke-static {v4, p1}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v4    # "constructor":Ljava/lang/reflect/Member;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 188
    :cond_19
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .registers 8
    .param p1, "callback"    # Landhook/lib/xposed/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 148
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v0, "unhooks":Ljava/util/HashSet;, "Ljava/util/HashSet<Landhook/lib/xposed/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 150
    .local v4, "method":Ljava/lang/reflect/Member;
    invoke-static {v4, p1}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v4    # "method":Ljava/lang/reflect/Member;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 151
    :cond_19
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Landhook/lib/xposed/XC_MethodHook;)Ljava/util/HashSet;
    .registers 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callback"    # Landhook/lib/xposed/XC_MethodHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landhook/lib/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/HashSet<",
            "Landhook/lib/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "hookClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v0, "unhooks":Ljava/util/HashSet;, "Ljava/util/HashSet<Landhook/lib/xposed/XC_MethodHook$Unhook;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    .line 170
    .local v4, "method":Ljava/lang/reflect/Member;
    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 171
    invoke-static {v4, p2}, Landhook/lib/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "method":Ljava/lang/reflect/Member;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 172
    :cond_23
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)Landhook/lib/xposed/XC_MethodHook$Unhook;
    .registers 6
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Landhook/lib/xposed/XC_MethodHook;

    .line 78
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_23

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_23

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only methods and constructors can be hooked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_23
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot hook abstract methods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_48
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    .line 85
    .local v0, "additionalInfo":Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;
    if-nez v0, :cond_bc

    .line 86
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 89
    :cond_63
    new-instance v1, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;-><init>(Ljava/lang/reflect/Member;ILandhook/lib/xposed/XposedBridge$1;)V

    move-object v0, v1

    .line 90
    iget v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8e

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to backup methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_8e
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 94
    iget v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-static {p0, v0, v1}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hook methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_b6
    sget-object v1, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 100
    :cond_bc
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected same methods within difference CL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_ef
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_f4
    new-instance v1, Landhook/lib/xposed/XC_MethodHook$Unhook;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->method:Ljava/lang/reflect/Member;

    iget v3, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->slot:I

    invoke-direct {v1, p1, v2, v3}, Landhook/lib/xposed/XC_MethodHook$Unhook;-><init>(Landhook/lib/xposed/XC_MethodHook;Ljava/lang/reflect/Member;I)V

    return-object v1
.end method

.method public static invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "slot"    # I
    .param p1, "thisObject"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 299
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .param p1, "thisObject"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 290
    invoke-static {p0}, Landhook/lib/xposed/XposedBridge;->getBackupSlot(Ljava/lang/reflect/Member;)I

    move-result v0

    .line 291
    .local v0, "slot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 292
    invoke-static {v0, p1, p2}, Landhook/lib/xposed/XposedBridge;->invokeOriginalMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 294
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 51
    const-string v0, "AndHook"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 60
    const-string v0, "AndHook"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Landhook/lib/xposed/XC_MethodHook;)V
    .registers 4
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "callback"    # Landhook/lib/xposed/XC_MethodHook;

    .line 117
    sget-object v0, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;

    .line 118
    .local v0, "additionalInfo":Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;
    if-eqz v0, :cond_f

    .line 119
    iget-object v1, v0, Landhook/lib/xposed/XposedBridge$AdditionalHookInfo;->callbacks:Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v1, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_f
    return-void
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;I)Z
    .registers 4
    .param p0, "hookMethod"    # Ljava/lang/reflect/Member;
    .param p1, "slot"    # I

    .line 129
    invoke-static {p1, p0}, Landhook/lib/AndHook;->restore(ILjava/lang/reflect/Member;)Z

    move-result v0

    .line 130
    .local v0, "r":Z
    if-eqz v0, :cond_b

    sget-object v1, Landhook/lib/xposed/XposedBridge;->sHookedMethodInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_b
    return v0
.end method
