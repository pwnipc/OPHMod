.class final Lcom/google/analytics/tracking/android/s$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/s;->a()V
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/s;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/s;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/analytics/tracking/android/s$2;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s$2;->Code:Lcom/google/analytics/tracking/android/s;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/s;->Code(Lcom/google/analytics/tracking/android/s;)V

    .line 199
    return-void
.end method
