.class final Lcom/opera/mini/android/notifications/NetUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opera/mini/android/notifications/B;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 122
    new-instance v0, Lcom/opera/mini/android/events/ConnectivityChangedEvent;

    invoke-static {p1}, Lcom/opera/mini/android/notifications/B;->J(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opera/mini/android/events/ConnectivityChangedEvent;-><init>(Landroid/net/NetworkInfo;)V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
