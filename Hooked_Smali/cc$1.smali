.class final Lcc$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc;->m()V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 871
    :try_start_0
    invoke-static {}, Ldb;->J()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 877
    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method
