.class final Lck;
.super Lcf;
.source "Source"


# static fields
.field private static B:Ljava/lang/Object;

.field private static J:I


# instance fields
.field private C:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/high16 v0, -0x80000000

    sput v0, Lck;->J:I

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lck;->B:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 16
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcf;-><init>(Ljava/lang/String;IILjava/lang/String;ZII)V

    .line 17
    return-void
.end method

.method static Z(I)V
    .registers 3

    .prologue
    .line 22
    sget v0, Lck;->J:I

    if-gt p0, v0, :cond_5

    .line 30
    :goto_4
    return-void

    .line 26
    :cond_5
    sput p0, Lck;->J:I

    .line 27
    sget-object v1, Lck;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_a
    sget-object v0, Lck;->B:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    goto :goto_4

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final Code()V
    .registers 3

    .prologue
    .line 35
    invoke-super {p0}, Lcf;->Code()V

    .line 36
    sget-object v1, Lck;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_6
    sget-object v0, Lck;->B:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final Code(Ljava/io/DataInputStream;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 49
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 51
    :cond_5
    iget-boolean v1, p0, Lck;->I:Z

    if-nez v1, :cond_23

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    .line 54
    sget-object v2, Lar;->I:Lar;

    invoke-virtual {v2}, Lar;->h()V

    .line 55
    iget-boolean v2, p0, Lck;->I:Z

    if-eqz v2, :cond_1c

    .line 57
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 79
    :cond_1b
    :goto_1b
    return-void

    .line 60
    :cond_1c
    if-gez v1, :cond_47

    .line 64
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    .line 75
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lck;->I:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lck;->Z:Lct;

    invoke-virtual {v0}, Lct;->r()Z

    move-result v0

    if-nez v0, :cond_6b

    :try_start_2f
    sget-object v1, Lck;->B:Ljava/lang/Object;

    monitor-enter v1
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_69

    :try_start_32
    sget-object v0, Lck;->B:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_66

    :goto_38
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    iget-boolean v0, p0, Lck;->I:Z

    if-eqz v0, :cond_7c

    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->i()V

    goto :goto_1b

    .line 69
    :cond_47
    sget-object v2, Lar;->Z:Lan;

    sget-object v3, Lar;->Z:Lan;

    invoke-virtual {v3, v0, v4, v1}, Lan;->I([BII)I

    move-result v3

    invoke-virtual {v2, v3}, Lan;->b(I)V

    .line 70
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v4}, Lan;->c(I)V

    .line 71
    sget-object v2, Lar;->Z:Lan;

    invoke-virtual {v2, v1}, Lan;->c(I)V

    .line 72
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lck;->Code(I)V

    .line 73
    iget-boolean v1, p0, Lck;->C:Z

    if-eqz v1, :cond_5

    goto :goto_23

    .line 75
    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1

    throw v0
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_69} :catch_69

    :catch_69
    move-exception v0

    goto :goto_1b

    :cond_6b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_79

    const/16 v0, 0x1f8

    const-string v1, "Server closed connection"

    invoke-virtual {p0, v0, v1}, Lck;->Code(ILjava/lang/String;)V

    goto :goto_1b

    :cond_79
    if-nez v0, :cond_23

    goto :goto_38

    :cond_7c
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lck;->Code(I)V

    goto :goto_23
.end method

.method public final Z()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lck;->C:Z

    .line 45
    return-void
.end method
