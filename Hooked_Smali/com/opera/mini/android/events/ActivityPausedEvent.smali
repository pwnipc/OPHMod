.class public Lcom/opera/mini/android/events/ActivityPausedEvent;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field public Code:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/opera/mini/android/events/ActivityPausedEvent;->Code:Landroid/app/Activity;

    .line 12
    return-void
.end method
