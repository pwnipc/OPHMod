.class public Lcom/opera/mini/android/af;
.super Ljava/lang/Object;
.source "Source"


# static fields
.field private static final Code:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 61
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://www."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tel:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mailto:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ftp://anonymous:anonymous@"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ftp://ftp."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ftps://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smb://"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nfs://"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dav://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "news:"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "telnet://"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "imap:"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rtsp://"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "urn:"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pop:"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sip:"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sips:"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "tftp:"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "btspp://"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "btl2cap://"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "btgoep://"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "tcpobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "irdaobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "file://"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "urn:epc:id:"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "urn:epc:tag:"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "urn:epc:pat:"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "urn:epc:raw:"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "urn:epc:"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "urn:nfc:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/opera/mini/android/af;->Code:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Code(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 69
    aget-object v0, v0, v4

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_7b

    .line 72
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v2, v0, v4

    .line 73
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    .line 74
    const/4 v3, 0x3

    if-ne v0, v3, :cond_31

    .line 75
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 83
    :goto_30
    return-object v0

    .line 76
    :cond_31
    if-ne v0, v5, :cond_7b

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 77
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 78
    aget-byte v2, v0, v4

    if-ltz v2, :cond_7b

    aget-byte v2, v0, v4

    sget-object v3, Lcom/opera/mini/android/af;->Code:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7b

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/opera/mini/android/af;->Code:[Ljava/lang/String;

    aget-byte v3, v0, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_7b
    move-object v0, v1

    goto :goto_30
.end method

.method public static Code(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/opera/mini/android/DontOptimize;
    .end annotation

    .prologue
    .line 88
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
