.class final Lcom/opera/mini/android/an$1;
.super Landroid/os/AsyncTask;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/an;->Code()V
.end annotation


# instance fields
.field private synthetic Code:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/opera/mini/android/an$1;->Code:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 288
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    sget-object v0, Lar;->I:Lar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    invoke-static {}, Lcom/opera/mini/android/an;->J()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 288
    invoke-static {}, Lcom/opera/mini/android/an;->B()Z

    invoke-static {}, Lcom/opera/mini/android/an;->C()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_1b
    invoke-static {}, Lcom/opera/mini/android/an;->C()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-boolean v0, p0, Lcom/opera/mini/android/an$1;->Code:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/google/analytics/tracking/android/e;->Code()Lcom/google/analytics/tracking/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/e;->Z()V

    :cond_2d
    return-void
.end method
