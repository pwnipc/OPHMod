.class public final Lcom/google/analytics/tracking/android/e;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/am;


# static fields
.field private static final Code:Ljava/lang/Object;

.field private static g:Lcom/google/analytics/tracking/android/e;


# instance fields
.field private B:I

.field private C:Z

.field private I:Landroid/content/Context;

.field private volatile J:Lcom/google/analytics/tracking/android/f;

.field private Z:Lcom/google/analytics/tracking/android/d;

.field private a:Z

.field private b:Z

.field private c:Lcom/google/analytics/tracking/android/e$Code;

.field private d:Landroid/os/Handler;

.field private e:Lcom/google/analytics/tracking/android/GANetworkReceiver;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    .line 45
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/e;->C:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/e;->a:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/e;->b:Z

    .line 54
    new-instance v0, Lcom/google/analytics/tracking/android/e$Code;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/e$Code;-><init>(Lcom/google/analytics/tracking/android/e;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/e;->c:Lcom/google/analytics/tracking/android/e$Code;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    .line 80
    return-void
.end method

.method public static Code()Lcom/google/analytics/tracking/android/e;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/analytics/tracking/android/e;->g:Lcom/google/analytics/tracking/android/e;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/google/analytics/tracking/android/e;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/e;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/e;->g:Lcom/google/analytics/tracking/android/e;

    .line 76
    :cond_b
    sget-object v0, Lcom/google/analytics/tracking/android/e;->g:Lcom/google/analytics/tracking/android/e;

    return-object v0
.end method

.method static synthetic Code(Lcom/google/analytics/tracking/android/e;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->a:Z

    return v0
.end method

.method static synthetic I(Lcom/google/analytics/tracking/android/e;)I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    return v0
.end method

.method static synthetic J(Lcom/google/analytics/tracking/android/e;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic J()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Z(Lcom/google/analytics/tracking/android/e;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized Code(I)V
    .registers 6

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 190
    const-string v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 191
    iput p1, p0, Lcom/google/analytics/tracking/android/e;->B:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_49

    .line 205
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 195
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->j:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 197
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->a:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    if-lez v0, :cond_2b

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_2b
    iput p1, p0, Lcom/google/analytics/tracking/android/e;->B:I

    .line 201
    if-lez p1, :cond_c

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->a:Z

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_48
    .catchall {:try_start_e .. :try_end_48} :catchall_49

    goto :goto_c

    .line 189
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Code(Landroid/content/Context;Lcom/google/analytics/tracking/android/f;)V
    .registers 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    .line 143
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 135
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->J:Lcom/google/analytics/tracking/android/f;

    if-nez v0, :cond_5

    .line 138
    iput-object p2, p0, Lcom/google/analytics/tracking/android/e;->J:Lcom/google/analytics/tracking/android/f;

    .line 139
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->C:Z

    if-eqz v0, :cond_5

    .line 140
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/f;->Code()V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    goto :goto_5

    .line 132
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Code(Z)V
    .registers 3

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/e;->Code(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized Code(ZZ)V
    .registers 7

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->a:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_53

    if-ne v0, p2, :cond_b

    .line 223
    :goto_9
    monitor-exit p0

    return-void

    .line 212
    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    if-lez v0, :cond_1b

    .line 213
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 215
    :cond_1b
    if-nez p1, :cond_36

    if-eqz p2, :cond_36

    iget v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    if-lez v0, :cond_36

    .line 216
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/e;->B:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_41

    if-nez p2, :cond_56

    :cond_41
    const-string v0, "initiated."

    :goto_43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->J(Ljava/lang/String;)I

    .line 221
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/e;->f:Z

    .line 222
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/e;->a:Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_53

    goto :goto_9

    .line 209
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_56
    :try_start_56
    const-string v0, "terminated."
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_53

    goto :goto_43
.end method

.method final declared-synchronized I()Lcom/google/analytics/tracking/android/d;
    .registers 5

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->Z:Lcom/google/analytics/tracking/android/d;

    if-nez v0, :cond_1f

    .line 156
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 155
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_14
    :try_start_14
    new-instance v0, Lcom/google/analytics/tracking/android/ae;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->c:Lcom/google/analytics/tracking/android/e$Code;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/e$Code;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/e;->Z:Lcom/google/analytics/tracking/android/d;

    .line 163
    :cond_1f
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_4c

    .line 165
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/e$1;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/e$1;-><init>(Lcom/google/analytics/tracking/android/e;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    iget v0, p0, Lcom/google/analytics/tracking/android/e;->B:I

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/e;->Code:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/e;->B:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    :cond_4c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->e:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->b:Z

    if-eqz v0, :cond_6c

    .line 168
    new-instance v0, Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;-><init>(Lcom/google/analytics/tracking/android/am;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/e;->e:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/e;->e:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    :cond_6c
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->Z:Lcom/google/analytics/tracking/android/d;
    :try_end_6e
    .catchall {:try_start_14 .. :try_end_6e} :catchall_11

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized Z()V
    .registers 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->J:Lcom/google/analytics/tracking/android/f;

    if-nez v0, :cond_f

    .line 178
    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/e;->C:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e

    .line 185
    :goto_d
    monitor-exit p0

    return-void

    .line 183
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/analytics/tracking/android/aa;->Code()Lcom/google/analytics/tracking/android/aa;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ab;->i:Lcom/google/analytics/tracking/android/ab;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/aa;->Code(Lcom/google/analytics/tracking/android/ab;)V

    .line 184
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e;->J:Lcom/google/analytics/tracking/android/f;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/f;->Code()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_d

    .line 177
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
