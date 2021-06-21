.class final Lcom/google/analytics/tracking/android/y$5;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/g$Code;)V
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/g$Code;

.field private synthetic I:Lcom/google/analytics/tracking/android/y;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/y;Lcom/google/analytics/tracking/android/g$Code;)V
    .registers 3

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y$5;->I:Lcom/google/analytics/tracking/android/y;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/y$5;->Code:Lcom/google/analytics/tracking/android/g$Code;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y$5;->Code:Lcom/google/analytics/tracking/android/g$Code;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y$5;->I:Lcom/google/analytics/tracking/android/y;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/y;->Code(Lcom/google/analytics/tracking/android/y;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/analytics/tracking/android/g$Code;->Code:Lcom/google/analytics/tracking/android/g;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/g;->Code(Lcom/google/analytics/tracking/android/g;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    return-void
.end method
