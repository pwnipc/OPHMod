.class final Lcom/opera/mini/android/Browser$3;
.super Ljava/lang/Thread;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/Browser;->Code(Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Runnable;

.field private synthetic I:Lcom/opera/mini/android/Browser;


# direct methods
.method constructor <init>(Lcom/opera/mini/android/Browser;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 589
    iput-object p1, p0, Lcom/opera/mini/android/Browser$3;->I:Lcom/opera/mini/android/Browser;

    iput-object p2, p0, Lcom/opera/mini/android/Browser$3;->Code:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 600
    :goto_0
    sget-object v0, Lcom/opera/mini/android/Browser;->Code:Lcom/opera/mini/android/Code;

    iget-boolean v0, v0, Lcom/opera/mini/android/Code;->C:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/opera/mini/android/Browser$3;->I:Lcom/opera/mini/android/Browser;

    iget-boolean v0, v0, Lcom/opera/mini/android/Browser;->Z:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/opera/mini/android/MiniView;->Code:Lcom/opera/mini/android/MiniView;

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->b()Z

    move-result v0

    if-nez v0, :cond_18

    .line 604
    :cond_14
    invoke-static {}, Ldb;->Code()V

    goto :goto_0

    .line 606
    :cond_18
    iget-object v0, p0, Lcom/opera/mini/android/Browser$3;->Code:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 607
    return-void
.end method
