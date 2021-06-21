.class public final Lcom/google/analytics/tracking/android/h;
.super Landroid/app/IntentService;
.source "Source"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const-string v0, "CampaignIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 25
    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :try_start_6
    const-string v1, "gaInstallData"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/analytics/tracking/android/h;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_18

    .line 35
    :goto_17
    return-void

    .line 33
    :catch_18
    move-exception v0

    const-string v0, "Error storing install campaign."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/af;->I(Ljava/lang/String;)I

    goto :goto_17
.end method
