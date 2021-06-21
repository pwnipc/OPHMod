.class public Lcom/opera/mini/android/events/NotificationSettingChangedEvent;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field public Code:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/opera/mini/android/events/NotificationSettingChangedEvent;->Code:Z

    .line 10
    return-void
.end method
