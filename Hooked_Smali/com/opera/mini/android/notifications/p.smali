.class final Lcom/opera/mini/android/notifications/p;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private synthetic Code:Lcom/opera/mini/android/notifications/o;


# direct methods
.method private constructor <init>(Lcom/opera/mini/android/notifications/o;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/opera/mini/android/notifications/p;->Code:Lcom/opera/mini/android/notifications/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/opera/mini/android/notifications/o;B)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/opera/mini/android/notifications/p;-><init>(Lcom/opera/mini/android/notifications/o;)V

    return-void
.end method


# virtual methods
.method public final onNotificationImpressionAck(Lcom/opera/mini/android/events/NotificationStatsAck;)V
    .registers 3
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/opera/mini/android/notifications/p;->Code:Lcom/opera/mini/android/notifications/o;

    invoke-static {v0}, Lcom/opera/mini/android/notifications/o;->Code(Lcom/opera/mini/android/notifications/o;)V

    .line 32
    return-void
.end method
