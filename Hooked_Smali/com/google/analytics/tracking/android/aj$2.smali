.class final Lcom/google/analytics/tracking/android/aj$2;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/aj;
.end annotation


# instance fields
.field private final Code:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/aj$2;->Code:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj$2;->Code:Ljava/text/DecimalFormat;

    invoke-static {p1}, Lcom/google/analytics/tracking/android/ar;->I(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
