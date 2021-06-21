.class public final Lcom/opera/mini/android/aj;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private Code:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/opera/mini/android/aj;->Code:I

    .line 31
    invoke-static {p1}, Lcom/opera/mini/android/notifications/B;->Z(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/opera/mini/android/aj;->Code(Landroid/net/NetworkInfo;)V

    .line 32
    return-void
.end method

.method private static Code(Landroid/net/NetworkInfo;)V
    .registers 3

    .prologue
    .line 51
    const/4 v0, -0x1

    .line 52
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 54
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 73
    :pswitch_16
    const/4 v0, 0x0

    .line 78
    :cond_17
    :goto_17
    sget-object v1, Lar;->I:Lar;

    invoke-virtual {v1}, Lar;->h()V

    .line 79
    sget-object v1, Lar;->Z:Lan;

    invoke-virtual {v1, v0}, Lan;->c(I)V

    .line 80
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    .line 81
    return-void

    .line 61
    :pswitch_29
    const/4 v0, 0x1

    .line 62
    goto :goto_17

    .line 64
    :pswitch_2b
    const/4 v0, 0x6

    .line 65
    goto :goto_17

    .line 67
    :pswitch_2d
    const/4 v0, 0x5

    .line 68
    goto :goto_17

    .line 70
    :pswitch_2f
    const/4 v0, 0x7

    .line 71
    goto :goto_17

    .line 54
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2b
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_16
        :pswitch_16
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public final onConnectivityChanged(Lcom/opera/mini/android/events/ConnectivityChangedEvent;)V
    .registers 4
    .annotation runtime Ldm;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p1, Lcom/opera/mini/android/events/ConnectivityChangedEvent;->Code:Landroid/net/NetworkInfo;

    .line 38
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 39
    :goto_8
    iget v1, p0, Lcom/opera/mini/android/aj;->Code:I

    if-eq v0, v1, :cond_13

    .line 41
    iput v0, p0, Lcom/opera/mini/android/aj;->Code:I

    .line 42
    iget-object v0, p1, Lcom/opera/mini/android/events/ConnectivityChangedEvent;->Code:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/opera/mini/android/aj;->Code(Landroid/net/NetworkInfo;)V

    .line 44
    :cond_13
    return-void

    .line 38
    :cond_14
    const/4 v0, -0x1

    goto :goto_8
.end method
