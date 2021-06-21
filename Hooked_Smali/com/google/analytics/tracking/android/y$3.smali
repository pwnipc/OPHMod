.class final Lcom/google/analytics/tracking/android/y$3;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/y;->Code(Z)V
.end annotation


# instance fields
.field private synthetic Code:Z

.field private synthetic I:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;Z)V
    .registers 3

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/y$3;->Code:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->I(Lcom/google/analytics/tracking/android/y;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y$3;->Code:Z

    if-ne v0, v1, :cond_b

    .line 296
    :goto_a
    return-void

    .line 282
    :cond_b
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/y$3;->Code:Z

    if-eqz v0, :cond_36

    .line 283
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->b(Lcom/google/analytics/tracking/android/y;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 286
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_2f

    .line 291
    :goto_1e
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/an;->J()V

    .line 295
    :goto_27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/y$3;->Code:Z

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/y;Z)Z

    goto :goto_a

    .line 288
    :catch_2f
    move-exception v0

    const-string v0, "Error creating optOut file."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->C(Ljava/lang/String;)I

    goto :goto_1e

    .line 293
    :cond_36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$3;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->b(Lcom/google/analytics/tracking/android/y;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_27
.end method
