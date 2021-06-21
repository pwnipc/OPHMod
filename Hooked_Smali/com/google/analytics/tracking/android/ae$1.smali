.class final Lcom/google/analytics/tracking/android/ae$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Lcom/google/analytics/tracking/android/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/ae;-><init>(Lcom/google/analytics/tracking/android/e$Code;Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Code()J
    .registers 3

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
