.class final Lcom/opera/mini/android/q;
.super Landroid/os/ResultReceiver;
.source "Source"


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 624
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 625
    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_12

    .line 640
    :goto_3
    return-void

    .line 633
    :pswitch_4
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->Code(Z)V

    goto :goto_3

    .line 637
    :pswitch_b
    sget-object v0, Lcom/opera/mini/android/Browser;->I:Lcom/opera/mini/android/Browser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opera/mini/android/Browser;->Code(Z)V

    goto :goto_3

    .line 629
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method
