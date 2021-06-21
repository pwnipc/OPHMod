.class Lcom/opera/mini/android/aw;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field Code:Lcom/opera/mini/android/av;

.field final synthetic I:Lcom/opera/mini/android/av;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/av;Lcom/opera/mini/android/av;)V
    .registers 3

    .prologue
    .line 190
    iput-object p1, p0, Lcom/opera/mini/android/aw;->I:Lcom/opera/mini/android/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/opera/mini/android/aw;->Code:Lcom/opera/mini/android/av;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/opera/mini/android/aw;->Code:Lcom/opera/mini/android/av;

    invoke-virtual {v0}, Lcom/opera/mini/android/av;->c()V

    .line 197
    return-void
.end method
