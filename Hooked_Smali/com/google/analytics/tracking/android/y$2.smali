.class final Lcom/google/analytics/tracking/android/y$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/y;->Code()V
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y$2;->Code:Lcom/google/analytics/tracking/android/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$2;->Code:Lcom/google/analytics/tracking/android/y;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/y;->a(Lcom/google/analytics/tracking/android/y;)Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/an;->Z()V

    .line 269
    return-void
.end method
