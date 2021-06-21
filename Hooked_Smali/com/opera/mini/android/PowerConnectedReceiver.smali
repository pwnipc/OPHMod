.class public Lcom/opera/mini/android/PowerConnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 15
    new-instance v0, Lcom/opera/mini/android/events/OnPowerConnected;

    invoke-direct {v0}, Lcom/opera/mini/android/events/OnPowerConnected;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
