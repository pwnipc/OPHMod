.class public abstract Lcom/opera/mini/android/ai;
.super Ljava/lang/Object;
.source "Source"


# direct methods
.method public static varargs Code(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 39
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_b

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    :goto_9
    const/4 v0, 0x1

    .line 46
    :goto_a
    return v0

    .line 42
    :cond_b
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_10
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_9

    .line 46
    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method
