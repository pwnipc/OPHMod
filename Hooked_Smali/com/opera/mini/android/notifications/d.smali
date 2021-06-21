.class final Lcom/opera/mini/android/notifications/d;
.super Landroid/telephony/PhoneStateListener;
.source "Source"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/opera/mini/android/notifications/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 5

    .prologue
    const/16 v1, 0x63

    .line 44
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->J()Lcom/opera/mini/android/notifications/a;

    move-result-object v0

    if-nez v0, :cond_10

    .line 46
    new-instance v0, Lcom/opera/mini/android/notifications/a;

    invoke-direct {v0}, Lcom/opera/mini/android/notifications/a;-><init>()V

    invoke-static {v0}, Lcom/opera/mini/android/notifications/B;->Code(Lcom/opera/mini/android/notifications/a;)Lcom/opera/mini/android/notifications/a;

    .line 54
    :cond_10
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 55
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->J()Lcom/opera/mini/android/notifications/a;

    move-result-object v2

    if-ltz v0, :cond_2f

    if-gt v0, v1, :cond_2f

    int-to-byte v0, v0

    :goto_1d
    iput-byte v0, v2, Lcom/opera/mini/android/notifications/a;->Code:B

    .line 57
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v0

    .line 58
    invoke-static {}, Lcom/opera/mini/android/notifications/B;->J()Lcom/opera/mini/android/notifications/a;

    move-result-object v2

    if-ltz v0, :cond_2c

    if-gt v0, v1, :cond_2c

    int-to-byte v1, v0

    :cond_2c
    iput-byte v1, v2, Lcom/opera/mini/android/notifications/a;->I:B

    .line 59
    return-void

    :cond_2f
    move v0, v1

    .line 55
    goto :goto_1d
.end method
