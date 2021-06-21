.class public final Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
.super Landhook/lib/xposed/callbacks/XCallback$Param;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHookParam"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Member;

.field private result:Ljava/lang/Object;

.field returnEarly:Z

.field public slot:I

.field public thisObject:Ljava/lang/Object;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landhook/lib/xposed/callbacks/XCallback$Param;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 97
    iput-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 104
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    throw v0

    .line 149
    :cond_7
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 122
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hasThrowable()Z
    .registers 2

    .line 129
    iget-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 116
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 138
    iput-object p1, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->throwable:Ljava/lang/Throwable;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->result:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    .line 141
    return-void
.end method
