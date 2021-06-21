.class final Lcom/google/android/apps/analytics/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Code:Lcom/google/android/apps/analytics/C;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/C;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/e;->Code:Lcom/google/android/apps/analytics/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->Code:Lcom/google/android/apps/analytics/C;

    iget-object v0, v0, Lcom/google/android/apps/analytics/C;->Code:Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/d;->Z()V

    return-void
.end method
