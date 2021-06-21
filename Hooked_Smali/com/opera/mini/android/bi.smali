.class final Lcom/opera/mini/android/bi;
.super Landroid/telephony/PhoneStateListener;
.source "Source"


# instance fields
.field private final Code:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 359
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/opera/mini/android/bi;->Code:Landroid/telephony/TelephonyManager;

    .line 360
    iget-object v0, p0, Lcom/opera/mini/android/bi;->Code:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 361
    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4

    .prologue
    .line 365
    invoke-static {p1}, Lcom/opera/mini/android/bf;->Code(Landroid/telephony/SignalStrength;)I

    move-result v0

    invoke-static {v0}, Lcom/opera/mini/android/bf;->Code(I)I

    .line 366
    iget-object v0, p0, Lcom/opera/mini/android/bi;->Code:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 367
    return-void
.end method
