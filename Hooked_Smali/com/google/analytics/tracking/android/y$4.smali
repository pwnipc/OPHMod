.class final Lcom/google/analytics/tracking/android/y$4;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/g$I;)V
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/g$I;

.field private synthetic I:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;Lcom/google/analytics/tracking/android/g$I;)V
    .registers 3

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y$4;->I:Lcom/google/analytics/tracking/android/y;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/y$4;->Code:Lcom/google/analytics/tracking/android/g$I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$4;->Code:Lcom/google/analytics/tracking/android/g$I;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y$4;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/y;->I(Lcom/google/analytics/tracking/android/y;)Z

    move-result v1

    iget-object v0, v0, Lcom/google/analytics/tracking/android/g$I;->Code:Lcom/google/analytics/tracking/android/g;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/g;->Code(Lcom/google/analytics/tracking/android/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 309
    return-void
.end method
