.class public abstract Landhook/lib/xposed/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/callbacks/XCallback$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landhook/lib/xposed/callbacks/XCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    .line 38
    return-void
.end method

.method public static callAll(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    .registers 3
    .param p0, "param"    # Landhook/lib/xposed/callbacks/XCallback$Param;

    .line 104
    iget-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object was not created for use with callAll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_c
    const/4 v0, 0x0

    .line 107
    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 109
    :try_start_12
    iget-object v1, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landhook/lib/xposed/callbacks/XCallback;

    invoke-virtual {v1, p0}, Landhook/lib/xposed/callbacks/XCallback;->call(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 112
    goto :goto_1d

    .line 110
    :catch_1c
    move-exception v1

    .line 107
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 114
    .end local v0    # "i":I
    :cond_20
    return-void
.end method


# virtual methods
.method protected call(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    .registers 2
    .param p1, "param"    # Landhook/lib/xposed/callbacks/XCallback$Param;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public compareTo(Landhook/lib/xposed/callbacks/XCallback;)I
    .registers 4
    .param p1, "other"    # Landhook/lib/xposed/callbacks/XCallback;

    .line 127
    if-ne p0, p1, :cond_4

    .line 128
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_4
    iget v0, p1, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    iget v1, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    if-eq v0, v1, :cond_10

    .line 132
    iget v0, p1, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    iget v1, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    sub-int/2addr v0, v1

    return v0

    .line 134
    :cond_10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 135
    const/4 v0, -0x1

    return v0

    .line 137
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 14
    check-cast p1, Landhook/lib/xposed/callbacks/XCallback;

    invoke-virtual {p0, p1}, Landhook/lib/xposed/callbacks/XCallback;->compareTo(Landhook/lib/xposed/callbacks/XCallback;)I

    move-result p1

    return p1
.end method
