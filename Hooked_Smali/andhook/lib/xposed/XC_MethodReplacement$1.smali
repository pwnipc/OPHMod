.class final Landhook/lib/xposed/XC_MethodReplacement$1;
.super Landhook/lib/xposed/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 58
    invoke-direct {p0, p1}, Landhook/lib/xposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
