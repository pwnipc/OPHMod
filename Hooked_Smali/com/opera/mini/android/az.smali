.class public Lcom/opera/mini/android/az;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Code:Lcom/opera/mini/android/ax;


# direct methods
.method public constructor <init>(Lcom/opera/mini/android/ax;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/opera/mini/android/az;->Code:Lcom/opera/mini/android/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/opera/mini/android/az;->Code:Lcom/opera/mini/android/ax;

    invoke-static {v0}, Lcom/opera/mini/android/ax;->Code(Lcom/opera/mini/android/ax;)Lcom/opera/mini/android/MiniView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opera/mini/android/MiniView;->Code()V

    .line 326
    return-void
.end method
