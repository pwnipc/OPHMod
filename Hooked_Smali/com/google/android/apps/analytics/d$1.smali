.class final Lcom/google/android/apps/analytics/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/d;
.end annotation


# instance fields
.field private synthetic Code:Lcom/google/android/apps/analytics/d;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/d$1;->Code:Lcom/google/android/apps/analytics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/d$1;->Code:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->I()Z

    return-void
.end method
