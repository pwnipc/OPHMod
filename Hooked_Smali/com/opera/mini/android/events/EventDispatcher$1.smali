.class final Lcom/opera/mini/android/events/EventDispatcher$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/events/EventDispatcher;->I(Ljava/lang/Object;)V
.end annotation


# instance fields
.field private synthetic Code:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/opera/mini/android/events/EventDispatcher$1;->Code:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/opera/mini/android/events/EventDispatcher$1;->Code:Ljava/lang/Object;

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
