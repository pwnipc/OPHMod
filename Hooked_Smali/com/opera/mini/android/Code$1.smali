.class final Lcom/opera/mini/android/Code$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/Code;->I(I)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 281
    invoke-static {}, Lcom/opera/mini/android/s;->t()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    invoke-static {}, Lcom/opera/mini/android/an;->Code()V

    .line 285
    :cond_9
    new-instance v0, Lcom/opera/mini/android/events/BreamInitializedEvent;

    invoke-direct {v0}, Lcom/opera/mini/android/events/BreamInitializedEvent;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    .line 286
    new-instance v0, Lcom/opera/mini/android/aj;

    sget-object v1, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    invoke-direct {v0, v1}, Lcom/opera/mini/android/aj;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Z(Ljava/lang/Object;)V

    .line 287
    return-void
.end method
