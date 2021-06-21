.class public final Lcy;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized Code()V
    .registers 2

    .prologue
    .line 12
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcy;->Code(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 13
    monitor-exit p0

    return-void

    .line 12
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(I)V
    .registers 3

    .prologue
    .line 18
    monitor-enter p0

    :cond_1
    :try_start_1
    iget v0, p0, Lcy;->Code:I

    if-eqz v0, :cond_a

    .line 20
    invoke-static {p0, p1}, Ldb;->Code(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    .line 24
    if-lez p1, :cond_1

    .line 26
    :cond_a
    monitor-exit p0

    return-void

    .line 18
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I()V
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcy;->Code:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcy;->Code:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()V
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcy;->Code:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcy;->Code:I

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 41
    monitor-exit p0

    return-void

    .line 38
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
