.class final Lcom/opera/mini/android/URLEditView$1;
.super Ljava/util/TimerTask;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/URLEditView;
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/String;

.field private synthetic I:I

.field private synthetic J:Lcom/opera/mini/android/URLEditView;

.field private synthetic Z:Z


# direct methods
.method constructor <init>(Lcom/opera/mini/android/URLEditView;Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 193
    iput-object p1, p0, Lcom/opera/mini/android/URLEditView$1;->J:Lcom/opera/mini/android/URLEditView;

    iput-object p2, p0, Lcom/opera/mini/android/URLEditView$1;->Code:Ljava/lang/String;

    iput p3, p0, Lcom/opera/mini/android/URLEditView$1;->I:I

    iput-boolean p4, p0, Lcom/opera/mini/android/URLEditView$1;->Z:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 196
    iget-object v0, p0, Lcom/opera/mini/android/URLEditView$1;->J:Lcom/opera/mini/android/URLEditView;

    new-instance v1, Lcom/opera/mini/android/bq;

    iget-object v2, p0, Lcom/opera/mini/android/URLEditView$1;->J:Lcom/opera/mini/android/URLEditView;

    iget-object v3, p0, Lcom/opera/mini/android/URLEditView$1;->Code:Ljava/lang/String;

    iget v4, p0, Lcom/opera/mini/android/URLEditView$1;->I:I

    iget-boolean v5, p0, Lcom/opera/mini/android/URLEditView$1;->Z:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/opera/mini/android/bq;-><init>(Lcom/opera/mini/android/URLEditView;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/URLEditView;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method
