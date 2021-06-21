.class public Lcom/opera/mini/android/notifications/NotificationAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 18
    new-instance v0, Lcom/opera/mini/android/notifications/e;

    invoke-direct {v0}, Lcom/opera/mini/android/notifications/e;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/events/EventDispatcher;->Code(Ljava/lang/Object;)V

    .line 19
    return-void
.end method
