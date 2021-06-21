.class final Lcom/opera/mini/android/av$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/av;->onPause()V
.end annotation


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/av;


# direct methods
.method constructor <init>(Lcom/opera/mini/android/av;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/opera/mini/android/av$1;->Code:Lcom/opera/mini/android/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/opera/mini/android/av$1;->Code:Lcom/opera/mini/android/av;

    monitor-enter v1

    .line 89
    :try_start_3
    iget-object v0, p0, Lcom/opera/mini/android/av$1;->Code:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->d()V

    .line 90
    iget-object v0, p0, Lcom/opera/mini/android/av$1;->Code:Lcom/opera/mini/android/av;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/opera/mini/android/av;->Code:Z

    .line 91
    iget-object v0, p0, Lcom/opera/mini/android/av$1;->Code:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
