.class public abstract Landhook/lib/xposed/XC_MethodReplacement;
.super Landhook/lib/xposed/XC_MethodHook;
.source "XC_MethodReplacement.java"


# static fields
.field public static final DO_NOTHING:Landhook/lib/xposed/XC_MethodReplacement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Landhook/lib/xposed/XC_MethodReplacement$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Landhook/lib/xposed/XC_MethodReplacement$1;-><init>(I)V

    sput-object v0, Landhook/lib/xposed/XC_MethodReplacement;->DO_NOTHING:Landhook/lib/xposed/XC_MethodReplacement;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landhook/lib/xposed/XC_MethodHook;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 23
    invoke-direct {p0, p1}, Landhook/lib/xposed/XC_MethodHook;-><init>(I)V

    .line 24
    return-void
.end method

.method public static returnConstant(ILjava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;
    .registers 3
    .param p0, "priority"    # I
    .param p1, "result"    # Ljava/lang/Object;

    .line 81
    new-instance v0, Landhook/lib/xposed/XC_MethodReplacement$2;

    invoke-direct {v0, p0, p1}, Landhook/lib/xposed/XC_MethodReplacement$2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static returnConstant(Ljava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;
    .registers 2
    .param p0, "result"    # Ljava/lang/Object;

    .line 71
    const/16 v0, 0x32

    invoke-static {v0, p0}, Landhook/lib/xposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final afterHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .param p1, "param"    # Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    return-void
.end method

.method protected final beforeHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3
    .param p1, "param"    # Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Landhook/lib/xposed/XC_MethodReplacement;->replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 32
    goto :goto_c

    .line 30
    :catch_8
    move-exception v0

    .line 31
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 33
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_c
    return-void
.end method

.method protected abstract replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
