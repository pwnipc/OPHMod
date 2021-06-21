.class final Lbw;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private B:Z

.field private C:Lbg;

.field private Code:I

.field private I:Z

.field private J:I

.field private Z:[Lbg;

.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Lbg;

    iput-object v0, p0, Lbw;->Z:[Lbg;

    .line 25
    invoke-static {p0}, Ldb;->Code(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method private declared-synchronized Z()V
    .registers 5

    .prologue
    .line 88
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lbw;->Code:I

    if-gtz v0, :cond_d

    iget v0, p0, Lbw;->J:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lbw;->C:Lbg;

    if-nez v0, :cond_14

    .line 90
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    goto :goto_1

    .line 88
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    iput-boolean v0, p0, Lbw;->I:Z

    .line 93
    iget v0, p0, Lbw;->J:I

    if-lez v0, :cond_43

    iget-boolean v0, p0, Lbw;->B:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lbw;->C:Lbg;

    if-nez v0, :cond_43

    .line 95
    :cond_23
    iget-object v0, p0, Lbw;->Z:[Lbg;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lbw;->C:Lbg;

    .line 96
    iget-object v0, p0, Lbw;->Z:[Lbg;

    const/4 v1, 0x0

    iget-object v2, p0, Lbw;->Z:[Lbg;

    iget v3, p0, Lbw;->J:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lbw;->J:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 97
    iget-object v0, p0, Lbw;->Z:[Lbg;

    iget v1, p0, Lbw;->J:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw;->B:Z
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_11

    .line 100
    :cond_43
    monitor-exit p0

    return-void
.end method


# virtual methods
.method final declared-synchronized Code()V
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lbw;->Code:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbw;->Code:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final Code(IIIIIIIZ)V
    .registers 10

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw;->a:Z

    .line 76
    iput p1, p0, Lbw;->b:I

    .line 77
    iput p2, p0, Lbw;->c:I

    .line 78
    iput p3, p0, Lbw;->d:I

    .line 79
    iput p4, p0, Lbw;->g:I

    .line 80
    iput p5, p0, Lbw;->h:I

    .line 81
    iput p7, p0, Lbw;->e:I

    .line 82
    iput p6, p0, Lbw;->f:I

    .line 83
    iput-boolean p8, p0, Lbw;->i:Z

    .line 84
    return-void
.end method

.method final declared-synchronized Code(Lbg;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 104
    monitor-enter p0

    :goto_2
    :try_start_2
    iget v1, p0, Lbw;->J:I

    if-ge v0, v1, :cond_26

    .line 106
    iget-object v1, p0, Lbw;->Z:[Lbg;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_28

    .line 108
    iget-object v1, p0, Lbw;->Z:[Lbg;

    iget-object v2, p0, Lbw;->Z:[Lbg;

    iget v3, p0, Lbw;->J:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lbw;->J:I

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 109
    iget-object v1, p0, Lbw;->Z:[Lbg;

    iget v2, p0, Lbw;->J:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 110
    if-nez v0, :cond_26

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw;->B:Z
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_2b

    .line 117
    :cond_26
    monitor-exit p0

    return-void

    .line 104
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized I()V
    .registers 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lbw;->Code:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbw;->Code:I

    .line 187
    iget v0, p0, Lbw;->Code:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lbw;->I:Z

    if-eqz v0, :cond_12

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 191
    :cond_12
    monitor-exit p0

    return-void

    .line 186
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized I(Lbg;)V
    .registers 5

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lbw;->B:Z

    if-nez v0, :cond_26

    .line 128
    const/4 v0, 0x0

    .line 129
    :goto_6
    iget v1, p0, Lbw;->J:I

    if-ge v0, v1, :cond_13

    .line 131
    iget-object v1, p0, Lbw;->Z:[Lbg;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_13

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 136
    :cond_13
    iget v1, p0, Lbw;->J:I

    if-ne v0, v1, :cond_26

    .line 138
    iget v0, p0, Lbw;->J:I

    iget-object v1, p0, Lbw;->Z:[Lbg;

    array-length v1, v1

    if-ne v0, v1, :cond_32

    .line 143
    iget-object v0, p0, Lbw;->Z:[Lbg;

    iget v1, p0, Lbw;->J:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 151
    :cond_26
    :goto_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw;->I:Z

    .line 152
    iget v0, p0, Lbw;->Code:I

    if-nez v0, :cond_30

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3d

    .line 156
    :cond_30
    monitor-exit p0

    return-void

    .line 147
    :cond_32
    :try_start_32
    iget-object v0, p0, Lbw;->Z:[Lbg;

    iget v1, p0, Lbw;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbw;->J:I

    aput-object p1, v0, v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    goto :goto_26

    .line 126
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Z(Lbg;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 165
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lbw;->Z:[Lbg;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 166
    :goto_7
    iget v1, p0, Lbw;->J:I

    if-ge v0, v1, :cond_13

    .line 168
    iget-object v1, p0, Lbw;->Z:[Lbg;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 170
    :cond_13
    const/4 v0, 0x1

    iput v0, p0, Lbw;->J:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw;->B:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw;->I:Z

    .line 173
    iget v0, p0, Lbw;->Code:I

    if-nez v0, :cond_23

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 177
    :cond_23
    monitor-exit p0

    return-void

    .line 165
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 39
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lbw;->Z()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw;->a:Z

    .line 41
    iget-object v0, p0, Lbw;->C:Lbg;

    invoke-virtual {v0}, Lbg;->J()V

    .line 42
    iget-boolean v0, p0, Lbw;->a:Z

    if-eqz v0, :cond_32

    .line 44
    iget-object v0, p0, Lbw;->C:Lbg;

    iget v1, p0, Lbw;->b:I

    iget v2, p0, Lbw;->c:I

    iget v3, p0, Lbw;->d:I

    iget v4, p0, Lbw;->f:I

    iget v5, p0, Lbw;->e:I

    iget v6, p0, Lbw;->g:I

    iget v7, p0, Lbw;->h:I

    iget-boolean v8, p0, Lbw;->i:Z

    invoke-virtual/range {v0 .. v8}, Lbg;->Code(IIIIIIIZ)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_9

    .line 65
    :catch_2e
    move-exception v0

    iput-object v9, p0, Lbw;->C:Lbg;

    goto :goto_9

    .line 56
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    iput-object v0, p0, Lbw;->C:Lbg;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_35} :catch_2e

    goto :goto_9
.end method
