.class public Lcom/opera/mini/android/events/ConnectivityChangedEvent;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field public Code:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/opera/mini/android/events/ConnectivityChangedEvent;->Code:Landroid/net/NetworkInfo;

    .line 12
    return-void
.end method
