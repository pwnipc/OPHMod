.class public Lcom/opera/mini/android/OperaApplication;
.super Landroid/app/Application;
.source "Source"


# static fields
.field private static final Code:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/opera/mini/android/OperaApplication;->Code:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static Code()J
    .registers 6

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/opera/mini/android/OperaApplication;->Code:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sget-boolean v0, Lcom/opera/mini/android/s;->am:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-static {p0}, Lcom/opera/mini/android/notifications/g;->Code(Landroid/content/Context;)Lcom/opera/mini/android/notifications/g;

    .line 25
    :cond_a
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->Code()V

    .line 26
    return-void
.end method
