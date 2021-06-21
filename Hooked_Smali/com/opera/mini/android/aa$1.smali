.class final Lcom/opera/mini/android/aa$1;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opera/mini/android/aa;->Code(Landroid/app/Activity;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 6

    .prologue
    .line 139
    invoke-static {}, Lcom/opera/mini/android/s;->p()Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_a

    const-string v1, ""

    if-ne v0, v1, :cond_c

    .line 141
    :cond_a
    const/4 v0, 0x0

    .line 144
    :goto_b
    return-object v0

    .line 143
    :cond_c
    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 144
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_b
.end method
