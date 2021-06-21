.class public final Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopyOnWriteSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 302
    .local p0, "this":Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;, "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    # getter for: Landhook/lib/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;
    invoke-static {}, Landhook/lib/xposed/XposedBridge;->access$100()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 333
    .local p0, "this":Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;, "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    const/4 v0, 0x0

    .line 333
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 334
    iget-object v1, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 335
    return v0

    .line 333
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0    # "i":I
    :cond_14
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 307
    .local p0, "this":Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;, "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 307
    :try_start_1
    invoke-direct {p0, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    .line 308
    .local v0, "index":I
    const/4 v1, 0x0

    if-ltz v0, :cond_a

    .line 309
    monitor-exit p0

    return v1

    .line 311
    :cond_a
    :try_start_a
    iget-object v2, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 312
    .local v2, "newElements":[Ljava/lang/Object;
    iget-object v4, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    iget-object v5, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget-object v1, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    aput-object p1, v2, v1

    .line 314
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 315
    iput-object v2, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    .line 316
    monitor-exit p0

    return v3

    .line 306
    .end local v0    # "index":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSnapshot()[Ljava/lang/Object;
    .registers 2

    .line 341
    .local p0, "this":Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;, "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    iget-object v0, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 321
    .local p0, "this":Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;, "Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 321
    :try_start_1
    invoke-direct {p0, p1}, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    .line 322
    .local v0, "index":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    .line 323
    monitor-exit p0

    return v2

    .line 325
    :cond_b
    :try_start_b
    iget-object v1, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 326
    .local v1, "newElements":[Ljava/lang/Object;
    iget-object v4, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    iget-object v2, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v3

    invoke-static {v2, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iput-object v1, p0, Landhook/lib/xposed/XposedBridge$CopyOnWriteSortedSet;->elements:[Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    .line 329
    monitor-exit p0

    return v3

    .line 320
    .end local v0    # "index":I
    .end local v1    # "newElements":[Ljava/lang/Object;
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method
