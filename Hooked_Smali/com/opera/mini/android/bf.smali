.class public final Lcom/opera/mini/android/bf;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static Code:I

.field private static I:Ljava/lang/String;

.field private static Z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/16 v0, 0x63

    sput v0, Lcom/opera/mini/android/bf;->Code:I

    return-void
.end method

.method static synthetic Code(I)I
    .registers 1

    .prologue
    .line 41
    sput p0, Lcom/opera/mini/android/bf;->Code:I

    return p0
.end method

.method static synthetic Code(Landroid/telephony/SignalStrength;)I
    .registers 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/opera/mini/android/bf;->I(Landroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method static synthetic Code()Landroid/content/Context;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/opera/mini/android/bf;->Z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Code(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sput-object p0, Lcom/opera/mini/android/bf;->I:Ljava/lang/String;

    return-object p0
.end method

.method public static Code(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 371
    sput-object p0, Lcom/opera/mini/android/bf;->Z:Landroid/content/Context;

    .line 373
    sget-object v0, Lar;->Code:Lci;

    invoke-interface {v0}, Lci;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 383
    :goto_a
    return-void

    .line 377
    :cond_b
    sget-object v0, Lar;->I:Lar;

    invoke-virtual {v0}, Lar;->h()V

    .line 378
    sget-object v0, Lar;->Z:Lan;

    sget-object v1, Lar;->Z:Lan;

    const/16 v2, 0x40

    const/4 v3, 0x1

    new-instance v4, Lcom/opera/mini/android/bg;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/opera/mini/android/bg;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v2, v3, v4}, Lan;->Code(IILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lan;->b(I)V

    .line 382
    sget-object v0, Lar;->I:Lar;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lar;->Z(I)V

    goto :goto_a
.end method

.method private static I(Landroid/telephony/SignalStrength;)I
    .registers 3

    .prologue
    .line 422
    sget v0, Lcom/opera/mini/android/s;->al:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_17

    .line 428
    :try_start_6
    const-string v0, "getAsuLevel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/opera/mini/android/bn;->Code(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_16

    move-result v0

    .line 432
    :goto_15
    return v0

    :catch_16
    move-exception v0

    :cond_17
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    goto :goto_15
.end method

.method static synthetic I()J
    .registers 4

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic I(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v0, "UNKNOWN"

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    :cond_26
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :pswitch_2b
    const-string v0, "1xRTT"

    goto :goto_10

    :pswitch_2e
    const-string v0, "CDMA"

    goto :goto_10

    :pswitch_31
    const-string v0, "EDGE"

    goto :goto_10

    :pswitch_34
    const-string v0, "eHRPD"

    goto :goto_10

    :pswitch_37
    const-string v0, "EVDO_0"

    goto :goto_10

    :pswitch_3a
    const-string v0, "EVDO_A"

    goto :goto_10

    :pswitch_3d
    const-string v0, "EVDO_B"

    goto :goto_10

    :pswitch_40
    const-string v0, "GPRS"

    goto :goto_10

    :pswitch_43
    const-string v0, "HSDPA"

    goto :goto_10

    :pswitch_46
    const-string v0, "HSPA"

    goto :goto_10

    :pswitch_49
    const-string v0, "HSPA+"

    goto :goto_10

    :pswitch_4c
    const-string v0, "HSUPA"

    goto :goto_10

    :pswitch_4f
    const-string v0, "iDen"

    goto :goto_10

    :pswitch_52
    const-string v0, "LTE"

    goto :goto_10

    :pswitch_55
    const-string v0, "UMTS"

    goto :goto_10

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_40
        :pswitch_31
        :pswitch_55
        :pswitch_2e
        :pswitch_37
        :pswitch_3a
        :pswitch_2b
        :pswitch_43
        :pswitch_4c
        :pswitch_46
        :pswitch_4f
        :pswitch_3d
        :pswitch_52
        :pswitch_34
        :pswitch_49
    .end packed-switch
.end method

.method static synthetic I(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/opera/mini/android/bk;

    invoke-direct {v0, p0}, Lcom/opera/mini/android/bk;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/opera/mini/android/ai;->Code(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic J()I
    .registers 1

    .prologue
    .line 41
    sget v0, Lcom/opera/mini/android/bf;->Code:I

    return v0
.end method

.method static synthetic Z()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/opera/mini/android/bf;->I:Ljava/lang/String;

    return-object v0
.end method
