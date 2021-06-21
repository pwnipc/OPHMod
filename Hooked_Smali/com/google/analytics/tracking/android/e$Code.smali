.class final Lcom/google/analytics/tracking/android/e$Code;
.super Ljava/lang/Object;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/e;
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/analytics/tracking/android/e;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/e;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/analytics/tracking/android/e$Code;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code(Z)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/analytics/tracking/android/e$Code;->Code:Lcom/google/analytics/tracking/android/e;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/e$Code;->Code:Lcom/google/analytics/tracking/android/e;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/e;->Code(Lcom/google/analytics/tracking/android/e;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/e;->Code(ZZ)V

    .line 58
    return-void
.end method
